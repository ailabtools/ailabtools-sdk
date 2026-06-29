# frozen_string_literal: true

require "minitest/autorun"
require "webrick"
require "ailabtools"

class AILabToolsClientTest < Minitest::Test
  def teardown
    @server&.shutdown
    @thread&.join
  end

  def test_required_any_of_validation
    error = assert_raises(ArgumentError) do
      AILabTools::Generated::Params::PortraitHairstyleEditingPremiumParams.new(
        image: AILabTools::FileInput.from_bytes("x", filename: "photo.jpg")
      )
    end
    assert_equal "At least one of hair_style, image_template is required", error.message
  end

  def test_background_alias_uploads_file_and_maps_fields
    captured_body = nil
    captured_key = nil
    start_server do |req, res|
      captured_body = req.body
      captured_key = req.header["ailabapi-api-key"].first
      assert_equal "/api/cutout/general/universal-background-removal", req.path
      json(res, '{"error_code":0,"request_id":"request-1","data":{"image_url":"https://example.com/result.png"}}')
    end

    result = client.background.remove(
      AILabTools::Generated::Params::CutoutUniversalBackgroundRemovalParams.new(
        image: AILabTools::FileInput.from_bytes("image", filename: "photo.jpg", content_type: "image/jpeg"),
        return_form: "whiteBK"
      )
    )

    assert_equal "request-1", result.request_id
    assert_equal "https://example.com/result.png", result.data.image_url
    assert_equal "test-key", captured_key
    assert_includes captured_body, 'name="return_form"'
    assert_includes captured_body, 'whiteBK'
    assert_includes captured_body, 'filename="photo.jpg"'
  end

  def test_upscale_maps_snake_case_fields
    body = nil
    start_server do |req, res|
      body = req.body
      json(res, '{"error_code":0,"data":{"url":"https://example.com/upscaled.jpg"}}')
    end

    result = client.image.upscale(
      AILabTools::Generated::Params::ImageLosslessEnlargementParams.new(
        image: AILabTools::FileInput.from_bytes("x", filename: "photo.jpg"),
        upscale_factor: 4,
        output_format: "jpg",
        output_quality: 80
      )
    )

    assert_equal "https://example.com/upscaled.jpg", result.data.url
    assert_includes body, 'name="upscale_factor"'
    assert_includes body, 'name="output_format"'
  end

  def test_api_errors_expose_metadata
    start_server do |_req, res|
      res.status = 400
      json(res, '{"error_code":1001,"request_id":"request-2","log_id":"log-2","error_detail":{"message":"Unsupported image format"}}')
    end

    error = assert_raises(AILabTools::APIError) do
      client.common.common_query_credits(AILabTools::Generated::Params::CommonQueryCreditsParams.new)
    end

    assert_equal 400, error.status_code
    assert_equal 1001, error.error_code
    assert_equal "request-2", error.request_id
    assert_equal "log-2", error.log_id
    assert_equal "Unsupported image format", error.message
  end

  def test_typed_array_responses_deserialize
    start_server do |_req, res|
      json(res, '{"error_code":0,"data":{"pupils":[1,2.5],"gender_list":[0,1]}}')
    end

    response = client.portrait.portrait_face_analyzer_advanced(
      AILabTools::Generated::Params::PortraitFaceAnalyzerAdvancedParams.new(
        image: AILabTools::FileInput.from_bytes("x", filename: "face.jpg")
      )
    )

    assert_equal [1, 2.5], response.data.pupils
    assert_equal [0, 1], response.data.gender_list
  end

  def test_wait_for_task_polls_until_success
    calls = 0
    start_server do |req, res|
      calls += 1
      assert_equal "task_id=task-1", req.query_string
      status = calls == 1 ? 1 : 2
      json(res, "{\"error_code\":0,\"data\":{\"task_status\":#{status}}}")
    end

    result = client.wait_for_task("task-1", interval: 0, timeout: 1)

    assert_equal 2, result.data.task_status
    assert_equal 2, calls
  end

  def test_generated_surface_contains_all_endpoints
    api_source = Dir[File.expand_path("../lib/ailabtools/api/*.rb", __dir__)].map { |f| File.read(f) }.join("\n")
    assert_equal 93, api_source.scan(/@requester\.request\(/).length
    assert_equal 93, api_source.scan(%r{"/api/[^\"]+"}).uniq.length
  end

  private

  def client
    AILabTools::Client.new(api_key: "test-key", base_url: "http://127.0.0.1:#{@server.config[:Port]}", timeout: 5)
  end

  def start_server(&block)
    @server = WEBrick::HTTPServer.new(
      BindAddress: "127.0.0.1",
      Port: 0,
      Logger: WEBrick::Log.new(File::NULL),
      AccessLog: []
    )
    @server.mount_proc("/", &block)
    @thread = Thread.new { @server.start }
    sleep 0.05 until @server.status == :Running
  end

  def json(response, body)
    response["Content-Type"] = "application/json"
    response.body = body
  end
end

package ailabtools

import (
	"context"
	"net/http"
)

type PortraitAPI struct {
	requester *requester
}

type PortraitFaceAnalyzerParams struct {
	Image               FileInput `form:"image"`
	MaxFaceNum          int       `form:"max_face_num,omitempty"`
	FaceAttributesType  string    `form:"face_attributes_type,omitempty"`
	NeedRotateDetection int       `form:"need_rotate_detection,omitempty"`
}

type PortraitFaceAnalyzerResponseData struct {
	ImageWidth               int     `json:"image_width,omitempty"`
	ImageHeight              int     `json:"image_height,omitempty"`
	FaceDetailInfos          []any   `json:"face_detail_infos,omitempty"`
	FaceRect                 any     `json:"face_rect,omitempty"`
	X                        int     `json:"x,omitempty"`
	Y                        int     `json:"y,omitempty"`
	Width                    int     `json:"width,omitempty"`
	Height                   int     `json:"height,omitempty"`
	FaceDetailAttributesInfo any     `json:"face_detail_attributes_info,omitempty"`
	Age                      int     `json:"age,omitempty"`
	Beauty                   int     `json:"beauty,omitempty"`
	Emotion                  any     `json:"emotion,omitempty"`
	Type                     int     `json:"type,omitempty"`
	Probability              float64 `json:"probability,omitempty"`
	Eye                      any     `json:"eye,omitempty"`
	Glass                    any     `json:"glass,omitempty"`
	EyeOpen                  any     `json:"eye_open,omitempty"`
	EyelidType               any     `json:"eyelid_type,omitempty"`
	EyeSize                  any     `json:"eye_size,omitempty"`
	Eyebrow                  any     `json:"eyebrow,omitempty"`
	EyebrowDensity           any     `json:"eyebrow_density,omitempty"`
	EyebrowCurve             any     `json:"eyebrow_curve,omitempty"`
	EyebrowLength            any     `json:"eyebrow_length,omitempty"`
	Gender                   any     `json:"gender,omitempty"`
	Hair                     any     `json:"hair,omitempty"`
	Length                   any     `json:"length,omitempty"`
	Bang                     any     `json:"bang,omitempty"`
	Color                    any     `json:"color,omitempty"`
	Hat                      any     `json:"hat,omitempty"`
	Style                    any     `json:"style,omitempty"`
	HeadPose                 any     `json:"head_pose,omitempty"`
	Pitch                    int     `json:"pitch,omitempty"`
	Yaw                      int     `json:"yaw,omitempty"`
	Mask                     any     `json:"mask,omitempty"`
	Mouth                    any     `json:"mouth,omitempty"`
	MouthOpen                any     `json:"mouth_open,omitempty"`
	Moustache                any     `json:"moustache,omitempty"`
	Nose                     any     `json:"nose,omitempty"`
	Shape                    any     `json:"shape,omitempty"`
	Skin                     any     `json:"skin,omitempty"`
	Smile                    int     `json:"smile,omitempty"`
}

type PortraitFaceAnalyzerResponse = BaseResponse[PortraitFaceAnalyzerResponseData]

func (api *PortraitAPI) PortraitFaceAnalyzer(ctx context.Context, params PortraitFaceAnalyzerParams) (*PortraitFaceAnalyzerResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitFaceAnalyzerResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/analysis/face-analyzer", nil, params, true, &out)
	return &out, err
}

type PortraitFaceAnalyzerAdvancedParams struct {
	Image FileInput `form:"image"`
}

type PortraitFaceAnalyzerAdvancedResponseData struct {
	Pupils              []float64 `json:"pupils,omitempty"`
	GenderList          []int     `json:"gender_list,omitempty"`
	Expressions         []int     `json:"expressions,omitempty"`
	FaceCount           int       `json:"face_count,omitempty"`
	Landmarks           []float64 `json:"landmarks,omitempty"`
	LandmarkCount       int       `json:"landmark_count,omitempty"`
	BeautyList          []float64 `json:"beauty_list,omitempty"`
	HatList             []int     `json:"hat_list,omitempty"`
	FaceProbabilityList []float64 `json:"face_probability_list,omitempty"`
	Glasses             []int     `json:"glasses,omitempty"`
	FaceRectangles      []int     `json:"face_rectangles,omitempty"`
	PoseList            []float64 `json:"pose_list,omitempty"`
	AgeList             []int     `json:"age_list,omitempty"`
	DenseFeatureLength  int       `json:"dense_feature_length,omitempty"`
	Masks               []int     `json:"masks,omitempty"`
	Qualities           any       `json:"qualities,omitempty"`
	ScoreList           []float64 `json:"score_list,omitempty"`
	BlurList            []float64 `json:"blur_list,omitempty"`
	FnfList             []float64 `json:"fnf_list,omitempty"`
	GlassList           []float64 `json:"glass_list,omitempty"`
	IlluList            []float64 `json:"illu_list,omitempty"`
	MaskList            []float64 `json:"mask_list,omitempty"`
	NoiseList           []float64 `json:"noise_list,omitempty"`
}

type PortraitFaceAnalyzerAdvancedResponse = BaseResponse[PortraitFaceAnalyzerAdvancedResponseData]

func (api *PortraitAPI) PortraitFaceAnalyzerAdvanced(ctx context.Context, params PortraitFaceAnalyzerAdvancedParams) (*PortraitFaceAnalyzerAdvancedResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitFaceAnalyzerAdvancedResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/analysis/face-analyzer-advanced", nil, params, true, &out)
	return &out, err
}

type PortraitFacialLandmarksParams struct {
	Image      FileInput `form:"image"`
	MaxFaceNum int       `form:"max_face_num,omitempty"`
	FaceField  string    `form:"face_field,omitempty"`
}

type PortraitFacialLandmarksResponseData struct {
	Result          any     `json:"result,omitempty"`
	FaceNum         int     `json:"face_num,omitempty"`
	FaceList        []any   `json:"face_list,omitempty"`
	FaceToken       string  `json:"face_token,omitempty"`
	Location        any     `json:"location,omitempty"`
	Left            float64 `json:"left,omitempty"`
	Top             float64 `json:"top,omitempty"`
	Width           float64 `json:"width,omitempty"`
	Height          float64 `json:"height,omitempty"`
	Rotation        int     `json:"rotation,omitempty"`
	FaceProbability float64 `json:"face_probability,omitempty"`
	Angle           any     `json:"angle,omitempty"`
	Yaw             float64 `json:"yaw,omitempty"`
	Pitch           float64 `json:"pitch,omitempty"`
	Roll            float64 `json:"roll,omitempty"`
	Age             float64 `json:"age,omitempty"`
	Gender          any     `json:"gender,omitempty"`
	Type            string  `json:"type,omitempty"`
	Probability     float64 `json:"probability,omitempty"`
	Landmark4       []any   `json:"landmark4,omitempty"`
	Landmark72      []any   `json:"landmark72,omitempty"`
	Landmark150     any     `json:"landmark150,omitempty"`
	Landmark201     any     `json:"landmark201,omitempty"`
}

type PortraitFacialLandmarksResponse = BaseResponse[PortraitFacialLandmarksResponseData]

func (api *PortraitAPI) PortraitFacialLandmarks(ctx context.Context, params PortraitFacialLandmarksParams) (*PortraitFacialLandmarksResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitFacialLandmarksResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/analysis/face-key-points", nil, params, true, &out)
	return &out, err
}

type PortraitSkinAnalysisBasicParams struct {
	Image FileInput `form:"image"`
}

type PortraitSkinAnalysisBasicResponseData struct {
	Warning         []any   `json:"warning,omitempty"`
	FaceRectangle   any     `json:"face_rectangle,omitempty"`
	Top             float64 `json:"top,omitempty"`
	Left            float64 `json:"left,omitempty"`
	Width           float64 `json:"width,omitempty"`
	Height          float64 `json:"height,omitempty"`
	Result          any     `json:"result,omitempty"`
	LeftEyelids     any     `json:"left_eyelids,omitempty"`
	Value           int     `json:"value,omitempty"`
	Confidence      float64 `json:"confidence,omitempty"`
	RightEyelids    any     `json:"right_eyelids,omitempty"`
	EyePouch        any     `json:"eye_pouch,omitempty"`
	DarkCircle      any     `json:"dark_circle,omitempty"`
	ForeheadWrinkle any     `json:"forehead_wrinkle,omitempty"`
	CrowsFeet       any     `json:"crows_feet,omitempty"`
	EyeFinelines    any     `json:"eye_finelines,omitempty"`
	GlabellaWrinkle any     `json:"glabella_wrinkle,omitempty"`
	NasolabialFold  any     `json:"nasolabial_fold,omitempty"`
	SkinType        any     `json:"skin_type,omitempty"`
	Details         any     `json:"details,omitempty"`
	PoresForehead   any     `json:"pores_forehead,omitempty"`
	PoresLeftCheek  any     `json:"pores_left_cheek,omitempty"`
	PoresRightCheek any     `json:"pores_right_cheek,omitempty"`
	PoresJaw        any     `json:"pores_jaw,omitempty"`
	Blackhead       any     `json:"blackhead,omitempty"`
	Acne            any     `json:"acne,omitempty"`
	Mole            any     `json:"mole,omitempty"`
	SkinSpot        any     `json:"skin_spot,omitempty"`
}

type PortraitSkinAnalysisBasicResponse = BaseResponse[PortraitSkinAnalysisBasicResponseData]

func (api *PortraitAPI) PortraitSkinAnalysisBasic(ctx context.Context, params PortraitSkinAnalysisBasicParams) (*PortraitSkinAnalysisBasicResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitSkinAnalysisBasicResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/analysis/skin-analysis", nil, params, true, &out)
	return &out, err
}

type PortraitSkinAnalysisAdvancedParams struct {
	Image                FileInput `form:"image"`
	FaceQualityControl   int       `form:"face_quality_control,omitempty"`
	ReturnRectConfidence int       `form:"return_rect_confidence,omitempty"`
	ReturnMaps           string    `form:"return_maps,omitempty"`
}

type PortraitSkinAnalysisAdvancedResponseData struct {
	Warning                []any   `json:"warning,omitempty"`
	FaceRectangle          any     `json:"face_rectangle,omitempty"`
	Top                    float64 `json:"top,omitempty"`
	Left                   float64 `json:"left,omitempty"`
	Width                  float64 `json:"width,omitempty"`
	Height                 float64 `json:"height,omitempty"`
	Result                 any     `json:"result,omitempty"`
	SkinColor              any     `json:"skin_color,omitempty"`
	Value                  int     `json:"value,omitempty"`
	Confidence             float64 `json:"confidence,omitempty"`
	SkintoneIta            any     `json:"skintone_ita,omitempty"`
	ITA                    float64 `json:"ITA,omitempty"`
	Skintone               int     `json:"skintone,omitempty"`
	SkinHueHa              any     `json:"skin_hue_ha,omitempty"`
	HA                     float64 `json:"HA,omitempty"`
	SkinAge                any     `json:"skin_age,omitempty"`
	LeftEyelids            any     `json:"left_eyelids,omitempty"`
	RightEyelids           any     `json:"right_eyelids,omitempty"`
	EyePouch               any     `json:"eye_pouch,omitempty"`
	EyePouchSeverity       any     `json:"eye_pouch_severity,omitempty"`
	DarkCircle             any     `json:"dark_circle,omitempty"`
	ForeheadWrinkle        any     `json:"forehead_wrinkle,omitempty"`
	CrowsFeet              any     `json:"crows_feet,omitempty"`
	EyeFinelines           any     `json:"eye_finelines,omitempty"`
	GlabellaWrinkle        any     `json:"glabella_wrinkle,omitempty"`
	NasolabialFold         any     `json:"nasolabial_fold,omitempty"`
	NasolabialFoldSeverity any     `json:"nasolabial_fold_severity,omitempty"`
	SkinType               any     `json:"skin_type,omitempty"`
	Details                any     `json:"details,omitempty"`
	PoresForehead          any     `json:"pores_forehead,omitempty"`
	PoresLeftCheek         any     `json:"pores_left_cheek,omitempty"`
	PoresRightCheek        any     `json:"pores_right_cheek,omitempty"`
	PoresJaw               any     `json:"pores_jaw,omitempty"`
	Blackhead              any     `json:"blackhead,omitempty"`
	Acne                   any     `json:"acne,omitempty"`
	Rectangle              []any   `json:"rectangle,omitempty"`
	Mole                   any     `json:"mole,omitempty"`
	ClosedComedones        any     `json:"closed_comedones,omitempty"`
	SkinSpot               any     `json:"skin_spot,omitempty"`
	FaceMaps               any     `json:"face_maps,omitempty"`
	RedArea                string  `json:"red_area,omitempty"`
	Sensitivity            any     `json:"sensitivity,omitempty"`
	SensitivityArea        float64 `json:"sensitivity_area,omitempty"`
	SensitivityIntensity   float64 `json:"sensitivity_intensity,omitempty"`
}

type PortraitSkinAnalysisAdvancedResponse = BaseResponse[PortraitSkinAnalysisAdvancedResponseData]

func (api *PortraitAPI) PortraitSkinAnalysisAdvanced(ctx context.Context, params PortraitSkinAnalysisAdvancedParams) (*PortraitSkinAnalysisAdvancedResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitSkinAnalysisAdvancedResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/analysis/skin-analysis-advanced", nil, params, true, &out)
	return &out, err
}

type PortraitSkinAnalysisProfessionalParams struct {
	Image             FileInput `form:"image"`
	LeftSideImage     FileInput `form:"left_side_image,omitempty"`
	RightSideImage    FileInput `form:"right_side_image,omitempty"`
	ReturnMaps        string    `form:"return_maps,omitempty"`
	ReturnMarks       string    `form:"return_marks,omitempty"`
	RoiOutlineColor   any       `form:"roi_outline_color,omitempty"`
	ReturnSideResults string    `form:"return_side_results,omitempty"`
}

type PortraitSkinAnalysisProfessionalResponseData struct {
	LeftSideResult  any `json:"left_side_result,omitempty"`
	RightSideResult any `json:"right_side_result,omitempty"`
	FaceRectangle   any `json:"face_rectangle,omitempty"`
	Result          any `json:"result,omitempty"`
}

type PortraitSkinAnalysisProfessionalResponse = BaseResponse[PortraitSkinAnalysisProfessionalResponseData]

func (api *PortraitAPI) PortraitSkinAnalysisProfessional(ctx context.Context, params PortraitSkinAnalysisProfessionalParams) (*PortraitSkinAnalysisProfessionalResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitSkinAnalysisProfessionalResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/analysis/skin-analysis-pro", nil, params, true, &out)
	return &out, err
}

type PortraitSkinDiseaseDetectionParams struct {
	Image FileInput `form:"image"`
}

type PortraitSkinDiseaseDetectionResponseData struct {
	BodyPart               string  `json:"body_part,omitempty"`
	ImageQuality           float64 `json:"image_quality,omitempty"`
	ImageType              string  `json:"image_type,omitempty"`
	ResultsEnglish         any     `json:"results_english,omitempty"`
	Acne                   float64 `json:"acne,omitempty"`
	ActinicKeratosis       float64 `json:"actinic_keratosis,omitempty"`
	AlopeciaAndrogenetica  float64 `json:"alopecia_androgenetica,omitempty"`
	AlopeciaAreata         float64 `json:"alopecia_areata,omitempty"`
	BullousDermatosis      float64 `json:"bullous_dermatosis,omitempty"`
	Chloasma               float64 `json:"chloasma,omitempty"`
	Corn                   float64 `json:"corn,omitempty"`
	Dermatofibroma         float64 `json:"dermatofibroma,omitempty"`
	EczemaDermatitis       float64 `json:"eczema_dermatitis,omitempty"`
	Erysipelas             float64 `json:"erysipelas,omitempty"`
	ErythemaMultiforme     float64 `json:"erythema_multiforme,omitempty"`
	Folliculitis           float64 `json:"folliculitis,omitempty"`
	Furuncle               float64 `json:"furuncle,omitempty"`
	Haemangioma            float64 `json:"haemangioma,omitempty"`
	Herpes                 float64 `json:"herpes,omitempty"`
	HerpesSimplex          float64 `json:"herpes_simplex,omitempty"`
	IgaVasculitis          float64 `json:"iga_vasculitis,omitempty"`
	Keloid                 float64 `json:"keloid,omitempty"`
	KeratosisFollicularism float64 `json:"keratosis_follicularism,omitempty"`
	LichenPlanus           float64 `json:"lichen_planus,omitempty"`
	LupusErythematosus     float64 `json:"lupus_erythematosus,omitempty"`
	MolluscumContagiosum   float64 `json:"molluscum_contagiosum,omitempty"`
	Nevus                  float64 `json:"nevus,omitempty"`
	Paronychia             float64 `json:"paronychia,omitempty"`
	PityriasisAlba         float64 `json:"pityriasis_alba,omitempty"`
	PityriasisRosea        float64 `json:"pityriasis_rosea,omitempty"`
	PrurigoNodularis       float64 `json:"prurigo_nodularis,omitempty"`
	Psoriasis              float64 `json:"psoriasis,omitempty"`
	Rosacea                float64 `json:"rosacea,omitempty"`
	SebaceousCyst          float64 `json:"sebaceous_cyst,omitempty"`
	Sebaceousnevus         float64 `json:"sebaceousnevus,omitempty"`
	SeborrheicDermatitis   float64 `json:"seborrheic_dermatitis,omitempty"`
	SeborrheicKeratosis    float64 `json:"seborrheic_keratosis,omitempty"`
	SkinTag                float64 `json:"skin_tag,omitempty"`
	StasisDermatitis       float64 `json:"stasis_dermatitis,omitempty"`
	Syringoma              float64 `json:"syringoma,omitempty"`
	TineaCapitis           float64 `json:"tinea_capitis,omitempty"`
	TineaCorporis          float64 `json:"tinea_corporis,omitempty"`
	TineaCruris            float64 `json:"tinea_cruris,omitempty"`
	TineaManuum            float64 `json:"tinea_manuum,omitempty"`
	TineaPedis             float64 `json:"tinea_pedis,omitempty"`
	TineaUnguium           float64 `json:"tinea_unguium,omitempty"`
	TineaVersicolor        float64 `json:"tinea_versicolor,omitempty"`
	Urticaria              float64 `json:"urticaria,omitempty"`
	UrticariaPapular       float64 `json:"urticaria_papular,omitempty"`
	Varicella              float64 `json:"varicella,omitempty"`
	VerrucaPlana           float64 `json:"verruca_plana,omitempty"`
	VerrucaVulgaris        float64 `json:"verruca_vulgaris,omitempty"`
	Vitiligo               float64 `json:"vitiligo,omitempty"`
}

type PortraitSkinDiseaseDetectionResponse = BaseResponse[PortraitSkinDiseaseDetectionResponseData]

func (api *PortraitAPI) PortraitSkinDiseaseDetection(ctx context.Context, params PortraitSkinDiseaseDetectionParams) (*PortraitSkinDiseaseDetectionResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitSkinDiseaseDetectionResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/analysis/skin-disease-detection", nil, params, true, &out)
	return &out, err
}

type PortraitTryOnClothesParams struct {
	TaskType     string    `form:"task_type"`
	PersonImage  FileInput `form:"person_image"`
	ClothesImage FileInput `form:"clothes_image"`
	ClothesType  string    `form:"clothes_type"`
}

type PortraitTryOnClothesResponseData struct {
	TaskType string `json:"task_type,omitempty"`
	TaskID   string `json:"task_id,omitempty"`
}

type PortraitTryOnClothesResponse = BaseResponse[PortraitTryOnClothesResponseData]

func (api *PortraitAPI) PortraitTryOnClothes(ctx context.Context, params PortraitTryOnClothesParams) (*PortraitTryOnClothesResponse, error) {
	if err := validateRequired(params, "TaskType", "PersonImage", "ClothesImage", "ClothesType"); err != nil {
		return nil, err
	}
	var out PortraitTryOnClothesResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/try-on-clothes", nil, params, true, &out)
	return &out, err
}

type PortraitTryOnClothesProParams struct {
	TaskType      string    `form:"task_type"`
	PersonImage   FileInput `form:"person_image"`
	TopGarment    FileInput `form:"top_garment"`
	BottomGarment FileInput `form:"bottom_garment,omitempty"`
	Resolution    int       `form:"resolution,omitempty"`
	RestoreFace   bool      `form:"restore_face,omitempty"`
}

type PortraitTryOnClothesProResponseData struct {
	TaskType string `json:"task_type,omitempty"`
	TaskID   string `json:"task_id,omitempty"`
}

type PortraitTryOnClothesProResponse = BaseResponse[PortraitTryOnClothesProResponseData]

func (api *PortraitAPI) PortraitTryOnClothesPro(ctx context.Context, params PortraitTryOnClothesProParams) (*PortraitTryOnClothesProResponse, error) {
	if err := validateRequired(params, "TaskType", "PersonImage", "TopGarment"); err != nil {
		return nil, err
	}
	var out PortraitTryOnClothesProResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/try-on-clothes-pro", nil, params, true, &out)
	return &out, err
}

type PortraitFacialBlurringParams struct {
	Image FileInput `form:"image"`
}

type PortraitFacialBlurringResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type PortraitFacialBlurringResponse = BaseResponse[PortraitFacialBlurringResponseData]

func (api *PortraitAPI) PortraitFacialBlurring(ctx context.Context, params PortraitFacialBlurringParams) (*PortraitFacialBlurringResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitFacialBlurringResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/blurred-faces", nil, params, true, &out)
	return &out, err
}

type PortraitExpressionEditingParams struct {
	ImageTarget   FileInput `form:"image_target"`
	ServiceChoice int       `form:"service_choice"`
}

type PortraitExpressionEditingResponseData struct {
	Image string `json:"image,omitempty"`
}

type PortraitExpressionEditingResponse = BaseResponse[PortraitExpressionEditingResponseData]

func (api *PortraitAPI) PortraitExpressionEditing(ctx context.Context, params PortraitExpressionEditingParams) (*PortraitExpressionEditingResponse, error) {
	if err := validateRequired(params, "ImageTarget", "ServiceChoice"); err != nil {
		return nil, err
	}
	var out PortraitExpressionEditingResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/emotion-editor", nil, params, true, &out)
	return &out, err
}

type PortraitFaceRestorationEnhancementParams struct {
	Image FileInput `form:"image"`
}

type PortraitFaceRestorationEnhancementResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type PortraitFaceRestorationEnhancementResponse = BaseResponse[PortraitFaceRestorationEnhancementResponseData]

func (api *PortraitAPI) PortraitFaceRestorationEnhancement(ctx context.Context, params PortraitFaceRestorationEnhancementParams) (*PortraitFaceRestorationEnhancementResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitFaceRestorationEnhancementResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/enhance-face", nil, params, true, &out)
	return &out, err
}

type PortraitFaceAttributeEditingParams struct {
	Image          FileInput `form:"image"`
	ActionType     string    `form:"action_type"`
	QualityControl string    `form:"quality_control,omitempty"`
	FaceLocation   any       `form:"face_location,omitempty"`
}

type PortraitFaceAttributeEditingResponseData struct {
	Result any    `json:"result,omitempty"`
	Image  string `json:"image,omitempty"`
}

type PortraitFaceAttributeEditingResponse = BaseResponse[PortraitFaceAttributeEditingResponseData]

func (api *PortraitAPI) PortraitFaceAttributeEditing(ctx context.Context, params PortraitFaceAttributeEditingParams) (*PortraitFaceAttributeEditingResponse, error) {
	if err := validateRequired(params, "Image", "ActionType"); err != nil {
		return nil, err
	}
	var out PortraitFaceAttributeEditingResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/face-attribute-editing", nil, params, true, &out)
	return &out, err
}

type PortraitFacialBeautificationParams struct {
	Image  FileInput `form:"image"`
	Sharp  float64   `form:"sharp"`
	Smooth float64   `form:"smooth"`
	White  float64   `form:"white"`
}

type PortraitFacialBeautificationResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type PortraitFacialBeautificationResponse = BaseResponse[PortraitFacialBeautificationResponseData]

func (api *PortraitAPI) PortraitFacialBeautification(ctx context.Context, params PortraitFacialBeautificationParams) (*PortraitFacialBeautificationResponse, error) {
	if err := validateRequired(params, "Image", "Sharp", "Smooth", "White"); err != nil {
		return nil, err
	}
	var out PortraitFacialBeautificationResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/face-beauty", nil, params, true, &out)
	return &out, err
}

type PortraitFacialBeautificationAdvancedParams struct {
	Image        FileInput `form:"image"`
	Whitening    int       `form:"whitening,omitempty"`
	Smoothing    int       `form:"smoothing,omitempty"`
	FaceLifting  int       `form:"face_lifting,omitempty"`
	EyeEnlarging int       `form:"eye_enlarging,omitempty"`
}

type PortraitFacialBeautificationAdvancedResponseData struct {
	ResultImage string `json:"result_image,omitempty"`
}

type PortraitFacialBeautificationAdvancedResponse = BaseResponse[PortraitFacialBeautificationAdvancedResponseData]

func (api *PortraitAPI) PortraitFacialBeautificationAdvanced(ctx context.Context, params PortraitFacialBeautificationAdvancedParams) (*PortraitFacialBeautificationAdvancedResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitFacialBeautificationAdvancedResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/face-beauty-advanced", nil, params, true, &out)
	return &out, err
}

type PortraitFacialBeautificationProParams struct {
	Image         FileInput `form:"image"`
	Whitening     int       `form:"whitening,omitempty"`
	Smoothing     int       `form:"smoothing,omitempty"`
	Thinface      int       `form:"thinface,omitempty"`
	ShrinkFace    int       `form:"shrink_face,omitempty"`
	EnlargeEye    int       `form:"enlarge_eye,omitempty"`
	RemoveEyebrow int       `form:"remove_eyebrow,omitempty"`
	FilterType    int       `form:"filter_type,omitempty"`
	TaskType      string    `form:"task_type,omitempty"`
}

type PortraitFacialBeautificationProResponseData struct {
	TaskType string `json:"task_type,omitempty"`
	Result   string `json:"result,omitempty"`
}

type PortraitFacialBeautificationProResponse = BaseResponse[PortraitFacialBeautificationProResponseData]

func (api *PortraitAPI) PortraitFacialBeautificationPro(ctx context.Context, params PortraitFacialBeautificationProParams) (*PortraitFacialBeautificationProResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitFacialBeautificationProResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/face-beauty-pro", nil, params, true, &out)
	return &out, err
}

type PortraitFacialFiltersParams struct {
	Image        FileInput `form:"image"`
	ResourceType string    `form:"resource_type"`
	Strength     float64   `form:"strength"`
}

type PortraitFacialFiltersResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type PortraitFacialFiltersResponse = BaseResponse[PortraitFacialFiltersResponseData]

func (api *PortraitAPI) PortraitFacialFilters(ctx context.Context, params PortraitFacialFiltersParams) (*PortraitFacialFiltersResponse, error) {
	if err := validateRequired(params, "Image", "ResourceType", "Strength"); err != nil {
		return nil, err
	}
	var out PortraitFacialFiltersResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/face-filter", nil, params, true, &out)
	return &out, err
}

type PortraitFaceFusionParams struct {
	ImageTarget      FileInput `form:"image_target"`
	ImageTemplate    FileInput `form:"image_template"`
	SourceSimilarity float64   `form:"source_similarity,omitempty"`
}

type PortraitFaceFusionResponseData struct {
	Image string `json:"image,omitempty"`
}

type PortraitFaceFusionResponse = BaseResponse[PortraitFaceFusionResponseData]

func (api *PortraitAPI) PortraitFaceFusion(ctx context.Context, params PortraitFaceFusionParams) (*PortraitFaceFusionResponse, error) {
	if err := validateRequired(params, "ImageTarget", "ImageTemplate"); err != nil {
		return nil, err
	}
	var out PortraitFaceFusionResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/face-fusion", nil, params, true, &out)
	return &out, err
}

type PortraitHairstyleEditingParams struct {
	ImageTarget FileInput `form:"image_target"`
	HairType    int       `form:"hair_type,omitempty"`
}

type PortraitHairstyleEditingResponseData struct {
	Image string `json:"image,omitempty"`
}

type PortraitHairstyleEditingResponse = BaseResponse[PortraitHairstyleEditingResponseData]

func (api *PortraitAPI) PortraitHairstyleEditing(ctx context.Context, params PortraitHairstyleEditingParams) (*PortraitHairstyleEditingResponse, error) {
	if err := validateRequired(params, "ImageTarget"); err != nil {
		return nil, err
	}
	var out PortraitHairstyleEditingResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/hairstyle-editor", nil, params, true, &out)
	return &out, err
}

type PortraitHairstyleEditingProParams struct {
	TaskType  string    `form:"task_type"`
	Image     FileInput `form:"image"`
	HairStyle string    `form:"hair_style"`
	Color     string    `form:"color,omitempty"`
	ImageSize int       `form:"image_size,omitempty"`
	Mask      FileInput `form:"mask,omitempty"`
	Bangs     int       `form:"bangs,omitempty"`
	Mode      int       `form:"mode,omitempty"`
	Reference int       `form:"reference,omitempty"`
}

type PortraitHairstyleEditingProResponseData struct {
	TaskType string `json:"task_type,omitempty"`
	TaskID   string `json:"task_id,omitempty"`
}

type PortraitHairstyleEditingProResponse = BaseResponse[PortraitHairstyleEditingProResponseData]

func (api *PortraitAPI) PortraitHairstyleEditingPro(ctx context.Context, params PortraitHairstyleEditingProParams) (*PortraitHairstyleEditingProResponse, error) {
	if err := validateRequired(params, "TaskType", "Image", "HairStyle"); err != nil {
		return nil, err
	}
	var out PortraitHairstyleEditingProResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/hairstyle-editor-pro", nil, params, true, &out)
	return &out, err
}

type PortraitLipsColorChangerParams struct {
	Image         FileInput `form:"image"`
	LipColorInfos any       `form:"lip_color_infos"`
}

type PortraitLipsColorChangerResponseData struct {
	ResultImage string `json:"result_image,omitempty"`
}

type PortraitLipsColorChangerResponse = BaseResponse[PortraitLipsColorChangerResponseData]

func (api *PortraitAPI) PortraitLipsColorChanger(ctx context.Context, params PortraitLipsColorChangerParams) (*PortraitLipsColorChangerResponse, error) {
	if err := validateRequired(params, "Image", "LipColorInfos"); err != nil {
		return nil, err
	}
	var out PortraitLipsColorChangerResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/lips-color-changer", nil, params, true, &out)
	return &out, err
}

type PortraitLivePhotosParams struct {
	ImageTarget FileInput `form:"image_target"`
	Type        int       `form:"type,omitempty"`
}

type PortraitLivePhotosResponseData struct {
	Video string `json:"video,omitempty"`
}

type PortraitLivePhotosResponse = BaseResponse[PortraitLivePhotosResponseData]

func (api *PortraitAPI) PortraitLivePhotos(ctx context.Context, params PortraitLivePhotosParams) (*PortraitLivePhotosResponse, error) {
	if err := validateRequired(params, "ImageTarget"); err != nil {
		return nil, err
	}
	var out PortraitLivePhotosResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/live-photo", nil, params, true, &out)
	return &out, err
}

type PortraitCartoonYourselfParams struct {
	Image FileInput `form:"image"`
	Type  string    `form:"type"`
}

type PortraitCartoonYourselfResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type PortraitCartoonYourselfResponse = BaseResponse[PortraitCartoonYourselfResponseData]

func (api *PortraitAPI) PortraitCartoonYourself(ctx context.Context, params PortraitCartoonYourselfParams) (*PortraitCartoonYourselfResponse, error) {
	if err := validateRequired(params, "Image", "Type"); err != nil {
		return nil, err
	}
	var out PortraitCartoonYourselfResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/portrait-animation", nil, params, true, &out)
	return &out, err
}

type PortraitIntelligentBeautificationParams struct {
	ImageTarget FileInput `form:"image_target"`
	MultiFace   string    `form:"multi_face,omitempty"`
	BeautyLevel float64   `form:"beauty_level,omitempty"`
	TaskType    string    `form:"task_type,omitempty"`
}

type PortraitIntelligentBeautificationResponseData struct {
	TaskType string `json:"task_type,omitempty"`
	Image    string `json:"image,omitempty"`
}

type PortraitIntelligentBeautificationResponse = BaseResponse[PortraitIntelligentBeautificationResponseData]

func (api *PortraitAPI) PortraitIntelligentBeautification(ctx context.Context, params PortraitIntelligentBeautificationParams) (*PortraitIntelligentBeautificationResponse, error) {
	if err := validateRequired(params, "ImageTarget"); err != nil {
		return nil, err
	}
	var out PortraitIntelligentBeautificationResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/smart-beauty", nil, params, true, &out)
	return &out, err
}

type PortraitIntelligentFaceSlimmingParams struct {
	Image      FileInput `form:"image"`
	SlimDegree float64   `form:"slim_degree,omitempty"`
}

type PortraitIntelligentFaceSlimmingResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type PortraitIntelligentFaceSlimmingResponse = BaseResponse[PortraitIntelligentFaceSlimmingResponseData]

func (api *PortraitAPI) PortraitIntelligentFaceSlimming(ctx context.Context, params PortraitIntelligentFaceSlimmingParams) (*PortraitIntelligentFaceSlimmingResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitIntelligentFaceSlimmingResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/smart-face-slimming", nil, params, true, &out)
	return &out, err
}

type PortraitIntelligentSkinRetouchingParams struct {
	Image           FileInput `form:"image"`
	RetouchDegree   float64   `form:"retouch_degree,omitempty"`
	WhiteningDegree float64   `form:"whitening_degree,omitempty"`
}

type PortraitIntelligentSkinRetouchingResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type PortraitIntelligentSkinRetouchingResponse = BaseResponse[PortraitIntelligentSkinRetouchingResponseData]

func (api *PortraitAPI) PortraitIntelligentSkinRetouching(ctx context.Context, params PortraitIntelligentSkinRetouchingParams) (*PortraitIntelligentSkinRetouchingResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitIntelligentSkinRetouchingResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/smart-skin", nil, params, true, &out)
	return &out, err
}

type PortraitTryOnClothesRefinerParams struct {
	TaskType      string    `form:"task_type"`
	PersonImage   FileInput `form:"person_image"`
	TopGarment    FileInput `form:"top_garment"`
	CoarseImage   FileInput `form:"coarse_image"`
	Gender        string    `form:"gender"`
	BottomGarment FileInput `form:"bottom_garment,omitempty"`
}

type PortraitTryOnClothesRefinerResponseData struct {
	TaskType string `json:"task_type,omitempty"`
	TaskID   string `json:"task_id,omitempty"`
}

type PortraitTryOnClothesRefinerResponse = BaseResponse[PortraitTryOnClothesRefinerResponseData]

func (api *PortraitAPI) PortraitTryOnClothesRefiner(ctx context.Context, params PortraitTryOnClothesRefinerParams) (*PortraitTryOnClothesRefinerResponse, error) {
	if err := validateRequired(params, "TaskType", "PersonImage", "TopGarment", "CoarseImage", "Gender"); err != nil {
		return nil, err
	}
	var out PortraitTryOnClothesRefinerResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/enhance/try-on-clothes-refiner", nil, params, true, &out)
	return &out, err
}

func (api *PortraitAPI) ChangeHairstyle(ctx context.Context, params PortraitHairstyleEditingProParams) (*PortraitHairstyleEditingProResponse, error) {
	return api.PortraitHairstyleEditingPro(ctx, params)
}

func (api *PortraitAPI) Retouch(ctx context.Context, params PortraitIntelligentBeautificationParams) (*PortraitIntelligentBeautificationResponse, error) {
	return api.PortraitIntelligentBeautification(ctx, params)
}

// BEGIN GENERATED OPENAPI ADDITIONS

type PortraitAIFaceRatingParams struct {
	Image       FileInput `form:"image"`
	AspectRatio string    `form:"aspect_ratio,omitempty"`
}

type PortraitAIFaceRatingResponseData struct {
}

type PortraitAIFaceRatingResponse = BaseResponse[PortraitAIFaceRatingResponseData]

func (api *PortraitAPI) PortraitAIFaceRating(ctx context.Context, params PortraitAIFaceRatingParams) (*PortraitAIFaceRatingResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAIFaceRatingResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/analysis/ai-face-rating", nil, params, true, &out)
	return &out, err
}

type PortraitAIBaldParams struct {
	Image FileInput `form:"image"`
}

type PortraitAIBaldResponseData struct {
}

type PortraitAIBaldResponse = BaseResponse[PortraitAIBaldResponseData]

func (api *PortraitAPI) PortraitAIBald(ctx context.Context, params PortraitAIBaldParams) (*PortraitAIBaldResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAIBaldResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-bald", nil, params, true, &out)
	return &out, err
}

type PortraitAIBeardRemovalParams struct {
	Image FileInput `form:"image"`
}

type PortraitAIBeardRemovalResponseData struct {
}

type PortraitAIBeardRemovalResponse = BaseResponse[PortraitAIBeardRemovalResponseData]

func (api *PortraitAPI) PortraitAIBeardRemoval(ctx context.Context, params PortraitAIBeardRemovalParams) (*PortraitAIBeardRemovalResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAIBeardRemovalResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-beard-removal", nil, params, true, &out)
	return &out, err
}

type PortraitAIBeardStylingParams struct {
	Image         FileInput `form:"image"`
	Beard         string    `form:"beard,omitempty"`
	ImageTemplate FileInput `form:"image_template,omitempty"`
}

type PortraitAIBeardStylingResponseData struct {
}

type PortraitAIBeardStylingResponse = BaseResponse[PortraitAIBeardStylingResponseData]

func (api *PortraitAPI) PortraitAIBeardStyling(ctx context.Context, params PortraitAIBeardStylingParams) (*PortraitAIBeardStylingResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	if err := validateAtLeastOne(params, "Beard", "ImageTemplate"); err != nil {
		return nil, err
	}
	var out PortraitAIBeardStylingResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-beard-styling", nil, params, true, &out)
	return &out, err
}

type PortraitAIBreastExpansionParams struct {
	TaskType    string    `form:"task_type,omitempty"`
	PersonImage FileInput `form:"person_image"`
}

type PortraitAIBreastExpansionResponseData struct {
	Image string `json:"image,omitempty"`
}

type PortraitAIBreastExpansionResponse = BaseResponse[PortraitAIBreastExpansionResponseData]

func (api *PortraitAPI) PortraitAIBreastExpansion(ctx context.Context, params PortraitAIBreastExpansionParams) (*PortraitAIBreastExpansionResponse, error) {
	if err := validateRequired(params, "PersonImage"); err != nil {
		return nil, err
	}
	var out PortraitAIBreastExpansionResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-big-tits", nil, params, true, &out)
	return &out, err
}

type PortraitAIButtEnhancementParams struct {
	Image FileInput `form:"image"`
}

type PortraitAIButtEnhancementResponseData struct {
}

type PortraitAIButtEnhancementResponse = BaseResponse[PortraitAIButtEnhancementResponseData]

func (api *PortraitAPI) PortraitAIButtEnhancement(ctx context.Context, params PortraitAIButtEnhancementParams) (*PortraitAIButtEnhancementResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAIButtEnhancementResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-butt-enhancement", nil, params, true, &out)
	return &out, err
}

type PortraitAIColoredContactsParams struct {
	Image FileInput `form:"image"`
	Name  string    `form:"name,omitempty"`
	Desc  string    `form:"desc,omitempty"`
}

type PortraitAIColoredContactsResponseData struct {
}

type PortraitAIColoredContactsResponse = BaseResponse[PortraitAIColoredContactsResponseData]

func (api *PortraitAPI) PortraitAIColoredContacts(ctx context.Context, params PortraitAIColoredContactsParams) (*PortraitAIColoredContactsResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAIColoredContactsResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-colored-contacts", nil, params, true, &out)
	return &out, err
}

type PortraitAIEyebrowsParams struct {
	Image          FileInput `form:"image"`
	ReferenceImage FileInput `form:"reference_image"`
	Resolution     string    `form:"resolution,omitempty"`
}

type PortraitAIEyebrowsResponseData struct {
}

type PortraitAIEyebrowsResponse = BaseResponse[PortraitAIEyebrowsResponseData]

func (api *PortraitAPI) PortraitAIEyebrows(ctx context.Context, params PortraitAIEyebrowsParams) (*PortraitAIEyebrowsResponse, error) {
	if err := validateRequired(params, "Image", "ReferenceImage"); err != nil {
		return nil, err
	}
	var out PortraitAIEyebrowsResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-eyebrows", nil, params, true, &out)
	return &out, err
}

type PortraitAIEyelashesParams struct {
	Image FileInput `form:"image"`
	Name  string    `form:"name,omitempty"`
	Desc  string    `form:"desc,omitempty"`
}

type PortraitAIEyelashesResponseData struct {
}

type PortraitAIEyelashesResponse = BaseResponse[PortraitAIEyelashesResponseData]

func (api *PortraitAPI) PortraitAIEyelashes(ctx context.Context, params PortraitAIEyelashesParams) (*PortraitAIEyelashesResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAIEyelashesResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-eyelashes", nil, params, true, &out)
	return &out, err
}

type PortraitAIEyeshadowTryOnParams struct {
	Image          FileInput `form:"image"`
	EyeshadowStyle string    `form:"eyeshadow_style,omitempty"`
	ImageTemplate  FileInput `form:"image_template,omitempty"`
	AspectRatio    string    `form:"aspect_ratio,omitempty"`
}

type PortraitAIEyeshadowTryOnResponseData struct {
}

type PortraitAIEyeshadowTryOnResponse = BaseResponse[PortraitAIEyeshadowTryOnResponseData]

func (api *PortraitAPI) PortraitAIEyeshadowTryOn(ctx context.Context, params PortraitAIEyeshadowTryOnParams) (*PortraitAIEyeshadowTryOnResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	if err := validateAtLeastOne(params, "EyeshadowStyle", "ImageTemplate"); err != nil {
		return nil, err
	}
	var out PortraitAIEyeshadowTryOnResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-eyeshadow", nil, params, true, &out)
	return &out, err
}

type PortraitAIFaceSwapParams struct {
	ImageTarget   FileInput `form:"image_target"`
	ImageTemplate FileInput `form:"image_template"`
}

type PortraitAIFaceSwapResponseData struct {
}

type PortraitAIFaceSwapResponse = BaseResponse[PortraitAIFaceSwapResponseData]

func (api *PortraitAPI) PortraitAIFaceSwap(ctx context.Context, params PortraitAIFaceSwapParams) (*PortraitAIFaceSwapResponse, error) {
	if err := validateRequired(params, "ImageTarget", "ImageTemplate"); err != nil {
		return nil, err
	}
	var out PortraitAIFaceSwapResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-face-swap", nil, params, true, &out)
	return &out, err
}

type PortraitAIFatFilterParams struct {
	Image FileInput `form:"image"`
}

type PortraitAIFatFilterResponseData struct {
}

type PortraitAIFatFilterResponse = BaseResponse[PortraitAIFatFilterResponseData]

func (api *PortraitAPI) PortraitAIFatFilter(ctx context.Context, params PortraitAIFatFilterParams) (*PortraitAIFatFilterResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAIFatFilterResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-fat-filter", nil, params, true, &out)
	return &out, err
}

type PortraitAIHairColorParams struct {
	Image FileInput `form:"image"`
	Name  string    `form:"name,omitempty"`
	Desc  string    `form:"desc,omitempty"`
}

type PortraitAIHairColorResponseData struct {
}

type PortraitAIHairColorResponse = BaseResponse[PortraitAIHairColorResponseData]

func (api *PortraitAPI) PortraitAIHairColor(ctx context.Context, params PortraitAIHairColorParams) (*PortraitAIHairColorResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAIHairColorResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-hair-color", nil, params, true, &out)
	return &out, err
}

type PortraitAIHairLossSimulationParams struct {
	Image FileInput `form:"image"`
	Level string    `form:"level"`
}

type PortraitAIHairLossSimulationResponseData struct {
}

type PortraitAIHairLossSimulationResponse = BaseResponse[PortraitAIHairLossSimulationResponseData]

func (api *PortraitAPI) PortraitAIHairLossSimulation(ctx context.Context, params PortraitAIHairLossSimulationParams) (*PortraitAIHairLossSimulationResponse, error) {
	if err := validateRequired(params, "Image", "Level"); err != nil {
		return nil, err
	}
	var out PortraitAIHairLossSimulationResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-hair-loss-simulation", nil, params, true, &out)
	return &out, err
}

type PortraitAILipEnhancementParams struct {
	Image FileInput `form:"image"`
}

type PortraitAILipEnhancementResponseData struct {
}

type PortraitAILipEnhancementResponse = BaseResponse[PortraitAILipEnhancementResponseData]

func (api *PortraitAPI) PortraitAILipEnhancement(ctx context.Context, params PortraitAILipEnhancementParams) (*PortraitAILipEnhancementResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAILipEnhancementResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-lip-enhancement", nil, params, true, &out)
	return &out, err
}

type PortraitAIWaistSlimmingParams struct {
	Image FileInput `form:"image"`
}

type PortraitAIWaistSlimmingResponseData struct {
}

type PortraitAIWaistSlimmingResponse = BaseResponse[PortraitAIWaistSlimmingResponseData]

func (api *PortraitAPI) PortraitAIWaistSlimming(ctx context.Context, params PortraitAIWaistSlimmingParams) (*PortraitAIWaistSlimmingResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAIWaistSlimmingResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/ai-waist-slimming", nil, params, true, &out)
	return &out, err
}

type PortraitTryOnClothesPremiumParams struct {
	TaskType      string    `form:"task_type"`
	PersonImage   FileInput `form:"person_image"`
	TopGarment    FileInput `form:"top_garment"`
	Resolution    float64   `form:"resolution,omitempty"`
	RestoreFace   bool      `form:"restore_face,omitempty"`
	BottomGarment FileInput `form:"bottom_garment,omitempty"`
}

type PortraitTryOnClothesPremiumResponseData struct {
}

type PortraitTryOnClothesPremiumResponse = BaseResponse[PortraitTryOnClothesPremiumResponseData]

func (api *PortraitAPI) PortraitTryOnClothesPremium(ctx context.Context, params PortraitTryOnClothesPremiumParams) (*PortraitTryOnClothesPremiumResponse, error) {
	if err := validateRequired(params, "TaskType", "PersonImage", "TopGarment"); err != nil {
		return nil, err
	}
	var out PortraitTryOnClothesPremiumResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/editing/try-on-clothes-premium", nil, params, true, &out)
	return &out, err
}

type PortraitAIBigHeadEffectParams struct {
	Image FileInput `form:"image"`
}

type PortraitAIBigHeadEffectResponseData struct {
}

type PortraitAIBigHeadEffectResponse = BaseResponse[PortraitAIBigHeadEffectResponseData]

func (api *PortraitAPI) PortraitAIBigHeadEffect(ctx context.Context, params PortraitAIBigHeadEffectParams) (*PortraitAIBigHeadEffectResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAIBigHeadEffectResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/ai-big-head-effect", nil, params, true, &out)
	return &out, err
}

type PortraitAIHalloweenMaskParams struct {
	Image         FileInput `form:"image"`
	MaskStyle     string    `form:"mask_style,omitempty"`
	ImageTemplate FileInput `form:"image_template,omitempty"`
	AspectRatio   string    `form:"aspect_ratio,omitempty"`
}

type PortraitAIHalloweenMaskResponseData struct {
}

type PortraitAIHalloweenMaskResponse = BaseResponse[PortraitAIHalloweenMaskResponseData]

func (api *PortraitAPI) PortraitAIHalloweenMask(ctx context.Context, params PortraitAIHalloweenMaskParams) (*PortraitAIHalloweenMaskResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	if err := validateAtLeastOne(params, "MaskStyle", "ImageTemplate"); err != nil {
		return nil, err
	}
	var out PortraitAIHalloweenMaskResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/ai-halloween-mask", nil, params, true, &out)
	return &out, err
}

type PortraitAILipBiteExpressionsParams struct {
	Image       FileInput `form:"image"`
	GridCount   int       `form:"grid_count,omitempty"`
	AspectRatio string    `form:"aspect_ratio,omitempty"`
}

type PortraitAILipBiteExpressionsResponseData struct {
}

type PortraitAILipBiteExpressionsResponse = BaseResponse[PortraitAILipBiteExpressionsResponseData]

func (api *PortraitAPI) PortraitAILipBiteExpressions(ctx context.Context, params PortraitAILipBiteExpressionsParams) (*PortraitAILipBiteExpressionsResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAILipBiteExpressionsResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/ai-lip-bite-expressions", nil, params, true, &out)
	return &out, err
}

type PortraitAIRedLipGlossParams struct {
	Image FileInput `form:"image"`
}

type PortraitAIRedLipGlossResponseData struct {
}

type PortraitAIRedLipGlossResponse = BaseResponse[PortraitAIRedLipGlossResponseData]

func (api *PortraitAPI) PortraitAIRedLipGloss(ctx context.Context, params PortraitAIRedLipGlossParams) (*PortraitAIRedLipGlossResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAIRedLipGlossResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/ai-red-lip-gloss", nil, params, true, &out)
	return &out, err
}

type PortraitAISquareFaceFilterParams struct {
	Image FileInput `form:"image"`
}

type PortraitAISquareFaceFilterResponseData struct {
}

type PortraitAISquareFaceFilterResponse = BaseResponse[PortraitAISquareFaceFilterResponseData]

func (api *PortraitAPI) PortraitAISquareFaceFilter(ctx context.Context, params PortraitAISquareFaceFilterParams) (*PortraitAISquareFaceFilterResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAISquareFaceFilterResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/ai-square-face-filter", nil, params, true, &out)
	return &out, err
}

type PortraitExpressionEditingAdvancedParams struct {
	Image      FileInput `form:"image"`
	Expression string    `form:"expression"`
}

type PortraitExpressionEditingAdvancedResponseData struct {
}

type PortraitExpressionEditingAdvancedResponse = BaseResponse[PortraitExpressionEditingAdvancedResponseData]

func (api *PortraitAPI) PortraitExpressionEditingAdvanced(ctx context.Context, params PortraitExpressionEditingAdvancedParams) (*PortraitExpressionEditingAdvancedResponse, error) {
	if err := validateRequired(params, "Image", "Expression"); err != nil {
		return nil, err
	}
	var out PortraitExpressionEditingAdvancedResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/emotion-editor-advanced", nil, params, true, &out)
	return &out, err
}

type PortraitHairstyleEditingPremiumParams struct {
	Image         FileInput `form:"image"`
	ImageTemplate FileInput `form:"image_template,omitempty"`
	HairStyle     string    `form:"hair_style,omitempty"`
	Color         string    `form:"color,omitempty"`
}

type PortraitHairstyleEditingPremiumResponseData struct {
}

type PortraitHairstyleEditingPremiumResponse = BaseResponse[PortraitHairstyleEditingPremiumResponseData]

func (api *PortraitAPI) PortraitHairstyleEditingPremium(ctx context.Context, params PortraitHairstyleEditingPremiumParams) (*PortraitHairstyleEditingPremiumResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	if err := validateAtLeastOne(params, "HairStyle", "ImageTemplate"); err != nil {
		return nil, err
	}
	var out PortraitHairstyleEditingPremiumResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/hairstyle-editor-premium", nil, params, true, &out)
	return &out, err
}

type PortraitAISkinEnhancementAdvancedParams struct {
	Image              FileInput `form:"image"`
	SmartSkin          string    `form:"smart_skin,omitempty"`
	AcneRemoval        string    `form:"acne_removal,omitempty"`
	SpotCorrection     string    `form:"spot_correction,omitempty"`
	SkinBrightening    string    `form:"skin_brightening,omitempty"`
	SkinSmoothing      string    `form:"skin_smoothing,omitempty"`
	PoreControl        string    `form:"pore_control,omitempty"`
	WrinkleReduction   string    `form:"wrinkle_reduction,omitempty"`
	UnderEyeCorrection string    `form:"under_eye_correction,omitempty"`
	ScarReduction      string    `form:"scar_reduction,omitempty"`
}

type PortraitAISkinEnhancementAdvancedResponseData struct {
}

type PortraitAISkinEnhancementAdvancedResponse = BaseResponse[PortraitAISkinEnhancementAdvancedResponseData]

func (api *PortraitAPI) PortraitAISkinEnhancementAdvanced(ctx context.Context, params PortraitAISkinEnhancementAdvancedParams) (*PortraitAISkinEnhancementAdvancedResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out PortraitAISkinEnhancementAdvancedResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/portrait/effects/smart-skin-advanced", nil, params, true, &out)
	return &out, err
}

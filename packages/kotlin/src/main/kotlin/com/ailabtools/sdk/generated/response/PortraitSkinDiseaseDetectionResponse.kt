package com.ailabtools.sdk.generated.response

import com.ailabtools.sdk.ApiResponse
import com.ailabtools.sdk.ErrorDetail
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject

/** Typed response data. */
@Serializable
public data class PortraitSkinDiseaseDetectionResponseData(
    @SerialName("body_part")
    public val bodyPart: String? = null,
    @SerialName("image_quality")
    public val imageQuality: Double? = null,
    @SerialName("image_type")
    public val imageType: String? = null,
    @SerialName("results_english")
    public val resultsEnglish: JsonObject? = null,
    @SerialName("acne")
    public val acne: Double? = null,
    @SerialName("actinic_keratosis")
    public val actinicKeratosis: Double? = null,
    @SerialName("alopecia_androgenetica")
    public val alopeciaAndrogenetica: Double? = null,
    @SerialName("alopecia_areata")
    public val alopeciaAreata: Double? = null,
    @SerialName("bullous_dermatosis")
    public val bullousDermatosis: Double? = null,
    @SerialName("chloasma")
    public val chloasma: Double? = null,
    @SerialName("corn")
    public val corn: Double? = null,
    @SerialName("dermatofibroma")
    public val dermatofibroma: Double? = null,
    @SerialName("eczema_dermatitis")
    public val eczemaDermatitis: Double? = null,
    @SerialName("erysipelas")
    public val erysipelas: Double? = null,
    @SerialName("erythema_multiforme")
    public val erythemaMultiforme: Double? = null,
    @SerialName("folliculitis")
    public val folliculitis: Double? = null,
    @SerialName("furuncle")
    public val furuncle: Double? = null,
    @SerialName("haemangioma")
    public val haemangioma: Double? = null,
    @SerialName("herpes")
    public val herpes: Double? = null,
    @SerialName("herpes_simplex")
    public val herpesSimplex: Double? = null,
    @SerialName("iga_vasculitis")
    public val igaVasculitis: Double? = null,
    @SerialName("keloid")
    public val keloid: Double? = null,
    @SerialName("keratosis_follicularism")
    public val keratosisFollicularism: Double? = null,
    @SerialName("lichen_planus")
    public val lichenPlanus: Double? = null,
    @SerialName("lupus_erythematosus")
    public val lupusErythematosus: Double? = null,
    @SerialName("molluscum_contagiosum")
    public val molluscumContagiosum: Double? = null,
    @SerialName("nevus")
    public val nevus: Double? = null,
    @SerialName("paronychia")
    public val paronychia: Double? = null,
    @SerialName("pityriasis_alba")
    public val pityriasisAlba: Double? = null,
    @SerialName("pityriasis_rosea")
    public val pityriasisRosea: Double? = null,
    @SerialName("prurigo_nodularis")
    public val prurigoNodularis: Double? = null,
    @SerialName("psoriasis")
    public val psoriasis: Double? = null,
    @SerialName("rosacea")
    public val rosacea: Double? = null,
    @SerialName("sebaceous_cyst")
    public val sebaceousCyst: Double? = null,
    @SerialName("sebaceousnevus")
    public val sebaceousnevus: Double? = null,
    @SerialName("seborrheic_dermatitis")
    public val seborrheicDermatitis: Double? = null,
    @SerialName("seborrheic_keratosis")
    public val seborrheicKeratosis: Double? = null,
    @SerialName("skin_tag")
    public val skinTag: Double? = null,
    @SerialName("stasis_dermatitis")
    public val stasisDermatitis: Double? = null,
    @SerialName("syringoma")
    public val syringoma: Double? = null,
    @SerialName("tinea_capitis")
    public val tineaCapitis: Double? = null,
    @SerialName("tinea_corporis")
    public val tineaCorporis: Double? = null,
    @SerialName("tinea_cruris")
    public val tineaCruris: Double? = null,
    @SerialName("tinea_manuum")
    public val tineaManuum: Double? = null,
    @SerialName("tinea_pedis")
    public val tineaPedis: Double? = null,
    @SerialName("tinea_unguium")
    public val tineaUnguium: Double? = null,
    @SerialName("tinea_versicolor")
    public val tineaVersicolor: Double? = null,
    @SerialName("urticaria")
    public val urticaria: Double? = null,
    @SerialName("urticaria_papular")
    public val urticariaPapular: Double? = null,
    @SerialName("varicella")
    public val varicella: Double? = null,
    @SerialName("verruca_plana")
    public val verrucaPlana: Double? = null,
    @SerialName("verruca_vulgaris")
    public val verrucaVulgaris: Double? = null,
    @SerialName("vitiligo")
    public val vitiligo: Double? = null,
)

/** Typed response for Detect Skin Disease API. */
@Serializable
public data class PortraitSkinDiseaseDetectionResponse(
    @SerialName("request_id")
    public override val requestId: String? = null,
    @SerialName("log_id")
    public override val logId: String? = null,
    @SerialName("error_code")
    public override val errorCode: Int? = null,
    @SerialName("error_code_str")
    public override val errorCodeString: String? = null,
    @SerialName("error_msg")
    public override val errorMessage: String? = null,
    @SerialName("error_detail")
    public override val errorDetail: ErrorDetail? = null,
    @SerialName("data")
    public val data: PortraitSkinDiseaseDetectionResponseData? = null,
    @SerialName("image")
    public val image: String? = null,
    @SerialName("ratio")
    public val ratio: JsonElement? = null,
    @SerialName("task_type")
    public val taskType: String? = null,
    @SerialName("task_id")
    public override val taskId: String? = null,
    @SerialName("task_status")
    public override val taskStatus: Int? = null,
    @SerialName("body_part")
    public val bodyPart: String? = null,
    @SerialName("image_quality")
    public val imageQuality: Double? = null,
    @SerialName("image_type")
    public val imageType: String? = null,
    @SerialName("results_english")
    public val resultsEnglish: JsonObject? = null,
    @SerialName("acne")
    public val acne: Double? = null,
    @SerialName("actinic_keratosis")
    public val actinicKeratosis: Double? = null,
    @SerialName("alopecia_androgenetica")
    public val alopeciaAndrogenetica: Double? = null,
    @SerialName("alopecia_areata")
    public val alopeciaAreata: Double? = null,
    @SerialName("bullous_dermatosis")
    public val bullousDermatosis: Double? = null,
    @SerialName("chloasma")
    public val chloasma: Double? = null,
    @SerialName("corn")
    public val corn: Double? = null,
    @SerialName("dermatofibroma")
    public val dermatofibroma: Double? = null,
    @SerialName("eczema_dermatitis")
    public val eczemaDermatitis: Double? = null,
    @SerialName("erysipelas")
    public val erysipelas: Double? = null,
    @SerialName("erythema_multiforme")
    public val erythemaMultiforme: Double? = null,
    @SerialName("folliculitis")
    public val folliculitis: Double? = null,
    @SerialName("furuncle")
    public val furuncle: Double? = null,
    @SerialName("haemangioma")
    public val haemangioma: Double? = null,
    @SerialName("herpes")
    public val herpes: Double? = null,
    @SerialName("herpes_simplex")
    public val herpesSimplex: Double? = null,
    @SerialName("iga_vasculitis")
    public val igaVasculitis: Double? = null,
    @SerialName("keloid")
    public val keloid: Double? = null,
    @SerialName("keratosis_follicularism")
    public val keratosisFollicularism: Double? = null,
    @SerialName("lichen_planus")
    public val lichenPlanus: Double? = null,
    @SerialName("lupus_erythematosus")
    public val lupusErythematosus: Double? = null,
    @SerialName("molluscum_contagiosum")
    public val molluscumContagiosum: Double? = null,
    @SerialName("nevus")
    public val nevus: Double? = null,
    @SerialName("paronychia")
    public val paronychia: Double? = null,
    @SerialName("pityriasis_alba")
    public val pityriasisAlba: Double? = null,
    @SerialName("pityriasis_rosea")
    public val pityriasisRosea: Double? = null,
    @SerialName("prurigo_nodularis")
    public val prurigoNodularis: Double? = null,
    @SerialName("psoriasis")
    public val psoriasis: Double? = null,
    @SerialName("rosacea")
    public val rosacea: Double? = null,
    @SerialName("sebaceous_cyst")
    public val sebaceousCyst: Double? = null,
    @SerialName("sebaceousnevus")
    public val sebaceousnevus: Double? = null,
    @SerialName("seborrheic_dermatitis")
    public val seborrheicDermatitis: Double? = null,
    @SerialName("seborrheic_keratosis")
    public val seborrheicKeratosis: Double? = null,
    @SerialName("skin_tag")
    public val skinTag: Double? = null,
    @SerialName("stasis_dermatitis")
    public val stasisDermatitis: Double? = null,
    @SerialName("syringoma")
    public val syringoma: Double? = null,
    @SerialName("tinea_capitis")
    public val tineaCapitis: Double? = null,
    @SerialName("tinea_corporis")
    public val tineaCorporis: Double? = null,
    @SerialName("tinea_cruris")
    public val tineaCruris: Double? = null,
    @SerialName("tinea_manuum")
    public val tineaManuum: Double? = null,
    @SerialName("tinea_pedis")
    public val tineaPedis: Double? = null,
    @SerialName("tinea_unguium")
    public val tineaUnguium: Double? = null,
    @SerialName("tinea_versicolor")
    public val tineaVersicolor: Double? = null,
    @SerialName("urticaria")
    public val urticaria: Double? = null,
    @SerialName("urticaria_papular")
    public val urticariaPapular: Double? = null,
    @SerialName("varicella")
    public val varicella: Double? = null,
    @SerialName("verruca_plana")
    public val verrucaPlana: Double? = null,
    @SerialName("verruca_vulgaris")
    public val verrucaVulgaris: Double? = null,
    @SerialName("vitiligo")
    public val vitiligo: Double? = null,
) : ApiResponse

package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.Map;

/** Response data for Detect Skin Disease API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitSkinDiseaseDetectionResponseData {
    @JsonProperty("body_part")
    private String bodyPart;
    @JsonProperty("image_quality")
    private Double imageQuality;
    @JsonProperty("image_type")
    private String imageType;
    @JsonProperty("results_english")
    private Map<String, Object> resultsEnglish;
    @JsonProperty("acne")
    private Double acne;
    @JsonProperty("actinic_keratosis")
    private Double actinicKeratosis;
    @JsonProperty("alopecia_androgenetica")
    private Double alopeciaAndrogenetica;
    @JsonProperty("alopecia_areata")
    private Double alopeciaAreata;
    @JsonProperty("bullous_dermatosis")
    private Double bullousDermatosis;
    @JsonProperty("chloasma")
    private Double chloasma;
    @JsonProperty("corn")
    private Double corn;
    @JsonProperty("dermatofibroma")
    private Double dermatofibroma;
    @JsonProperty("eczema_dermatitis")
    private Double eczemaDermatitis;
    @JsonProperty("erysipelas")
    private Double erysipelas;
    @JsonProperty("erythema_multiforme")
    private Double erythemaMultiforme;
    @JsonProperty("folliculitis")
    private Double folliculitis;
    @JsonProperty("furuncle")
    private Double furuncle;
    @JsonProperty("haemangioma")
    private Double haemangioma;
    @JsonProperty("herpes")
    private Double herpes;
    @JsonProperty("herpes_simplex")
    private Double herpesSimplex;
    @JsonProperty("iga_vasculitis")
    private Double igaVasculitis;
    @JsonProperty("keloid")
    private Double keloid;
    @JsonProperty("keratosis_follicularism")
    private Double keratosisFollicularism;
    @JsonProperty("lichen_planus")
    private Double lichenPlanus;
    @JsonProperty("lupus_erythematosus")
    private Double lupusErythematosus;
    @JsonProperty("molluscum_contagiosum")
    private Double molluscumContagiosum;
    @JsonProperty("nevus")
    private Double nevus;
    @JsonProperty("paronychia")
    private Double paronychia;
    @JsonProperty("pityriasis_alba")
    private Double pityriasisAlba;
    @JsonProperty("pityriasis_rosea")
    private Double pityriasisRosea;
    @JsonProperty("prurigo_nodularis")
    private Double prurigoNodularis;
    @JsonProperty("psoriasis")
    private Double psoriasis;
    @JsonProperty("rosacea")
    private Double rosacea;
    @JsonProperty("sebaceous_cyst")
    private Double sebaceousCyst;
    @JsonProperty("sebaceousnevus")
    private Double sebaceousnevus;
    @JsonProperty("seborrheic_dermatitis")
    private Double seborrheicDermatitis;
    @JsonProperty("seborrheic_keratosis")
    private Double seborrheicKeratosis;
    @JsonProperty("skin_tag")
    private Double skinTag;
    @JsonProperty("stasis_dermatitis")
    private Double stasisDermatitis;
    @JsonProperty("syringoma")
    private Double syringoma;
    @JsonProperty("tinea_capitis")
    private Double tineaCapitis;
    @JsonProperty("tinea_corporis")
    private Double tineaCorporis;
    @JsonProperty("tinea_cruris")
    private Double tineaCruris;
    @JsonProperty("tinea_manuum")
    private Double tineaManuum;
    @JsonProperty("tinea_pedis")
    private Double tineaPedis;
    @JsonProperty("tinea_unguium")
    private Double tineaUnguium;
    @JsonProperty("tinea_versicolor")
    private Double tineaVersicolor;
    @JsonProperty("urticaria")
    private Double urticaria;
    @JsonProperty("urticaria_papular")
    private Double urticariaPapular;
    @JsonProperty("varicella")
    private Double varicella;
    @JsonProperty("verruca_plana")
    private Double verrucaPlana;
    @JsonProperty("verruca_vulgaris")
    private Double verrucaVulgaris;
    @JsonProperty("vitiligo")
    private Double vitiligo;

    public String getBodyPart() { return bodyPart; }
    public Double getImageQuality() { return imageQuality; }
    public String getImageType() { return imageType; }
    public Map<String, Object> getResultsEnglish() { return resultsEnglish; }
    public Double getAcne() { return acne; }
    public Double getActinicKeratosis() { return actinicKeratosis; }
    public Double getAlopeciaAndrogenetica() { return alopeciaAndrogenetica; }
    public Double getAlopeciaAreata() { return alopeciaAreata; }
    public Double getBullousDermatosis() { return bullousDermatosis; }
    public Double getChloasma() { return chloasma; }
    public Double getCorn() { return corn; }
    public Double getDermatofibroma() { return dermatofibroma; }
    public Double getEczemaDermatitis() { return eczemaDermatitis; }
    public Double getErysipelas() { return erysipelas; }
    public Double getErythemaMultiforme() { return erythemaMultiforme; }
    public Double getFolliculitis() { return folliculitis; }
    public Double getFuruncle() { return furuncle; }
    public Double getHaemangioma() { return haemangioma; }
    public Double getHerpes() { return herpes; }
    public Double getHerpesSimplex() { return herpesSimplex; }
    public Double getIgaVasculitis() { return igaVasculitis; }
    public Double getKeloid() { return keloid; }
    public Double getKeratosisFollicularism() { return keratosisFollicularism; }
    public Double getLichenPlanus() { return lichenPlanus; }
    public Double getLupusErythematosus() { return lupusErythematosus; }
    public Double getMolluscumContagiosum() { return molluscumContagiosum; }
    public Double getNevus() { return nevus; }
    public Double getParonychia() { return paronychia; }
    public Double getPityriasisAlba() { return pityriasisAlba; }
    public Double getPityriasisRosea() { return pityriasisRosea; }
    public Double getPrurigoNodularis() { return prurigoNodularis; }
    public Double getPsoriasis() { return psoriasis; }
    public Double getRosacea() { return rosacea; }
    public Double getSebaceousCyst() { return sebaceousCyst; }
    public Double getSebaceousnevus() { return sebaceousnevus; }
    public Double getSeborrheicDermatitis() { return seborrheicDermatitis; }
    public Double getSeborrheicKeratosis() { return seborrheicKeratosis; }
    public Double getSkinTag() { return skinTag; }
    public Double getStasisDermatitis() { return stasisDermatitis; }
    public Double getSyringoma() { return syringoma; }
    public Double getTineaCapitis() { return tineaCapitis; }
    public Double getTineaCorporis() { return tineaCorporis; }
    public Double getTineaCruris() { return tineaCruris; }
    public Double getTineaManuum() { return tineaManuum; }
    public Double getTineaPedis() { return tineaPedis; }
    public Double getTineaUnguium() { return tineaUnguium; }
    public Double getTineaVersicolor() { return tineaVersicolor; }
    public Double getUrticaria() { return urticaria; }
    public Double getUrticariaPapular() { return urticariaPapular; }
    public Double getVaricella() { return varicella; }
    public Double getVerrucaPlana() { return verrucaPlana; }
    public Double getVerrucaVulgaris() { return verrucaVulgaris; }
    public Double getVitiligo() { return vitiligo; }
}

<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitSkinDiseaseDetectionResponseData
{
    use ResponseValue;

    public function __construct(
        /** Skin lesion site identification. scalp: Scalp. face: Face. neck: Neck. arm: Arm. chest: Chest. abdomen: Abdomen. oxter: Axilla. back: Back. waist: Lumbar region. hand: Hand. genitals: External genitalia. cruris: Groin / Inguinal region. leg: Leg. foot: Foot. unknown: Unknown. */
        public readonly ?string $bodyPart = null,
        /** Image quality score. */
        public readonly ?float $imageQuality = null,
        /** Image classification. */
        public readonly ?string $imageType = null,
        /** EnglishThe predicted results. Contains Key-Value pairs, where Key is the disease name and Value is the probability. */
        /** @var array<string, mixed>|null */
        public readonly ?array $resultsEnglish = null,
        /** Acne */
        public readonly ?float $acne = null,
        /** Actinic Keratosis */
        public readonly ?float $actinicKeratosis = null,
        /** Alopecia Androgenetica */
        public readonly ?float $alopeciaAndrogenetica = null,
        /** Alopecia Areata */
        public readonly ?float $alopeciaAreata = null,
        /** Bullous Dermatosis */
        public readonly ?float $bullousDermatosis = null,
        /** Chloasma */
        public readonly ?float $chloasma = null,
        /** Corn */
        public readonly ?float $corn = null,
        /** Dermatofibroma */
        public readonly ?float $dermatofibroma = null,
        /** Eczema Dermatitis */
        public readonly ?float $eczemaDermatitis = null,
        /** Erysipelas */
        public readonly ?float $erysipelas = null,
        /** Erythema Multiforme */
        public readonly ?float $erythemaMultiforme = null,
        /** Folliculitis */
        public readonly ?float $folliculitis = null,
        /** Furuncle */
        public readonly ?float $furuncle = null,
        /** Haemangioma */
        public readonly ?float $haemangioma = null,
        /** Herpes */
        public readonly ?float $herpes = null,
        /** Herpes Simplex */
        public readonly ?float $herpesSimplex = null,
        /** Iga Vasculitis */
        public readonly ?float $igaVasculitis = null,
        /** Keloid */
        public readonly ?float $keloid = null,
        /** Keratosis Follicularism */
        public readonly ?float $keratosisFollicularism = null,
        /** Lichen Planus */
        public readonly ?float $lichenPlanus = null,
        /** Lupus Erythematosus */
        public readonly ?float $lupusErythematosus = null,
        /** Molluscum Contagiosum */
        public readonly ?float $molluscumContagiosum = null,
        /** Nevus */
        public readonly ?float $nevus = null,
        /** Paronychia */
        public readonly ?float $paronychia = null,
        /** Pityriasis Alba */
        public readonly ?float $pityriasisAlba = null,
        /** Pityriasis Rosea */
        public readonly ?float $pityriasisRosea = null,
        /** Prurigo Nodularis */
        public readonly ?float $prurigoNodularis = null,
        /** Psoriasis */
        public readonly ?float $psoriasis = null,
        /** Rosacea */
        public readonly ?float $rosacea = null,
        /** Sebaceous Cyst */
        public readonly ?float $sebaceousCyst = null,
        /** Sebaceousnevus */
        public readonly ?float $sebaceousnevus = null,
        /** Seborrheic Dermatitis */
        public readonly ?float $seborrheicDermatitis = null,
        /** Seborrheic Keratosis */
        public readonly ?float $seborrheicKeratosis = null,
        /** Skin Tag */
        public readonly ?float $skinTag = null,
        /** Stasis Dermatitis */
        public readonly ?float $stasisDermatitis = null,
        /** Syringoma */
        public readonly ?float $syringoma = null,
        /** Tinea Capitis */
        public readonly ?float $tineaCapitis = null,
        /** Tinea Corporis */
        public readonly ?float $tineaCorporis = null,
        /** Tinea Cruris */
        public readonly ?float $tineaCruris = null,
        /** Tinea Manuum */
        public readonly ?float $tineaManuum = null,
        /** Tinea Pedis */
        public readonly ?float $tineaPedis = null,
        /** Tinea Unguium */
        public readonly ?float $tineaUnguium = null,
        /** Tinea Versicolor */
        public readonly ?float $tineaVersicolor = null,
        /** Urticaria */
        public readonly ?float $urticaria = null,
        /** Urticaria Papular */
        public readonly ?float $urticariaPapular = null,
        /** Varicella */
        public readonly ?float $varicella = null,
        /** Verruca Plana */
        public readonly ?float $verrucaPlana = null,
        /** Verruca Vulgaris */
        public readonly ?float $verrucaVulgaris = null,
        /** Vitiligo */
        public readonly ?float $vitiligo = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            bodyPart: self::stringValue($payload['body_part'] ?? null),
            imageQuality: self::floatValue($payload['image_quality'] ?? null),
            imageType: self::stringValue($payload['image_type'] ?? null),
            resultsEnglish: self::mapValue($payload['results_english'] ?? null),
            acne: self::floatValue($payload['acne'] ?? null),
            actinicKeratosis: self::floatValue($payload['actinic_keratosis'] ?? null),
            alopeciaAndrogenetica: self::floatValue($payload['alopecia_androgenetica'] ?? null),
            alopeciaAreata: self::floatValue($payload['alopecia_areata'] ?? null),
            bullousDermatosis: self::floatValue($payload['bullous_dermatosis'] ?? null),
            chloasma: self::floatValue($payload['chloasma'] ?? null),
            corn: self::floatValue($payload['corn'] ?? null),
            dermatofibroma: self::floatValue($payload['dermatofibroma'] ?? null),
            eczemaDermatitis: self::floatValue($payload['eczema_dermatitis'] ?? null),
            erysipelas: self::floatValue($payload['erysipelas'] ?? null),
            erythemaMultiforme: self::floatValue($payload['erythema_multiforme'] ?? null),
            folliculitis: self::floatValue($payload['folliculitis'] ?? null),
            furuncle: self::floatValue($payload['furuncle'] ?? null),
            haemangioma: self::floatValue($payload['haemangioma'] ?? null),
            herpes: self::floatValue($payload['herpes'] ?? null),
            herpesSimplex: self::floatValue($payload['herpes_simplex'] ?? null),
            igaVasculitis: self::floatValue($payload['iga_vasculitis'] ?? null),
            keloid: self::floatValue($payload['keloid'] ?? null),
            keratosisFollicularism: self::floatValue($payload['keratosis_follicularism'] ?? null),
            lichenPlanus: self::floatValue($payload['lichen_planus'] ?? null),
            lupusErythematosus: self::floatValue($payload['lupus_erythematosus'] ?? null),
            molluscumContagiosum: self::floatValue($payload['molluscum_contagiosum'] ?? null),
            nevus: self::floatValue($payload['nevus'] ?? null),
            paronychia: self::floatValue($payload['paronychia'] ?? null),
            pityriasisAlba: self::floatValue($payload['pityriasis_alba'] ?? null),
            pityriasisRosea: self::floatValue($payload['pityriasis_rosea'] ?? null),
            prurigoNodularis: self::floatValue($payload['prurigo_nodularis'] ?? null),
            psoriasis: self::floatValue($payload['psoriasis'] ?? null),
            rosacea: self::floatValue($payload['rosacea'] ?? null),
            sebaceousCyst: self::floatValue($payload['sebaceous_cyst'] ?? null),
            sebaceousnevus: self::floatValue($payload['sebaceousnevus'] ?? null),
            seborrheicDermatitis: self::floatValue($payload['seborrheic_dermatitis'] ?? null),
            seborrheicKeratosis: self::floatValue($payload['seborrheic_keratosis'] ?? null),
            skinTag: self::floatValue($payload['skin_tag'] ?? null),
            stasisDermatitis: self::floatValue($payload['stasis_dermatitis'] ?? null),
            syringoma: self::floatValue($payload['syringoma'] ?? null),
            tineaCapitis: self::floatValue($payload['tinea_capitis'] ?? null),
            tineaCorporis: self::floatValue($payload['tinea_corporis'] ?? null),
            tineaCruris: self::floatValue($payload['tinea_cruris'] ?? null),
            tineaManuum: self::floatValue($payload['tinea_manuum'] ?? null),
            tineaPedis: self::floatValue($payload['tinea_pedis'] ?? null),
            tineaUnguium: self::floatValue($payload['tinea_unguium'] ?? null),
            tineaVersicolor: self::floatValue($payload['tinea_versicolor'] ?? null),
            urticaria: self::floatValue($payload['urticaria'] ?? null),
            urticariaPapular: self::floatValue($payload['urticaria_papular'] ?? null),
            varicella: self::floatValue($payload['varicella'] ?? null),
            verrucaPlana: self::floatValue($payload['verruca_plana'] ?? null),
            verrucaVulgaris: self::floatValue($payload['verruca_vulgaris'] ?? null),
            vitiligo: self::floatValue($payload['vitiligo'] ?? null),
        );
    }
}

package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Change Facial Expressions Advanced API. */
public data class PortraitExpressionEditingAdvancedParams(
    /** - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
    public val image: FileInput,
    /** Expression. See [Supported expression values](https://www.ailabtools.com/docs/ai-portrait/effects/emotion-editor-advanced/api#expression). Allowed values: natural_smile, bright_laugh, sweet_smile, happy_surprise, proud_smirk, laughing_with_tears, crazy_happy_face, overjoyed_screaming_laugh, slight_annoyance, angry_stare, gritted_teeth_anger, furious_shout, cold_glare, cartoon_rage_face, angry_puffed_cheeks, villain_angry_smirk, downcast_sadness, wronged_near_tears, tearful_sadness, heartbroken_breakdown, silent_grief, big_crying_face, puppy_eyes_sad, fake_crying_funny, tongue_out_playful, wink_cute, silly_face, mischievous_smirk, exaggerated_surprised_face, cross_eyed_silly_face, one_eye_squint_funny, duck_face_funny, crazy_tongue_face, slight_surprise, shocked_open_mouth, disbelief, fearful_surprise, jaw_drop_surprise, cartoon_shocked_face, speechless_shock, nervous_fear, terrified_expression, timid_withdrawal, panic_breakdown, screaming_fear_face, frozen_in_fear, panic_wide_eyes, mild_dislike, strong_aversion, nauseated_disgust, eye_roll_disgust, extreme_disgust_face, grossed_out_face, dramatic_eye_roll, shy_smile, blushing_shyness, awkward_forced_smile, socially_embarrassed, over_shy_blushing_face, awkward_sweat_smile, embarrassed_cover_mouth, confident_smile, dominant_gaze, cold_cool_expression, victorious_pride, super_confident_smirk, bossy_cool_face, winning_smug_face, slight_confusion, frowning_thought, not_understanding, suspicious_look, confused_tilted_face, what_are_you_doing_face, brain_loading_face, tired_blank_eyes, helpless_expression, awkward_silence, sleepy_yawn, dead_inside_face, exhausted_melting_face, speechless_blank_stare, charming_smile, flirty_eyebrow_raise, soft_lip_bite, dreamy_gaze, playful_seductive_smirk, wink_flirty_face, dramatic_lip_bite, gentle_gaze, fond_smile, sweet_pouting_affection, deep_affectionate_gaze, heart_eyes_expression, overly_sweet_affection, clingy_cute_pout, cold_contempt, sarcastic_sneer, dismissive_pout, in_control_expression, extreme_smug_face, mocking_laugh_face, looking_down_contempt, soft_cute_smile, cute_pout, innocent_big_eyes, expectant_sparkling_eyes, super_cute_pouting_face, sparkling_eyes_cute, baby_like_innocent_face, frowning_in_pain, holding_back_tears, crying_breakdown, repressed_exhaustion, dramatic_pain_face, holding_back_scream, overwhelmed_breakdown_face. */
    public val expression: String,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "expression" to expression,
    )
}

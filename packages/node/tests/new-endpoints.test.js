const assert = require("assert");
const {
  AILabClient,
  validateCutoutHdHumanBodyBackgroundRemovalParams,
  validatePortraitAIBreastExpansionParams,
  validatePortraitHairstyleEditingPremiumParams,
  validatePortraitTryOnClothesPremiumParams,
} = require("../dist/index.js");

const image = Buffer.from([0xff, 0xd8, 0xff]);

assert.throws(
  () => validatePortraitHairstyleEditingPremiumParams({ image }),
  /At least one of hairStyle, imageTemplate is required/,
);
validatePortraitHairstyleEditingPremiumParams({ image, hairStyle: "BuzzCut" });
assert.throws(
  () => validateCutoutHdHumanBodyBackgroundRemovalParams({}),
  /Missing required param: image/,
);
assert.throws(
  () => validatePortraitAIBreastExpansionParams({}),
  /Missing required param: personImage/,
);
assert.throws(
  () => validatePortraitTryOnClothesPremiumParams({ taskType: "async", personImage: image }),
  /Missing required param: topGarment/,
);
validatePortraitTryOnClothesPremiumParams({
  taskType: "async",
  personImage: image,
  topGarment: image,
});

const client = new AILabClient({ apiKey: "test" });
assert.equal(typeof client.portrait.portraitAIFaceSwap, "function");
assert.equal(typeof client.portrait.portraitAIBreastExpansion, "function");
assert.equal(typeof client.portrait.portraitTryOnClothesPremium, "function");

console.log("OK new endpoints");

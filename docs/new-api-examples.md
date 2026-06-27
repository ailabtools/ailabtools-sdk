# Examples for Recently Added APIs

These TypeScript examples cover the 33 APIs added after the original 60-endpoint release. Replace placeholder text and files with values that satisfy each linked API's image and content requirements. Other SDKs expose the same methods using the language-specific invocation style in the [complete method reference](method-aliases.md).

```ts
import { readFileSync } from "node:fs";
import { AILabClient } from "ailabtools";

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });
```

## HD Universal Background Removal API

[Official API documentation](https://www.ailabtools.com/docs/ai-cutout/general/hd-universal-background-removal/api)

```ts
const result = await client.cutout.cutoutHDUniversalBackgroundRemoval({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## HD Human Background Removal API

[Official API documentation](https://www.ailabtools.com/docs/ai-cutout/portrait/hd-portrait-background-removal/api)

```ts
const result = await client.cutout.cutoutHdHumanBodyBackgroundRemoval({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Nail Art API

[Official API documentation](https://www.ailabtools.com/docs/ai-image/editing/ai-nail-art/api)

```ts
const result = await client.image.imageAINailArt({
  image: readFileSync("./photo.jpg"),
  nailName: "French manicure",
  nailDesc: "Clean white tips with a glossy finish",
});
console.log(result);
```

## AI Nail Art Pro API

[Official API documentation](https://www.ailabtools.com/docs/ai-image/editing/ai-nail-art-pro/api)

```ts
const result = await client.image.imageAINailArtPro({
  image: readFileSync("./photo.jpg"),
  referenceImage: readFileSync("./reference.jpg"),
});
console.log(result);
```

## AI Photography API

[Official API documentation](https://www.ailabtools.com/docs/ai-image/effects/ai-photography/api)

```ts
const result = await client.image.imageAIPhotography({
  image: readFileSync("./photo.jpg"),
  styleTitle: "Studio portrait",
  styleDesc: "Soft natural light and a neutral background",
});
console.log(result);
```

## AI Emoji Generator API

[Official API documentation](https://www.ailabtools.com/docs/ai-image/effects/photo-to-emoji-grid/api)

```ts
const result = await client.image.imageAIEmojiGenerator({
  image: readFileSync("./photo.jpg"),
  expression: "natural_smile",
  style: "3d_cartoon",
  scene: "portrait",
});
console.log(result);
```

## Photo to Coloring Page API

[Official API documentation](https://www.ailabtools.com/docs/ai-image/effects/photo-to-line-art/api)

```ts
const result = await client.image.imagePhotoToColoringPage({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Flower Wallpaper API

[Official API documentation](https://www.ailabtools.com/docs/ai-image/generation/ai-flower-wallpaper/api)

```ts
const result = await client.image.imageAIFlowerWallpaper({
  name: "AILabTools",
  flowerElements: "Peonies and eucalyptus",
  aspectRatio: "9:16",
});
console.log(result);
```

## AI Face Rating API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/analysis/ai-face-rating/api)

```ts
const result = await client.portrait.portraitAIFaceRating({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Bald API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-bald/api)

```ts
const result = await client.portrait.portraitAIBald({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Beard Removal API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-beard-removal/api)

```ts
const result = await client.portrait.portraitAIBeardRemoval({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Beard Styling API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-beard-styling/api)

```ts
const result = await client.portrait.portraitAIBeardStyling({
  image: readFileSync("./photo.jpg"),
  beard: "FullBeardClassic",
});
console.log(result);
```

## AI Breast Expansion API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-breast-expansion/api)

```ts
const result = await client.portrait.portraitAIBreastExpansion({
  personImage: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Butt Enhancement API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-butt-enhancement/api)

```ts
const result = await client.portrait.portraitAIButtEnhancement({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Colored Contacts API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-colored-contacts/api)

```ts
const result = await client.portrait.portraitAIColoredContacts({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Eyebrows API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-eyebrows/api)

```ts
const result = await client.portrait.portraitAIEyebrows({
  image: readFileSync("./photo.jpg"),
  referenceImage: readFileSync("./reference.jpg"),
});
console.log(result);
```

## AI Eyelashes API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-eyelashes/api)

```ts
const result = await client.portrait.portraitAIEyelashes({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Eyeshadow Try-On API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-eyeshadow/api)

```ts
const result = await client.portrait.portraitAIEyeshadowTryOn({
  image: readFileSync("./photo.jpg"),
  eyeshadowStyle: "1",
});
console.log(result);
```

## AI Face Swap API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-face-swap/api)

```ts
const result = await client.portrait.portraitAIFaceSwap({
  imageTarget: readFileSync("./photo.jpg"),
  imageTemplate: readFileSync("./reference.jpg"),
});
console.log(result);
```

## AI Fat Filter API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-fat-filter/api)

```ts
const result = await client.portrait.portraitAIFatFilter({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Hair Color API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-hair-color/api)

```ts
const result = await client.portrait.portraitAIHairColor({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Hair Loss Simulation API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-hair-loss-simulation/api)

```ts
const result = await client.portrait.portraitAIHairLossSimulation({
  image: readFileSync("./photo.jpg"),
  level: "man_1",
});
console.log(result);
```

## AI Lip Enhancement API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-lip-enhancement/api)

```ts
const result = await client.portrait.portraitAILipEnhancement({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Waist Slimming API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/ai-waist-slimming/api)

```ts
const result = await client.portrait.portraitAIWaistSlimming({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## Try on Clothes Premium API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/editing/try-on-clothes-premium/api)

```ts
const result = await client.portrait.portraitTryOnClothesPremium({
  taskType: "async",
  personImage: readFileSync("./photo.jpg"),
  topGarment: readFileSync("./reference.jpg"),
});
console.log(result);
```

## AI Big Head Effect API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/effects/ai-big-head-effect/api)

```ts
const result = await client.portrait.portraitAIBigHeadEffect({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Halloween Mask API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/effects/ai-halloween-mask/api)

```ts
const result = await client.portrait.portraitAIHalloweenMask({
  image: readFileSync("./photo.jpg"),
  maskStyle: "1",
});
console.log(result);
```

## AI Lip Bite Expressions API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/effects/ai-lip-bite-expressions/api)

```ts
const result = await client.portrait.portraitAILipBiteExpressions({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Red Lip Gloss API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/effects/ai-red-lip-gloss/api)

```ts
const result = await client.portrait.portraitAIRedLipGloss({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## AI Square Face Filter API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/effects/ai-square-face-filter/api)

```ts
const result = await client.portrait.portraitAISquareFaceFilter({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

## Change Facial Expressions Advanced API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/effects/emotion-editor-advanced/api)

```ts
const result = await client.portrait.portraitExpressionEditingAdvanced({
  image: readFileSync("./photo.jpg"),
  expression: "natural_smile",
});
console.log(result);
```

## Hairstyle Changer Premium API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/effects/hairstyle-editor-premium/api)

```ts
const result = await client.portrait.portraitHairstyleEditingPremium({
  image: readFileSync("./photo.jpg"),
  hairStyle: "BuzzCut",
});
console.log(result);
```

## AI Skin Enhancement Advanced API

[Official API documentation](https://www.ailabtools.com/docs/ai-portrait/effects/smart-skin-advanced/api)

```ts
const result = await client.portrait.portraitAISkinEnhancementAdvanced({
  image: readFileSync("./photo.jpg"),
});
console.log(result);
```

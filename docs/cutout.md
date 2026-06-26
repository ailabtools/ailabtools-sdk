# Cutout API Reference

> This document is generated from the active endpoints in `packages/spec.json`. Disabled platform endpoints are intentionally excluded.

## Costume Background Removal API

- SDK method: `cutout.cutoutClothingBackgroundRemoval()`
- HTTP: `POST /api/cutout/general/apparel-background-removal`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| out_mode | integer | No | 0 |
| cloth_class | string | No | Clothing categories. Multiple values can be submitted at once, separated by commas (,). tops: Tops. coat: Coat. skirt: Skirt. pants: Pants. bag: Bag. shoes: Shoes. hat: Hat. |
| return_form | string | No | Specify the desired image format for the output. whiteBK: Returns an image with a white background. mask: Returns a single-channel mask. If not specified, a four-channel PNG image will be returned. |

### Request URL

```text
https://www.ailabapi.com/api/cutout/general/apparel-background-removal
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| elements | array | Returns an array of elements. |
| 0 | object |  |
| image_url | string | Returns the keying result image URL address. |
| 1 | object |  |
| class_url | object | Return the URL corresponding to the clothing category based on the input cloth_class. |
| tops | string | Tops URL. |
| coat | string | Coat URL. |
| skirt | string | Skirt URL. |
| pants | string | Pants URL. |
| bag | string | Bag URL. |
| shoes | string | Shoes URL. |
| hat | string | Hat URL. |

### SDK Return Type

- `BaseResponse<CutoutClothingBackgroundRemovalResponseData>`

## Product Background Removal API

- SDK method: `cutout.cutoutProductBackgroundRemoval()`
- HTTP: `POST /api/cutout/general/commodity-background-removal`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| return_form | string | No | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges). |

### Request URL

```text
https://www.ailabapi.com/api/cutout/general/commodity-background-removal
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### SDK Return Type

- `BaseResponse<CutoutProductBackgroundRemovalResponseData>`

## Food Background Removal API

- SDK method: `cutout.cutoutFoodBackgroundRemoval()`
- HTTP: `POST /api/cutout/general/food-background-removal`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| return_form | string | No | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. |

### Request URL

```text
https://www.ailabapi.com/api/cutout/general/food-background-removal
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### SDK Return Type

- `BaseResponse<CutoutFoodBackgroundRemovalResponseData>`

## Universal Background Removal API

- SDK method: `cutout.cutoutUniversalBackgroundRemoval()`
- HTTP: `POST /api/cutout/general/universal-background-removal`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| return_form | string | No | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges). |

### Request URL

```text
https://www.ailabapi.com/api/cutout/general/universal-background-removal
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### SDK Return Type

- `BaseResponse<CutoutUniversalBackgroundRemovalResponseData>`

## Head Extraction API

- SDK method: `cutout.cutoutAvatarExtraction()`
- HTTP: `POST /api/cutout/portrait/avatar-extraction`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| return_form | string | No | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. |

### Request URL

```text
https://www.ailabapi.com/api/cutout/portrait/avatar-extraction
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| elements | array | The keying result of each child element. |
| image_url | string | Resulting image URL address. |
| width | integer | The width of the result map. |
| height | integer | The height of the resultant graph. |
| x | integer | Top left x-coordinate. |
| y | integer | Top left y-coordinate. |

### SDK Return Type

- `BaseResponse<CutoutAvatarExtractionResponseData>`

## Hairstyle Extraction API

- SDK method: `cutout.cutoutHairExtraction()`
- HTTP: `POST /api/cutout/portrait/hairstyle-extraction`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

### Request URL

```text
https://www.ailabapi.com/api/cutout/portrait/hairstyle-extraction
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| elements | array | The keying result of each child element. |
| image_url | string | Resulting image URL address. |
| width | integer | The width of the result map. |
| height | integer | The height of the resultant graph. |
| x | integer | Top left x-coordinate. |
| y | integer | Top left y-coordinate. |

### SDK Return Type

- `BaseResponse<CutoutHairExtractionResponseData>`

## Human Background Removal API

- SDK method: `cutout.cutoutHumanBackgroundRemoval()`
- HTTP: `POST /api/cutout/portrait/portrait-background-removal`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| return_form | string | No | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges). |

### Request URL

```text
https://www.ailabapi.com/api/cutout/portrait/portrait-background-removal
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### SDK Return Type

- `BaseResponse<CutoutHumanBackgroundRemovalResponseData>`

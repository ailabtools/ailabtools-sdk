# Cutout API 参考

> 本文档按当前 `packages/spec.json` 的 active 接口生成，已移除平台停用接口。

## Costume Background Removal API

- SDK 方法：`cutout.cutoutClothingBackgroundRemoval()`
- HTTP：`POST /api/cutout/general/apparel-background-removal`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| out_mode | integer | 否 | 0 |
| cloth_class | string | 否 | Clothing categories. Multiple values can be submitted at once, separated by commas (,). tops: Tops. coat: Coat. skirt: Skirt. pants: Pants. bag: Bag. shoes: Shoes. hat: Hat. |
| return_form | string | 否 | Specify the desired image format for the output. whiteBK: Returns an image with a white background. mask: Returns a single-channel mask. If not specified, a four-channel PNG image will be returned. |

### 请求地址

```text
https://www.ailabapi.com/api/cutout/general/apparel-background-removal
```

### 响应字段

| 字段 | 类型 | 说明 |
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

### 返回类型

- `BaseResponse<CutoutClothingBackgroundRemovalResponseData>`

## Product Background Removal API

- SDK 方法：`cutout.cutoutProductBackgroundRemoval()`
- HTTP：`POST /api/cutout/general/commodity-background-removal`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| return_form | string | 否 | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges). |

### 请求地址

```text
https://www.ailabapi.com/api/cutout/general/commodity-background-removal
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### 返回类型

- `BaseResponse<CutoutProductBackgroundRemovalResponseData>`

## Food Background Removal API

- SDK 方法：`cutout.cutoutFoodBackgroundRemoval()`
- HTTP：`POST /api/cutout/general/food-background-removal`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| return_form | string | 否 | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. |

### 请求地址

```text
https://www.ailabapi.com/api/cutout/general/food-background-removal
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### 返回类型

- `BaseResponse<CutoutFoodBackgroundRemovalResponseData>`

## Universal Background Removal API

- SDK 方法：`cutout.cutoutUniversalBackgroundRemoval()`
- HTTP：`POST /api/cutout/general/universal-background-removal`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| return_form | string | 否 | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges). |

### 请求地址

```text
https://www.ailabapi.com/api/cutout/general/universal-background-removal
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### 返回类型

- `BaseResponse<CutoutUniversalBackgroundRemovalResponseData>`

## Head Extraction API

- SDK 方法：`cutout.cutoutAvatarExtraction()`
- HTTP：`POST /api/cutout/portrait/avatar-extraction`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| return_form | string | 否 | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. |

### 请求地址

```text
https://www.ailabapi.com/api/cutout/portrait/avatar-extraction
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| elements | array | The keying result of each child element. |
| image_url | string | Resulting image URL address. |
| width | integer | The width of the result map. |
| height | integer | The height of the resultant graph. |
| x | integer | Top left x-coordinate. |
| y | integer | Top left y-coordinate. |

### 返回类型

- `BaseResponse<CutoutAvatarExtractionResponseData>`

## Hairstyle Extraction API

- SDK 方法：`cutout.cutoutHairExtraction()`
- HTTP：`POST /api/cutout/portrait/hairstyle-extraction`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |

### 请求地址

```text
https://www.ailabapi.com/api/cutout/portrait/hairstyle-extraction
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| elements | array | The keying result of each child element. |
| image_url | string | Resulting image URL address. |
| width | integer | The width of the result map. |
| height | integer | The height of the resultant graph. |
| x | integer | Top left x-coordinate. |
| y | integer | Top left y-coordinate. |

### 返回类型

- `BaseResponse<CutoutHairExtractionResponseData>`

## Human Background Removal API

- SDK 方法：`cutout.cutoutHumanBackgroundRemoval()`
- HTTP：`POST /api/cutout/portrait/portrait-background-removal`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| return_form | string | 否 | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges). |

### 请求地址

```text
https://www.ailabapi.com/api/cutout/portrait/portrait-background-removal
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### 返回类型

- `BaseResponse<CutoutHumanBackgroundRemovalResponseData>`

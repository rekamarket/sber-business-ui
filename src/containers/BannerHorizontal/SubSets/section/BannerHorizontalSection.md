---
title: BannerWide
group:
	title: BannerHorizontal
---


## color
The color CSS property sets the foreground color value of an element's text and text decorations, and sets the <currentcolor> value. currentcolor may be used as an indirect value on other properties and is the default for other color properties, such as border-color.

```tsx
import React from 'react'
import { BannerWide, H1 } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<BannerWide color="snow" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerWide>
	<BannerWide color="graphite" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerWide>
</div>)
```

## size

```tsx
import React from 'react'
import { BannerWide, H1 } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<BannerWide size="xsNoCTA" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerWide>
	<BannerWide size="xs" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerWide>
	<BannerWide size="s" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerWide>
	<BannerWide size="m" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerWide>
	<BannerWide size="l" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerWide>
	<BannerWide size="xl" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerWide>
</div>)
```

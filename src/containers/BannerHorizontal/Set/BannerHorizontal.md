---
title: BannerHorizontal
group:
	title: BannerHorizontal
---


## Semantics
Можно указать три тега - ["div", "section", "aside"]

```tsx
import React from 'react'
import { BannerHorizontal, H1 } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<BannerHorizontal tag="div" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal tag="section" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal tag="aside" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
</div>)
```

## color

```tsx
import React from 'react'
import { BannerHorizontal, H1 } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<BannerHorizontal color="snow" tag="section" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal color="graphite" tag="section" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
</div>)
```

## size

```tsx
import React from 'react'
import { BannerHorizontal, H1 } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<BannerHorizontal size="xsNoCTA" tag="section" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal size="xs" tag="section" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal size="s" tag="section" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal size="m" tag="section" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal size="l" tag="section" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal size="xl" tag="section" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
</div>)
```

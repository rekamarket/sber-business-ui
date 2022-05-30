---

title: BannerHorizontal


---

# BannerHorizontal

## Semantics
Можно указать три тега - ["div", "section", "aside"]; Значение по умолчанию - "section"

```tsx
import React from 'react'
import { BannerHorizontal, H1 } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<BannerHorizontal tag="div" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal tag="aside" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
</div>)
```

## color
Цветовая вариация баннера

```tsx
import React from 'react'
import { BannerHorizontal, H1 } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<BannerHorizontal color="snow" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal color="graphite" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
</div>)
```

## size
Шкала размеров баннера

```tsx
import React from 'react'
import { BannerHorizontal, H1 } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<BannerHorizontal size="xsNoCTA" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal size="xs" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal size="s" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal size="m" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal size="l" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
	<BannerHorizontal size="xl" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerHorizontal>
</div>)
```

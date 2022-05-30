---

title: BannerVertical


---

# BannerVertical

## Semantics
Можно указать три тега - ["div", "section", "aside"]; Значение по умолчанию - "section"

```tsx
import React from 'react'
import { BannerVertical, H1 } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<BannerVertical tag="div" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerVertical>
	<BannerVertical tag="aside" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerVertical>
</div>)
```

## color
Цветовая вариация баннера

```tsx
import React from 'react'
import { BannerVertical, H1 } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<BannerVertical color="snow" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerVertical>
	<BannerVertical color="graphite" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" size="m">
		<H1>Покупайте со СберБизнес</H1>
	</BannerVertical>
</div>)
```

## size
Шкала размеров баннера

```tsx
import React from 'react'
import { BannerVertical, H1 } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<BannerVertical size="xsNoCTA" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerVertical>
	<BannerVertical size="xs" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerVertical>
	<BannerVertical size="s" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerVertical>
	<BannerVertical size="m" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerVertical>
	<BannerVertical size="l" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerVertical>
	<BannerVertical size="xl" background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png" description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО" color="snow">
		<H1>Покупайте со СберБизнес</H1>
	</BannerVertical>
</div>)
```

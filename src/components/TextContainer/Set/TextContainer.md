---

title: TextContainer


---

# TextContainer

## Semantics
Можно указать теги - ["p", "div"]

```tsx
import React from 'react'
import { TextContainer } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<TextContainer tag="p">
		Блок текста
	</TextContainer>
	<TextContainer tag="div">
		Блок текста
	</TextContainer>
</div>)
```

## color
The color CSS property sets the foreground color value of an element's text and text decorations, and sets the <currentcolor> value. currentcolor may be used as an indirect value on other properties and is the default for other color properties, such as border-color.

```tsx
import React from 'react'
import { TextContainer } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<TextContainer color="snow" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer color="graphite" tag="p">
		Блок текста
	</TextContainer>
</div>)
```

## fontSize
The font-size CSS property sets the size of the font. Changing the font size also updates the sizes of the font size-relative <length> units, such as em, ex, and so forth.

```tsx
import React from 'react'
import { TextContainer } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<TextContainer fontSize="none" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer fontSize="4xs" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer fontSize="3xs" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer fontSize="2xs" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer fontSize="xs" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer fontSize="s" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer fontSize="m" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer fontSize="l" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer fontSize="xl" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer fontSize="2xl" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer fontSize="3xl" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer fontSize="4xl" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer fontSize="5xl" tag="p">
		Блок текста
	</TextContainer>
</div>)
```

## fontWeight
The font-weight CSS property sets the weight (or boldness) of the font. The weights available depend on the font-family that is currently set.

```tsx
import React from 'react'
import { TextContainer } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<TextContainer fontWeight="regular" tag="p">
		Блок текста
	</TextContainer>
	<TextContainer fontWeight="semiBold" tag="p">
		Блок текста
	</TextContainer>
</div>)
```

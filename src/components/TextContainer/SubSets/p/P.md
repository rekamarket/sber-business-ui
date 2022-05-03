---
title: Paragraph
group:
	title: TextContainer
---


## color
The color CSS property sets the foreground color value of an element's text and text decorations, and sets the <currentcolor> value. currentcolor may be used as an indirect value on other properties and is the default for other color properties, such as border-color.

```tsx
import React from 'react'
import { Paragraph } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Paragraph color="snow">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph color="graphite">
		Абзац. Многострочный текст
	</Paragraph>
</div>)
```

## fontSize
The font-size CSS property sets the size of the font. Changing the font size also updates the sizes of the font size-relative <length> units, such as em, ex, and so forth.

```tsx
import React from 'react'
import { Paragraph } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Paragraph fontSize="none">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph fontSize="4xs">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph fontSize="3xs">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph fontSize="2xs">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph fontSize="xs">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph fontSize="s">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph fontSize="m">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph fontSize="l">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph fontSize="xl">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph fontSize="2xl">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph fontSize="3xl">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph fontSize="4xl">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph fontSize="5xl">
		Абзац. Многострочный текст
	</Paragraph>
</div>)
```

## fontWeight
The font-weight CSS property sets the weight (or boldness) of the font. The weights available depend on the font-family that is currently set.

```tsx
import React from 'react'
import { Paragraph } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Paragraph fontWeight="regular">
		Абзац. Многострочный текст
	</Paragraph>
	<Paragraph fontWeight="semiBold">
		Абзац. Многострочный текст
	</Paragraph>
</div>)
```

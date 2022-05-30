---

title: Definition
group:
	title: Text

---

# Definition

## color
The color CSS property sets the foreground color value of an element's text and text decorations, and sets the <currentcolor> value. currentcolor may be used as an indirect value on other properties and is the default for other color properties, such as border-color.

```tsx
import React from 'react'
import { Definition } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Definition color="snow">
		Аббревиатура
	</Definition>
	<Definition color="asphalt">
		Аббревиатура
	</Definition>
	<Definition color="asphalt01">
		Аббревиатура
	</Definition>
	<Definition color="asphalt02">
		Аббревиатура
	</Definition>
	<Definition color="gray">
		Аббревиатура
	</Definition>
	<Definition color="gray02">
		Аббревиатура
	</Definition>
	<Definition color="graphite">
		Аббревиатура
	</Definition>
	<Definition color="sky02">
		Аббревиатура
	</Definition>
</div>)
```

## fontSize
The font-size CSS property sets the size of the font. Changing the font size also updates the sizes of the font size-relative <length> units, such as em, ex, and so forth.

```tsx
import React from 'react'
import { Definition } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Definition fontSize="none">
		Аббревиатура
	</Definition>
	<Definition fontSize="5xs">
		Аббревиатура
	</Definition>
	<Definition fontSize="4xs">
		Аббревиатура
	</Definition>
	<Definition fontSize="3xs">
		Аббревиатура
	</Definition>
	<Definition fontSize="2xs">
		Аббревиатура
	</Definition>
	<Definition fontSize="xs">
		Аббревиатура
	</Definition>
	<Definition fontSize="s">
		Аббревиатура
	</Definition>
	<Definition fontSize="m">
		Аббревиатура
	</Definition>
	<Definition fontSize="l">
		Аббревиатура
	</Definition>
	<Definition fontSize="xl">
		Аббревиатура
	</Definition>
	<Definition fontSize="2xl">
		Аббревиатура
	</Definition>
	<Definition fontSize="3xl">
		Аббревиатура
	</Definition>
	<Definition fontSize="4xl">
		Аббревиатура
	</Definition>
	<Definition fontSize="5xl">
		Аббревиатура
	</Definition>
</div>)
```

## fontWeight
The font-weight CSS property sets the weight (or boldness) of the font. The weights available depend on the font-family that is currently set.

```tsx
import React from 'react'
import { Definition } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Definition fontWeight="regular">
		Аббревиатура
	</Definition>
	<Definition fontWeight="semiBold">
		Аббревиатура
	</Definition>
</div>)
```

## textTransform
The text-transform CSS property specifies how to capitalize an element's text. It can be used to make text appear in all-uppercase or all-lowercase, or with each word capitalized. It also can help improve legibility for ruby.

```tsx
import React from 'react'
import { Definition } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Definition textTransform="none">
		Аббревиатура
	</Definition>
	<Definition textTransform="uppercase">
		Аббревиатура
	</Definition>
	<Definition textTransform="lowercase">
		Аббревиатура
	</Definition>
	<Definition textTransform="capitalize">
		Аббревиатура
	</Definition>
</div>)
```

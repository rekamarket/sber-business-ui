---

title: SberButtonLink


---

# SberButtonLink

## size

```tsx
import React from 'react'
import { SberButtonLink } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<SberButtonLink size="sm" href="https://sberbusiness.ru">
		Ссылка
	</SberButtonLink>
	<SberButtonLink size="md" href="https://sberbusiness.ru">
		Ссылка
	</SberButtonLink>
	<SberButtonLink size="lg" href="https://sberbusiness.ru">
		Ссылка
	</SberButtonLink>
	<SberButtonLink size="xlg" href="https://sberbusiness.ru">
		Ссылка
	</SberButtonLink>
</div>)
```

## variant

```tsx
import React from 'react'
import { SberButtonLink } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<SberButtonLink variant="snow" href="https://sberbusiness.ru">
		Ссылка
	</SberButtonLink>
	<SberButtonLink variant="graphite" href="https://sberbusiness.ru">
		Ссылка
	</SberButtonLink>
</div>)
```

## loading
loading state

```tsx
import React from 'react'
import { SberButtonLink } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<SberButtonLink loading="true" href="https://sberbusiness.ru">
		Ссылка
	</SberButtonLink>
</div>)
```

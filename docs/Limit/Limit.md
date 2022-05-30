---

title: Limit


---

# Limit

## Semantics
Можно указать теги - ["div", "dl"]; Значение по умолчанию - "dl"

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit tag="div" limit={1000000} />
</div>)
```

## Кастомное форматирование лимита
опциональный параметр "format: (int) => string"

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit format="(value) => value.toString()" limit={1000000} />
</div>)
```

## Заголовок
опциональный параметр "title: string"

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit title="Лимит" limit={1000000} />
</div>)
```

## Ссылка
опциональный параметр "href: string"

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit href="https://example.com" limit={1000000} />
</div>)
```

## color
Цветовые вариации компонента лимита

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit color="light" limit={1000000} />
	<Limit color="dark" limit={1000000} />
</div>)
```

## size
Шкала размеров

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit size="xl" limit={1000000} />
	<Limit size="l" limit={1000000} />
	<Limit size="m" limit={1000000} />
	<Limit size="s" limit={1000000} />
</div>)
```

## type
Вариация типа блока лимита

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit type="bordered" limit={1000000} />
	<Limit type="borderless" limit={1000000} />
</div>)
```

## Semantics
Можно указать теги - ["div", "dl"]; Значение по умолчанию - "dl"

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit tag="div" />
</div>)
```

## Кастомное форматирование лимита
опциональный параметр "format: (int) => string"

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit format="(value) => value.toString()" />
</div>)
```

## Заголовок
опциональный параметр "title: string"

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit title="Лимит" />
</div>)
```

## Ссылка
опциональный параметр "href: string"

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit href="https://example.com" />
</div>)
```

## color
Цветовые вариации компонента лимита

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit color="light" />
	<Limit color="dark" />
</div>)
```

## size
Шкала размеров

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit size="xl" />
	<Limit size="l" />
	<Limit size="m" />
	<Limit size="s" />
</div>)
```

## type
Вариация типа блока лимита

```tsx
import React from 'react'
import { Limit } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Limit type="bordered" />
	<Limit type="borderless" />
</div>)
```

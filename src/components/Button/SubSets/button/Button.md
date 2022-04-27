---

title: Buttongroup:
title: Button---

## Button

```tsx
import React from 'react';
import { Button } from '@LoonyCodex/typography';

export default () => (<div style={{ display: 'grid', gap: 10 }}>    <Button>Button with default styles</Button></div>);```
## size
```tsx
import React from 'react';
import { Button } from '@LoonyCodex/typography';

export default () => (<div style={{ display: 'grid', gap: 10 }}>    <Button size="sm">size: sm</Button>
    <Button size="md">size: md</Button>
    <Button size="lg">size: lg</Button>
    <Button size="xlg">size: xlg</Button></div>);```
## variant
```tsx
import React from 'react';
import { Button } from '@LoonyCodex/typography';

export default () => (<div style={{ display: 'grid', gap: 10 }}>    <Button variant="general">variant: general</Button>
    <Button variant="secondary">variant: secondary</Button></div>);```
## Button
```tsx
import React from 'react';
import { Button } from '@LoonyCodex/typography';

export default () => (<div style={{ display: 'grid', gap: 10 }}>    <Button loading={true}>Button with loading</Button></div>);```
```

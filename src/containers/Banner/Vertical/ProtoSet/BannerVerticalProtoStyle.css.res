@module("@vanilla-extract/css") external style: 'a => string = "style"

let className = style({
  "background": "#333",
  "backgroundSize": "cover",
  "backgroundRepeat": "no-repeat",
})

let logo = style({
  "blockSize": "var(--icon-block-size)",
  "inlineSize": "var(--icon-inline-size)",
  "fill": Theme.color.snow,
  "pointerEvents": "none",
})

let description = style({
  "white-space": "break-spaces",
})

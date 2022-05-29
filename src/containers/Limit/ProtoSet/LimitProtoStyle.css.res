@module("@vanilla-extract/css") external style: ('a) => string = "style"

let className = style({
  "display": "flex",
  "align-items": "center",
  "width": "fit-content",
})

let classNameGroup = style({
  "display": "grid",
  "justify-items": "end",
})

let classNameIcon = style({
  "opacity": "1",
})

let classNameLink = style({
  "white-space": "break-spaces",
})

let classNameDivider = style({
  "align-self": "stretch",
  "margin": "0",
  "width": "1px",
  "border": "none",
  "background": "#B2B8BF",
  "writing-mode": "tb-rl",
})

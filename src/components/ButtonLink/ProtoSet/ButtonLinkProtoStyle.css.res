@module("@vanilla-extract/css") external style: ('a) => string = "style"

let className = style({
  "cursor": "pointer",
  "border-radius": "999px",
  "border-width": "0",
  "display": "flex",
  "align-items": "center",
  "textDecoration": "none",
})

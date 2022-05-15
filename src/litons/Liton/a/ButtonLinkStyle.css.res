@module("@vanilla-extract/css") external style: ('a) => string = "style"

let className = style({
  "cursor": "pointer",
  "border-radius": "999px",
  "border-width": "0",
  "display": "flex",
  "align-items": "center",
  "inline-size": "fit-content",
  "text-decoration": "none",
})

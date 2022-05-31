@module("@vanilla-extract/css") external style: ('a) => string = "style"

let className = style({
  "cursor": "pointer",
  "border-radius": "999px",
  "border-width": "1px",
  "gap": "var(--icon-gap, 4px)",
  "display": "flex",
  "align-items": "center",
  "position": "relative",
  "inline-size": "fit-content",
  "text-decoration": "none",
  "fontFamily": FontFamily.options.display,
})

@module("@vanilla-extract/css") external style: ('a) => string = "style"

let className = style({
  "cursor": "pointer",
  "border-radius": "999px",
  "border-width": "0",
  "display": "flex",
  "align-items": "center",
  "inline-size": "fit-content",
  "fontFamily": FontFamily.options.display,

  "fontSize": "var(--cap-size)",
  "lineHeight": "var(--line-gap)",

  ":before": {
    "content": `""`,
    "display": "table",
    "marginBottom": "var(--cap-bottom)",
  },
  ":after": {
    "content": `""`,
    "display": "table",
    "marginTop": "var(--cap-top)",
  },
})

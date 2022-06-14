@module("@vanilla-extract/css") external style: 'a => string = "style"

let className = style({
  "cursor": "pointer",
  "border-radius": "999px",
  "border-width": "0",
  "display": "flex",
  "justify-content": "center",
  "align-items": "center",
  "text-decoration": "none",
  "fontFamily": FontFamily.options.display,
})

let content = style({
  "transform": "translateY(12.5%)",
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

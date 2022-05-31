@module("@vanilla-extract/css") external style: ('a) => string = "style"
@module("@vanilla-extract/css") external keyframes: ('a) => string = "keyframes"

let spin = keyframes({
  "0%": { "transform": "rotate(0deg)" },
  "100%": { "transform": "rotate(1turn)" },
})

let icon = style({
  "fill": "currentColor",
  "color": "var(--icon-color)",
  "width": "var(--icon-size)",
  "height": "var(--icon-size)",
  "transition": ".2s ease-in-out opacity",
})

let content = style({
  "fontSize": "var(--cap-size)",
  "lineHeight": "var(--line-gap)",
  "transition": ".2s ease-in-out opacity",

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

let appearIn = style({
  "opacity": "1",
})

let appearOut = style({
  "opacity": "0",
})

let loader = style({
  "position": "absolute",
  "left": "calc(50% - var(--icon-size)/2)",
  "width": "var(--icon-size)",
  "height": "var(--icon-size)",
  "animation-name": spin,
  "animation-duration": "1s",
  "animation-iteration-count": "infinite",
  "animation-timing-function": "linear",
  "transition": "1s ease-in-out opacity",
})

let gradient = style({
  "stop-color": "var(--icon-color)",
})

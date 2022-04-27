@module("@vanilla-extract/css") external style: ('a) => string = "style"

let areaTitle = "title"
let areaDescription = "description"
let areaActionCTA = "actionCTA"
let areaLogo = "logo"

let className = style({
  "display": "grid",
  "gridTemplateAreas": `"` ++ areaTitle       ++ " " ++ areaTitle       ++ `"\n` ++
                       `"` ++ areaDescription ++ " " ++ areaDescription ++ `"\n` ++
                       `"` ++ areaActionCTA   ++ " " ++ areaLogo        ++ `"\n`,
  "background": "#333",
})

let title = style({
  "gridArea": areaTitle,
})

let description = style({
  "gridArea": areaDescription,
})

let actionCTA = style({
  "gridArea": areaActionCTA,
})

let logo = style({
  "gridArea": areaLogo,
  "fill": Theme.color.snow,
  "alignSelf": "end",
  "justifySelf": "end",
  "pointerEvents": "none",
})

@genType
type styleProps = {
  "color": Color.t,

  "fontSize": FontSize.t,
  "fontWeight": FontWeight.t,
  "fontFamily": FontFamily.t,
  "fontStyle": FontStyle.t,

  // margin
  "marginBlockEnd": MarginBlockEnd.t,
  "marginBlockStart": MarginBlockStart.t,
  "marginInlineEnd": MarginInlineEnd.t,
  "marginInlineStart": MarginInlineStart.t,

  // padding
  "paddingBlockEnd": PaddingBlockEnd.t,
  "paddingBlockStart": PaddingBlockStart.t,
  "paddingInlineStart": PaddingInlineEnd.t,
  "paddingInlineEnd": PaddingInlineStart.t,
}

@genType
type level = [
  | #1
  | #2
  | #3
  | #4
  | #5
  | #6
]

let level: array<level> = [
  #1,
  #2,
  #3,
  #4,
  #5,
  #6,
]

@genType
type tag = [
  | DivHTML.tag
  | SpanHTML.tag
]

type props = {
  ...styleProps,

  "level": level,
  "tag": option<tag>,
  "className": string,
  "children": React.element,
}

@obj external makeProps:(
  ~level: level,
  ~tag: option<tag>,
  ~className: option<string>,

  ~color: Color.t,

  ~fontFamily: FontFamily.t,
  ~fontSize: FontSize.t,
  ~fontStyle: FontStyle.t,
  ~fontWeight: FontWeight.t,

  ~marginBlockEnd: MarginBlockEnd.t,
  ~marginBlockStart: MarginBlockStart.t,
  ~marginInlineEnd: MarginInlineEnd.t,
  ~marginInlineStart: MarginInlineStart.t,

  ~paddingBlockEnd: PaddingBlockEnd.t,
  ~paddingBlockStart: PaddingBlockStart.t,
  ~paddingInlineEnd: PaddingInlineEnd.t,
  ~paddingInlineStart: PaddingInlineStart.t,

  ~children: React.element,
  unit
) => props = ""

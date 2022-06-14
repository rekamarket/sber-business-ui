@genType
type t = [
  | #xl
  | #l
  | #m
  | #s
]

let args: array<t> = [#xl, #l, #m, #s]

type r<'a> = {
  xl: 'a,
  l: 'a,
  m: 'a,
  s: 'a,
}

type value = {
  paddingBlock: string,
  paddingInline: string,
  gap: string,
  // dependencies
  cornerRadius: CornerRadius.t,
  titleFontSize: FontSize.t,
  descriptionFontSize: FontSize.t,
  linkSize: FontSize.t,
}

type options = r<value>
type variant = r<string>
type output = {
  paddingBlock: string,
  paddingInline: string,
  gap: string,
  @as("borderWidth") borderThickness: string,
}
type resolve = value => output
type make = (. t) => string

let initial: t = #xl

let options: options = {
  xl: {
    paddingBlock: `16px`,
    paddingInline: `16px`,
    gap: `16px`,
    cornerRadius: #xlarge,
    titleFontSize: #"4xs",
    descriptionFontSize: #"3xs",
    linkSize: #"4xs",
  },
  l: {
    paddingBlock: `12px`,
    paddingInline: `16px`,
    gap: `16px`,
    cornerRadius: #xlarge,
    titleFontSize: #"4xs",
    descriptionFontSize: #"3xs",
    linkSize: #"4xs",
  },
  m: {
    paddingBlock: `10px`,
    paddingInline: `16px`,
    gap: `16px`,
    cornerRadius: #xlarge,
    titleFontSize: #"4xs",
    descriptionFontSize: #"3xs",
    linkSize: #"4xs",
  },
  s: {
    paddingBlock: `8px`,
    paddingInline: `12px`,
    gap: `12px`,
    cornerRadius: #large,
    titleFontSize: #"5xs",
    descriptionFontSize: #"4xs",
    linkSize: #"5xs",
  },
}

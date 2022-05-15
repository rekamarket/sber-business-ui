@genType
type t = [
  | #xsNoCTA
  | #xs
  | #s
  | #m
  | #l
  | #xl
]

let args: array<t> = [
  #xsNoCTA,
  #xs,
  #s,
  #m,
  #l,
  #xl,
]

type r<'a> = {
  xsNoCTA: 'a,
  xs: 'a,
  s: 'a,
  m: 'a,
  l: 'a,
  xl: 'a,
}

type value = {
  blockSize: string,
  inlineSize: string,
  paddingBlock: string,
  paddingInline: string,
  iconBlockSize: string,
  iconInlineSize: string,
  gridTemplateAreas: string,
  gridTemplateRows: string,
  gridTemplateColumns: string,
  gridGap: string,

  // dependencies
  titleFontSize: FontSize.t,
  descriptionFontSize: FontSize.t,
  ctaSize: LitonSize.t,
}

type options = r<value>
type variant = r<string>
type output = {
  blockSize: string,
  inlineSize: string,
  paddingBlock: string,
  paddingInline: string,
  @as("--icon-block-size") iconBlockSize: string,
  @as("--icon-inline-size") iconInlineSize: string,
  display: string,
  justifyItems: string,
  gridTemplateAreas: string,
  gridTemplateRows: string,
  gridTemplateColumns: string,
  gridGap: string,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #xl

type area = {
  title: string,
  description: string,
  actionCTA: string,
  logo: string,  
}

let area = {
  title: "title",
  description: "description",
  actionCTA: "actionCTA",
  logo: "logo",
}

let options: options = {
  xsNoCTA: {
    blockSize: `90px`,
    inlineSize: `728px`,
    paddingBlock: `8px`,
    paddingInline: `20px`,
    iconBlockSize: `18px`,
    iconInlineSize: `113px`,
    gridTemplateAreas: `"` ++ area.title       ++ " " ++ area.title ++ `"\n` ++
                       `"` ++ area.description ++ " " ++ area.logo  ++ `"\n`,
    gridTemplateRows: `auto 1fr`,
    gridTemplateColumns: `1fr auto`,
    gridGap: `4px`,

    titleFontSize: #xl,
    descriptionFontSize: #\"3xs",
    ctaSize: #sm,
  },

  xs: {
    blockSize: `90px`,
    inlineSize: `728px`,
    paddingBlock: `8px`,
    paddingInline: `20px`,
    iconBlockSize: `18px`,
    iconInlineSize: `113px`,
    gridTemplateAreas: `"` ++ area.title       ++ " " ++ area.title       ++ `"\n` ++
                       `"` ++ area.description ++ " " ++ area.description ++ `"\n` ++
                       `"` ++ area.actionCTA   ++ " " ++ area.logo        ++ `"\n`,
    gridTemplateRows: `auto 1fr auto`,
    gridTemplateColumns: `1fr auto`,
    gridGap: `4px`,

    titleFontSize: #l,
    descriptionFontSize: #\"4xs",
    ctaSize: #sm,
  },

  s: {
    blockSize: `260px`,
    inlineSize: `720px`,
    paddingBlock: `30px`,
    paddingInline: `40px`,
    iconBlockSize: `27px`,
    iconInlineSize: `165px`,
    gridTemplateAreas: `"` ++ area.title       ++ " " ++ area.title       ++ `"\n` ++
                       `"` ++ area.description ++ " " ++ area.description ++ `"\n` ++
                       `"` ++ area.actionCTA   ++ " " ++ area.logo        ++ `"\n`,
    gridTemplateRows: `auto 1fr auto`,
    gridTemplateColumns: `1fr auto`,
    gridGap: `18px`,

    titleFontSize: #\"3xl",
    descriptionFontSize: #s,
    ctaSize: #md,
  },

  m: {
    blockSize: `200px`,
    inlineSize: `1100px`,
    paddingBlock: `20px`,
    paddingInline: `40px`,
    iconBlockSize: `27px`,
    iconInlineSize: `165px`,
    gridTemplateAreas: `"` ++ area.title       ++ " " ++ area.title       ++ `"\n` ++
                       `"` ++ area.description ++ " " ++ area.description ++ `"\n` ++
                       `"` ++ area.actionCTA   ++ " " ++ area.logo        ++ `"\n`,
    gridTemplateRows: `auto 1fr auto`,
    gridTemplateColumns: `1fr auto`,
    gridGap: `16px`,

    titleFontSize: #\"3xl",
    descriptionFontSize: #s,
    ctaSize: #md,
  },

  l: {
    blockSize: `369px`,
    inlineSize: `1297px`,
    paddingBlock: `50px`,
    paddingInline: `80px`,
    iconBlockSize: `34px`,
    iconInlineSize: `208px`,
    gridTemplateAreas: `"` ++ area.title       ++ " " ++ area.title       ++ `"\n` ++
                       `"` ++ area.description ++ " " ++ area.description ++ `"\n` ++
                       `"` ++ area.actionCTA   ++ " " ++ area.logo        ++ `"\n`,
    gridTemplateRows: `auto 1fr auto`,
    gridTemplateColumns: `1fr auto`,
    gridGap: `20px`,

    titleFontSize: #\"4xl",
    descriptionFontSize: #l,
    ctaSize: #lg,
  },

  xl: {
    blockSize: `540px`,
    inlineSize: `1740px`,
    paddingBlock: `80px`,
    paddingInline: `80px`,
    iconBlockSize: `44px`,
    iconInlineSize: `267px`,
    gridTemplateAreas: `"` ++ area.title       ++ " " ++ area.title       ++ `"\n` ++
                       `"` ++ area.description ++ " " ++ area.description ++ `"\n` ++
                       `"` ++ area.actionCTA   ++ " " ++ area.logo        ++ `"\n`,
    gridTemplateRows: `auto 1fr auto`,
    gridTemplateColumns: `1fr auto`,
    gridGap: `24px`,

    titleFontSize: #\"5xl",
    descriptionFontSize: #xl,
    ctaSize: #xlg,
  },
}

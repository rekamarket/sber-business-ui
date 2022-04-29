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
  gridGap: string,

  // dependencies
  titleFontSize: FontSize.t,
  descriptionFontSize: FontSize.t,
  ctaSize: ButtonLinkSize.t,
};

type options = r<value>;
type variant = r<string>;
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
  gridGap: string,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #xl;

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
    blockSize: `600px`,
    inlineSize: `120px`,
    paddingBlock: `30px`,
    paddingInline: `8px`,
    iconBlockSize: `17px`,
    iconInlineSize: `102px`,
    gridTemplateAreas: `"` ++ area.logo        ++ `"\n` ++
                       `"` ++ area.title       ++ `"\n` ++
                       `"` ++ area.description ++ `"\n`,
    gridTemplateRows: `auto auto 1fr`,
    gridGap: `4px`,

    titleFontSize: #\"2xs",
    descriptionFontSize: #\"3xs",
    ctaSize: #sm,
  },

  xs: {
    blockSize: `600px`,
    inlineSize: `120px`,
    paddingBlock: `30px`,
    paddingInline: `8px`,
    iconBlockSize: `17px`,
    iconInlineSize: `102px`,
    gridTemplateAreas: `"` ++ area.logo        ++ `"\n` ++
                       `"` ++ area.title       ++ `"\n` ++
                       `"` ++ area.description ++ `"\n` ++
                       `"` ++ area.actionCTA   ++ `"\n`,
    gridTemplateRows: `auto auto 1fr auto`,
    gridGap: `4px`,

    titleFontSize: #\"2xs",
    descriptionFontSize: #\"3xs",
    ctaSize: #sm,
  },

  s: {
    blockSize: `400px`,
    inlineSize: `240px`,
    paddingBlock: `30px`,
    paddingInline: `20px`,
    iconBlockSize: `19px`,
    iconInlineSize: `117px`,
    gridTemplateAreas: `"` ++ area.logo        ++ `"\n` ++
                       `"` ++ area.title       ++ `"\n` ++
                       `"` ++ area.description ++ `"\n` ++
                       `"` ++ area.actionCTA   ++ `"\n`,
    gridTemplateRows: `auto auto 1fr auto`,
    gridGap: `20px`,

    titleFontSize: #xl,
    descriptionFontSize: #s,
    ctaSize: #md,
  },

  m: {
    blockSize: `250px`,
    inlineSize: `250px`,
    paddingBlock: `20px`,
    paddingInline: `20px`,
    iconBlockSize: `14px`,
    iconInlineSize: `84px`,
    gridTemplateAreas: `"` ++ area.logo        ++ `"\n` ++
                       `"` ++ area.title       ++ `"\n` ++
                       `"` ++ area.description ++ `"\n` ++
                       `"` ++ area.actionCTA   ++ `"\n`,
    gridTemplateRows: `auto auto 1fr auto`,
    gridGap: `16px`,

    titleFontSize: #m,
    descriptionFontSize: #\"3xs",
    ctaSize: #md,
  },

  l: {
    blockSize: `250px`,
    inlineSize: `300px`,
    paddingBlock: `20px`,
    paddingInline: `20px`,
    iconBlockSize: `14px`,
    iconInlineSize: `84px`,
    gridTemplateAreas: `"` ++ area.logo        ++ `"\n` ++
                       `"` ++ area.title       ++ `"\n` ++
                       `"` ++ area.description ++ `"\n` ++
                       `"` ++ area.actionCTA   ++ `"\n`,
    gridTemplateRows: `auto auto 1fr auto`,
    gridGap: `16px`,

    titleFontSize: #m,
    descriptionFontSize: #\"3xs",
    ctaSize: #lg,
  },

  xl: {
    blockSize: `300px`,
    inlineSize: `600px`,
    paddingBlock: `30px`,
    paddingInline: `20px`,
    iconBlockSize: `24px`,
    iconInlineSize: `148px`,
    gridTemplateAreas: `"` ++ area.logo        ++ `"\n` ++
                       `"` ++ area.title       ++ `"\n` ++
                       `"` ++ area.description ++ `"\n` ++
                       `"` ++ area.actionCTA   ++ `"\n`,
    gridTemplateRows: `auto auto 1fr auto`,
    gridGap: `10px`,

    titleFontSize: #\"2xl",
    descriptionFontSize: #s,
    ctaSize: #xlg,
  },
}

@genType
type t = [
  | #xs
  | #s
  | #m
  | #l
  | #xl
]

let args: array<t> = [
  #xs,
  #s,
  #m,
  #l,
  #xl,
]

type r<'a> = {
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

  // dependencies
  titleFontSize: FontSize.t,
};

type options = r<value>;
type variant = r<string>;
type output = {
  blockSize: string,
  inlineSize: string,
  paddingBlock: string,
  paddingInline: string,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #xl;

let options: options = {
  xs: {
    blockSize: `90px`,
    inlineSize: `728px`,
    paddingBlock: `8px`,
    paddingInline: `20px`,

    titleFontSize: #l,
  },

  s: {
    blockSize: `260px`,
    inlineSize: `720px`,
    paddingBlock: `30px`,
    paddingInline: `40px`,

    titleFontSize: #\"3xl",
  },

  m: {
    blockSize: `200px`,
    inlineSize: `1100px`,
    paddingBlock: `20px`,
    paddingInline: `40px`,

    titleFontSize: #\"3xl",
  },

  l: {
    blockSize: `369px`,
    inlineSize: `1297px`,
    paddingBlock: `50px`,
    paddingInline: `80px`,

    titleFontSize: #\"4xl",
  },

  xl: {
    blockSize: `540px`,
    inlineSize: `1740px`,
    paddingBlock: `80px`,
    paddingInline: `80px`,

    titleFontSize: #\"5xl",
  },
}

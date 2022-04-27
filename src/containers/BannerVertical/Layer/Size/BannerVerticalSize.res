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
    blockSize: `120px`,
    inlineSize: `600px`,
    paddingBlock: `30px`,
    paddingInline: `8px`,
  },

  s: {
    blockSize: `400px`,
    inlineSize: `240px`,
    paddingBlock: `30px`,
    paddingInline: `20px`,
  },

  m: {
    blockSize: `250px`,
    inlineSize: `250px`,
    paddingBlock: `20px`,
    paddingInline: `20px`,
  },

  l: {
    blockSize: `250px`,
    inlineSize: `300px`,
    paddingBlock: `20px`,
    paddingInline: `20px`,
  },

  xl: {
    blockSize: `600px`,
    inlineSize: `300px`,
    paddingBlock: `30px`,
    paddingInline: `20px`,
  },
}

@genType
type t = [
  | #sm
  | #md
  | #lg
  | #xlg
]

let args: array<t> = [
  #sm,
  #md,
  #lg,
  #xlg,
]

type r<'a> = {
  sm: 'a,
  md: 'a,
  lg: 'a,
  xlg: 'a,
}

type value = {
  fontSize: string,
  paddingBlock: string,
  paddingInline: string,
}

type options = r<value>
type variant = r<string>
type output = {
  fontSize: string,
  paddingBlock: string,
  paddingInline: string,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #md

let options: options = {
  sm: {
    fontSize: `10px`,
    paddingBlock: "4px",
    paddingInline: "24px",
  },
  md: {
    fontSize: `16px`,
    paddingBlock: "14px",
    paddingInline: "36px",
  },
  lg: {
    fontSize: `18px`,
    paddingBlock: "18px",
    paddingInline: "58px",
  },
  xlg: {
    fontSize: `26px`,
    paddingBlock: "20px",
    paddingInline: "64px",
  },
}

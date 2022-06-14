@genType
type t = [
  | #sm
  | #md
  | #lg
  | #xlg
]

let args: array<t> = [#sm, #md, #lg, #xlg]

type r<'a> = {
  sm: 'a,
  md: 'a,
  lg: 'a,
  xlg: 'a,
}

type value = {
  capSize: int,
  paddingBlock: string,
  paddingInline: string,
}

type options = r<value>
type variant = r<string>
type output = {
  paddingBlock: string,
  paddingInline: string,
  @as("--cap-size") capSize: string,
  @as("--line-gap") lineGap: string,
  @as("--cap-top") capTop: string,
  @as("--cap-bottom") capBottom: string,
}
type resolve = value => output
type make = (. t) => string

let initial: t = #md

let options: options = {
  sm: {
    capSize: 8,
    paddingBlock: "4px",
    paddingInline: "22px",
  },
  md: {
    capSize: 9,
    paddingBlock: "16px",
    paddingInline: "36px",
  },
  lg: {
    capSize: 10,
    paddingBlock: "18px",
    paddingInline: "58px",
  },
  xlg: {
    capSize: 12,
    paddingBlock: "27px",
    paddingInline: "64px",
  },
}

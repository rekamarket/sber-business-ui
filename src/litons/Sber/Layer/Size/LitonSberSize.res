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
  capSize: int,
  iconGap: string,
  iconSize: string,
  paddingBlock: string,
  paddingInline: string,
}

type options = r<value>
type variant = r<string>
type output = {
  paddingBlock: string,
  paddingInline: string,
 
  @as("--icon-gap") iconGap: string,
  @as("--icon-size") iconSize: string,

  @as("--cap-size")    capSize  : string,
  @as("--line-gap")    lineGap  : string,
  @as("--cap-top")     capTop   : string,
  @as("--cap-bottom")  capBottom: string,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #md

let options: options = {
  sm: {
    capSize: 6,
    iconGap: `4px`,
    iconSize: `16px`,
    paddingBlock: "6px",
    paddingInline: "16px",
  },
  md: {
    capSize: 8,
    iconGap: `4px`,
    iconSize: `16px`,
    paddingBlock: "8px",
    paddingInline: "24px",
  },
  lg: {
    capSize: 10,
    iconGap: `8px`,
    iconSize: `22px`,
    paddingBlock: "9px",
    paddingInline: "24px",
  },
  xlg: {
    capSize: 12,
    iconGap: `8px`,
    iconSize: `26px`,
    paddingBlock: "15px",
    paddingInline: "24px",
  },
}

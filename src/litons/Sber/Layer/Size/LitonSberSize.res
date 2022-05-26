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
  iconGap: string,
  iconSize: string,
  lineHeight: string,
  paddingBlock: string,
  paddingInline: string,
}

type options = r<value>
type variant = r<string>
type output = {
  fontSize: string,
  @as("--icon-gap") iconGap: string,
  @as("--icon-size") iconSize: string,
  lineHeight: string,
  paddingBlock: string,
  paddingInline: string,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #md

let options: options = {
  sm: {
    fontSize: `14px`,
    iconGap: `4px`,
    iconSize: `16px`,
    lineHeight: "1",
    paddingBlock: "6px",
    paddingInline: "16px",
  },
  md: {
    fontSize: `14px`,
    iconGap: `4px`,
    iconSize: `16px`,
    lineHeight: "1",
    paddingBlock: "8px",
    paddingInline: "24px",
  },
  lg: {
    fontSize: `14px`,
    iconGap: `8px`,
    iconSize: `22px`,
    lineHeight: "1",
    paddingBlock: "9px",
    paddingInline: "24px",
  },
  xlg: {
    fontSize: `16px`,
    iconGap: `8px`,
    iconSize: `26px`,
    lineHeight: "1",
    paddingBlock: "15px",
    paddingInline: "24px",
  },
}

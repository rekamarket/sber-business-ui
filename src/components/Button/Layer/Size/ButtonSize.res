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
};

type options = r<value>;
type variant = r<string>;
type output = {
  fontSize: string,
  paddingBlock: string,
  paddingInline: string,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #md;

let options: options = {
  sm: {
    fontSize: `14px`,
    paddingBlock: "6px",
    paddingInline: "16px",
  },
  md: {
    fontSize: `14px`,
    paddingBlock: "8px",
    paddingInline: "24px",
  },
  lg: {
    fontSize: `14px`,
    paddingBlock: "9px",
    paddingInline: "24px",
  },
  xlg: {
    fontSize: `16px`,
    paddingBlock: "15px",
    paddingInline: "24px",
  },
}

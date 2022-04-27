@genType
type t = [
  | #regular
  | #semiBold
]

let args: array<t> = [
  #regular,
  #semiBold,
]

type r<'a> = {
  regular: 'a,
  semiBold: 'a,
}

type value = string;
type options = r<value>;
type variant = r<string>;
type output = { fontWeight: value }
type resolve = (value) => output
type make = (. t) => string

let initial: t = #regular;

let options = {
  regular: "500",
  semiBold: "600",
}

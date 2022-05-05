@genType
type t = [
| #primary
]

let args: array<t> = [
  #primary,
]

type r<'a> = {
  primary: 'a,
}

type value = string
type options = r<value>
type variant = r<string>
type output = { fontFamily: value }
type resolve = (value) => output
type make = (. t) => string

let initial: t = #primary

let options = {
  primary: "'SB Sans Display', Arial, sans-serif",
}

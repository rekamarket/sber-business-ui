@genType
type t = [
| #snow
| #graphite
]

let args: array<t> = [
  #snow,
  #graphite,
]

type r<'a> = {
  snow: 'a,
  graphite: 'a,
}

type variant = r<string>;
type make = (. t) => string

let initial: t = #graphite;

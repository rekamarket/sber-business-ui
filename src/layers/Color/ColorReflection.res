@genType
type t = [
| #snow
| #asphalt
| #graphite
]

let args: array<t> = [
  #snow,
  #asphalt,
  #graphite,
]

type r<'a> = {
  snow: 'a,
  asphalt: 'a,
  graphite: 'a,
}

type variant = r<string>;
type make = (. t) => string

let initial: t = #graphite;

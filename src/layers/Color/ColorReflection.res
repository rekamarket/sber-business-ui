@genType
type t = [
| #snow
| #gray
| #graphite
]

let args: array<t> = [
  #snow,
  #gray,
  #graphite,
]

type r<'a> = {
  snow: 'a,
  gray: 'a,
  graphite: 'a,
}

type variant = r<string>
type make = (. t) => string

let initial: t = #graphite

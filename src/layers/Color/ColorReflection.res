@genType
type t = [
| #snow
| #asphalt
| #asphalt01
| #asphalt02
| #gray
| #gray02
| #graphite
| #sky02
]

let args: array<t> = [
  #snow,
  #asphalt,
  #asphalt01,
  #asphalt02,
  #gray,
  #gray02,
  #graphite,
  #sky02,
]

type r<'a> = {
  snow: 'a,
  asphalt: 'a,
  asphalt01: 'a,
  asphalt02: 'a,
  gray: 'a,
  gray02: 'a,
  graphite: 'a,
  sky02: 'a,
}

type variant = r<string>
type make = (. t) => string

let initial: t = #graphite

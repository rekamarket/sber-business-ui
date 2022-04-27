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

type value = string;
type options = r<value>;
type variant = r<string>;
type output = {
  color: value
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #graphite;

let options: options = {
  snow: Theme.color.snow,
  graphite: Theme.color.graphite,
}

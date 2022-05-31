@genType
type t = [
| #display
]

let args: array<t> = [
#display,
]

type r<'a> = {
  display: 'a,
}

type value = string
type options = r<value>
type variant = r<string>
type output = { fontFamily: value }
type resolve = (value) => output
type make = (. t) => string

let initial: t = #display

let options = {
  display: "SBSansDisplay, Arial, sans-serif", // #TODO: Add better fallback strategy
}

@genType
type t = ColorReflection.t

let args = ColorReflection.args

type value = string
type output = { color: value }
type resolve = (value) => output
type options = ColorReflection.r<value>
type variant = ColorReflection.variant
type make = ColorReflection.make

let options: options = {
  snow: Theme.color.snow,
  asphalt: Theme.color.asphalt,
  asphalt01: Theme.color.asphalt01,
  asphalt02: Theme.color.asphalt02,
  gray: Theme.color.gray,
  gray02: Theme.color.gray02,
  graphite: Theme.color.graphite,
  sky02: Theme.color.sky02,
}

let initial = ColorReflection.initial

let context: React.Context.t<option<t>> = React.createContext(None)
let useColor = () => React.useContext(context)
let provider = React.Context.provider(context)

@react.component
let component = (
  ~value: option<t>,
  ~children,
) => React.createElement(provider, { "value": value, "children": children })

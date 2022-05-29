@genType
type t = [
| #bordered
| #borderless
]

let args: array<t> = [
  #bordered,
  #borderless,
]

type r<'a> = {
  bordered: 'a,
  borderless: 'a,
}

type value = {
  borderColor: string,
}
type options = r<value>
type variant = r<string>
type output = {
  borderStyle: string,
  borderColor: string,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #bordered

let options: options = {
  bordered: {
    borderColor: "var(--border-color)",
  },
  borderless: {
    borderColor: "transparent",
  },
}

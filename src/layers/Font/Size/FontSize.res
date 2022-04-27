@genType
type t = [
| #none
| #\"4xs"
| #\"3xs"
| #\"2xs"
| #xs
| #s
| #m
| #l
| #xl
| #\"2xl"
| #\"3xl"
| #\"4xl"
| #\"5xl"
]

let args: array<t> = [
  #none,
  #\"4xs",
  #\"3xs",
  #\"2xs",
  #xs,
  #s,
  #m,
  #l,
  #xl,
  #\"2xl",
  #\"3xl",
  #\"4xl",
  #\"5xl",
]

type r<'a> = {
  none: 'a,
  \"4xs": 'a,
  \"3xs": 'a,
  \"2xs": 'a,
  xs: 'a,
  s: 'a,
  m: 'a,
  l: 'a,
  xl: 'a,
  \"2xl": 'a,
  \"3xl": 'a,
  \"4xl": 'a,
  \"5xl": 'a,
}

type value = string;
type options = r<value>;
type variant = r<string>;
type output = {
  lineHeight: value,
  fontSize: value
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #m;

let options = {
  none  :  `0px`,
  \"4xs": `12px`,
  \"3xs": `14px`,
  \"2xs": `15px`,
  xs    : `16px`,
  s     : `18px`,
  m     : `20px`,
  l     : `24px`,
  xl    : `26px`,
  \"2xl": `30px`,
  \"3xl": `38px`,
  \"4xl": `46px`,
  \"5xl": `60px`,
}

let fontSizeContext: React.Context.t<option<t>> = React.createContext(None)
let useFontSize = () => React.useContext(fontSizeContext)

@genType
type t = [
  | #xs
  | #s
  | #m
  | #l
  | #xl
]

let args: array<t> = [
  #xs,
  #s,
  #m,
  #l,
  #xl,
]

type r<'a> = {
  xs: 'a,
  s: 'a,
  m: 'a,
  l: 'a,
  xl: 'a,
}

type value = {
  fontSize: string,
};

type options = r<value>;
type variant = r<string>;
type output = {
  fontSize: string,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #xl;

let options: options = {
  xs: {
    fontSize: `14px`,
  },
  s: {
    fontSize: `14px`,
  },
  m: {
    fontSize: `14px`,
  },
  l: {
    fontSize: `16px`,
  },
  xl: {
    fontSize: `16px`,
  },
}

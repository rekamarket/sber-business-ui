@genType
type t = [
  | #horizontal
  | #vertical
]

let args: array<t> = [
  #horizontal,
  #vertical,
]

type r<'a> = {
  horizontal: 'a,
  vertical: 'a,
}

type value = {
  color: string,
};

type options = r<value>;
type variant = r<string>;

type output = {
  color: string,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #horizontal;

let options: options = {
  horizontal: {
    color: Theme.color.snow,
  },

  vertical: {
    color: Theme.color.graphite,
  },
}

@genType
type t = [
  | #general
  | #secondary
]

let args: array<t> = [
  #general,
  #secondary,
]

type r<'a> = {
  general: 'a,
  secondary: 'a,
}

type state = {
  backgroundColor: string,
  borderColor: string,  
}

type value = {
  backgroundColor: string,
  borderColor: string,
  color: string,
  iconColor: string,

  hover: state,
  active: state,
};

type options = r<value>;
type variant = r<string>;

type output = {
  color: string,
  borderColor: string,
  backgroundColor: string,
  borderStyle: string,
  transition: string,
  @as("--icon-color") iconColor: string,

  @as(":hover") hover: state,
  @as(":active") active: state,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #general;

let options: options = {
  general: {
    backgroundColor: Theme.color.malachite,
    borderColor: Theme.color.malachite,
    color: Theme.color.snow,
    iconColor: Theme.color.snow,

    hover: {
      backgroundColor: Theme.color.malachite03,
      borderColor: Theme.color.malachite03,
    },
    active: {
      backgroundColor: Theme.color.malachite01,
      borderColor: Theme.color.malachite01,
    },
  },

  secondary: {
    backgroundColor: Theme.color.snow,
    borderColor: Theme.color.asphalt,
    color: Theme.color.graphite,
    iconColor: Theme.color.malachite,

    hover: {
      backgroundColor: Theme.color.snow,
      borderColor: Theme.color.graphite,
    },
    active: {
      backgroundColor: Theme.color.asphalt,
      borderColor: Theme.color.graphite,
    },
  },
}

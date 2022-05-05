@genType
type t = ColorReflection.t

let args = ColorReflection.args

type r<'a> = {
  snow: 'a,
  graphite: 'a,
}

type state = {
  backgroundColor: string,
}

type value = {
  backgroundColor: string,
  color: string,

  hover: state,
  active: state,
}

type options = ColorReflection.r<value>
type variant = ColorReflection.variant

type output = {
  color: string,
  backgroundColor: string,
  transition: string,

  @as(":hover") hover: state,
  @as(":active") active: state,
}
type resolve = (value) => output
type make = ColorReflection.make

let initial = ColorReflection.initial

let options: options = {
  snow: {
    backgroundColor: Theme.color.snow,
    color: Theme.color.graphite,

    hover: {
      backgroundColor: Theme.color.snow, // #TODO
    },
    active: {
      backgroundColor: Theme.color.snow, // #TODO
    },
  },

  graphite: {
    backgroundColor: Theme.color.graphite,
    color: Theme.color.snow,

    hover: {
      backgroundColor:Theme.color.graphite, // #TODO
    },
    active: {
      backgroundColor: Theme.color.graphite, // #TODO
    },
  },
}

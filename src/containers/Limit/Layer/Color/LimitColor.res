@genType
type t = [
| #light
| #dark
]

let args: array<t> = [
  #light,
  #dark,
]

type r<'a> = {
  light: 'a,
  dark: 'a,
}

type value = {
  borderColor: string,
  iconColor: string,
  dividerColor: string,

  // dependencies
  titleColor: Color.t,
  descriptionColor: Color.t,
  linkColor: Color.t,
  linkTextDecorationLine: TextDecorationLine.t,
}
type options = r<value>
type variant = r<string>
type output = {
  @as("--border-color") borderColor: string,
  @as("--icon-color") iconColor: string,
  @as("--divider-color") dividerColor: string,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #light

let options: options = {
  light: {
    borderColor: Theme.color.asphalt02,
    iconColor: Theme.color.snow,
    dividerColor: Theme.color.asphalt03,

    titleColor: #gray02,
    descriptionColor: #graphite,
    linkColor: #sky02,
    linkTextDecorationLine: #none,
  },

  dark: {
    borderColor: Theme.color.gray02,
    iconColor: Theme.color.snow,
    dividerColor: Theme.color.gray02,

    titleColor: #asphalt01,
    descriptionColor: #snow,
    linkColor: #snow,
    linkTextDecorationLine: #underline,
  },
}

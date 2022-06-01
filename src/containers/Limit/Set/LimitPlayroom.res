let { component, displayName, description, tag } = module(LimitMeta)

let make: array<Playroom.t> = [
  {
    group: displayName,
    name: Playroom.getName(~tag, ~description),
    code: Playroom.getCode(
      ~component,
      ~content = None,
      ~props = list{
        ("limit", Number(1000)),
      },
    ),
  },

  {
    group: `${displayName} without limit`,
    name: Playroom.getName(~tag, ~description),
    code: Playroom.getCode(
      ~component,
      ~content = None,
      ~props = list{
        ("href", String("https://custom.link")),
      },
    ),
  },
]

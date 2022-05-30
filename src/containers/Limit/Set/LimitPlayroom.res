let { component, displayName, description, tag } = module(LimitMeta)

let make: array<Playroom.t> = [
  {
    group: displayName,
    name: Playroom.getName(~tag, ~description),
    code: Playroom.getCode(
      ~component,
      ~content = Some(description),
      ~props = list{
        ("tag", String("div")),
      },
    ),
  },

  {
    group: `${displayName} with limit`,
    name: Playroom.getName(~tag, ~description),
    code: Playroom.getCode(
      ~component,
      ~content = Some(description),
      ~props = list{
        ("limit", Number(1000)),
      },
    ),
  },
]

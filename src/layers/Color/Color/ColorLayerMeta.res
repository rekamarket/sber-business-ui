let make: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  {
    title: ColorMeta.name,
    description: ColorMeta.description,

    root: Root({
      tag: R.defaultTag,
      props: R.defaultProps,

      children: R.block(.
        ~tag,
        ~children,
        ~key = ColorMeta.name,
        ~values = ColorMeta.args,
        ~staticProps = switch props {
        | Some(a) => a -> Belt.Array.keep(e => {
            let (key, _) = e
            key != ColorMeta.name
          }) -> Some
        | None => None
        },
      ) -> Some,
    }),
  },
]

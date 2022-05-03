let make: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  {
    title: ButtonSberSizeMeta.name,
    description: ButtonSberSizeMeta.description,

    root: Root({
      tag: R.defaultTag,
      props: R.defaultProps,

      children: R.block(.
        ~tag,
        ~children,
        ~key = ButtonSberSizeMeta.name,
        ~values = ButtonSberSizeMeta.args,
        ~staticProps = switch props {
        | Some(a) => a -> Belt.Array.keep(e => {
            let (key, _) = e
            key != ButtonSberSizeMeta.name
          }) -> Some
        | None => None
        },
      ) -> Some,
    }),
  },

  {
    title: ButtonSberVariantMeta.name,
    description: ButtonSberVariantMeta.description,

    root: Root({
      tag: R.defaultTag,
      props: R.defaultProps,

      children: R.block(.
        ~tag,
        ~children,
        ~key = ButtonSberVariantMeta.name,
        ~values = ButtonSberVariantMeta.args,
        ~staticProps = switch props {
        | Some(a) => a -> Belt.Array.keep(e => {
            let (key, _) = e
            key != ButtonSberVariantMeta.name
          }) -> Some
        | None => None
        },
      ) -> Some,
    }),
  },
]

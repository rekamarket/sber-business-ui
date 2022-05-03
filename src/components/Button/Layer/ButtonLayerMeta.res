let make: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  {
    title: ButtonSizeMeta.name,
    description: ButtonSizeMeta.description,

    root: Root({
      tag: R.defaultTag,
      props: R.defaultProps,

      children: R.block(.
        ~tag,
        ~children,
        ~key = ButtonSizeMeta.name,
        ~values = ButtonSizeMeta.args,
        ~staticProps = switch props {
        | Some(a) => a -> Belt.Array.keep(e => {
            let (key, _) = e
            key != ButtonSizeMeta.name
          }) -> Some
        | None => None
        },
      ) -> Some,
    }),
  },

  {
    title: ButtonVariantMeta.name,
    description: ButtonVariantMeta.description,

    root: Root({
      tag: R.defaultTag,
      props: R.defaultProps,

      children: R.block(.
        ~tag,
        ~children,
        ~key = ButtonVariantMeta.name,
        ~values = ButtonVariantMeta.args,
        ~staticProps = switch props {
        | Some(a) => a -> Belt.Array.keep(e => {
            let (key, _) = e
            key != ButtonVariantMeta.name
          }) -> Some
        | None => None
        },
      ) -> Some,
    }),
  },
]

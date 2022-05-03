let make: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  {
    title: ButtonLinkSizeMeta.name,
    description: ButtonLinkSizeMeta.description,

    root: Root({
      tag: R.defaultTag,
      props: R.defaultProps,

      children: R.block(.
        ~tag,
        ~children,
        ~key = ButtonLinkSizeMeta.name,
        ~values = ButtonLinkSizeMeta.args,
        ~staticProps = switch props {
        | Some(a) => a -> Belt.Array.keep(e => {
            let (key, _) = e
            key != ButtonLinkSizeMeta.name
          }) -> Some
        | None => None
        },
      ) -> Some,
    }),
  },

  {
    title: ButtonLinkVariantMeta.name,
    description: ButtonLinkVariantMeta.description,

    root: Root({
      tag: R.defaultTag,
      props: R.defaultProps,

      children: R.block(.
        ~tag,
        ~children,
        ~key = ButtonLinkVariantMeta.name,
        ~values = ButtonLinkVariantMeta.args,
        ~staticProps = switch props {
        | Some(a) => a -> Belt.Array.keep(e => {
            let (key, _) = e
            key != ButtonLinkVariantMeta.name
          }) -> Some
        | None => None
        },
      ) -> Some,
    }),
  },
]

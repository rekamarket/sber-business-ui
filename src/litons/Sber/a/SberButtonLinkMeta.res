open Playroom

let displayName = "SberButtonLink"
let parentName = None
let component = "SberButtonLink"
let description = "Click"
let tag = HTMLTag(#a)

let list: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  LitonLayerMeta.make(~tag, ~children, ~props),

  [
    {
      title: "loading",
      description: `loading state` -> Some,

      root: Root({
        tag: R.defaultTag,
        props: R.defaultProps,

        children: R.block(.
          ~tag,
          ~children,
          ~key = "loading",
          ~values = ["true"],
          ~staticProps = switch props {
          | Some(a) => a -> Belt.Array.keep(e => {
              let (key, _) = e
              key != "loading"
            }) -> Some
          | None => None
          },
        ) -> Some,
      }),
    },
  ],
] -> Belt.Array.concatMany

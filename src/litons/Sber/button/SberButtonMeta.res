open Playroom

let displayName = "SberButton"
let parentName = None
let component = "SberButton"
let description = "Click"
let tag = HTMLTag(#button)

let list: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  LitonSberLayerMeta.make(~tag, ~children, ~props),

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

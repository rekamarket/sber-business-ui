open Playroom

let displayName = "ButtonSber"
let parentName = "ButtonSber"
let component = "ButtonSber"
let description = ""
let tag = HTMLTag(#button)

let list: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  ButtonSberLayerMeta.make(~tag, ~children, ~props),

  [
    {
      title: "Loading",
      description: None,

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


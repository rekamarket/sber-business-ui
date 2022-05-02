open R
open Template

let displayName = "BannerHorizontal"
let parentName = "BannerHorizontal"
let component = "BannerHorizontal"
let description = ""

let tag = HTMLSet([
  #div,
  #aside,
  #section,
])

let list: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  [
    {
      title: "Semantics",
      description: `Можно указать три тега - ["div", "section", "aside"]` -> Some,

      root: Root({
        tag: R.defaultTag,
        props: R.defaultProps,

        children: R.block(.
          ~tag,
          ~children,
          ~key = "tag",
          ~values = ["div", "section", "aside"],
          ~staticProps = switch props {
          | Some(a) => a -> Belt.Array.keep(e => {
              let (key, _) = e
              key != "tag"
            }) -> Some
          | None => None
          },
        ) -> Some,
      }),
    },
  ],

  BannerHorizontalLayerMeta.make(~tag, ~children, ~props),
] -> Belt.Array.concatMany

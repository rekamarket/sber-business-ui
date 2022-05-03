open Playroom

let displayName = "Button"
let parentName = "Button"
let component = "Button"
let description = ""
let tag = HTMLTag(#button)

let list: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  // [
  //   {
  //     title: "Button",
  //     description: `Default Button component` -> Some,

  //     root: Root({
  //       tag: R.defaultTag,
  //       props: R.defaultProps,

  //       children: R.component(.
  //         ~tag,
  //         ~children,
  //         ~key = "level",
  //         ~values = ["1", "2", "3", "4", "5", "6"],
  //         ~staticProps = None,
  //       ) -> Some,
  //     }),
  //   },
  // ],

  ButtonLayerMeta.make(~tag, ~children, ~props),
] -> Belt.Array.concatMany

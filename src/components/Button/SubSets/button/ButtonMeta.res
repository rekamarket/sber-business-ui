open Template

let displayName = "Button";

let make: Template.t = {
  tag: HTMLTag(#button),
  displayName,
  parentName: "Button",
  component: "Button",
  description: "The Button element",
  mdn: None,

  docs: Belt.Array.concatMany([
    [
      Js.Obj.assign(Js.Obj.empty(), {
        "title": displayName,
        "description": None,
        "key": "",
        "content": Some(displayName ++ " " ++ "with default styles"),
        "args": None,
        "props": None,
      }),
    ],

    ButtonLayerMeta.make(~props = None),
  ]),
}

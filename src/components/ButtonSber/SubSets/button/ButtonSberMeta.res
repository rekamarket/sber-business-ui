open Template

let displayName = "ButtonSber";

let make: Template.t = {
  tag: HTMLTag(#button),
  displayName,
  parentName: "ButtonSber",
  component: "ButtonSber",
  description: "The ButtonSber component",
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

    ButtonSberLayerMeta.make(~props = None),

    [
      Js.Obj.assign(Js.Obj.empty(), {
        "title": displayName,
        "description": None,
        "key": "",
        "content": Some(displayName ++ " " ++ "with loading"),
        "args": None,
        "props": Some(list{("loading", Boolean(true))}),
      }),
    ],
  ]),
}

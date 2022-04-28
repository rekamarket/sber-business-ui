open Template

let displayName = "ButtonLink";

let make: Template.t = {
  tag: HTMLTag(#a),
  displayName,
  parentName: "ButtonLink",
  component: "ButtonLink",
  description: "The ButtonLink element",
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

    ButtonLinkLayerMeta.make(~props = None),
  ]),
}

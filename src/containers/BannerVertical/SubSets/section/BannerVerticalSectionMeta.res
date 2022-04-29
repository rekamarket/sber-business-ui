let displayName = "BannerLong";

let make: Template.t = {
  tag: HTMLTag(#section),
  displayName,
  parentName: BannerVerticalMeta.make.displayName,
  component: "BannerLong",
  description: "",
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

    ColorLayerMeta.make(~props = None),
  ]),
}

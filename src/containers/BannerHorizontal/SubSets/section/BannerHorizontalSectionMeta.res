let displayName = "BannerWide";

let make: Template.t = {
  tag: HTMLTag(#section),
  displayName,
  parentName: BannerHorizontalMeta.make.displayName,
  component: "BannerWide",
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

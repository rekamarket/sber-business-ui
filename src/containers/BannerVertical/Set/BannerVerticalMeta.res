let displayName = "BannerVertical";

let make: Template.t = {
  tag: HTMLSet([
    #div,
    #aside,
    #section,
  ]),
  displayName,
  parentName: "BannerVertical",
  component: "BannerVertical",
  description: "BannerVertical",
  mdn: None,

  docs: Belt.Array.concatMany([
    [
      Js.Obj.assign(Js.Obj.empty(), {
        "title": displayName,
        "description": None,
        "key": "tag",
        "content": Some(displayName ++ " " ++ "with default styles"),
        "args": ["div"],
        "props": None,
      }),

      Js.Obj.assign(Js.Obj.empty(), {
        "title": "Semantics",
        "description": Some("BannerVertical has 3 tags: [div, aside, section]:"),
        "key": "tag",
        "content": None,
        "args": ["div", "aside", "section"],
        "props": None,
      }),
    ],

    ColorLayerMeta.make(
      ~props = Some(list{
        ("tag", "div"),
      }),
    ),
  ]),
}

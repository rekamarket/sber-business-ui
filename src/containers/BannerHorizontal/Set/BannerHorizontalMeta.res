let displayName = "BannerHorizontal";

let make: Template.t = {
  tag: HTMLSet([
    #div,
    #aside,
    #section,
  ]),
  displayName,
  parentName: "BannerHorizontal",
  component: "BannerHorizontal",
  description: "BannerHorizontal",
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
        "description": Some("BannerHorizontal has 3 tags: [div, aside, section]:"),
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

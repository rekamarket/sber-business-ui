let displayName = "BannerHorizontal";

let make: Template.t = {
  tag: HTMLSet([
    #div,
    #p,
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
        "args": ["p"],
        "props": None,
      }),

      Js.Obj.assign(Js.Obj.empty(), {
        "title": "Semantics",
        "description": Some("BannerHorizontal has 2 tags: [p, div]:"),
        "key": "tag",
        "content": None,
        "args": ["p", "div"],
        "props": None,
      }),
    ],

    ColorLayerMeta.make(
      ~props = Some(list{
        ("tag", "p"),
      }),
    ),
  ]),
}

let make: (~props: option<list<(string, string)>>) => array<Js.t<Template.k>> = (~props) => [
  Js.Obj.assign(Js.Obj.empty(), {
    "title": BannerHorizontalColorMeta.make.name,
    "description": None,
    "key": BannerHorizontalColorMeta.make.name,
    "content": None,
    "args": BannerHorizontalColorMeta.make.args,
    "props": props,
  }),

  Js.Obj.assign(Js.Obj.empty(), {
    "title": BannerHorizontalSizeMeta.make.name,
    "description": None,
    "key": BannerHorizontalSizeMeta.make.name,
    "content": None,
    "args": BannerHorizontalSizeMeta.make.args,
    "props": props,
  }),
]

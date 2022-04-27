let make: (~props: option<list<(string, string)>>) => array<Js.t<Template.k>> = (~props) => [
  Js.Obj.assign(Js.Obj.empty(), {
    "title": BannerVerticalColorMeta.make.name,
    "description": None,
    "key": BannerVerticalColorMeta.make.name,
    "content": None,
    "args": BannerVerticalColorMeta.make.args,
    "props": props,
  }),

  Js.Obj.assign(Js.Obj.empty(), {
    "title": BannerVerticalSizeMeta.make.name,
    "description": None,
    "key": BannerVerticalSizeMeta.make.name,
    "content": None,
    "args": BannerVerticalSizeMeta.make.args,
    "props": props,
  }),
]

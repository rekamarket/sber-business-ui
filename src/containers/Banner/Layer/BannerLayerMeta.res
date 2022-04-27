let make: (~props: option<list<(string, string)>>) => array<Js.t<Template.k>> = (~props) => [
  Js.Obj.assign(Js.Obj.empty(), {
    "title": BannerSizeMeta.make.name,
    "description": None,
    "key": BannerSizeMeta.make.name,
    "content": None,
    "args": BannerSizeMeta.make.args,
    "props": props,
  }),

  Js.Obj.assign(Js.Obj.empty(), {
    "title": BannerVariantMeta.make.name,
    "description": None,
    "key": BannerVariantMeta.make.name,
    "content": None,
    "args": BannerVariantMeta.make.args,
    "props": props,
  }),
]

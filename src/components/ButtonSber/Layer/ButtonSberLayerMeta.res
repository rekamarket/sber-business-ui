let make: (~props: option<list<(string, string)>>) => array<Js.t<Template.k>> = (~props) => [
  Js.Obj.assign(Js.Obj.empty(), {
    "title": ButtonSberSizeMeta.make.name,
    "description": None,
    "key": ButtonSberSizeMeta.make.name,
    "content": None,
    "args": ButtonSberSizeMeta.make.args,
    "props": props,
  }),

  Js.Obj.assign(Js.Obj.empty(), {
    "title": ButtonSberVariantMeta.make.name,
    "description": None,
    "key": ButtonSberVariantMeta.make.name,
    "content": None,
    "args": ButtonSberVariantMeta.make.args,
    "props": props,
  }),
]

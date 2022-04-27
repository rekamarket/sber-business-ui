let make: (~props: option<list<(string, string)>>) => array<Js.t<Template.k>> = (~props) => [
  Js.Obj.assign(Js.Obj.empty(), {
    "title": ButtonSizeMeta.make.name,
    "description": None,
    "key": ButtonSizeMeta.make.name,
    "content": None,
    "args": ButtonSizeMeta.make.args,
    "props": props,
  }),
  Js.Obj.assign(Js.Obj.empty(), {
    "title": ButtonVariantMeta.make.name,
    "description": None,
    "key": ButtonVariantMeta.make.name,
    "content": None,
    "args": ButtonVariantMeta.make.args,
    "props": props,
  }),
]

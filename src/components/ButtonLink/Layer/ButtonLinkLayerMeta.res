let make: (~props: option<list<(string, string)>>) => array<Js.t<Template.k>> = (~props) => [
  Js.Obj.assign(Js.Obj.empty(), {
    "title": ButtonLinkSizeMeta.make.name,
    "description": None,
    "key": ButtonLinkSizeMeta.make.name,
    "content": None,
    "args": ButtonLinkSizeMeta.make.args,
    "props": props,
  }),
  Js.Obj.assign(Js.Obj.empty(), {
    "title": ButtonLinkVariantMeta.make.name,
    "description": None,
    "key": ButtonLinkVariantMeta.make.name,
    "content": None,
    "args": ButtonLinkVariantMeta.make.args,
    "props": props,
  }),
]

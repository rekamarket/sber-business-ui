let {
  displayName,
  parentName,
  component,
  docs,
}: Meta.t = CiteMeta.make

@genType
let make = LayerMeta.make(
  ~name = displayName,
  ~group = Some(parentName),
  ~displayName,
  ~docs,
);
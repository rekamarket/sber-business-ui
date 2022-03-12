let {
  displayName,
  parentName,
  component,
  docs,
}: Meta.t = H5Meta.make

@genType
let make = LayerMeta.make(
  ~name = displayName,
  ~group = Some(parentName),
  ~displayName,
  ~docs,
);
let {
  displayName,
  parentName,
  component,
  docs,
}: Meta.t = H4Meta.make

@genType
let make = LayerMeta.make(
  ~name = displayName,
  ~group = Some(parentName),
  ~displayName,
  ~docs,
);

open R

let { displayName, parentName, tag, list } = module(LimitMeta)

let make = R.title(
  ~name = displayName,
  ~group = parentName,
) ++ "\n" ++ R.header(. ~title = displayName) ++ list(
  ~tag = displayName,
  ~children = None,
  ~props = [
    ("limit", Number(1000000)),
  ] -> Some,
) -> Belt.Array.reduce("", (acc, curr) => acc ++ "\n" ++ R.section(
  ~tag = displayName,
  ~title = curr.title,
  ~description = curr.description,
  ~root = curr.root,
  ~imports = None,
)) ++ list(
  ~tag = displayName,
  ~children = None,
  ~props = None,
) -> Belt.Array.reduce("", (acc, curr) => acc ++ "\n" ++ R.section(
  ~tag = displayName,
  ~title = curr.title,
  ~description = curr.description,
  ~root = curr.root,
  ~imports = None,
))

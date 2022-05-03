open R

let { displayName, parentName, tag, list } = module(SpanMeta)

let make = R.title(
  ~name = displayName,
  ~group = Some(parentName),
) ++ "\n" ++ list(
  ~tag = displayName,
  ~children = `Строчный текст` -> Some,
  ~props = None,
) -> Belt.Array.reduce("", (acc, curr) => acc ++ "\n" ++ R.section(
  ~tag = displayName,
  ~title = curr.title,
  ~description = curr.description,
  ~root = curr.root,
  ~imports = None,
))

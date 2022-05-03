open R

let { displayName, parentName, tag, list } = module(BMeta)

let make = R.title(
  ~name = displayName,
  ~group = Some(parentName),
) ++ "\n" ++ list(
  ~tag = displayName,
  ~children = `Текст повышенного значения` -> Some,
  ~props = None,
) -> Belt.Array.reduce("", (acc, curr) => acc ++ "\n" ++ R.section(
  ~tag = displayName,
  ~title = curr.title,
  ~description = curr.description,
  ~root = curr.root,
  ~imports = None,
))

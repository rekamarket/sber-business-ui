open R

let { displayName, parentName, tag, list } = module(BannerVerticalMeta)

let make = R.title(
  ~name = displayName,
  ~group = Some(parentName),
) ++ "\n" ++ list(
  ~tag = displayName,
  ~children = `<H1>Покупайте со СберБизнес</H1>` -> Some,
  ~props = [
    ("tag", String("section")),
    ("background", String("https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png")),
    ("description", String(`Лимит с рассрочкой 30 дней без процентов для ИП и ООО`)),
    ("color", String("snow")),
    ("size", String("m")),
  ] -> Some,
) -> Belt.Array.reduce("", (acc, curr) => acc ++ "\n" ++ R.section(
  ~tag = displayName,
  ~title = curr.title,
  ~description = curr.description,
  ~root = curr.root,
  ~imports = ["H1"] -> Some,
))

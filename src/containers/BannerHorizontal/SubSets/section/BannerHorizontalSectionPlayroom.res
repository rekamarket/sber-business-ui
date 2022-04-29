let { component, displayName, description, tag }: Template.t = BannerHorizontalSectionMeta.make

let make: array<Playroom.t> = [
  {
    group: displayName,
    name: Playroom.getName(~tag, ~description) ++ " extra large size",
    code: Playroom.getCode(
      ~component,
      ~content = Some(`<H1>Покупайте со СберБизнес</H1>`),
      ~props = list{
        ("background", String("https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png")),
        ("description", String(`Лимит с рассрочкой 30 дней без процентов для ИП и ООО`)),
        ("color", String("snow")),
        ("size", String("xl")),
      },
    ),
  },

  {
    group: displayName,
    name: Playroom.getName(~tag, ~description) ++ " large size",
    code: Playroom.getCode(
      ~component,
      ~content = Some(`<H1>Покупайте со СберБизнес</H1>`),
      ~props = list{
        ("background", String("https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png")),
        ("description", String(`Лимит с рассрочкой 30 дней без процентов для ИП и ООО`)),
        ("color", String("snow")),
        ("size", String("l")),
      },
    ),
  },

  {
    group: displayName,
    name: Playroom.getName(~tag, ~description) ++ " medium size",
    code: Playroom.getCode(
      ~component,
      ~content = Some(`<H1>Покупайте со СберБизнес</H1>`),
      ~props = list{
        ("background", String("https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png")),
        ("description", String(`Лимит с рассрочкой 30 дней без процентов для ИП и ООО`)),
        ("color", String("snow")),
        ("size", String("m")),
      },
    ),
  },

  {
    group: displayName,
    name: Playroom.getName(~tag, ~description) ++ " small size",
    code: Playroom.getCode(
      ~component,
      ~content = Some(`<H1>Покупайте со СберБизнес</H1>`),
      ~props = list{
        ("background", String("https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png")),
        ("description", String(`Лимит с рассрочкой 30 дней без процентов для ИП и ООО`)),
        ("color", String("snow")),
        ("size", String("s")),
      },
    ),
  },

  {
    group: displayName,
    name: Playroom.getName(~tag, ~description) ++ " extra small size",
    code: Playroom.getCode(
      ~component,
      ~content = Some(`<H1>Покупайте со СберБизнес</H1>`),
      ~props = list{
        ("background", String("https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png")),
        ("description", String(`Лимит с рассрочкой 30 дней без процентов для ИП и ООО`)),
        ("color", String("snow")),
        ("size", String("xs")),
      },
    ),
  },

  {
    group: displayName,
    name: Playroom.getName(~tag, ~description) ++ " extra small size without Call-To-Action button",
    code: Playroom.getCode(
      ~component,
      ~content = Some(`<H1>Покупайте со СберБизнес</H1>`),
      ~props = list{
        ("background", String("https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png")),
        ("description", String(`Лимит с рассрочкой 30 дней без процентов для ИП и ООО`)),
        ("color", String("snow")),
        ("size", String("xsNoCTA")),
      },
    ),
  },
]

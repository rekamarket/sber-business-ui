let { component, displayName, description, tag }: Template.t = BannerHorizontalMeta.make

let make: array<Playroom.t> = [
  {
    group: displayName,
    name: Playroom.getName(~tag, ~description),
    code: Playroom.getCode(
      ~component,
      ~content = Some(`<H1>Покупайте со СберБизнес</H1>`),
      ~props = list{
        ("tag", String("aside")),
        ("background", String("https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png")),
        ("description", String(`Лимит с рассрочкой 30 дней без процентов для ИП и ООО`)),
        ("color", String("snow")),
        ("size", String("xl")),
      },
    ),
  },
]

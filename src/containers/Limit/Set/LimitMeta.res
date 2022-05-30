open R
open Playroom

let displayName = "Limit"
let parentName = None
let component = "Limit"
let description = ""

let tag = HTMLSet([
  #div,
  #p,
])

let list: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  [
    {
      title: "Semantics",
      description: `Можно указать теги - ["div", "dl"]; Значение по умолчанию - "dl"` -> Some,

      root: Root({
        tag: R.defaultTag,
        props: R.defaultProps,

        children: R.block(.
          ~tag,
          ~children,
          ~key = "tag",
          ~values = ["div"],
          ~staticProps = switch props {
          | Some(a) => a -> Belt.Array.keep(e => {
              let (key, _) = e
              key != "tag"
            }) -> Some
          | None => None
          },
        ) -> Some,
      }),
    },

    {
      title: `Кастомное форматирование лимита`,
      description: `опциональный параметр "format: (int) => string"` -> Some,

      root: Root({
        tag: R.defaultTag,
        props: R.defaultProps,

        children: R.block(.
          ~tag,
          ~children,
          ~key = "format",
          ~values = ["(value) => value.toString()"],
          ~staticProps = switch props {
          | Some(a) => a -> Belt.Array.keep(e => {
              let (key, _) = e
              key != "format"
            }) -> Some
          | None => None
          },
        ) -> Some,
      }),
    },

    {
      title: `Заголовок`,
      description: `опциональный параметр "title: string"` -> Some,

      root: Root({
        tag: R.defaultTag,
        props: R.defaultProps,

        children: R.block(.
          ~tag,
          ~children,
          ~key = "title",
          ~values = [`Лимит`],
          ~staticProps = switch props {
          | Some(a) => a -> Belt.Array.keep(e => {
              let (key, _) = e
              key != "title"
            }) -> Some
          | None => None
          },
        ) -> Some,
      }),
    },

    {
      title: `Ссылка`,
      description: `опциональный параметр "href: string"` -> Some,

      root: Root({
        tag: R.defaultTag,
        props: R.defaultProps,

        children: R.block(.
          ~tag,
          ~children,
          ~key = "href",
          ~values = [`https://example.com`],
          ~staticProps = switch props {
          | Some(a) => a -> Belt.Array.keep(e => {
              let (key, _) = e
              key != "href"
            }) -> Some
          | None => None
          },
        ) -> Some,
      }),
    },
  ],

  LimitLayerMeta.make(~tag, ~children, ~props),
] -> Belt.Array.concatMany

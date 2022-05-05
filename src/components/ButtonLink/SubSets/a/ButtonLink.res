open ButtonLinkStyleProps

@module("./ButtonLinkStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(ButtonLinkMeta)
let className = classNameRoot

@react.component
let make = (
  ~href: string,
  ~className: option<string>=?,

  ~size: option<ButtonLinkSize.t>=?,
  ~variant: option<ButtonLinkVariant.t>=?,

  ~children: React.element,
) => ButtonLinkProto.make(
  ~tag = #a,
  ~href,

  ~className = Cn.make([classNameRoot, switch className {
  | Some(c) => c
  | None => ""
  }]),

  ~size = switch size {
  | Some(s) => s
  | None => styleProps.size
  },

  ~variant = switch variant {
  | Some(s) => s
  | None => styleProps.variant
  },

  ~children,
)

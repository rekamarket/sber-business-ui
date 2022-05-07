open ButtonLinkStyleProps

@module("./ButtonLinkStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(ButtonLinkMeta)
let className = classNameRoot

@react.component
let make = (
  ~nodeRef: option<ReactDOM.domRef>=?,
  ~href: string,
  ~className: option<string>=?,
  ~style: option<Retype.style>=?,

  ~size: option<ButtonLinkSize.t>=?,
  ~variant: option<ButtonLinkVariant.t>=?,

  ~children: React.element,
) => ButtonLinkProto.make(
  ~nodeRef = ?nodeRef,
  ~tag = #a,
  ~href,

  ~className = Cn.make([classNameRoot, switch className {
  | Some(c) => c
  | None => ""
  }]),
  ~style = ?style,

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

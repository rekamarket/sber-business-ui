open ButtonSberStyleProps

@module("./ButtonSberStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(ButtonSberMeta)
let className = classNameRoot

@react.component
let make = (
  ~nodeRef: option<ReactDOM.domRef>=?,
  ~className: option<string>=?,
  ~style: option<Retype.style>=?,

  ~size: option<ButtonSberSize.t>=?,
  ~variant: option<ButtonSberVariant.t>=?,

  ~children: React.element,
  ~loading: option<bool>=?,
) => ButtonSberProto.make(
  ~nodeRef = ?nodeRef,
  ~tag = #button,

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
  ~loading,
)

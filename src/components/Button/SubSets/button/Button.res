open ButtonStyleProps

@module("./ButtonStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(ButtonMeta)
let className = classNameRoot

@react.component
let make = (
  ~className: option<string>=?,
  ~style: option<Retype.style>=?,

  ~size: option<ButtonSize.t>=?,
  ~variant: option<ButtonVariant.t>=?,

  ~children: React.element,
) => ButtonProto.make(
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
)

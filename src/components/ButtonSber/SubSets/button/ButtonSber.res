open ButtonSberStyleProps

@module("./ButtonSberStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(ButtonSberMeta)
let className = classNameRoot

@react.component
let make = (
  ~className: option<string>=?,

  ~size: option<ButtonSberSize.t>=?,
  ~variant: option<ButtonSberVariant.t>=?,

  ~children: React.element,
  ~loading: option<bool>=?,
) => ButtonSberProto.make(
  ~tag = #button,

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
  ~loading,
)

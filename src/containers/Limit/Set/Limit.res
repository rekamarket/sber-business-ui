open LimitStyleProps

@module("./LimitStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(LimitMeta)
let className = classNameRoot

external dangerousTagCast: LimitProto.dl => LimitProto.tag = "%identity";

@react.component
let make = (
  ~format: option<int => string>=?,
  ~title: option<string>=?,
  ~href: option<string>=?,

  ~className: option<string>=?,
  ~style: option<Retype.style>=?,

  ~color: option<LimitColor.t>=?,
  ~size: option<LimitSize.t>=?,
  ~\"type": option<LimitType.t>=?,

  ~limit: option<int>=?,
  ~tag: option<LimitProto.dl>,
) => LimitProto.make(
  ~tag = switch tag {
  | Some(t) => t -> dangerousTagCast
  | None => #dl
  },

  ~className = Cn.make([classNameRoot, switch className {
  | Some(c) => c
  | None => ""
  }]),
  ~style = ?style,

  ~color = switch color {
  | Some(s) => s
  | None => styleProps.color
  },
  ~size = switch size {
  | Some(s) => s
  | None => styleProps.size
  },
  ~\"type" = switch \"type" {
  | Some(s) => s
  | None => styleProps.\"type"
  },

  ~limit = ?limit,
  ~format = ?format,
  ~title = ?title,
  ~href = ?href,
)

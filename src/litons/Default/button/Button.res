open LitonProto

@module("./ButtonStyle.css.js") external classNameRoot: string = "className"
@module("./ButtonStyle.css.js") external classNameContent: string = "content"

let {displayName} = module(ButtonMeta)
let className = classNameRoot

@react.component
let make = (
  ~className: option<string>=?,
  ~style: option<Retype.style>=?,
  ~justifySelf: option<JustifySelf.t>=?,
  ~inlineSize: option<InlineSize.t>=?,
  ~size: option<LitonSize.t>=?,
  ~variant: option<LitonVariant.t>=?,
  ~tabIndex: option<int>=?,
  ~onBlur: option<Retype.focusEvent => unit>=?,
  ~onClick: option<Retype.mouseEvent => unit>=?,
  ~onFocus: option<Retype.focusEvent => unit>=?,
  ~onMouseDown: option<Retype.mouseEvent => unit>=?,
  ~onMouseLeave: option<Retype.mouseEvent => unit>=?,
  ~onMouseUp: option<Retype.mouseEvent => unit>=?,
  ~onTouchEnd: option<Retype.touchEvent => unit>=?,
  ~onTouchMove: option<Retype.touchEvent => unit>=?,
  ~onTouchStart: option<Retype.touchEvent => unit>=?,
  ~autofocus: option<bool>=?,
  ~disabled: option<bool>=?,
  ~\"type": option<ButtonHTML.buttonType>=?,
  ~children: React.element,
) => {
  let justifySelf = switch justifySelf {
  | Some(s) => s
  | None => styleProps.justifySelf
  }

  let inlineSize = switch inlineSize {
  | Some(s) => s
  | None => styleProps.inlineSize
  }

  let size = switch size {
  | Some(s) => s
  | None => styleProps.size
  }

  let variant = switch variant {
  | Some(s) => s
  | None => styleProps.variant
  }

  let type_ = switch \"type" {
  | Some(s) => (s :> string)
  | None => (ButtonHTML.buttonTypeDefault :> string)
  }

  <button
    className={Cn.make([
      classNameRoot,
      switch className {
      | Some(c) => c
      | None => ""
      },
      JustifySelfLayer.resolve(~justifySelf),
      InlineSizeLayer.resolve(~inlineSize),
      LitonLayer.resolve(~size, ~variant),
    ])}
    ?style
    ?tabIndex
    ?onBlur
    ?onClick
    ?onFocus
    ?onMouseDown
    ?onMouseLeave
    ?onMouseUp
    ?onTouchEnd
    ?onTouchMove
    ?onTouchStart
    autoFocus=?autofocus
    ?disabled
    type_>
    <span className=classNameContent> {children} </span>
  </button>
}

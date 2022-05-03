@module("./ButtonStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(ButtonMeta)
let className = classNameRoot
type styleProps = ButtonProto.styleProps
let styleProps = ButtonStyleProps.styleProps
type props = ButtonSubset.props

let make = ButtonSubset.make(
  ~tag = #button,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

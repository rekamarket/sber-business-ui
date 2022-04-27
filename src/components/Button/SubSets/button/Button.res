@module("./ButtonStyle.css.js") external classNameRoot: string = "className"

let { displayName }: Template.t = ButtonMeta.make
let className = classNameRoot
type styleProps = ButtonProto.styleProps
let styleProps = ButtonStyleProps.styleProps
type props = ButtonSubset.props

let make = ButtonSubset.make(
  ~tag = #button,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

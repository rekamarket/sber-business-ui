@module("./ButtonSberStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(ButtonSberMeta)
let className = classNameRoot
type styleProps = ButtonSberProto.styleProps
let styleProps = ButtonSberStyleProps.styleProps
type props = ButtonSberSubset.props

let make = ButtonSberSubset.make(
  ~tag = #button,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

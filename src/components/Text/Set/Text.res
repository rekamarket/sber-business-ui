@module("./TextStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(TextMeta)
let className = classNameRoot
type styleProps = TextProto.styleProps
let styleProps = TextStyleProps.styleProps
type props = TextSet.props

let make = TextSet.make(
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

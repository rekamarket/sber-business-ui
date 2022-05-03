@module("./AStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(AMeta)
let className = classNameRoot
type styleProps = LinkProto.styleProps
let styleProps = AStyleProps.styleProps
type props = LinkSubset.props

let make = LinkSubset.make(
  ~tag = #a,
  ~className,
  ~styleProps,
)

@module("./StrongStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(StrongMeta)
let className = classNameRoot
type styleProps = TextProto.styleProps
let styleProps = StrongStyleProps.styleProps
type props = TextSubset.props

let make = TextSubset.make(
  ~tag = #strong,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

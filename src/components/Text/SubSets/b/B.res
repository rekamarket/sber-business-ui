@module("./BStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(BMeta)
let className = classNameRoot
type styleProps = TextProto.styleProps
let styleProps = BStyleProps.styleProps
type props = TextSubset.props

let make = TextSubset.make(
  ~tag = #b,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

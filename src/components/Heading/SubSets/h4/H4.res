@module("./H4Style.css.js") external classNameRoot: string = "className"

let { displayName } = module(H4Meta)
let className = classNameRoot
type styleProps = HeadingProto.styleProps
let styleProps = H4StyleProps.styleProps
type props = HeadingSubset.props

let make = HeadingSubset.make(
  ~level = #4,
  ~tag = None,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

@module("./H6Style.css.js") external classNameRoot: string = "className"

let { displayName } = module(H6Meta)
let className = classNameRoot
type styleProps = HeadingProto.styleProps
let styleProps = H6StyleProps.styleProps
type props = HeadingSubset.props

let make = HeadingSubset.make(
  ~level = #6,
  ~tag = None,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)
@module("./H3Style.css.js") external classNameRoot: string = "className"

let { displayName } = module(H3Meta)
let className = classNameRoot
type styleProps = HeadingProto.styleProps
let styleProps = H3StyleProps.styleProps
type props = HeadingSubset.props

let make = HeadingSubset.make(
  ~level = #3,
  ~tag = None,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

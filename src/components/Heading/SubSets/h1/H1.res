@module("./H1Style.css.js") external classNameRoot: string = "className"

let { displayName } = module(H1Meta)
let className = classNameRoot
type styleProps = HeadingProto.styleProps
let styleProps = H1StyleProps.styleProps
type props = HeadingSubset.props
let makeProps = HeadingSubset.makeProps // #TODO: add everywhere

let make = HeadingSubset.make(
  ~level = #1,
  ~tag = None,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

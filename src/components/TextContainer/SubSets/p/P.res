@module("./PStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(PMeta)
let className = classNameRoot
type styleProps = TextContainerProto.styleProps
let styleProps = PStyleProps.styleProps
type props = TextContainerSubset.props
let makeProps = TextContainerSubset.makeProps

let make = TextContainerSubset.make(
  ~tag = #p,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

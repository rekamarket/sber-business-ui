@module("./ButtonLinkStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(ButtonLinkMeta)
let className = classNameRoot
type styleProps = ButtonLinkProto.styleProps
let styleProps = ButtonLinkStyleProps.styleProps
type props = ButtonLinkSubset.props
let makeProps = ButtonLinkSubset.makeProps

let make = ButtonLinkSubset.make(
  ~tag = #a,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

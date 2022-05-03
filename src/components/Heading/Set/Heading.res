@module("./HeadingStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(HeadingMeta)
let className = classNameRoot
type styleProps = HeadingProto.styleProps
let styleProps = HeadingStyleProps.styleProps
type props = HeadingSet.props
let makeProps = HeadingSet.makeProps

let make = HeadingSet.make(
  ~className,
  ~styleProps,
)

@module("./BannerHorizontalStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(BannerHorizontalMeta)
let className = classNameRoot
type styleProps = BannerHorizontalProto.styleProps
let styleProps = BannerHorizontalStyleProps.styleProps
type props = BannerHorizontalSet.props

let make = BannerHorizontalSet.make(
  ~className,
  ~styleProps,
)

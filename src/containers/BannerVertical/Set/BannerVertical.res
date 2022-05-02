@module("./BannerVerticalStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(BannerVerticalMeta)
let className = classNameRoot
type styleProps = BannerVerticalProto.styleProps
let styleProps = BannerVerticalStyleProps.styleProps
type props = BannerVerticalSet.props

let make = BannerVerticalSet.make(
  ~className,
  ~styleProps,
)

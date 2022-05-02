@module("./BannerVerticalSectionStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(BannerVerticalSectionMeta)
let className = classNameRoot
type styleProps = BannerVerticalProto.styleProps
let styleProps = BannerVerticalSectionStyleProps.styleProps
type props = BannerVerticalSubset.props

let make = BannerVerticalSubset.make(
  ~tag = #section,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

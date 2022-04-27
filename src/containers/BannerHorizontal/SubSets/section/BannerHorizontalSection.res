@module("./BannerHorizontalSectionStyle.css.js") external classNameRoot: string = "className"

let { displayName }: Template.t = BannerHorizontalSectionMeta.make
let className = classNameRoot
type styleProps = BannerHorizontalProto.styleProps
let styleProps = BannerHorizontalSectionStyleProps.styleProps
type props = BannerHorizontalSubset.props

let make = BannerHorizontalSubset.make(
  ~tag = #section,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

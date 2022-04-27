@module("./BannerSectionStyle.css.js") external classNameRoot: string = "className"

let { displayName }: Template.t = BannerSectionMeta.make
let className = classNameRoot
type styleProps = BannerProto.styleProps
let styleProps = BannerSectionStyleProps.styleProps
type props = BannerSubset.props

let make = BannerSubset.make(
  ~tag = #section,
  ~className = classNameRoot,
  ~styleProps = styleProps,
)

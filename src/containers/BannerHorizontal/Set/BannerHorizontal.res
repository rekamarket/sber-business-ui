@module("./BannerHorizontalStyle.css.js") external classNameRoot: string = "className"

let { displayName }: Template.t = BannerHorizontalMeta.make
let className = classNameRoot
type styleProps = BannerHorizontalProto.styleProps
let styleProps = BannerHorizontalStyleProps.styleProps
type props = BannerHorizontalSet.props

let make = BannerHorizontalSet.make(
  ~className,
  ~styleProps,
)

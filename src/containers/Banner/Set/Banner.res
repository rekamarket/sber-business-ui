@module("./BannerStyle.css.js") external classNameRoot: string = "className"

let { displayName }: Template.t = BannerMeta.make
let className = classNameRoot
type styleProps = BannerProto.styleProps
let styleProps = BannerStyleProps.styleProps
type props = BannerSet.props

let make = BannerSet.make(
  ~className,
  ~styleProps,
)

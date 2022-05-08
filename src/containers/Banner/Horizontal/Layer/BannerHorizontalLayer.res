@genType
let resolve = (
  ~color: BannerColor.t         ,
  ~size : BannerHorizontalSize.t,
) => Cn.make([
  BannerColorResolver.make          (. color ),
  BannerHorizontalSizeResolver.make (. size  ),
])

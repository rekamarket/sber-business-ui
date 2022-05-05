@genType
let resolve = (
  ~color: Color.t               ,
  ~size : BannerHorizontalSize.t,
) => Cn.make([
  ColorResolver.make                (. color ),
  BannerHorizontalSizeResolver.make (. size  ),
])

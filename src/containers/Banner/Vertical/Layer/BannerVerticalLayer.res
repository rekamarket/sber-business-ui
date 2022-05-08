@genType
let resolve = (
  ~color: BannerColor.t       ,
  ~size : BannerVerticalSize.t,
) => Cn.make([
  BannerColorResolver.make        (. color ),
  BannerVerticalSizeResolver.make (. size  ),
])

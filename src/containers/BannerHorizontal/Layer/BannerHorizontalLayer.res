@genType
let resolve = (
  ~color: BannerHorizontalColor.t,
  ~size : BannerHorizontalSize.t ,
) => Cn.make([
  BannerHorizontalColorResolver.make(. color ),
  BannerHorizontalSizeResolver.make (. size  ),
]);

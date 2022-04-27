@genType
let resolve = (
  ~color: BannerVerticalColor.t,
  ~size : BannerVerticalSize.t ,
) => Cn.make([
  BannerVerticalColorResolver.make(. color ),
  BannerVerticalSizeResolver.make (. size  ),
]);

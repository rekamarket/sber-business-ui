@genType
let resolve = (
  ~color: Color.t             ,
  ~size : BannerVerticalSize.t,
) => Cn.make([
  ColorResolver.make              (. color ),
  BannerVerticalSizeResolver.make (. size  ),
]);

@genType
let resolve = (
  ~size   : BannerSize.t   ,
  ~variant: BannerVariant.t,
) => Cn.make([
  BannerSizeResolver.make   ( . size    ),
  BannerVariantResolver.make( . variant ),
]);

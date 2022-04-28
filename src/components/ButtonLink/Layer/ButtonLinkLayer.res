@genType
let resolve = (
  ~size   : ButtonLinkSize.t   ,
  ~variant: ButtonLinkVariant.t,
) => Cn.make([
  ButtonLinkSizeResolver.make    ( . size    ),
  ButtonLinkVariantResolver.make ( . variant ),
]);

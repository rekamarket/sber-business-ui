@genType
let resolve = (
  ~size   : ButtonSberSize.t   ,
  ~variant: ButtonSberVariant.t,
) => Cn.make([
  ButtonSberSizeResolver.make    ( . size    ),
  ButtonSberVariantResolver.make ( . variant ),
]);

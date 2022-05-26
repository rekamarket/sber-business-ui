@genType
let resolve = (
  ~size   : LitonSberSize.t   ,
  ~variant: LitonSberVariant.t,
) => Cn.make([
  LitonSberSizeResolver.make    ( . size    ),
  LitonSberVariantResolver.make ( . variant ),
])

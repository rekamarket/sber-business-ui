@genType
let resolve = (
  ~size   : LitonSize.t   ,
  ~variant: LitonVariant.t,
) => Cn.make([
  LitonSizeResolver.make    ( . size    ),
  LitonVariantResolver.make ( . variant ),
])

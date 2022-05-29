@genType
let resolve = (
  ~color: LimitColor.t   ,
  ~size : LimitSize.t,
  ~\"type" : LimitType.t,
) => Cn.make([
  LimitColorResolver.make( . color   ),
  LimitSizeResolver.make ( . size    ),
  LimitTypeResolver.make ( . \"type" ),
])

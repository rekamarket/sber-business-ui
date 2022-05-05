@genType
let resolve = (
  ~size   : ButtonSize.t   ,
  ~variant: ButtonVariant.t,
) => Cn.make([
  ButtonSizeResolver.make    ( . size    ),
  ButtonVariantResolver.make ( . variant ),
])

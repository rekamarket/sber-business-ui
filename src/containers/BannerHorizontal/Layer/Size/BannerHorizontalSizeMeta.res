let css = "size";

let make: LayerMeta.t<BannerHorizontalSize.t> = {
  name: "size",
  css,
  args: BannerHorizontalSize.args,
  initial: `${css}="${BannerHorizontalSize.initial :> string}"`,
  description: "",
  mdn: "",
}

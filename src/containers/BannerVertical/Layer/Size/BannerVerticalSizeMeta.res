let css = "size";

let make: LayerMeta.t<BannerVerticalSize.t> = {
  name: "size",
  css,
  args: BannerVerticalSize.args,
  initial: `${css}="${BannerVerticalSize.initial :> string}"`,
  description: "",
  mdn: "",
}

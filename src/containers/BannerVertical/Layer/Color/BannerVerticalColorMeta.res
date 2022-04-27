let css = "color";

let make: LayerMeta.t<BannerVerticalColor.t> = {
  name: "color",
  css,
  args: BannerVerticalColor.args,
  initial: `${css}="${BannerVerticalColor.initial :> string}"`,
  description: "",
  mdn: "",
}

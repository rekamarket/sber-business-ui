let css = "color";

let make: LayerMeta.t<BannerHorizontalColor.t> = {
  name: "color",
  css,
  args: BannerHorizontalColor.args,
  initial: `${css}="${BannerHorizontalColor.initial :> string}"`,
  description: "",
  mdn: "",
}

let css = "variant";

let make: LayerMeta.t<BannerVariant.t> = {
  name: "variant",
  css,
  args: BannerVariant.args,
  initial: `${css}="${BannerVariant.initial :> string}"`,
  description: "",
  mdn: "",
}

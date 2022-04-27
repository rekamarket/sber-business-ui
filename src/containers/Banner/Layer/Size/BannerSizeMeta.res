let css = "size";

let make: LayerMeta.t<BannerSize.t> = {
  name: "size",
  css,
  args: BannerSize.args,
  initial: `${css}="${ButtonSize.initial :> string}"`,
  description: "",
  mdn: "",
}

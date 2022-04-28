let css = "size";

let make: LayerMeta.t<ButtonLinkSize.t> = {
  name: "size",
  css,
  args: ButtonLinkSize.args,
  initial: `${css}="${ButtonLinkSize.initial :> string}"`,
  description: "",
  mdn: "",
}

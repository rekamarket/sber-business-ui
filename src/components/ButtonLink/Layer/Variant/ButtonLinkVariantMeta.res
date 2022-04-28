let css = "variant";

let make: LayerMeta.t<ButtonLinkVariant.t> = {
  name: "variant",
  css,
  args: ButtonLinkVariant.args,
  initial: `${css}="${ButtonLinkVariant.initial :> string}"`,
  description: "",
  mdn: "",
}

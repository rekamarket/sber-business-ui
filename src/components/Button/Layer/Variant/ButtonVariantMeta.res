let css = "variant";

let make: LayerMeta.t<ButtonVariant.t> = {
  name: "variant",
  css,
  args: ButtonVariant.args,
  initial: `${css}="${ButtonVariant.initial :> string}"`,
  description: "",
  mdn: "",
}

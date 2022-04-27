let css = "variant";

let make: LayerMeta.t<ButtonSberVariant.t> = {
  name: "variant",
  css,
  args: ButtonSberVariant.args,
  initial: `${css}="${ButtonSberVariant.initial :> string}"`,
  description: "",
  mdn: "",
}

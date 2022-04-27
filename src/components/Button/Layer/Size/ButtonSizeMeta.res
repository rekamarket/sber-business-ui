let css = "size";

let make: LayerMeta.t<ButtonSize.t> = {
  name: "size",
  css,
  args: ButtonSize.args,
  initial: `${css}="${ButtonSize.initial :> string}"`,
  description: "",
  mdn: "",
}

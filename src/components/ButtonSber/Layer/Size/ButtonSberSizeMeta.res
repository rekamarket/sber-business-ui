let css = "size";

let make: LayerMeta.t<ButtonSberSize.t> = {
  name: "size",
  css,
  args: ButtonSize.args,
  initial: `${css}="${ButtonSize.initial :> string}"`,
  description: "",
  mdn: "",
}

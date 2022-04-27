let css = "size";

let make: LayerMeta.t<ButtonSberSize.t> = {
  name: "size",
  css,
  args: ButtonSberSize.args,
  initial: `${css}="${ButtonSberSize.initial :> string}"`,
  description: "",
  mdn: "",
}

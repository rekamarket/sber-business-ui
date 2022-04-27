@genType
type props = {
  "className": option<string>,

  "size": option<ButtonSberSize.t>,
  "variant": option<ButtonSberVariant.t>,

  "children": React.element,
  "loading": option<bool>,
}

@obj external makeProps:(
  ~className: option<string>,

  ~size: option<ButtonSberSize.t>,
  ~variant: option<ButtonSberVariant.t>,

  ~children: React.element,
  ~loading: option<bool>,
  unit
) => props = ""

let make = (
  ~tag: ButtonSberProto.tag,
  ~className: string,
  ~styleProps: ButtonSberProto.styleProps,
) => (props: props) => ButtonSberProto.make({
  "tag": tag,

  "className": className,

  "size": switch props["size"] {
  | Some(s) => s
  | None => styleProps["size"]
  },
  "variant": switch props["variant"] {
  | Some(s) => s
  | None => styleProps["variant"]
  },

  "children": props["children"],
  "loading": props["loading"],
})

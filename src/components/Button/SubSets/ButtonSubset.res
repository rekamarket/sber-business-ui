@genType
type props = {
  "className": option<string>,

  "size": option<ButtonSize.t>,
  "variant": option<ButtonVariant.t>,

  "children": React.element,
}

@obj external makeProps:(
  ~className: option<string>,

  ~size: option<ButtonSize.t>,
  ~variant: option<ButtonVariant.t>,

  ~children: React.element,
  unit
) => props = ""

let make = (
  ~tag: ButtonProto.tag,
  ~className: string,
  ~styleProps: ButtonProto.styleProps,
) => (props: props) => ButtonProto.make({
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
})

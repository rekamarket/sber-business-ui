@genType
type props = {
  "href": string,
  "className": option<string>,

  "size": option<ButtonLinkSize.t>,
  "variant": option<ButtonLinkVariant.t>,

  "children": React.element,
}

@obj external makeProps:(
  ~href: string,
  ~className: option<string>,

  ~size: option<ButtonLinkSize.t>,
  ~variant: option<ButtonLinkVariant.t>,

  ~children: React.element,
  unit
) => props = ""

let make = (
  ~tag: ButtonLinkProto.tag,
  ~className: string,
  ~styleProps: ButtonLinkProto.styleProps,
) => (props: props) => ButtonLinkProto.make({
  "tag": tag,
  "href": props["href"],

  "className": Cn.make([className, switch props["className"] {
  | Some(s) => s
  | None => ""
  }]), // #TODO Add everywhere

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

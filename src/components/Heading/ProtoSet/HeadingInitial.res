@module("./HeadingProtoStyle.css.js") external classNameRoot: string = "className"

let className = classNameRoot;

let make = (props: HeadingProtoMeta.props) => {
  let tag = switch props["tag"] {
  | None => switch props["level"] {
    | #1 => "h1"
    | #2 => "h2"
    | #3 => "h3"
    | #4 => "h4"
    | #5 => "h5"
    | #6 => "h6"
    }
  | Some(t) => switch t {
    | #div => "div"
    | #span => "span"
    }
  }

  React.createElementVariadic(
    ReactDOM.stringToComponent(tag),
    ReactDOM.domProps(
      ~className = Cn.make([
        classNameRoot,
        props["className"],

        ColorLayer.resolve(
          ~color = props["color"],
        ),

        FontLayer.resolve(
          ~fontFamily = props["fontFamily"],
          ~fontSize = props["fontSize"],
          ~fontStyle = props["fontStyle"],
          ~fontWeight = props["fontWeight"],
        ),

        MarginLayer.resolve(
          ~marginBlockEnd = props["marginBlockEnd"],
          ~marginBlockStart = props["marginBlockStart"],
          ~marginInlineEnd = props["marginInlineEnd"],
          ~marginInlineStart = props["marginInlineStart"],
        ),

        PaddingLayer.resolve(
          ~paddingBlockEnd = props["paddingBlockEnd"],
          ~paddingBlockStart = props["paddingBlockStart"],
          ~paddingInlineEnd = props["paddingInlineEnd"],
          ~paddingInlineStart = props["paddingInlineStart"],
        ),
      ]),
      // #todo: conditionally render `role` and `ariaLevel` attributes if `tag` is passed
      ()
    ),
    [props["children"]],
  )
}

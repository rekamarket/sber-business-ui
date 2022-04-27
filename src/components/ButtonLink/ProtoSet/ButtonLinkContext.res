let make = (props: ButtonLinkInitial.props) => {
  React.createElement(React.Context.provider(Color.colorContext), {
    "value": Some(props["color"]),
    "children": React.createElement(React.Context.provider(FontSize.fontSizeContext), {
      "value": Some(props["fontSize"]),
      "children": ButtonLinkInitial.make(props),
    }),
  })
}

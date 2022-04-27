let make = (props: BannerInitial.props) => {
  React.createElement(React.Context.provider(Color.colorContext), {
    "value": Some(props["color"]),
    "children": BannerInitial.make(props),
  })
}

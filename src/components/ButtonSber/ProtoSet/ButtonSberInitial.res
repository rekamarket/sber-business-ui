@module("./ButtonSberProtoStyle.css.js") external classNameRoot: string = "className"
@module("./ButtonSberProtoStyle.css.js") external classNameIcon: string = "icon"
@module("./ButtonSberProtoStyle.css.js") external classNameContent: string = "content"
@module("./ButtonSberProtoStyle.css.js") external classNameLoader: string = "loader"
@module("./ButtonSberProtoStyle.css.js") external classNameAppearIn: string = "appearIn"
@module("./ButtonSberProtoStyle.css.js") external classNameAppearOut: string = "appearOut"
@module("./ButtonSberProtoStyle.css.js") external classNameGradient: string = "gradient"

let className = classNameRoot

type styleProps = {
  size: ButtonSberSize.t,
  variant: ButtonSberVariant.t,
}

type tag = [
| ButtonHTML.tag
]

let make = (
//  ~nodeRef: option<ReactDOM.domRef>=?,
  ~tag: tag,
  ~className: string,
  ~style: option<Retype.style>=?,

  ~size: ButtonSberSize.t,
  ~variant: ButtonSberVariant.t,

  ~onBlur: option<Retype.focusEvent => unit>=?,
  ~onClick: option<Retype.mouseEvent => unit>=?,
  ~onFocus: option<Retype.focusEvent => unit>=?,
  ~onMouseDown: option<Retype.mouseEvent => unit>=?,
  ~onMouseLeave: option<Retype.mouseEvent => unit>=?,
  ~onMouseUp: option<Retype.mouseEvent => unit>=?,
  ~onTouchEnd: option<Retype.touchEvent => unit>=?,
  ~onTouchMove: option<Retype.touchEvent => unit>=?,
  ~onTouchStart: option<Retype.touchEvent => unit>=?,

  ~children: React.element,
  ~loading: option<bool>,
) => {
  React.createElementVariadic(
    ReactDOM.stringToComponent(tag :> string),

    ReactDOM.domProps(
      // ~ref = ?nodeRef,
      ~className = Cn.make([
        classNameRoot,
        className,

        ButtonSberLayer.resolve(
          ~size,
          ~variant,
        ),
      ]),
      ~style = ?style,

      ~onBlur = ?onBlur,
      ~onClick = ?onClick,
      ~onFocus = ?onFocus,
      ~onMouseDown = ?onMouseDown,
      ~onMouseLeave = ?onMouseLeave,
      ~onMouseUp = ?onMouseUp,
      ~onTouchEnd = ?onTouchEnd,
      ~onTouchMove = ?onTouchMove,
      ~onTouchStart = ?onTouchStart,
      ()
    ),

    [
      React.createElementVariadic(
        ReactDOM.stringToComponent("svg"),

        ReactDOM.domProps(
          ~className = classNameIcon ++ switch loading {
          | Some(_) => " " ++ classNameAppearOut
          | None => " " ++ classNameAppearIn
          },
          ~width = "16",
          ~height = "16",
          ~viewBox = "0 0 16 16",
          ~fill = "none",
          ~xmlns = "http://www.w3.org/2000/svg",
          ()
        ),

        [
          React.createElementVariadic(
            ReactDOM.stringToComponent("path"),
            ReactDOM.domProps(
              ~d = "M7.99997 7.77499L4.95477 5.86592V8.16252L7.99997 10.0716L15.2895 4.69962C15.0317 4.13102 14.7087 3.5979 14.3307 3.10925L7.99997 7.77499Z",
              ()
            ),
            [],
          ),

          React.createElementVariadic(
            ReactDOM.stringToComponent("path"),
            ReactDOM.domProps(
              ~d = "M16 8C16 7.51082 15.9561 7.0317 15.8719 6.56687L14.1497 7.83588C14.1513 7.89041 14.1518 7.94494 14.1518 8C14.1518 11.392 11.392 14.1518 8 14.1518C4.60803 14.1518 1.84819 11.392 1.84819 8C1.84819 4.60803 4.60803 1.84819 8 1.84819C9.28542 1.84819 10.4803 2.24472 11.4682 2.92184L13.0242 1.77513C11.6508 0.665475 9.90325 0 8 0C3.5815 0 0 3.5815 0 8C0 12.4185 3.5815 16 8 16C12.4185 16 16 12.4185 16 8Z",
              ()
            ),
            [],
          ),
        ]
      ),

      React.createElementVariadic(
        ReactDOM.stringToComponent("span"),
        ReactDOM.domProps(
          ~className = classNameContent ++ switch loading {
          | Some(_) => " " ++ classNameAppearOut
          | None => " " ++ classNameAppearIn
          },
          ()
        ),
        [children],
      ),

      switch loading {
      | Some(_) => React.createElementVariadic(
        ReactDOM.stringToComponent("svg"),

        ReactDOM.domProps(
          ~className = classNameLoader,
          ~width = "48",
          ~height = "48",
          ~viewBox = "0 0 48 48",
          ~fill = "none",
          ~xmlns = "http://www.w3.org/2000/svg",
          ()
        ),
        [
          React.createElementVariadic(
            ReactDOM.stringToComponent("path"),
            ReactDOM.domProps(
              ~fill = "url(#SberButtonGradient_" ++ (variant :> string) ++ ")",
              ~d = "M205 48c-9.941 0-18 8.059-18 18s8.059 18 18 18 18-8.059 18-18h6c0 13.255-10.745 24-24 24s-24-10.745-24-24 10.745-24 24-24a3 3 0 0 1 0 6z",
              ~transform = "translate(-181 -42)",
              ()
            ),
            [],
          ),

          React.createElementVariadic(
            ReactDOM.stringToComponent("defs"),
            () -> ReactDOM.domProps,
            [
              React.createElementVariadic(
                ReactDOM.stringToComponent("radialGradient"),
                ReactDOM.domProps(
                  ~id = "SberButtonGradient_" ++ (variant :> string),
                  ~cy = "46.694%",
                  ~r = "123.206%",
                  ~fx = "94.984%",
                  ~fy = "46.694%",
                  ~gradientTransform = "rotate(116.792 .878 .35) scale(1 .50031)",
                  ()
                ),
                [
                  React.createElementVariadic(
                    ReactDOM.stringToComponent("stop"),
                    ReactDOM.domProps(
                      ~className = classNameGradient,
                      ~offset = "0%",
                      ~stopColor = "#107F8C",
                      ~stopOpacity = "0",
                      ()
                    ),
                    [],
                  ),

                  React.createElementVariadic(
                    ReactDOM.stringToComponent("stop"),
                    ReactDOM.domProps(
                      ~className = classNameGradient,
                      ~offset = "100%",
                      ~stopColor = "#107F8C",
                      ()
                    ),
                    [],
                  ),
                ],
              ),
            ],
          ),
        ],
      )
      | None => React.null
      },
    ]
  )
}

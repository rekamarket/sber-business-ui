@module("./BannerHorizontalProtoStyle.css.js") external classNameRoot: string = "className"
@module("./BannerHorizontalProtoStyle.css.js") external classNameLogo: string = "logo"

external asPropsType: 'a => { "props": { "className": string } } = "%identity" 

let className = classNameRoot;

@genType
type styleProps = {
  "color": Color.t,
  "size": BannerHorizontalSize.t,
}

@genType
type tag = [
  | DivHTML.tag
  | SectionHTML.tag
  | AsideHTML.tag
]

type props = {
  ...styleProps,

  "tag": tag,
  "className": string,
  "background": string,
  "children": React.element,
  "description": React.element,
}

@obj external makeProps:(
  ~tag: tag,
  ~className: string,
  ~background: string,

  ~color: Color.t,
  ~size: BannerHorizontalSize.t,

  ~children: React.element,
  ~description: React.element,
  unit
) => props = ""

let make = (props: props) => {
  React.createElementVariadic(
    ReactDOM.stringToComponent(props["tag"] :> string),
    ReactDOM.domProps(
      ~className = Cn.make([
        classNameRoot,
        props["className"],

        BannerHorizontalLayer.resolve(
          ~color = props["color"],
          ~size = props["size"],
        ),
      ]),
      ~style = ReactDOM.Style.make(~backgroundImage = "url(" ++ props["background"] ++ ")", ()),
      ()
    ),

    [
      React.cloneElement(props["children"], {
        "className": Cn.make([
          switch Js.Types.classify((props["children"] -> asPropsType)["props"]["className"]) {
          | JSString(s) => s
          | _ => ""
          },
          BannerHorizontalSizeResolver.areas.title,
        ]),
        "color": props["color"],
        "fontSize": props["size"] -> BannerHorizontalSizeExtractor.titleFontSize(. _),
      }),

      P.makeProps(
        ~children = props["description"],
        ~className = BannerHorizontalSizeResolver.areas.description -> Some,
        ~color = props["color"] -> Some,
        ~fontFamily = P.styleProps["fontFamily"] -> Some,
        ~fontSize = props["size"] -> BannerHorizontalSizeExtractor.descriptionFontSize(. _) -> Some,
        ~fontStyle = P.styleProps["fontStyle"] -> Some,
        ~fontWeight = P.styleProps["fontWeight"] -> Some,
        ()
      ) -> React.createElement(P.make, _),

      switch props["size"] {
      | #xsNoCTA => React.null
      | _ => ButtonLink.makeProps(
          ~href = `Узнать условия`,
          ~children = React.string(`Узнать условия`),
          ~className = BannerHorizontalSizeResolver.areas.actionCTA -> Some,
          ~size = props["size"] -> BannerHorizontalSizeExtractor.ctaSize(. _) -> Some,
          ~variant = props["color"] -> Some,
          ()
        ) -> React.createElement(ButtonLink.make, _)
      },

      React.createElementVariadic(
        ReactDOM.stringToComponent("svg"),

        ReactDOM.domProps(
          ~ariaLabel = `Сбербанк Бизнес`,
          ~className = Cn.make([
            classNameLogo,
            BannerHorizontalSizeResolver.areas.logo,
          ]),
          ~width = "267",
          ~height = "44",
          ~viewBox = "0 0 267 44",
          ~fill = "none",
          ~xmlns = "http://www.w3.org/2000/svg",
          ()
        ),

        [
          React.createElementVariadic(
            ReactDOM.stringToComponent("path"),
            ReactDOM.domProps(
              ~d = "M177.865 16.3999H190.999V18.5598H180.33V22.8796H184.09C189.482 22.8796 192.205 24.7776 192.205 29.0139C192.205 33.1895 189.328 35.3115 184.09 35.3115H177.865V16.3999ZM180.33 25.0471V33.1478H184.009C187.652 33.1478 189.628 32.009 189.628 28.8545C189.628 26.0151 187.872 25.0585 183.924 25.0585L180.33 25.0471Z",
              ()
            ),
            [],
          ),

          React.createElementVariadic(
            ReactDOM.stringToComponent("path"),
            ReactDOM.domProps(
              ~d = "M195.898 35.3116V21.8018H198.175V31.8535L205.909 21.8018H207.912V35.3116H205.632V25.1764L198.175 34.989L197.928 35.3116H195.898Z",
              ()
            ),
            [],
          ),

          React.createElementVariadic(
            ReactDOM.stringToComponent("path"),
            ReactDOM.domProps(
              ~d = "M211.467 31.3142C212.237 32.6087 213.99 33.6374 216.474 33.6374C218.365 33.6108 219.736 32.8516 219.736 31.3598C219.736 29.9249 218.612 29.4124 216.474 29.4124H214.413V27.6283H216.058C217.787 27.6283 219.02 26.9792 219.02 25.4684C219.02 24.1968 218.361 23.5476 216.605 23.4945C215.624 23.4861 214.656 23.7128 213.783 24.1552C212.911 24.5976 212.161 25.2424 211.598 26.034V22.8454C213.116 21.9716 214.847 21.5239 216.605 21.551H216.659C220.125 21.551 221.323 22.9289 221.323 25.0622C221.323 26.7666 220.553 27.522 219.212 28.1446C221.023 28.4938 222.009 29.439 222.009 31.2231C222.009 34.2599 219.513 35.5999 216.47 35.5999C213.92 35.5999 212.164 34.7913 211.463 33.9524L211.467 31.3142Z",
              ()
            ),
            [],
          ),

          React.createElementVariadic(
            ReactDOM.stringToComponent("path"),
            ReactDOM.domProps(
              ~d = "M234.962 29.4772H227.721V35.3116H225.444V21.8018H227.721V27.4502H234.962V21.8018H237.238V35.3116H234.962V29.4772Z",
              ()
            ),
            [],
          ),

          React.createElementVariadic(
            ReactDOM.stringToComponent("path"),
            ReactDOM.domProps(
              ~d = "M253.408 27.9057V29.3671H242.916C243.136 32.2862 244.726 33.6376 247.415 33.6376C250.103 33.6376 251.721 32.6089 252.461 31.3107V33.9337C251.775 34.7726 250.1 35.5811 247.415 35.5811C243.082 35.5811 240.586 33.2314 240.586 28.5016C240.586 23.7719 243.494 21.5322 247.357 21.5322C251.143 21.5322 253.42 23.9085 253.42 27.9057H253.408ZM242.916 27.4502H251.116V27.4084C251.116 24.8157 249.499 23.4644 247.33 23.4644C244.753 23.4644 243.22 24.8157 242.916 27.4388",
              ()
            ),
            [],
          ),

          React.createElementVariadic(
            ReactDOM.stringToComponent("path"),
            ReactDOM.domProps(
              ~d = "M262.532 35.5808C258.199 35.5808 255.703 33.2311 255.703 28.5013C255.703 23.7715 258.611 21.5319 262.478 21.5319C264.04 21.5115 265.571 21.9632 266.865 22.8263V26.015C266.421 25.2528 265.782 24.6178 265.013 24.1725C264.244 23.7272 263.37 23.487 262.478 23.4755C259.597 23.4755 258.006 25.1761 258.006 28.5013V28.5848C258.006 32.043 259.624 33.6373 262.532 33.6373C264.808 33.6373 266.314 32.6086 267 31.3142V33.9334C266.372 34.7723 264.862 35.5808 262.532 35.5808Z",
              ()
            ),
            [],
          ),

          React.createElementVariadic(
            ReactDOM.stringToComponent("path"),
            ReactDOM.domProps(
              ~d = "M72.8898 30.7496C74.673 30.7496 76.4015 30.3211 77.8853 29.5122L79.1685 28.8199L82.9133 31.5468C80.4443 34.1629 76.8012 35.5999 72.6287 35.5999C68.6406 35.5999 65.0035 34.2081 62.387 31.6809C59.7793 29.1624 58.3428 25.6719 58.3428 21.8534C58.3428 18.0525 59.7838 14.6129 62.4017 12.1688C65.0035 9.73782 68.6494 8.3999 72.6656 8.3999C76.3676 8.3999 79.6065 9.51192 82.0298 11.6164L82.3041 11.854L78.1537 14.8767C76.6331 13.7968 74.8632 13.2488 72.8898 13.2488C67.673 13.2488 63.8855 16.9288 63.8855 21.9992C63.8855 27.0696 67.6716 30.7496 72.8898 30.7496ZM100.651 19.0778H93.6079V13.1592H104.851L110.91 8.74611H87.8204V35.2495H99.9043C106.681 35.2495 110.569 32.2151 110.569 26.9232C110.569 21.8644 107.046 19.0778 100.651 19.0778ZM99.6432 30.8364H93.6079V23.4895H99.6432C103.317 23.4895 105.028 24.7181 105.028 27.1622C105.027 29.6602 103.215 30.8364 99.6432 30.8364ZM136.237 8.74611L130.178 13.1592H121.745V19.6389H134.106V24.052H121.745V30.8364H136.237V35.2495H115.957V8.74611H136.237ZM141.625 8.74611H152.666C159.713 8.74611 164.089 12.3809 164.089 18.2311C164.089 24.0812 159.712 27.7422 152.666 27.7422H147.413V35.2495H141.625V8.74611ZM147.413 23.3291H152.542C156.252 23.3291 158.293 21.5234 158.293 18.2442C158.293 14.965 156.25 13.1592 152.542 13.1592H147.413V23.3291Z",
              ~fillRule = "evenodd",
              ~clipRule = "evenodd",
              ()
            ),
            [],
          ),

          React.createElementVariadic(
            ReactDOM.stringToComponent("path"),
            ReactDOM.domProps(
              ~d = "M22.2841 21.3811L13.8018 16.1311V22.4468L22.2841 27.6967L42.5888 12.9238C41.8707 11.3602 40.9711 9.89408 39.9182 8.55029L22.2841 21.3811Z",
              ()
            ),
            [],
          ),

          React.createElementVariadic(
            ReactDOM.stringToComponent("path"),
            ReactDOM.domProps(
              ~d = "M44.5675 22C44.5675 20.6548 44.4451 19.3372 44.2107 18.0589L39.4135 21.5487C39.418 21.6986 39.4194 21.8486 39.4194 22C39.4194 31.3279 31.732 38.9175 22.2838 38.9175C12.8355 38.9175 5.14808 31.3279 5.14808 22C5.14808 12.6721 12.8355 5.08252 22.2838 5.08252C25.8643 5.08252 29.1926 6.17299 31.9443 8.03507L36.2784 4.88161C32.4531 1.83006 27.5852 0 22.2838 0C9.97616 0 0 9.84912 0 22C0 34.1509 9.97616 44 22.2838 44C34.5914 44 44.5675 34.1509 44.5675 22Z",
              ()
            ),
            [],
          ),
        ]
      ),
    ],
  )
}

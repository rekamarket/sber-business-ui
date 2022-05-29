@module("./LimitProtoStyle.css.js") external classNameRoot: string = "className"
@module("./LimitProtoStyle.css.js") external classNameGroup: string = "classNameGroup"
@module("./LimitProtoStyle.css.js") external classNameIcon: string = "classNameIcon"
@module("./LimitProtoStyle.css.js") external classNameLink: string = "classNameLink"
@module("./LimitProtoStyle.css.js") external classNameDivider: string = "classNameDivider"

let className = classNameRoot

type styleProps = {
  color: LimitColor.t,
  size: LimitSize.t,
  \"type": LimitType.t,
}

@genType type dl  = [DivHTML.tag/*| DlHTML.tag*/]
@genType type tag = [DivHTML.tag  | DlHTML.tag  ]

let format = Intl.numberFormat("ru-RU")

let make = (
  ~limit: option<int>=?,
  ~format: int => string = format,
  ~title: string = `Лимит с рассрочкой`,
  ~href: string = `https://hyper.nova`,
  ~className: string,
  ~style: option<Retype.style>=?,

  ~color: LimitColor.t,
  ~size: LimitSize.t,
  ~\"type": LimitType.t,

  ~tag: tag,
) => {
  React.createElementVariadic(
    ReactDOM.stringToComponent(switch limit {
    | Some(_) => (tag :> string)
    | None => (DivHTML.tag :> string)
    }),
    ReactDOM.domProps(
      ~className = Cn.make([
        classNameRoot,
        className,

        LimitLayer.resolve(
          ~color,
          ~size,
          ~\"type",
        ),

        CornerLayer.resolve(
          ~cornerRadius = size -> LimitSizeExtractor.cornerRadius(. _)
        ),
      ]),
      ~style = ?style,
      ()
    ),
    [
      LimitIcon.make(. ~size, ~color)(
        ~className = classNameIcon
      ),

      switch size {
      | #xl | #l => <hr className=classNameDivider />
      | _ => React.null
      },

      switch limit {
      | Some(n) => if (tag == #div) {
      <div className=classNameGroup>
        <Span
          fontSize=(size -> LimitSizeExtractor.titleFontSize(. _))
          color=(color -> LimitColorExtractor.titleColor(. _))
        >
          {title -> React.string}
        </Span>

        <span>
          <Data
            fontSize=(size -> LimitSizeExtractor.descriptionFontSize(. _))
            color=(color -> LimitColorExtractor.descriptionColor(. _))
          >
            {n -> format -> React.string}
          </Data>
          {`\u00A0` -> React.string}
          <Abbr
            fontSize=(size -> LimitSizeExtractor.descriptionFontSize(. _))
            color=(color -> LimitColorExtractor.descriptionColor(. _))
          >
            {`RUB` -> React.string}
          </Abbr>
        </span>
      </div>
      } else {
      <div className=classNameGroup>
        <Dt
          fontSize=(size -> LimitSizeExtractor.titleFontSize(. _))
          color=(color -> LimitColorExtractor.titleColor(. _))
        >
          {title -> React.string}
        </Dt>

        <Dd>
          <Data
            fontSize=(size -> LimitSizeExtractor.descriptionFontSize(. _))
            color=(color -> LimitColorExtractor.descriptionColor(. _))
          >
            {n -> format -> React.string}
          </Data>
          {`\u00A0` -> React.string}
          <Abbr
            fontSize=(size -> LimitSizeExtractor.descriptionFontSize(. _))
            color=(color -> LimitColorExtractor.descriptionColor(. _))
          >
            {`RUB` -> React.string}
          </Abbr>
        </Dd>
      </div>
      }
      | None => <A
          href
          className=classNameLink
          color=(color -> LimitColorExtractor.linkColor(. _))
          fontSize=(size -> LimitSizeExtractor.linkSize(. _))
          textDecorationLine=(color -> LimitColorExtractor.linkTextDecorationLine(. _))
        >
          {switch size {
          | #xl | #l => `Подробнее\nо покупках в рассрочку`
          | #m | #s => `О покупках\nв рассрочку`
          } -> React.string}
        </A>
      },
    ],
  )
}

@genType.import(("react", "CSSProperties"))
type style = ReactDOM.Style.t

@genType.import(("react", "RefObject"))
type ref<'a> = {.."a": string} as 'a

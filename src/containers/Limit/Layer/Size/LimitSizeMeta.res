let name = "size"
let description = `Шкала размеров` -> Some
let args = LimitSize.args -> Belt.Array.map((e) => (e :> string))

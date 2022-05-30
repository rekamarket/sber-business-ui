let name = "type"
let description = `Вариация типа блока лимита` -> Some
let args = LimitType.args -> Belt.Array.map((e) => (e :> string))

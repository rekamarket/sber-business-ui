let numberFormat: string => int => string = %raw(`
function(s = "ru-RU") {
	return new Intl.NumberFormat(s).format;
}`)

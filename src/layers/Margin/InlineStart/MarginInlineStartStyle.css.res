type t = MarginReflection.t
type options = MarginReflection.options
type resolve = MarginInlineStart.resolve
type variant = MarginReflection.variant
let { options } = module(MarginReflection)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let style = styles(options, (value) => {{ marginInlineStart: value }})

let make = (key: t) => switch (key) {
| #none     => style.none
| #xxxsmall => style.xxxsmall
| #xxsmall  => style.xxsmall
| #xsmall   => style.xsmall
| #small    => style.small
| #medium   => style.medium
| #large    => style.large
| #xlarge   => style.xlarge
| #xxlarge  => style.xxlarge
| #xxxlarge => style.xxxlarge
};

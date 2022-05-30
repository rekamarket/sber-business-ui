@as("default")
let default = Belt.Array.concatMany([
  // Banners
  BannerHorizontalPlayroom.make,
  BannerVerticalPlayroom.make,
  LimitPlayroom.make,

  // Liton Default
  ButtonPlayroom.make,
  SberButtonPlayroom.make,

  // Liton Sber
  ButtonLinkPlayroom.make,
  SberButtonLinkPlayroom.make,

  // Heading
  HeadingPlayroom.make,
  H1Playroom.make,
  H2Playroom.make,
  H3Playroom.make,
  H4Playroom.make,
  H5Playroom.make,
  H6Playroom.make,

  // Link
  APlayroom.make,

  // Text
  TextPlayroom.make,
  AbbrPlayroom.make,
  DataPlayroom.make,
  DdPlayroom.make,
  DtPlayroom.make,
  BPlayroom.make,
  IPlayroom.make,
  SmallPlayroom.make,
  SpanPlayroom.make,
  StrongPlayroom.make,

  // TextContainer
  TextContainerPlayroom.make,
  PPlayroom.make,
]);

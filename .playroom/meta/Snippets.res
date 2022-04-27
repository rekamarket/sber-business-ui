@as("default")
let default = Belt.Array.concatMany([
  // Banner
  BannerPlayroom.make,

  // Button
  ButtonPlayroom.make,
  ButtonSberPlayroom.make,

  // ButtonLink
  ButtonLinkPlayroom.make,

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
  BPlayroom.make,
  DfnPlayroom.make,
  EmPlayroom.make,
  IPlayroom.make,
  SmallPlayroom.make,
  SpanPlayroom.make,
  StrongPlayroom.make,

  // TextContainer
  TextContainerPlayroom.make,
  PPlayroom.make,
]);

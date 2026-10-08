/// Typst profile corresponding to KOMA-Script's DIN.lco.
///
/// The profile stores layout data; the letter template is responsible for
/// rendering these values as page elements.
#let address-field = (
  top: 45mm,
  left: 20mm,
  width: 85mm,
  height: 45mm,
  indent: 0mm,
)

#let first-header-width(page-width) = {
  page-width - 2 * calc.abs(address-field.left)
}

#let din = (
  paper: "a4",
  sender: (postal-code-prefix: "D"),
  fold-marks: (
    horizontal-position: 3.5mm,
    top: 105mm,
    middle: 0mm,
    bottom: 210mm,
    left-horizontal-position: 0mm,
  ),
  address-field: address-field,
  return-address: (height: 5mm),
  special-mail: (alignment: "right", right-indent: 1em),
  location: (width: 0mm),
  first-page-header: (top: 8mm, width: first-header-width),
  first-page-footer: (width: first-header-width, position: "page-footer"),
  reference: (top: 98.5mm, after-baseline-skips: 1, width: 0mm),
  signature: (indent: 0mm, before-baseline-skips: 2, alignment: "center"),
)
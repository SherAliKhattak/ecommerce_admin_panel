import 'package:flutter/material.dart';

import '../../utils/constants.dart';

bool isMobileWidth(BuildContext context) =>
    MediaQuery.of(context).size.width < kMobileWidthCutoff;
bool responsiveVisibility({
  required BuildContext context,
  bool phone = true,
  bool tablet = true,
  bool tabletLandscape = true,
  bool laptop = true,
  bool desktop = true,
}) {
  final width = MediaQuery.of(context).size.width;
  if (isMobileWidth(context)) {
    return phone;
  } else if (width < 767) {
    return tablet;
  } else if (width < 991) {
    return tabletLandscape;
  } else if (width < 1200) {
    return laptop;
  } else {
    return desktop;
  }
}

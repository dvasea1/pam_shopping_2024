import 'package:svg_flutter/svg.dart';

class AppIcons {
  static SvgPicture backIcon({double? width}) => SvgPicture.asset(
        'resources/images/back_icon.svg',
        width: width,
      );

  static SvgPicture favoriteIcon({double? width}) => SvgPicture.asset(
        'resources/images/favorite.svg',
        width: width,
      );

  static SvgPicture couponIcon({double? width}) => SvgPicture.asset(
        'resources/images/icon_coupon.svg',
        width: width,
      );
}

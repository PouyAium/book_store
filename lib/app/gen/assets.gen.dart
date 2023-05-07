/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/becoming.png
  AssetGenImage get becoming =>
      const AssetGenImage('assets/images/becoming.png');

  /// File path: assets/images/book.png
  AssetGenImage get book => const AssetGenImage('assets/images/book.png');

  /// File path: assets/images/book_lovers.png
  AssetGenImage get bookLovers =>
      const AssetGenImage('assets/images/book_lovers.png');

  /// File path: assets/images/colored_notification.png
  AssetGenImage get coloredNotification =>
      const AssetGenImage('assets/images/colored_notification.png');

  /// File path: assets/images/elipse.png
  AssetGenImage get elipse => const AssetGenImage('assets/images/elipse.png');

  /// File path: assets/images/explore.png
  AssetGenImage get explore => const AssetGenImage('assets/images/explore.png');

  /// File path: assets/images/feather_of_the_rain.png
  AssetGenImage get featherOfTheRain =>
      const AssetGenImage('assets/images/feather_of_the_rain.png');

  /// File path: assets/images/ghost_boy.png
  AssetGenImage get ghostBoy =>
      const AssetGenImage('assets/images/ghost_boy.png');

  /// File path: assets/images/good_company.png
  AssetGenImage get goodCompany =>
      const AssetGenImage('assets/images/good_company.png');

  /// File path: assets/images/julia_alvarez.png
  AssetGenImage get juliaAlvarez =>
      const AssetGenImage('assets/images/julia_alvarez.png');

  /// File path: assets/images/leaving_time.png
  AssetGenImage get leavingTime =>
      const AssetGenImage('assets/images/leaving_time.png');

  /// File path: assets/images/malcom_x.png
  AssetGenImage get malcomX =>
      const AssetGenImage('assets/images/malcom_x.png');

  /// File path: assets/images/man_on_earth.png
  AssetGenImage get manOnEarth =>
      const AssetGenImage('assets/images/man_on_earth.png');

  /// File path: assets/images/marie_curie.png
  AssetGenImage get marieCurie =>
      const AssetGenImage('assets/images/marie_curie.png');

  /// File path: assets/images/muhammad_ali.png
  AssetGenImage get muhammadAli =>
      const AssetGenImage('assets/images/muhammad_ali.png');

  /// File path: assets/images/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/images/notification.png');

  /// File path: assets/images/silent_scream.png
  AssetGenImage get silentScream =>
      const AssetGenImage('assets/images/silent_scream.png');

  /// File path: assets/images/the_kite_runner.png
  AssetGenImage get theKiteRunner =>
      const AssetGenImage('assets/images/the_kite_runner.png');

  /// File path: assets/images/user.png
  AssetGenImage get user => const AssetGenImage('assets/images/user.png');

  /// File path: assets/images/walt_disney.png
  AssetGenImage get waltDisney =>
      const AssetGenImage('assets/images/walt_disney.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        becoming,
        book,
        bookLovers,
        coloredNotification,
        elipse,
        explore,
        featherOfTheRain,
        ghostBoy,
        goodCompany,
        juliaAlvarez,
        leavingTime,
        malcomX,
        manOnEarth,
        marieCurie,
        muhammadAli,
        notification,
        silentScream,
        theKiteRunner,
        user,
        waltDisney
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

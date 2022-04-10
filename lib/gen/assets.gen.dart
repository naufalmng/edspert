/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/apple.svg
  String get apple => 'assets/images/png/apple.svg';

  /// File path: assets/images/png/ic_atom.png
  AssetGenImage get icAtom =>
      const AssetGenImage('assets/images/png/ic_atom.png');

  /// File path: assets/images/png/ic_atom.png
  AssetGenImage get google =>
      const AssetGenImage('assets/images/png/google.png');

  /// File path: assets/images/png/ic_avatar.png
  AssetGenImage get icAvatar =>
      const AssetGenImage('assets/images/png/ic_avatar.png');

  /// File path: assets/images/png/ic_discuss.png
  AssetGenImage get icDiscuss =>
      const AssetGenImage('assets/images/png/ic_discuss.png');

  /// File path: assets/images/png/ic_dna.png
  AssetGenImage get icDna =>
      const AssetGenImage('assets/images/png/ic_dna.png');

  /// File path: assets/images/png/ic_home.png
  AssetGenImage get icHome =>
      const AssetGenImage('assets/images/png/ic_home.png');

  /// File path: assets/images/png/ic_kimia.png
  AssetGenImage get icKimia =>
      const AssetGenImage('assets/images/png/ic_kimia.png');

  /// File path: assets/images/png/ic_lang.png
  AssetGenImage get icLang =>
      const AssetGenImage('assets/images/png/ic_lang.png');

  /// File path: assets/images/png/ic_logout.png
  AssetGenImage get icLogout =>
      const AssetGenImage('assets/images/png/ic_logout.png');

  /// File path: assets/images/png/ic_note.png
  AssetGenImage get icNote =>
      const AssetGenImage('assets/images/png/ic_note.png');

  /// File path: assets/images/png/ic_splash.png
  AssetGenImage get icSplash =>
      const AssetGenImage('assets/images/png/ic_splash.png');

  /// File path: assets/images/png/img_banner.png
  AssetGenImage get imgBanner =>
      const AssetGenImage('assets/images/png/img_banner.png');

  /// File path: assets/images/png/img_home.png
  AssetGenImage get imgHome =>
      const AssetGenImage('assets/images/png/img_home.png');

  /// File path: assets/images/png/img_login.png
  AssetGenImage get imgLogin =>
      const AssetGenImage('assets/images/png/img_login.png');

  /// File path: assets/images/png/img_not_found.png
  AssetGenImage get imgNotFound =>
      const AssetGenImage('assets/images/png/img_not_found.png');

  /// File path: assets/images/png/img_result.png
  AssetGenImage get imgResult =>
      const AssetGenImage('assets/images/png/img_result.png');

  /// File path: assets/images/png/img_success.png
  AssetGenImage get imgSuccess =>
      const AssetGenImage('assets/images/png/img_success.png');
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/analysis_isometric.svg
  String get analysisIsometric => 'assets/images/svg/analysis_isometric.svg';

  /// File path: assets/images/svg/apple.svg
  AssetGenImage get apple => const AssetGenImage('assets/images/svg/apple.svg');

  /// File path: assets/images/svg/edspert.svg
  String get edspert => 'assets/images/svg/edspert.svg';

  /// File path: assets/images/svg/google.svg
  String get google => 'assets/images/svg/google.svg';

  String get homeIcon => 'assets/images/svg/home_icon.svg';

  String get icMath => 'assets/images/svg/ic_math.svg';
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}

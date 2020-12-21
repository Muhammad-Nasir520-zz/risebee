import 'package:flutter/material.dart';

class PageViewModel {
  /// Title of page
  final String title;

  /// Title of page
  final Widget titleWidget;

  /// Text of page (description)
  final String body;

  /// Widget content of page (description)
  final Widget bodyWidget;

  /// Image of page
  /// Tips: Wrap your image with an alignment widget like Align or Center
  final Widget image;

  /// Footer widget, you can add a button for example
  final Widget footer;

  /// Page decoration
  /// Contain all page customizations, like page color, text styles
  final PageDecoration decoration;

  PageViewModel({
    this.title,
    this.titleWidget,
    this.body,
    this.bodyWidget,
    this.image,
    this.footer,
    this.decoration = const PageDecoration(),
  });
}


class PageDecoration {
  /// Background page color
  final Color pageColor;

  /// TextStyle for title
  ///
  /// @Default style `fontSize: 20.0, fontWeight: FontWeight.bold`
  final TextStyle titleTextStyle;

  /// TextStyle for title
  ///
  /// @Default style `fontSize: 18.0, fontWeight: FontWeight.normal`
  final TextStyle bodyTextStyle;

  /// BoxDecoration for page
  final BoxDecoration boxDecoration;

  /// Flex ratio of the image
  final int imageFlex;

  /// Flex ratio of the body
  final int bodyFlex;

  /// Padding of image
  ///
  /// @Default `EdgeInsets.only(bottom: 24.0)`
  final EdgeInsets imagePadding;

  /// Padding of content (title + description + footer)
  ///
  /// @Default `EdgeInsets.all(16.0)`
  final EdgeInsets contentPadding;

  /// Padding of title
  ///
  /// @Default `EdgeInsets.only(bottom: 24.0)`
  final EdgeInsets titlePadding;

  /// Padding of description
  ///
  /// @Default: `EdgeInsets.zero`
  final EdgeInsets descriptionPadding;

  /// Padding of footer
  ///
  /// @Default `EdgeInsets.symmetric(vertical: 24.0)`
  final EdgeInsets footerPadding;

  const PageDecoration({
    this.pageColor,
    this.titleTextStyle = const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    this.bodyTextStyle = const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
    ),
    this.boxDecoration,
    this.imageFlex = 1,
    this.bodyFlex = 1,
    this.imagePadding = const EdgeInsets.only(bottom: 24.0),
    this.contentPadding = const EdgeInsets.all(16.0),
    this.titlePadding = const EdgeInsets.only(bottom: 24.0),
    this.descriptionPadding = EdgeInsets.zero,
    this.footerPadding = const EdgeInsets.symmetric(vertical: 24.0),
  }) : assert(pageColor == null || boxDecoration == null,
  'Cannot provide both a Color and a BoxDecoration\n');
}

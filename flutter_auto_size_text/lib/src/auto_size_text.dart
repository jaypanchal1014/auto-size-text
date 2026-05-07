import 'package:flutter/material.dart';

class AdaptiveText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double minFontSize;
  final double maxFontSize;
  final int maxLines;
  final TextAlign? textAlign;

  const AdaptiveText(
    this.text, {
    super.key,
    this.style,
    this.minFontSize = 10,
    this.maxFontSize = 40,
    this.maxLines = 1,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double fontSize = maxFontSize;

        while (fontSize > minFontSize) {
          final textPainter = TextPainter(
            text: TextSpan(
              text: text,
              style: (style ?? const TextStyle()).copyWith(fontSize: fontSize),
            ),
            maxLines: maxLines,
            textDirection: TextDirection.ltr,
          );

          textPainter.layout(maxWidth: constraints.maxWidth);

          if (!textPainter.didExceedMaxLines) {
            break;
          }

          fontSize -= 1;
        }

        return Text(
          text,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: TextOverflow.ellipsis,
          style: (style ?? const TextStyle()).copyWith(fontSize: fontSize),
        );
      },
    );
  }
}

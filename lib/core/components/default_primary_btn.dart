import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class DefaultPrimaryBtn extends StatelessWidget {
  final String title;
  final TextAlign? textAlign;
  final TextStyle? style;
  final Color? circularColor, shadowColor;
  final Color? disabledBackgroundColor,
      disabledForegroundColor,
      backgroundColor;
  final bool isLoading;
  final BorderSide borderSide;
  final EdgeInsets margin, padding;
  final MainAxisSize mainAxisSize;
  final double? width, height, elevation;
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;

  const DefaultPrimaryBtn({
    super.key,
    required this.title,
    this.margin = EdgeInsets.zero,
    this.style,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(vertical: 19),
    this.isLoading = false,
    this.borderSide = BorderSide.none,
    this.borderRadius,
    this.textAlign = TextAlign.center,
    this.circularColor = Colors.white,
    this.width,
    this.height = 56,
    this.disabledBackgroundColor = AppColors.grey,
    this.disabledForegroundColor = AppColors.white,
    this.backgroundColor = AppColors.secondary,
    this.elevation = 0,
    this.shadowColor,
    this.mainAxisSize = MainAxisSize.max,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: isLoading ? null : onTap,
          style: ElevatedButton.styleFrom(
            disabledBackgroundColor: disabledBackgroundColor,
            disabledForegroundColor: disabledForegroundColor,
            elevation: elevation,
            shadowColor: shadowColor,
            padding: padding,
            side: borderSide,
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisSize: mainAxisSize,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isLoading
                  ? SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        color: circularColor,
                        strokeWidth: 1.5,
                      ),
                    )
                  : Text(title, textAlign: textAlign, style: style),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/constants/app_svg.dart';
import '../../../../../core/utils/extensions/extension.dart';

class BuildFilterActionWidget extends StatelessWidget {
  const BuildFilterActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: context.onSurface, width: 2),
        shape: BoxShape.circle,
      ),
      height: context.h * 0.050,
      width: context.h * 0.050,
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          AppSvg.filter,
          colorFilter: ColorFilter.mode(context.onSurface, BlendMode.srcIn),
        ),
      ),
    );
  }
}

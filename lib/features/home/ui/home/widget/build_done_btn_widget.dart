import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/components/default_primary_btn.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/utils/extensions/extension.dart';

class BuildDoneBtnWidget extends StatelessWidget {
  final TextEditingController textController;
  final VoidCallback? onTap;
  final Color _selectedColor;
  const BuildDoneBtnWidget({
    super.key,
    required this.textController,
    required this._selectedColor,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return DefaultPrimaryBtn(
      backgroundColor: AppColors.white,
      title: "Done".tr(),
      style: context.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w700,
        color: _selectedColor,
      ),
      onTap: onTap,
    );
  }
}

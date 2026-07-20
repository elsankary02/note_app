import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../home/widget/build_category_text_widget.dart';

import '../../../../../core/utils/extensions/extension.dart';
import '../../../data/model/note_model.dart';
import '../../home/widget/build_alert_title_widget.dart';
import '../../home/widget/build_done_btn_widget.dart';
import '../../home/widget/build_form_field_widget.dart';

class CustomAlertDialog extends StatefulWidget {
  final TestNoteModel note;
  final String title;
  final String lable;
  final VoidCallback? doneOnTap;
  final VoidCallback? languageOnTapIcon;
  const CustomAlertDialog({
    super.key,
    required this.note,
    required this.title,
    required this.lable,
    this.doneOnTap,
    this.languageOnTapIcon,
  });

  @override
  State<CustomAlertDialog> createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  final _formKey = GlobalKey<FormState>();
  final textController = TextEditingController();
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  int selectedLanguageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final s20 = const SizedBox(height: 20);
    final h20 = context.h * 0.02;

    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(horizontal: h20, vertical: h20),
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      backgroundColor: widget.note.color,
      title: BuildAlertTitleWidget(title: widget.title),
      content: Form(
        key: _formKey,
        child: SizedBox(
          width: context.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildCategoryTextWidget(title: "selectLanguage".tr()),
              SizedBox(
                height: 60,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      SizedBox(width: context.h * 0.01),
                  itemCount: _listLanguage.length,
                  itemBuilder: (context, index) {
                    final isSelect = selectedLanguageIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedLanguageIndex = index;
                        });
                      },
                      child: BuildCategoryLanguage(
                        index: index,
                        isSelect: isSelect,
                        note: widget.note,
                      ),
                    );
                  },
                ),
              ),
              s20,
              BuildFormFieldWidget(
                textController: textController,
                lable: widget.lable,
              ),
            ],
          ),
        ),
      ),
      actions: [
        // TODO: Refc This Local
        BuildDoneBtnWidget(
          onTap: widget.doneOnTap,
          textController: textController,
          selectedColor: widget.note.color,
        ),
      ],
    );
  }
}

class BuildCategoryLanguage extends StatelessWidget {
  final bool isSelect;
  final TestNoteModel note;
  final int index;
  const BuildCategoryLanguage({
    super.key,
    required this.isSelect,
    required this.note,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: context.h * 0.050,
      width: context.h * 0.050,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.white, width: 2),
        color: isSelect ? AppColors.white : note.color,
        shape: BoxShape.circle,
      ),
      child: Text(
        _listLanguage[index],
        style: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: isSelect ? note.color : AppColors.white,
        ),
      ),
    );
  }
}

List<String> _listLanguage = ["Ar", "En"];

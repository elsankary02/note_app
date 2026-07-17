import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/constants/app_string.dart';
import '../../../../../core/utils/extensions/extension.dart';
import '../../../logic/test_note_cubit/test_note_cubit.dart';
import '../widget/build_filter_action_widget.dart';
import '../widget/build_floating_action_button_widget.dart';

import '../widget/sliver_grid_view_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestNoteCubit(),
      child: BlocBuilder<TestNoteCubit, TestNoteState>(
        builder: (context, state) => Scaffold(
          floatingActionButton: BuildFloatingActionButtonWidget(),
          appBar: _buildAppBarFunc(context: context),
          body: GridViewWidget(),
        ),
      ),
    );
  }

  AppBar _buildAppBarFunc({required BuildContext context}) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      title: Text(
        'vocabularyNotes'.tr(),
        style: context.textTheme.titleMedium?.copyWith(
          fontFamily: AppString.pacifico,
          fontWeight: FontWeight.w700,
        ),
      ),
      actionsPadding: EdgeInsetsDirectional.only(end: context.h * 0.02),
      actions: [BuildFilterActionWidget()],
    );
  }
}

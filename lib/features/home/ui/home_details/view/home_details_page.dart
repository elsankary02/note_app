import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/extensions/extension.dart';
import '../widget/build_action_button_widget.dart';
import '../widget/build_default_alert_dialog_widget.dart';
import '../widget/build_list_tile_widget.dart';

class HomeDetailsPage extends StatefulWidget {
  const HomeDetailsPage({super.key});

  @override
  State<HomeDetailsPage> createState() => _HomeDetailsPageState();
}

class _HomeDetailsPageState extends State<HomeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final style = context.textTheme.headlineSmall?.copyWith(
      fontWeight: FontWeight.w900,
    );
    return Scaffold(
      appBar: _buildAppBarFunc(context: context),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: context.h * 0.02,
          vertical: context.h * 0.02,
        ),
        children: [
          Text("word".tr(), style: style),
          SizedBox(height: context.h * .015),

          BuildListTileWidget(),
          SizedBox(height: context.h * .05),

          BuildActionButtonWidget(
            title: "similarWords".tr(),
            style: style,

            onTap: () => showDialog(
              context: context,
              builder: (context) => CustomAlertDialog(
                title: "add_similar".tr(),
                lable: "new_similar_word".tr(),
                doneOnTap: () {
                  // TODO: similar OnTap
                },
              ),
            ),
          ),
          SizedBox(height: context.h * .015),
          SizedBox(height: context.h * .05),

          BuildActionButtonWidget(
            title: "examples".tr(),
            style: style,

            onTap: () => showDialog(
              context: context,
              builder: (context) => CustomAlertDialog(
                title: "add_example".tr(),
                lable: "new_example".tr(),
                doneOnTap: () {
                  // TODO: example OnTap
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBarFunc({required BuildContext context}) {
    return AppBar(
      title: Text("wordDetails".tr()),
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: Icon(Icons.arrow_back_ios_new_outlined),
      ),
     
      actions: [
        IconButton(
          onPressed: () {
            //TODO: Delete
          },
          icon: Icon(Icons.delete),
        ),
      ],
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/core/utils/extensions/extension.dart';
import 'package:note_app/features/home/data/model/note_model.dart';

class HomeDetailsPage extends StatelessWidget {
  final TestNoteModel note;
  const HomeDetailsPage({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme.titleLarge?.copyWith(
      color: note.color,
      fontWeight: FontWeight.w700,
    );
    return Scaffold(
      appBar: _buildAppBarFunc(context: context, style: style),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: context.h * 0.02,
          vertical: context.h * 0.02,
        ),
        children: [
          Text("word".tr(), style: style),
          SizedBox(height: context.h * .02),
          BuildListTileWidget(note: note),
        ],
      ),
    );
  }

  AppBar _buildAppBarFunc({required BuildContext context, TextStyle? style}) {
    return AppBar(
      title: Text("wordDetails".tr(), style: style),
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: Icon(Icons.arrow_back_ios_new_outlined, color: note.color),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            //TODO: Delete
          },
          icon: Icon(Icons.delete, color: note.color),
        ),
      ],
    );
  }
}

class BuildListTileWidget extends StatelessWidget {
  final TestNoteModel note;

  const BuildListTileWidget({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsetsDirectional.symmetric(
        horizontal: 10,
        vertical: 4,
      ),
      leading: Container(
        height: context.h * 0.050,
        width: context.h * 0.050,
        decoration: BoxDecoration(
          color: context.surface,
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.menu_book_rounded, color: note.color),
      ),
      title: Text(
        note.title,
        style: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: context.onSurface,
        ),
      ),
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(16)),
      tileColor: note.color,
    );
  }
}

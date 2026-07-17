import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/home/data/model/note_model.dart';

part 'test_note_state.dart';

class TestNoteCubit extends Cubit<TestNoteState> {
  TestNoteCubit() : super(TestNoteInitial());

  final List<TestNoteModel> _noteList = [];

  void add(TestNoteModel noteModel) {
    log("before ${_noteList.length}");
    _noteList.add(noteModel);
    log("after ${_noteList.length}");
    emit(TestNoteAdd(noteList: _noteList));
  }

  List<TestNoteModel> get() => _noteList;
}

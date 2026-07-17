part of 'test_note_cubit.dart';

abstract class TestNoteState {}

final class TestNoteInitial extends TestNoteState {}

final class TestNoteAdd extends TestNoteState {
  final List<TestNoteModel> noteList;

  TestNoteAdd({required this.noteList});
}

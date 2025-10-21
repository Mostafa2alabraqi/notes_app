import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial()) {
    _init();
  }

  List<NoteModel> notes = [];

  late final StreamSubscription<BoxEvent> _subscription;

  void _init() {
    // load initial notes and start listening for changes via watch()
    fetchAllNotes();
    _subscription = Hive.box<NoteModel>(kNotesBox).watch().listen((_) {
      fetchAllNotes();
    });
  }

  Future<void> fetchAllNotes() async {
    final notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(NotesLoaded(List.unmodifiable(notes)));
  }

  @override
  Future<void> close() async {
    try {
      await _subscription.cancel();
    } catch (_) {}
    return super.close();
  }
}
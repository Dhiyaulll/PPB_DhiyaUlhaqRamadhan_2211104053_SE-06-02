import 'package:get/get.dart';
import '../models/note.dart';

class NoteController extends GetxController {
  // Observable list of notes
  final notes = <Note>[].obs;

  // Add a new note
  void addNote(String title, String description) {
    notes.add(Note(title: title, description: description));
  }

  // Delete a note
  void deleteNote(int index) {
    notes.removeAt(index);
  }
}

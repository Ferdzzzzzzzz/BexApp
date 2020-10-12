import 'package:cloud_firestore/cloud_firestore.dart';

extension DocumentReferenceX on DocumentReference {
  CollectionReference get storyCollection => collection('stories');
}

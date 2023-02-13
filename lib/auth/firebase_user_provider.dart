import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EssaiAppFirebaseUser {
  EssaiAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

EssaiAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EssaiAppFirebaseUser> essaiAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<EssaiAppFirebaseUser>(
      (user) {
        currentUser = EssaiAppFirebaseUser(user);
        return currentUser!;
      },
    );

import 'package:chat_app/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_app_state.dart';

class ChatAppCubit extends Cubit<ChatAppState> {
  ChatAppCubit() : super(ChatAppInitial());

  static ChatAppCubit get(context) => BlocProvider.of(context);
  bool isvisable = false;
  void isVisiableFunc() {
    isvisable = !isvisable;
    emit(IconVisable());
  }

  bool isvisableForSignUp = false;
  void isvisableForSignUpFunc() {
    isvisableForSignUp = !isvisableForSignUp;
    emit(IconVisable());
  }

  void userRegister({
    required String userName,
    required String email,
    required String password,
  }) async {
    emit(SignupLoading());
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      print(userCredential.additionalUserInfo);
      userCreate(name: userName, email: email, uid: userCredential.user!.uid);
      emit(SignupSuccess());
    } catch (e) {
      print(e);
      emit(SignupError(error: e.toString()));
    }
  }

  void userLogin({
    required String email,
    required String password,
  }) async {
    emit(SignInLoading());
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      print(userCredential.additionalUserInfo);
      emit(SigninSuccess());
    } catch (e) {
      print(e);
      emit(SigninError(error: e.toString()));
    }
  }

  void userCreate({
    required String name,
    required String email,
    required String uid,
  }) async {
    UserModel user = UserModel(name: name, email: email, uid: uid);
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .set(user.toJson());
      emit(CreateSuccess());
    } catch (e) {
      print(e);
      emit(CreateError(error: e.toString()));
    }
  }
}

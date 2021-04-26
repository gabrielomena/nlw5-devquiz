import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.vazio);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async{
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "Gabo DEV",
      photoUrl: "https://avatars.githubusercontent.com/u/49401569?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    var list = quizzes = [
      QuizModel(
          title: "Gerenciamento de Estado",
          questionAnswered: 1,
          imagem: AppImages.data,
          level: Level.facil,
          questions: [
            QuestionModel(
              title: "Está curtindo o Flutter?",
              awnsers: [
                AwnserModel(title: "Estou Curtindo"),
                AwnserModel(title: "Adorando"),
                AwnserModel(title: "Amando Flutter"),
                AwnserModel(title: "Show de bola", isRight: true)
              ],
            ),
            QuestionModel(
              title: "Está curtindo o Flutter?",
              awnsers: [
                AwnserModel(title: "Estou Curtindo"),
                AwnserModel(title: "Adorando"),
                AwnserModel(title: "Amando Flutter"),
                AwnserModel(title: "Show de bola", isRight: true)
              ],
            )
          ])
    ];
    state = HomeState.success;
  }
}

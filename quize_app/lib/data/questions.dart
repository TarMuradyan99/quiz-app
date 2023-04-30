import 'package:quize_app/data/questions.dart';
import 'package:quize_app/models/quiz_question.dart';

const questions = [
  QuizQuestion('What are the main building block of flutter?',
  [
    'Widgets',
    'Components',
    'functions',
    'Blocks'
  ],
  ),
  QuizQuestion('How are Flutter UI\'s build?',
  [
    'By combining Widgets in code',
    'By combyning Components in visual editor',
    'By defining widgets in config files',
    'By using Xcode for IOS and Android Studio for Android '
  ],
  ),
   QuizQuestion('What\'s the purpose of a StatefulWidget?',
  [
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does not depend on data'
  ],
  ),
   QuizQuestion('Which widget you tyr to use more often: StatefulWidget or StatelessWidget?',
  [
    'StatelessWidget',
    'StatefulWidget',
    'Both are equally good',
    'None of the above'
  ],
  ),
   QuizQuestion('What happenes if you change data in a StatelessWidget?',
  [
    'The UI is not updated',
    'The UI is updated',
    'The closest StatefulWidget is updated',
    'The nested StatelessWidget is updated',
  ],
  ),
   QuizQuestion('How should you update data inside of StatefulWidgets?',
  [
    'By calling SetState()',
    'By calling updateData()',
    'By calling updateUI()',
    'By calling updateState()'
  ],
  ),
];

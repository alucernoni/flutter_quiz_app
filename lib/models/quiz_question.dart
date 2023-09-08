class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    // final only ensures you can't reassign the variable, doesn't prevent you from editing the original value of the variable, though you couldn't reassign a whole new value
    shuffledList.shuffle();
    return shuffledList;
    // List.of is a constructor method that copies an existing list
    // need to do this, making a copy of the original answers list, because the .shuffle() method is destructive to the original array, and we need the positioning of the original array to easily display the correct answers
  }
}

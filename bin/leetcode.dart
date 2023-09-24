List<String> fullJustify(List<String> words, int maxWidth) {
  final List<String> firstStepResult = [];
  String currentWords = "";

  words.asMap().forEach((key, value) {
    currentWords += "$value ";

    if (key != words.length - 1) {
      if (words[key + 1].length + currentWords.length > maxWidth) {
        firstStepResult.add(currentWords);
        currentWords = "";
      }
    } else {
      firstStepResult.add(currentWords);
      currentWords = "";
    }
  });

  final result = firstStepResult.map((str) {
    if (str.length < maxWidth) {
      final List word = str.trim().split(' ');
      final int spaceCount = maxWidth - word.join().length;
      int wordCount = word.length;

      if (wordCount > 1) {
        wordCount -= 1;
      }

      print("Space count: $spaceCount, Word count: $wordCount");

      if (wordCount == 1) {
        return word.join() + List.generate(spaceCount, (index) => " ").join();
      } else {
        final int spaceForEveryWord = spaceCount ~/ wordCount;

        print("spaceForEveryWord: $spaceForEveryWord");

        return word
            .asMap()
            .map((key, value) {
              if (key != wordCount) {
                final data = value +
                    List.generate(spaceForEveryWord, (index) => " ").join();

                return MapEntry(key, data);
              }

              return MapEntry(key, value);
            })
            .values
            .join();
      }
    }

    return str;
  }).toList();

  return result;
}

void main() {
  print(fullJustify(
      ["This", "is", "an", "example", "of", "text", "justification."], 16));
}

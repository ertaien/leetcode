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
    final List texLine = str.trim().split(' ');

    if (texLine.join().length < maxWidth) {
      final int spaceCount = maxWidth - texLine.join().length;
      int wordCount = texLine.length;
      final lastWordIndex = texLine.length - 1;

      if (wordCount > 1) {
        wordCount -= 1;
      }

      print("Space count: $spaceCount, Word count: $wordCount");

      if (wordCount == 1) {
        return texLine.join() +
            List.generate(spaceCount, (index) => " ").join();
      } else {
        final int leftSpaceCount = spaceCount % wordCount;
        int spaceForEveryWord = (spaceCount - leftSpaceCount) ~/ wordCount;

        return texLine
            .asMap()
            .map((idx, value) {
              if (idx != lastWordIndex) {
                if (idx == 0) {
                  spaceForEveryWord += leftSpaceCount;
                }

                final data = value +
                    List.generate(spaceForEveryWord, (index) => " ").join();

                return MapEntry(idx, data);
              }

              return MapEntry(idx, value);
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

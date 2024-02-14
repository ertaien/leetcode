class Solution {
  int romanToInt(String s) {
    final Map<String, int> romeNumbers = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
      "IV": 4,
      "IX": 9,
      "XL": 40,
      "XC": 90,
      "CD": 400,
      "CM": 900,
    };

    int resultNumbers = 0;

    s.split("").asMap().forEach((key, value) {});

    print(resultNumbers);

    return 0;
  }
}

void main() {
  final s = Solution();

  print(s.romanToInt("III"));
  print(s.romanToInt("XL"));
  print(s.romanToInt("MCMXCIV"));
}

class Solution {
  String licenseKeyFormatting(String s, int k) {
    final List<String> cleanedData =
        s.split('-').map((e) => e.toUpperCase()).toList();

    print(cleanedData.join());

    cleanedData.insert(1, '-');

    print(cleanedData);

    return '';
  }
}

void main() {
  final s = Solution();
  s.licenseKeyFormatting('5F3Z-2e-9-w', 4); // "5F3Z-2E9W"
}

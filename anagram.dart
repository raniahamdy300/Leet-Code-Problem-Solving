// Given two strings s and t, return true if t is an
// anagram
//  of s, and false otherwise.
void main() {
  print(isAnagram('anagram', 'nagaram'));
}

bool isAnagram(String s, String t) {
  if (s.length == t.length) {
    List<String> listOfS = s.toLowerCase().split('');
    List<String> listOfT = t.toLowerCase().split('');

    listOfT.sort();
    listOfS.sort();

    return listOfS.toString() == listOfT.toString();
  } else {
    return false;
  }
}

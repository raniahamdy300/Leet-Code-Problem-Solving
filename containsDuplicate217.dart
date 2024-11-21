// Given an integer array nums,
// return true if any value appears at least twice in the array, and return false if every element is distinct.
// Example 1
// Input: nums = [1,2,3,1]
// Output: true
// Explanation:
// The element 1 occurs at the indices 0 and 3.
// Example 2
// Input: nums = [1,2,3,4]
// Output: false
// Explanation:
// All elements are distinct.
// Example 3:
// Input: nums = [1,1,1,3,3,4,3,2,4,2]
// Output: true
//---------------------------------------------------------
// الفكرة:
// compare hashcode for index with the rest and count the number for repeating as every index will be fount once only,
// so if count >1 then break the loop and return true as duplicated else return false.
void main() {
  // List<int> numbersList = [1, 2, 3, 1];
  List<int> numbersList = [1, 2, 3, 4];
  //List<int> numbersList = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];

  if (containsDuplicate(numbersList)) {
    print('duplicated');
  } else {
    print('All elements are distinct');
  }
}

bool containsDuplicate(List<int> numbersList) {
  int counter = 0;
  for (var e in numbersList) {
    counter = 0;
    for (var i = 0; i < numbersList.length; i++) {
      if (e.hashCode == numbersList[i].hashCode) {
        counter++;
      }
    }
    if (counter > 1) {
      return true;
    }
  }
  return false;
}

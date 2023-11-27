int findMaximum(List<int> nums) {
  int max = nums[0];
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] > max) {
      max = nums[i];
    }
  }
  return max;
}

int findMinimum(List<int> nums) {
  int min = nums[0];
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] < min) {
      min = nums[i];
    }
  }
  return min;
}

int calculateSum(List<int> nums) {
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    sum += nums[i];
  }
  return sum;
}

double calculateAverage(List<int> nums) {
  double average;
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    sum += nums[i];
  }
  average = sum / nums.length;
  return average;
}

void main() {
  List<int> numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  print("The maximum number is ${findMaximum(numbers)}");
  print("The minimum number is ${findMinimum(numbers)}");
  print("The sum of the numbers is ${calculateSum(numbers)}");
  print("The average of the numbers is ${calculateAverage(numbers)}");
} 

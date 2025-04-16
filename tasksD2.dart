void main(List<String> arguments) {


  BMI(1.75, 70); 
  Grades(75);
  cartCalc(discount: 0.10);
  isPalindrome("madam");
  ATM("withdraw");
  }

  void cartCalc({double discount = 0.0}){
    Map<String, double> cart = {
       "Shirt": 20.0, "Jeans": 50.0, "Shoes": 80.0
    };  
  }
    double total = 0.0;
    cart.forEach((item, price) {
      total += price;
    });
    print("Total cost: $total");
      if (discount > 0.0 && discount < 1.0) {
    double discountTotal = total * (1 - discount);
    print("With discount: \$${discountTotal}");
  }


   void Grades(int grade){
    print("Your grade is: $grade") ;
    if(grade >= 60 && grade <= 100) {
      print("Passed");
    }else if(grade >= 0 && grade < 60) {
      print("Failed");
    }  
  }

    void  BMI= (double height, double weight) {
    double bmi = weight / (height * height);
    print("Your BMI is: $bmi");

    if(bmi < 18.5) {
      print("Underweight");
    } else if(bmi >= 18.5 && bmi < 24.9) {
      print("Normal weight");
    } else if(bmi >= 25 && bmi < 29.9) {
      print("Overweight");
    } else {
      print("Obesity");
    }
  }

    void ATM=(String operation)=>{
    if(operation == "withdraw") {
      print("Withdrawing money");
    } else if(operation == "deposit") {
      print("Depositing money");
    } else if(operation == "check balance") {
      print("Checking balance");
    } else {
      print("Invalid operation");
    }
  }

  bool isPalindrome(String word) {
    String! word;
  String reversed = word.split('').reversed.join('');
  return word == reversed;
  bool result = isPalindrome(word);
  print("Is '$word' a palindrome? $result");
}
import 'dart:math';

main(){
    var degree = new Random().nextInt(100);
    print("Degree = "+degree.toString());
    if (degree>=90){
      if (degree>97){
        print("A+");
      }
      else if (degree>93){
        print("A");
      }
      else{
        print("A-");
      }
    }
    else if (degree>=80){
      if (degree>87){
        print("B+");
      }
      else if (degree>83){
        print("B");
      }
      else{
        print("B-");
      }
    }
    else if (degree>=70){
      if (degree>77){
        print("C+");
      }
      else if (degree>73){
        print("C");
      }
      else{
        print("C-");
      }
    }
    else if (degree>=60){
      if (degree>67){
        print("D+");
      }
      else if (degree>=60){
        print("D");
      }
      
    }
    else {
      print("F");
    }
}

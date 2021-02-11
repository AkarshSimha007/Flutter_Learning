void main(){
  
  User userOne=User("Akarsh",20);
  
  User userTwo=User("Anushka",11);
  
  userOne.login();
  userOne.userInfo();
  print("\n");
  
  userTwo.login();
  userTwo.userInfo();
  print("\n");
  
  
  SuperUser userThree=SuperUser("Mamatha",43);
  userThree.login();
  userThree.userInfo();
  userThree.publish();
}

class User{
  String username;
  int age;
  
  User(String username,int age){
    this.username=username;
    this.age=age;
  }
  
  void login(){
    print("User Logged in!");
  }
  
  void userInfo(){
    print("Name of user is ${this.username}");
    print("Age of user is ${this.age}");
  }
}

class SuperUser extends User{
  
  SuperUser(String username,int age):super(username,age);
  
  void publish(){
    print("Published\n");
    
  }
  
}
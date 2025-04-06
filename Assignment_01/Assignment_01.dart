abstract class Vehicle{
  late int _speed;
  move();

  set setSpeed(int speed){
    _speed = speed;
  }

  int get carSpeed => _speed;//to avoid direct access to _speed.

}

class Car extends Vehicle{
  @override
  move(){
    print("The car is moving at $carSpeed km/h");
  }
}

main(){
  Car gari = Car();
  gari.setSpeed=111;
  gari.move();
}
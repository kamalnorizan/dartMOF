class Owner{
  String? name;
  int? age;
  String? phoneNumber;
  
  Owner({this.name, this.age, this.phoneNumber});
  
  printOwner(){
    print(name);
    print(age);
    print(phoneNumber);
  }
}

class Car{
  String? brand;
  int? carseats;
  String? color;
  double? cc;
  double? price;
  List<Owner> owners;

  Car(this.owners,{this.brand, 
       this.carseats, 
       this.color, 
       this.cc=1.5, 
       this.price=50000});
  
  printCar(){
    print(brand);
    print(carseats);
    print(color);
    print(cc);
    print(price);
    for(var i=0; i < owners.length; i++){
      owners[i].printOwner();
    }
    print('==========================');
  }
}

void main() {
  List<Car> cars = [
    Car(
      [Owner(name: 'Kamal', age: 20, phoneNumber: '0123456789'),
      Owner(name: 'Shafiq', age: 22, phoneNumber: '0123343889'),
      Owner(name: 'Azman', age: 21, phoneNumber: '0143343889')],
      brand: 'Proton', 
      carseats: 5, 
      color: 'red'),
    Car(
      [Owner(name: 'Zain', age: 30, phoneNumber: '01234568889')], 
      brand: 'Porche Carrera', 
      carseats: 2, 
      color: 'red', 
      cc: 3.6, 
      price: 400000)];
  
  print(cars);
  print('For Loop');
  for(var i=0; i < cars.length; i++){
    cars[i].printCar();
  }
  
//   var num = 0;
//   print('While Loop');
//   while(num<cars.length){
//     cars[num].printCar();
//     num++;
//   }
}

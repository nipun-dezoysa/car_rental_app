import 'package:car_rental_app/data/datasources/firebase_car_data_source.dart';
import 'package:car_rental_app/data/models/Car.dart';
import 'package:car_rental_app/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseCarDataSource dataSource;
  CarRepositoryImpl({required this.dataSource});
  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  }

}
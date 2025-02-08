import 'package:car_rental_app/data/models/Car.dart';
import 'package:car_rental_app/presentation/bloc/car_bloc.dart';
import 'package:car_rental_app/presentation/bloc/car_state.dart';
import 'package:car_rental_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});
  final List<Car> cars = [
    Car(
      model: 'Mercedes Benz',
      distance: 100,
      fuelCapacity: 50,
      pricePerHour: 100,
    ),
    Car(
      model: 'BMW',
      distance: 200,
      fuelCapacity: 60,
      pricePerHour: 120,
    ),
    Car(
      model: 'Audi',
      distance: 150,
      fuelCapacity: 55,
      pricePerHour: 110,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Choose Your Car'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: BlocBuilder<CarBloc, CarState>(builder: (context, state) {
          if (state is CarsLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is CarsLoaded) {
            return ListView.builder(
              itemCount: state.cars.length,
              itemBuilder: (context, index) {
                return CarCard(car: state.cars[index]);
              },
            );
          } else if (state is CarsError) {
            return Center(child: Text('error : ${state.message}'));
          } else {
            return Center(child: Text('error'));
          }
        }));
  }
}

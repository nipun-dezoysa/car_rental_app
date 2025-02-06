import 'package:car_rental_app/data/models/Car.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final Car car;
  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/car_image.png',
              height: 120,
            ),
            Text(
              car.model,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Row(
                      spacing: 2,
                      children: [
                        Image.asset('assets/gps.png'),
                        Text('${car.distance.toStringAsFixed(0)} km'),
                      ],
                    ),
                    Row(
                      spacing: 2,
                      children: [
                        Image.asset('assets/pump.png'),
                        Text('${car.fuelCapacity.toStringAsFixed(0)}L'),
                      ],
                    )
                  ],
                ),
                Text(
                  '\$${car.pricePerHour.toStringAsFixed(2)}/h',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

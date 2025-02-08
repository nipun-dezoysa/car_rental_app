import 'package:car_rental_app/data/models/Car.dart';
import 'package:car_rental_app/presentation/pages/maps_details_page.dart';
import 'package:car_rental_app/presentation/widgets/car_card.dart';
import 'package:car_rental_app/presentation/widgets/more_card.dart';
import 'package:flutter/material.dart';

class CarDetailsPage extends StatelessWidget {
  final Car car;
  const CarDetailsPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.info_outline), Text(" Information")],
        ),
      ),
      body: Column(
        children: [
          CarCard(
            car: car,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xffF3F3F3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 5,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/user.png'),
                        ),
                        SizedBox(height: 10),
                        Text("John Doe",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("\$4.253", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapsDetailsPage(car: car,),
                        ),
                      );
                    },
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/maps.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 5,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              spacing: 5,
              children: [
                MoreCard(
                  car: car,
                ),
                MoreCard(
                  car: car,
                ),
                MoreCard(
                  car: car,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

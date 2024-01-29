// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackOrder extends StatelessWidget {
  final isOrdered;
  final isProcessing;
  final isDelivered;
  final isDispatched;

  const TrackOrder({
    super.key,
    required this.isOrdered,
    required this.isProcessing,
    required this.isDelivered,
    required this.isDispatched ,
    });


  @override
  Widget build(BuildContext context) {

    return Scaffold(
           appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Track order",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
        ),
      ),
      backgroundColor: Color.fromRGBO(249, 75, 24, 1).withAlpha(70),
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: ListView(
        children: [
          TimelineTile(
            isFirst: true,
          ),
          TimelineTile(),
          TimelineTile(
            isLast: true,
          ),
        ],
        ),
      )
    );
  }
}
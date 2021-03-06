import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deapsea2/constants/controllers.dart';
import 'package:project_deapsea2/models/payments.dart';
import 'package:project_deapsea2/screens/payments/components/payment_widget.dart';

class PaymentsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.grey.withOpacity(.1),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Payment History",
          style: TextStyle(color: Colors.black),
        ),

      ),
      body: ListView(
        children: [
          Column(
            children: 
            paymentsController.payments.map((payment) => PaymentWidget(paymentsModel: payment,)).toList()
            ,
          )
        ],
      ),
    );
  }


}
import 'package:flutter/material.dart';

import '../CustomUi/custom_color.dart';
import '../CustomUi/main_button.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class LmbPlanDialog1 extends StatefulWidget {
  const LmbPlanDialog1({super.key});

  @override
  State<LmbPlanDialog1> createState() => _LmbPlanDialog1State();
}

class _LmbPlanDialog1State extends State<LmbPlanDialog1> {

  var _razorpay = Razorpay();
  var amountController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
              title: const Text('Choose Any One Plan',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: WebColors.bgcolor1,
                  ),
                  textAlign: TextAlign.center),
              alignment: Alignment.center,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              content: Container(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    const ListTile(
                      title: const Text('For 1 Month Plan'),
                      trailing: Text("Rs. 399/-")
                    ),
                    const ListTile(
                      title: const Text('For 3 Month Plan'),
                      trailing: Text("Rs. 1197/-")
                    ),
                    const ListTile(
                      title: const Text('For 6 Month Plan'),
                      trailing: Text("Rs. 2294/-")
                    ),
                    const ListTile(
                      title: const Text('For 12 Month Plan'),
                      trailing: Text("Rs. 4588/-")
                    ),
                    TextField(
                      controller: amountController,
                      decoration: const InputDecoration(
                        hintText: "Enter Plan Amount"
                      ),
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          elevation: 10,
                          foregroundColor: Colors.white,
                          backgroundColor: WebColors.bgcolor1,
                          padding: const EdgeInsets.all(12.0),
                          textStyle: const TextStyle(fontSize: 18),
                        ),
                        onPressed: () {
                          try{
                          _razorpay.open(options);
                          }catch (e) {
                            debugPrint(e as String?);
                          }
                        },
                        child: const Text('Proceed'),
                      ),
                  ],
                ),
              )
            ),
    );
  }
  @override
  void initState(){
    super.initState();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

  }

  @override
  void dispose(){
    super.dispose();
  _razorpay.clear(); // Remove all Listeners
  }

  var options = {
    'key': 'rzp_test_J9ZCbrcTzKTOvX',
    'amount': 50000, //in the smallest currency sub-unit.
    'name': 'LMB Technologies',
    'order_id': 'order_EMBFqjDHEEn80l', // Generate order_id using Orders API
    'description': 'Products price',
    'timeout': 300, // in seconds
    'prefill': {
      'contact': '9999999999',
      'email': 'lmbtechnology@gmail.com'
    }
  };

  // try{
  //   _razorpay.open(options);
  // }catch (e) {
  //     debugPrint(e);
  // }
                      

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
  // Do something when payment succeeds
    print("Payment Succesfull !");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    print("Payment Failed");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }

}

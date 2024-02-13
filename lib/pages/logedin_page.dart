import 'package:flutter/material.dart';
import 'package:lmb_project/pages/logout_dialog.dart';
import '../pages/faq.dart';
import '../CustomUi/custom_color.dart';
import '../CustomUi/footer.dart';
import '../CustomUi/header.dart';
import '../pages/userdashboad.dart';


class LogedinPage extends StatefulWidget {
  const LogedinPage({Key? key}) : super(key: key);

  @override
  State<LogedinPage> createState() => _LogedinPageState();
}

class _LogedinPageState extends State<LogedinPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [WebColors.bgcolor1, Colors.white],
          )),
          child: Column(children: [
            const Header(),
            const TabBar(
                labelColor: Colors.black,
                labelStyle: TextStyle(fontWeight: FontWeight.w200),
                indicator: BoxDecoration(color: WebColors.bgcolor1),
                tabs: [
                  Tab(
                    icon: Icon(Icons.dashboard),
                    text: "DASHBOARD",
                  ),
                  Tab(
                    icon: Icon(Icons.shopping_bag),
                    text: "ORDER",
                  ),
                  Tab(
                    icon: Icon(Icons.question_answer),
                    text: "FAQ",
                  ),
                  Tab(
                    icon: Icon(Icons.logout),
                    text: "LOGOUT",
                  ),
                ]),
            Expanded(
              child: TabBarView(children: [
                Container(
                  color: const Color.fromARGB(119, 255, 172, 64),
                  child: const Center(
                    child: UserDashboard(),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(128, 255, 82, 82),
                  child: const Center(
                    child: Text("Order"),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(90, 223, 64, 251),
                  child: const Center(
                    child: Faq(),
                  ),
                ),

                // logout AlertDialog
                Column(
                  children: const [
                    Expanded(
                      child: Center(child: LogoutDialog())),
                    // SizedBox(height: 100),
                    Footer()
                  ],
                ),
              
                
                // const SizedBox(height: 200),
              ]),
            ),
            // const Footer()
          ]),
        ),
      ),
    );
  }
}

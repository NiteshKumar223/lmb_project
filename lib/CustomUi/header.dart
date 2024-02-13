import 'package:flutter/material.dart';
import '../CustomUi/custom_color.dart';
import '../CustomUi/responsive.dart';
import '../pages/contact_us.dart';
import '../pages/home.dart';
import '../pages/productpage.dart';
import '../pages/login_page.dart';
import 'menu_item.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/logo1.png',
            width: 50,
          ),
          const SizedBox(width: 10),
          const Text(
            "LMB Technology",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const Spacer(),
          if (!isMobile(context))
            Row(
              children: [
                NavItem(
                  title: 'Home',
                  tapEvent: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                      ModalRoute.withName("/"),
                    );
                  },
                ),
                NavItem(
                  title: 'Products',
                  tapEvent: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductPage()),
                      ModalRoute.withName("/"),
                    );
                  },
                ),
                NavItem(
                  title: 'Contact Us',
                  tapEvent: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactUs()),
                      ModalRoute.withName("/"),
                    );
                  },
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(208, 219, 255, 59),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 3,
                          color: WebColors.bgcolor2,
                        ),
                      ]),
                  child: NavItem(
                    title: 'Login',
                    tapEvent: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                        ModalRoute.withName("/"),
                      );
                    },
                  ),
                ),
              ],
            ),
          if (isMobile(context))
            Padding(
              padding: const EdgeInsets.only(right: 1),
              child: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  }),
            )
        ],
      ),
    );
  }
}

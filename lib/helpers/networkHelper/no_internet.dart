import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/no_internet.png',
          color: theme.colorScheme.error,
          height: size.height / 3,
        ),
        Container(
          margin: EdgeInsets.only(
            top: size.height / 15,
            bottom: size.height / 30,
          ),
          child: Text(
            "No Internet connection",
            style: theme.primaryTextTheme.titleMedium,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: size.height / 15,
          ),
          child: Text(
            "Check your connection, then refresh the page.",
            style: theme.primaryTextTheme.bodyMedium,
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              theme.colorScheme.primary,
            ),
          ),
          onPressed: () {
            // You can also check the internet connection through this below function as well
            // ConnectivityResult result = await Connectivity().checkConnectivity();
          },
          child: const Text("Refresh"),
        ),
      ],
    );
  }
}

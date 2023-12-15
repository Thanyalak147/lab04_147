import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String foodRadio = "";

  bool starEgg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เมณู อาหารป่า"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            RadioManulist("ปลากัดต้มแซ่บ", "250"),
            RadioManulist("ยำยุงลายป่า", "220"),
            RadioManulist("ข้าวผัดงูหลาม", "200"),
            RadioManulist("ข้าวผัดงูหลาม", "100"),
            Divider(),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text("ไข่นกกระทาดาว"),
                subtitle: Text("0.5"),
                value: starEgg,
                onChanged: (value) {
                  setState(() {
                    starEgg = value!;
                  });
                })
          ],
        ));
  }

  RadioListTile<String> RadioManulist(String title, String subtitle) {
    return RadioListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: title,
      groupValue: foodRadio,
      onChanged: (value) {
        setState(() {
          foodRadio = value!;
        });
      },
    );
  }
}

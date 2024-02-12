import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var language = ['Hindi', 'English', 'Bangla'];
  var originLanguage = "From";
  var destinationLanguage = "To";
  TextEditingController languageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(),
      backgroundColor: const Color(0xff10223d),
      appBar: AppBar(
        title: const Text("Language Translator"),
        centerTitle: true,
        backgroundColor: const Color(0xff10223d),
        elevation: 0.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    focusColor: Colors.white,
                    iconDisabledColor: Colors.white,
                    iconEnabledColor: Colors.white,
                    hint: Text(
                      originLanguage,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: language.map(
                      (String dropDownStringItem) {
                        return DropdownMenuItem(
                          child: Text(dropDownStringItem),
                          value: dropDownStringItem,
                        );
                      },
                    ).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        originLanguage = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  const Icon(
                    Icons.arrow_right_alt_outlined,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  SizedBox(
                    width: 40.0,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

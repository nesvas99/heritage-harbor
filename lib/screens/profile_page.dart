import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String selectedGender = 'Seleccionar';
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      selectedGender = prefs.getString('selectedGender') ?? 'Seleccionar';
      final savedDate = prefs.getString('selectedDate');
      if (savedDate != null) {
        selectedDate = DateTime.parse(savedDate);
      }
    });
  }

  Future<void> _savePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedGender', selectedGender);
    if (selectedDate != null) {
      await prefs.setString('selectedDate', selectedDate!.toIso8601String());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfiles'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Tu información se mantendrá estrictamente confidencial y solo se utilizará para recomendar imágenes.', style: TextStyle(fontSize: 14, color: Colors.grey)),
            SizedBox(height: 20),
            ListTile(
              title: Text('Género'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(selectedGender),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    TextEditingController _customGenderController = TextEditingController();
                    return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setModalState) {
                        return Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Cancelar'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        selectedGender = _customGenderController.text.isNotEmpty
                                            ? _customGenderController.text
                                            : selectedGender;
                                      });
                                      _savePreferences();
                                      Navigator.pop(context);
                                    },
                                    child: Text('OK'),
                                  ),
                                ],
                              ),
                              ListTile(
                                title: Text('Mujer'),
                                onTap: () {
                                  setModalState(() {
                                    selectedGender = 'Mujer';
                                  });
                                },
                              ),
                              ListTile(
                                title: Text('Hombre'),
                                onTap: () {
                                  setModalState(() {
                                    selectedGender = 'Hombre';
                                  });
                                },
                              ),
                              ListTile(
                                title: Text('Personalizar'),
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text('Cancelar'),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    setModalState(() {
                                                      selectedGender = _customGenderController.text;
                                                    });
                                                    _savePreferences();
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text('OK'),
                                                ),
                                              ],
                                            ),
                                            TextField(
                                              controller: _customGenderController,
                                              decoration: InputDecoration(
                                                labelText: 'Género personalizado',
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
            ListTile(
              title: Text('Cumpleaños'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(selectedDate != null ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}" : "Seleccionar"),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setModalState) {
                        return Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Cancelar'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _savePreferences();
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text('OK'),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                child: Text("Selecciona tu cumpleaños"),
                                onPressed: () {
                                  showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2100),
                                  ).then((date) {
                                    setModalState(() {
                                      selectedDate = date;
                                    });
                                  });
                                },
                              ),
                              if (selectedDate != null) 
                                Text("Fecha seleccionada: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

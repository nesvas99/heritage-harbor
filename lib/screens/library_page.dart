import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  final List<String> initialCategories = [
    "New", "Government Buildings", "National Flags", "Traditional Dances", "Bonus", 
    "World Heritage Sites", "Patriotic Landscapes", "National Festivals", 
    "National Animals", "Traditional Instruments", "National Shields", 
    "Traditional Foods", "Independence Monuments", "National Anthems", 
    "Emblematic Cities", "Pre-Columbian Symbols", "Historical Figures", 
    "Historic Places", "National Trees", "Traditional Costumes", 
    "Regional Shields", "National Holidays", "Handicrafts", "National Monuments", 
    "National Heroes", "Military Bands", "National Flowers", "Historic Events"
  ];

  final Map<String, List<String>> imageUrlsByCategory = {
    "New": [],
    "Government Buildings": [],
    "National Flags": [], 
    "Traditional Dances": [], 
    "Bonus": [], 
    "World Heritage Sites": [], 
    "Patriotic Landscapes": [], 
    "National Festivals": [], 
    "National Animals": [], 
    "Traditional Instruments": [], 
    "National Shields": [], 
    "Traditional Foods": [], 
    "Independence Monuments": [], 
    "National Anthems": [], 
    "Emblematic Cities": [], 
    "Pre-Columbian Symbols": [], 
    "Historical Figures": [], 
    "Historic Places": [], 
    "National Trees": [], 
    "Traditional Costumes": [], 
    "Regional Shields": [], 
    "National Holidays": [], 
    "Handicrafts": [], 
    "National Monuments": [], 
    "National Heroes": [], 
    "Military Bands": [], 
    "National Flowers": [], 
    "Historic Events": []
  };

  late String selectedCategory = initialCategories.first;

  @override
  void initState() {
    super.initState();
    selectedCategory = initialCategories.first;
  }

  void selectCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Librería')),
      body: Column(
        children: <Widget>[
          // Dropdown de categorías
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: initialCategories.map((category) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ChoiceChip(
                    label: Text(category),
                    selected: selectedCategory == category,
                    onSelected: (bool selected) {
                      selectCategory(category);
                    },
                  ),
                );
              }).toList(),
            ),
          ),
          // Galería de imágenes
          Expanded(
            child: imageUrlsByCategory[selectedCategory]?.isEmpty ?? true
                ? Center(child: Text('Más imágenes próximamente', style: TextStyle(fontSize: 24)))
                : GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,
                    ),
                    itemCount: imageUrlsByCategory[selectedCategory]?.length ?? 0,
                    itemBuilder: (context, index) {
                      return Image.asset(imageUrlsByCategory[selectedCategory]![index]);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

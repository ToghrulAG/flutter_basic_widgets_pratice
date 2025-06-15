import 'package:flutter/material.dart';

const url3 =
    'https://whc.unesco.org/uploads/thumbs/site_0798_0006-1000-627-20120827171714.jpg';

const sundarbanDescription = '''
The Sundarbans mangrove forest, one of the largest such forests in the world (140,000 ha), lies on the delta of the Ganges, Brahmaputra and Meghna rivers on the Bay of Bengal. It is adjacent to the border of India’s Sundarbans World Heritage site inscribed in 1987. The site is intersected by a complex network of tidal waterways, mudflats and small islands of salt-tolerant mangrove forests, and presents an excellent example of ongoing ecological processes. The area is known for its wide range of fauna, including 260 bird species, the Bengal tiger and other threatened species such as the estuarine crocodile and the Indian python.''';

void main() {
  runApp(SunderBanApp());
}

class SunderBanApp extends StatelessWidget {
  const SunderBanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: SunderBanScreen()));
  }
}

class SunderBanScreen extends StatelessWidget {
  const SunderBanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ImageSection(),
        TitleSection(),
        ButtonSection(),
        DescriptionSection()
      ],
    );
  }
}

////

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Image.network(
      url3,
      width: double.infinity,
      height: 250,
      fit: BoxFit.cover,
    );
  }
}
class TitleSection extends StatelessWidget {
  const TitleSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Azerbaijan, Guba', style: TextStyle(fontSize: 20)),
                Text(
                  'Azerbaijan Guba',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.amber),
          Text('9.1', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  Widget buildButtonColumn(icon, label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, size: 35, color: Colors.blue),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'Call'),
          buildButtonColumn(Icons.route, 'Route'),
          buildButtonColumn(Icons.sms, 'SMS'),
        ],
      ),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        sundarbanDescription
      ),
    );
  
  }
}



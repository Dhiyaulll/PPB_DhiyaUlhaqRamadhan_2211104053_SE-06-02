import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Banyumas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Poppins',
      ),
      home: WisataScreen(),
    );
  }
}

class WisataScreen extends StatelessWidget {
  final List<Map<String, String>> wisataList = [
    {
      'nama': 'Curug Cipendok',
      'foto': 'assets/curug_cipendok.jpg',
      'deskripsi':
          'Nikmati keajaiban alam di Curug Cipendok, air terjun megah setinggi 92 meter. '
              'Dikelilingi oleh hutan tropis yang rimbun, curug ini menawarkan:\n\n'
              '• Pemandangan memukau dan udara segar pegunungan\n'
              '• Trek hiking yang menantang untuk para petualang\n'
              '• Spot foto instagramable dengan latar air terjun\n'
              '• Area piknik ideal untuk bersantai dengan keluarga',
    },
    {
      'nama': 'Baturaden',
      'foto': 'assets/baturaden.jpg',
      'deskripsi':
          'Jelajahi pesona alam Baturaden di kaki Gunung Slamet. Destinasi ini menawarkan:\n\n'
              '• Pemandian air panas alami yang menyegarkan\n'
              '• Jalur tracking dengan pemandangan spektakuler\n'
              '• Taman bunga warna-warni yang memanjakan mata\n'
              '• Wisata kuliner khas pegunungan yang lezat\n'
              '• Suasana sejuk khas pegunungan untuk relaksasi',
    },
    {
      'nama': 'Telaga Sunyi',
      'foto': 'assets/telaga_sunyi.jpg',
      'deskripsi':
          'Temukan kedamaian di Telaga Sunyi, surga tersembunyi Banyumas:\n\n'
              '• Danau alami dengan air jernih bak cermin\n'
              '• Suasana hening yang cocok untuk meditasi dan menenangkan pikiran\n'
              '• Spot memancing ideal bagi penggemar aktivitas ini\n'
              '• Tempat camping dengan panorama alam yang menakjubkan\n'
              '• Flora dan fauna unik di sekitar telaga',
    },
    {
      'nama': 'Small World',
      'foto': 'assets/small_world.jpg',
      'deskripsi': 'Jelajahi dunia dalam sekejap di Small World Purwokerto:\n\n'
          '• Replika landmark dunia terkenal dalam ukuran mini\n'
          '• Wahana permainan seru untuk seluruh keluarga\n'
          '• Area tematik yang menghadirkan suasana berbagai negara\n'
          '• Spot foto unik dengan latar belakang "dunia"\n'
          '• Pertunjukan dan parade yang menghibur sepanjang hari',
    },
    {
      'nama': 'Bukit Watu Meja',
      'foto': 'assets/watu_meja.jpg',
      'deskripsi':
          'Saksikan keindahan alam dari ketinggian di Bukit Watu Meja:\n\n'
              '• Spot sunrise terbaik dengan view Gunung Slamet\n'
              '• Panorama kota Purwokerto yang memukau\n'
              '• Formasi batu unik yang menyerupai meja raksasa\n'
              '• Area camping dengan bintang-bintang di malam hari\n'
              '• Tempat ideal untuk fotografi landscape dan astro',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Banyumas'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: wisataList.length,
        itemBuilder: (context, index) {
          return WisataCard(
            nama: wisataList[index]['nama']!,
            foto: wisataList[index]['foto']!,
            deskripsi: wisataList[index]['deskripsi']!,
          );
        },
      ),
    );
  }
}

class WisataCard extends StatelessWidget {
  final String nama;
  final String foto;
  final String deskripsi;

  WisataCard({required this.nama, required this.foto, required this.deskripsi});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              nama,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              foto,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  deskripsi,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  child: const Text('Kunjungi Tempat'),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Anda akan mengunjungi $nama'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

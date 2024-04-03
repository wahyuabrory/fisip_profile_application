import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProgramStudiDetail extends StatelessWidget {
  final String nama;
  final String akreditasi;
  final String gambar;
  final String profil;
  final String visi;
  final String misi;
  final List<String> dosen;
  final String prodiEmail;
  final String laman;
  final String kaprodi;
  final String gambarAkreditasi;
  final List<String> gambarPrestasi;
  final List<String> captionPrestasi;

  const ProgramStudiDetail({
    Key? key,
    required this.nama,
    required this.akreditasi,
    required this.gambar,
    required this.profil,
    required this.visi,
    required this.misi,
    required this.dosen,
    required this.prodiEmail,
    required this.laman,
    required this.kaprodi,
    required this.gambarAkreditasi,
    required this.gambarPrestasi,
    required this.captionPrestasi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
        backgroundColor: Colors.transparent, // Make the app bar transparent
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.yellow.shade200, Colors.yellow.shade600],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.yellow.shade200, Colors.yellow.shade600],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    gambar,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(gambarAkreditasi),
                    Text(
                      'Akreditasi: $akreditasi',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Profil:',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Text(
                      profil,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black87),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Visi:',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Text(
                      visi,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black87),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Misi:',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Text(
                      misi,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black87),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Kaprodi:',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Text(
                      kaprodi,
                      style: TextStyle(color: Colors.black87),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Dosen:',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: dosen
                          .map((dosen) => Text(dosen,
                              style: TextStyle(color: Colors.black87)))
                          .toList(),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Email Prodi:',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        _launchURL('mailto:$prodiEmail');
                      },
                      icon: Icon(Icons.email, color: Colors.blue),
                      label: Text(
                        prodiEmail,
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Laman:',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        _launchURL(laman);
                      },
                      icon: Icon(Icons.link, color: Colors.blue),
                      label: Text(
                        laman,
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Prestasi:',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: List.generate(gambarPrestasi.length, (index) {
                        return Column(
                          children: [
                            Image.asset(
                              gambarPrestasi[index],
                              width: double.infinity,
                              height: 180,
                              fit: BoxFit.fitWidth,
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              captionPrestasi[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black87),
                            ),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

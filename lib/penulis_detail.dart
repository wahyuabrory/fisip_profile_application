import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Penulis {
  final String namapenulis;
  final String nim;
  final String foto;
  final String ttl;
  final String alamat;
  final String noHp;
  final String email;
  final String urlProfilGithub;
  final List<String> riwayatPendidikan;
  final List<String> penghargaan;

  Penulis({
    required this.namapenulis,
    required this.nim,
    required this.foto,
    required this.ttl,
    required this.alamat,
    required this.noHp,
    required this.email,
    required this.urlProfilGithub,
    required this.riwayatPendidikan,
    required this.penghargaan,
  });
}

class BulletedText extends StatelessWidget {
  final String text;

  const BulletedText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.arrow_right, size: 16),
          SizedBox(width: 5),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class PenulisDetail extends StatelessWidget {
  final Penulis penulis;

  const PenulisDetail({Key? key, required this.penulis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Profile'),
        backgroundColor: Colors.transparent,
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
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage(penulis.foto),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Nama: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: penulis.namapenulis,
                        ),
                      ],
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'NPM: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: penulis.nim,
                        ),
                      ],
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Tempat Tanggal Lahir: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: penulis.ttl,
                        ),
                      ],
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Alamat: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: penulis.alamat,
                        ),
                      ],
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Nomor Handphone: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: penulis.noHp,
                        ),
                      ],
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Email:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      _launchURL('mailto:${penulis.email}');
                    },
                    child: Text(
                      penulis.email,
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Profil Github:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      _launchURL(penulis.urlProfilGithub);
                    },
                    child: Text(
                      penulis.urlProfilGithub,
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Riwayat Pendidikan:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: penulis.riwayatPendidikan
                        .map((pendidikan) => BulletedText(text: pendidikan))
                        .toList(),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Penghargaan Penulis:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: penulis.penghargaan
                        .map((penghargaan) => BulletedText(text: penghargaan))
                        .toList(),
                  ),
                ],
              ),
            ),
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

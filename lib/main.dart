import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:profile_faculty_application/fakultas_detail.dart';
import 'package:profile_faculty_application/penulis_detail.dart';
import 'package:profile_faculty_application/fakultas.dart';
import 'package:profile_faculty_application/penulis.dart';

void main() {
  runApp(const FacultyProfile());
}

class FacultyProfile extends StatefulWidget {
  const FacultyProfile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FacultyProfileState();
  }
}

class FacultyProfileState extends State<FacultyProfile> {
  List<ProgramStudi> programStudiList = [
    ProgramStudi(
        nama: "S-1 Administrasi Publik",
        gambar: 'images/s1_adpub.png',
        profil:
            'Program Studi Administrasi Publik Fakultas Ilmu Sosial dan Ilmu Politik UPN “Veteran” Jawa Timur (FISIP-UPNVJT) diselenggarakan berdasarkan keputusan Rektor 92/ UN63/KP/2020 tentang perubahan nama Program Studi Administrasi Publik. Mulai tahun 2022 hingga tahun 2026 Prodi Administrasi Publik terakreditasi UNGGUL. Selain itu juga Prodi Administrasi Publik telah terakreditasi Internasional FIBAA Program Studi Administrasi Publik Fakultas Ilmu Sosial dan Ilmu Politik UPN “Veteran” Jawa Timur (FISIP-UPNVJT) didirikan untuk memenuhi kebutuhan tenaga professional dalam bidang Administrasi Publik dan membantu pemerintah dalam menyediakan tenaga professional yang kompeten dan memiliki daya saing. Selain itu, Program Studi Administrasi Publik Fakultas Ilmu Sosial dan Ilmu Politik UPN “Veteran” Jawa Timur (FISIP-UPNVJT) didirikan untuk menghasilkan Sarjana Administrasi Publik yang memiliki integritas, kepribadian, kepekaan sosial dan karakter yang tangguh serta kompetensi keilmuan yang memadai dan daya saing tinggi, beriman dan bertaqwa kepada Tuhan yang Maha Esa sekaligus menjunjung tinggi nikai-nilai dan semangat bela Negara yang siap untuk mendharmabaktikan dirinya pada kepentingan masyarakat, bangsa dan Negara.',
        visi:
            '"MENJADI PROGRAM STUDI ILMU ADMINISTRASI NEGARA UNGGUL BERKARAKTER BELA NEGARA"',
        gambarAkreditasi: 'images/akre_adpub.jpg',
        misi: [
          '1. Menyelenggarakan dan mengembangkan pendidikan bidang ilmu administrasi negara yang berkarakter bela negara;',
          '2. Meningkatkan budaya riset dalam pengembangan ilmu administrasi negara yang berdayaguna untuk meningkatkan kesejahteraan masyarakat;',
          '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal;',
          '4. Menyelenggarakan tata kelola yang bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran di program studi ilmu administrasi negara;',
          '5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial yang relevan dengan bidang ilmu administrasi negara;',
          '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di program studi ilmu administrasi negara;',
          '7. Meningkatkan kerjasama institusional dengan stakeholders baik dalam dan luar negeri',
        ],
        akreditasi:
            "Terakreditasi UNGGUL dan Terakreditasi Internasional FIBAA",
        kaprodi: 'Bapak Dr.Acep Samsudin., S,Sos.,MM.,MA',
        dosen: [
          'NURHADI 0001026909',
          'MAHARANI IKANINGTYAS 0026059205',
          'DYAH WIDOWATI 0014086402',
          'ACEP SAMSUDIN 0404127701',
          'NURUL AZIZAH 0001059107',
          'SONJA ANDARINI 0726036503',
          'LIA NIRAWATI 0024096004',
          'SUMAINAH FAUZIAH 0007129302',
          'BUDI PRABOWO 0716106202',
        ],
        prodiEmail: 'adneg@upnjatim.ac.id',
        laman: "https://adneg.upnjatim.ac.id/ ", // Tambahkan alamat laman
        gambarPrestasi: [
          'images/prestasi_adpub1.png',
          'images/prestasi_adpub2.png',
          'images/prestasi_adpub3.png',
        ],
        captionPrestasi: [
          'Delegasi Temu Administrator  Muda 2023 STIA LAN Bandung',
          'International Edunutrition Fair Competition Malaysia',
          'Awardee IISMA 2024',
        ]),
    ProgramStudi(
      nama: "S-1 Administrasi Bisnis",
      gambar: 'images/s1_adbis.png',
      gambarAkreditasi: 'images/akre_adbis.jpg',
      profil:
          'Program Studi Ilmu Administrasi Bisnis (Prodi Adbis) merupakan salah satu dari 4 (Lima) Progdi yang dimiliki  Fakultas Ilmu Sosial dan Ilmu Politik (FISIP), Universitas Pembangunan Nasional (UPN) “Veteran” Jawa Timur. Progdi Adbis berdiri pada tahun 1993 berdasarkan Surat Keputusan Menhankam Nomor Kep/01/II/1993, tanggal 27 Pebruari 1993 dengan status Negeri Kedinasan. Pada tahun 1994, berdasarkan Surat Keputusan Bersama Menhankam dan Mendukbud Nomor: Kep/0373/U/1994 – Kep/10/XI/1994, tanggal 29 Nopember 1994, UPN “Veteran” Jatim berubah statusnya menjadi Perguruan Tinggi Swasta dengan semua progdinya berstatus “Disamakan”. Pada tanggal 6 Oktober 2014 UPN “Veteran” berubah statusnya menjadi Perguruan Tinggi Negeri (PTN), berdasarkan Peraturan Presiden Nomor: 122 Tahun 2014 tentang Penegerian UPN “Veteran” Jawa Timur. Pada tahun 2001, untuk pertama kalinya Progdi Adbis melakukan akreditasi BAN-PT,  hasilnya  mendapat nilai akreditasi B.  Pada tahun  2006 melakukan reakreditasi, berdasarkan Surat Keputusan BAN-PT No.: 028/BAN-PT/AK-IX/S1/I/2006, hasilnya mendapatkan nilai akreditasi A, Serta yang terakhir pada tahun 2012 Program Studi Ilmu Aministrasi Bisnis memperoleh Akreditasi A dengan skor total 361 berdasarkan Surat Keputusan BAN PT No,022/BAN-PT/Ak-SURV-III/S1/III/2012.   Akreditasi A mampu dipetahankan oleh Prodi Ilmu Administrasi Bisnis pada 21 mei 2016 untuk yang ketiga kali. Perubahan nama Program Studi Ilmu Administrasi Bisnis menjadi Program Studi Administrasi Bisnis berdasarkan keputusan Kemenristekdikti No. 956/KPT/1/2019. Akreditasi Program Studi Ilmu Administrasi Bisnis diperpanjang lagi Terakreditasi A berdasarkan Kep. BAN -PT NOMOR 3166/ SK / BAN- PT/Ak-PPJ/S.V/2021 21 Mei 2021 sampai 21 Mei 2026 dengan nilai 370.',
      visi:
          '"Visi Program Studi Administrasi Bisnis Fakultas Ilmu Sosial dan Ilmu Politik UPN "Veteran" Jawa Timur (FISIP-UPNVJT) sebagai lembaga pengembangan ilmu dan teknologi di bidang Administrasi Bisnis yang Unggul, Terpercaya dan berkarakter Bela Negara pada tahun 2024"', // Isi visi program studi
      misi: [
        // Ubah menjadi daftar misi
        'Misi Program Studi Administrasi Bisnis Fakultas Ilmu Sosial dan Ilmu Politik UPN "Veteran" Jawa Timur (FISIP-UPNVJT) adalah:'
            '1. Menyelenggarakan pendidikan dan pengajaran di bidang Administrasi Bisnis.yang berkualitas, relevan, dan berorientasi pada kebutuhan masyarakat, bangsa, dan Negara. ',
        '2. Menyelenggarakan kegiatan penelitian di bidang Administrasi Bisnis utamanya pada bidang pemasaran, keuangan, sumber daya manusia, system informasi bisnis, operasi bisnis, kebijakan bisnis serta mengimplementasikannya dalam pendidikan dan pengajaran serta pengabdian pada masyarakat.',
        '3. Mengembangkan dan menguatkan hubungan kerjāsama dengan berbagai pihak baik dengan pemerintah maupun lembaga swasta. Dalam dan luar negeri.',
      ],
      akreditasi: "Terakreditasi B",
      kaprodi: "Dr.Acep Samsudin., S,Sos.,MM.,MA 21119771204337",
      dosen: [
        'Dr.Ir. Rusdi Hidayat N, M.Si 196112241989031007',
        'Dr.Drs. Nurhhadi, M.Si 196902011994031001',
        'R Yuniadi Rusdianto, S.Sos.,M.Si 372069500461',
        'Dra. Ety Dwi Susanti, M.Si 196805011994032001'
      ],
      prodiEmail: 'adbisupnvjt@gmail.com',
      laman: "https://adbis.upnjatim.ac.id/ ",
      gambarPrestasi: [
        'images/prestasi_adbis1.png',
        'images/prestasi_adbis2.png',
        'images/prestasi_adbis3.png',
      ],
      captionPrestasi: [
        'Juara 2 Badmin Ganda Campuran',
        'Juara 2 Badminton Ganda Putra',
        'Juara 2 Mobile Legends',
      ],
    ),
    ProgramStudi(
      nama: "S-1 Ilmu Komunikasi",
      gambar: 'images/s1_ikom.png',
      gambarAkreditasi: 'images/akre_ikom.jpg',
      profil:
          'Program Studi Ilmu Komunikasi di UPN Veteran Jawa Timur adalah program studi yang bertujuan untuk menghasilkan lulusan yang kompeten di bidang komunikasi. Dengan fokus pada teori dan praktik komunikasi, program ini mempersiapkan mahasiswa untuk menjadi profesional yang mampu berkomunikasi secara efektif dalam berbagai konteks dan platform, baik di media tradisional maupun digital. Selain itu, program ini juga memberikan pemahaman yang mendalam tentang dinamika media, budaya, dan teknologi dalam masyarakat modern. Melalui kombinasi kurikulum yang komprehensif, pengajaran interaktif, dan praktikum yang relevan, program ini memungkinkan mahasiswa untuk mengembangkan keterampilan komunikasi yang diperlukan untuk berhasil dalam berbagai profesi di dunia komunikasi, termasuk jurnalis, pemasar, public relations, atau profesional media lainnya.', // Isi profil program studi
      visi:
          '"Menjadi Program Studi terdepan dalam menghasilkan lulusan yang profesional dan berorientasi global di bidang komunikasi dengan dilandasi nilai-nilai spiritual, kedisiplinan, kejuangan dan kreativitas yang tinggi."', // Isi visi program studi
      misi: [
        // Ubah menjadi daftar misi
        '1. Mengembangkan pendidikan ilmu komunikasi dengan kurikulum yang adaptif, pembelajaran yang inovatif, didukung ketersediaan sarana/prasarana yang memadai dan SDM yang andal.',
        '2. Membangun iklim kelembagaan yang kondusif dalam memfasilitasi munculnya temuan-temuan dan penelitian-penelitian mutakhir bidang komunikasi yang memberi manfaat bagi pengembangan masyarakat.',
        '3. Menghasilkan lulusan yang menguasai aspek konseptual dan teknis bidang ilmu komunikasi, mandiri, memiliki integritas, dan mampu bersaing di pasar global.',
        '4. Menanamkan nilai-nilai spiritual, disiplin, kejuangan, kreativitas pada civitas akademika.',
      ],
      akreditasi: "Terakreditasi A dan Terkareditasi Internasional FIBAA",
      kaprodi: "DR. CATUR SURATNOAJI, MSI",
      dosen: [
        'Catur Suratnoaji, Dr, MSi.',
        'Didik Tranggono, Ir, M.Si',
        'Yuli Candrasari, Dr., S.Sos, M.Si',
        'Yudiana Indriastuti, Dr., S.Sos.M.Si',
        'Aulia Rachmawati, Dr., S.Sos.M.Si',
        'Sumardjijati, Dra.,M.Si',
        'Saifuddin Zuhri. Drs, M.Si',
        'Dyva Claretta, Dra, M.Si',
        'Juwito, S.Sos, M.Si'
            'Kusnarto, Drs, M.Si.'
      ],
      prodiEmail: 'ilmu.komunikasi@upnjatim.ac.id',
      laman: "https://ilkom.upnjatim.ac.id/ ",
      gambarPrestasi: [
        'images/prestasi_ilkom1.png',
        'images/prestasi_ilkom2.png',
        'images/prestasi_ilkom3.png',
      ],
      captionPrestasi: [
        'Awardee IISMA 2024 - University of Szeged, Hongaria',
        'Program Featur Terbaik',
        'Juara 3 Tanding Kelas B Silat Dewasa Putri',
      ],
    ),
    ProgramStudi(
      nama: "S-1 Hubungan Internasional",
      gambar: 'images/s1_hi.png',
      gambarAkreditasi: 'images/akre_hi.jpg',
      profil:
          'Among several IR departments in East Java province, the IR UPNVJT place their unique emphasis on their glocal approach. While most IR departments in Indonesia often use macro perspective to analyze the global phenomena, IR UPNVJT aims to see the local contexts in order to see the broader picture. This glocal characteristics that is being implemented as the core curriculum of IR, is in line with the university’s vision to implement state’s character and also coincides with the new national standards of higher education, the “Independent Campus, Freedom to Learn” (Indonesian: "Merdeka Belajar, Kampus Merdeka") curriculum released by the Minister of Education and Culture. This new standard and curriculum require universities across Indonesia to encourage their students to be more actively involved in society and in the world of work during their study to increase their employability.',
      visi:
          '"Implement state’s character and also coincides with the new national standards of higher education, the “Independent Campus, Freedom to Learn” (Indonesian: "Merdeka Belajar, Kampus Merdeka") curriculum released by the Minister of Education and Culture."',
      misi: [
        '1. Deliver graduates whom integrity, personality, social sensitivity, strong character as well as favorable scientific competence and high competitiveness. More than that, have faith and fear of God while upholding the values and spirits of Bela Negara (Nasionalism) who prepared themselves to the interests of society, nation, and state.',
        '2. Disseminate scientific works, both scientific articles and research results within field of IR. Especially, under international security politics and transnational relations; which can be implements during teaching activities as well as community dedication.',
        '3. Improve and strengthen various cooperation with policy-making communities, in order to increase the role and relevance of IR study which able to make real contribution to society, nation, and state, as well as to the world community.',
      ],
      akreditasi: "Accredited as B (Good)",
      kaprodi: "Dra. Herlina Suksmawati, M.si.",
      dosen: [
        'Prihandono Wibowo, S.Hub.Int., M.Hub.Int,',
        'Resa Rasyidah, S.Hub.Int., M.Hub.Int,',
        'Praja Firdaus Nuryananda, S.Hub.Int., M.Hub.Int,',
        'Renitha Dwi Hapsari, S.Hub.Int., M.Hub.Int,'
      ],
      prodiEmail: 'hubint@upnjatim.ac.id',
      laman: "https://hubint.upnjatim.ac.id/ ",
      gambarPrestasi: [
        'images/prestasi_hi1.png',
        'images/prestasi_hi2.png',
        'images/prestasi_hi3.png',
      ],
      captionPrestasi: [
        'Juara 3 Heroes City League 2023 (Piala Walikota)',
        'IISMA 2024 Awardee - University of Zagreb, Kroasia',
        'IISMA 2024 Awardee - University of Warsaw, Polandia',
      ],
    ),
    ProgramStudi(
      nama: "S-1 Pariwisata",
      gambar: 'images/s1_pariwisata.png',
      gambarAkreditasi: 'images/akre_pariwisata.jpg',
      profil:
          'Program Studi Pariwisata UPN “Veteran” Jawa Timur berdiri pada tanggal tanggal 8 April 2020 berdasarkan Keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia Nomor: 433/M/2020. Pendirian program studi ini untuk menjawab tantangan dan perkembangan industri pariwisata di Indonesia dan dunia',
      visi:
          '"MENJADI PROGRAM STUDI PARIWISATA UNGGULAN YANG ADAPTIF DAN INOVATIF MELALUI PENYELENGGARAAN PENDIDIKAN YANG BERKARAKTER BELA NEGARA DAN BERWAWASAN LINGKUNGAN DALAM MEWUJUDKAN PARIWISATA BERKELANJUTAN DAN BERORIENTASI GLOBAL"',
      misi: [
        '1. Menyelenggarakan dan mengembangkan pendidikan bidang pariwisata yang adaptif, inovatif dan berkarakter bela negara;',
        '2. Meningkatkan budaya riset dalam pengembangan ilmu pariwisata yang berdaya guna untuk peningkatan kesejahteraan masyarakat;',
        '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal;',
        '4. Menyelenggarakan tata kelola yang bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran di program studi Pariwisata;',
        '5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial  yang relevan dengan bidang pariwisata;',
        '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di program studi Pariwisata;',
        '7. Meningkatkan kerjasama institusional dengan stakeholders baik dalam dan luar negeri',
      ],
      akreditasi: "Terakreditasi Baik",
      kaprodi: "Dr. Yudiana Indriastuti, S.Sos., M.Si",
      dosen: [
        'Leily Suci Rahmatin, S.Par, M.Par',
        'Sheidy Yudhiasta S.Pd, M.Par',
        'Wahyuni, SST.Par., M.Par',
        'Dr. A. Muammar Alawi, M.Pd.I.',
      ],
      prodiEmail: 'humas@upnjatim.ac.id',
      laman: "https://pariwisata.upnjatim.ac.id/",
      gambarPrestasi: [
        'images/prestasi_pariwisata1.png',
        'images/prestasi_pariwisata2.png',
        'images/prestasi_pariwisata3.png',
      ],
      captionPrestasi: [
        'Juara 3 Lomba Karya Tulis Ilmiah Nasional',
        'Juara 2 Tourism Scientific Writing Competition',
        'Juara 3 Tour Package Competition Marine Tourism Fest 2023',
      ],
    ),
  ];

  List<Penulis> penulisList = [
    Penulis(
        namapenulis: 'Muhammad Rakha Naufal',
        nim: 'Paralel B - 22082010060',
        foto: 'images/rakha_profile.jpg',
        ttl: 'Jakarta, 15 April 2004',
        alamat: 'Jln. Cendani IV No.71 Pondok Bambu',
        noHp: '081227533806',
        email: '22082010060@student.upnjatim.ac.id',
        urlProfilGithub: 'https://github.com/rakhanaufallllll',
        riwayatPendidikan: [
          ' SDIT Nurul Iman Pondok Jambu',
          ' SMPN 51 Jakarta Timur',
          ' SMKN 46 RPL Jakarta Timur',
          ' UPN "Veteran" Jawa Timur',
        ],
        penghargaan: [
          ' 3rd Position UI/ UX Competition at PARTI UMS 2023',
          ' Program Pembinaan Mahasiswa Wirausaha (P2MW) Awardee 2023',
        ]),
    Penulis(
      namapenulis: 'Moh. Wahyu Abrory',
      nim: 'Paralel B - 22082010075',
      foto: 'images/abrory_profile.jpg',
      ttl: 'Lamongan, 8 Mei 2004',
      alamat: 'Jln. Rambutan 3, Pranti, Sedati',
      noHp: '085176761350',
      email: "wahyuabrory@gmail.com",
      urlProfilGithub: "https://github.com/wahyuabrory/",
      riwayatPendidikan: [
        ' SDN Tambak Sumur',
        ' SMPN 2 Waru',
        ' SMAN 1 Waru Sidoarjo',
        ' UPN "Veteran" Jawa Timur',
      ],
      penghargaan: [
        ' 3rd Position UI/ UX Competition at PARTI UMS 2023 ',
        ' Top 5 SQL Competition at HIMASIFO UPNVJT 2023'
      ],
    ),
  ];

  void _launchMailClient(String targetEmail) async {
    String mailUrl = 'mailto:$targetEmail';
    try {
      await launch(mailUrl); // Ubah menjadi 'await launch(mailUrl)'
    } catch (e) {
      // Do nothing
    }
  }

  void _launchWebsite() async {
    const String url = 'https://fisip.upnjatim.ac.id/';
    try {
      await launch(url); // Ubah menjadi 'await launch(url)'
    } catch (e) {
      // Do nothing
    }
  }

  void _navigateToPenulisDetail(BuildContext context, Penulis penulis) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PenulisDetail(penulis: penulis),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Fakultas Ilmu Sosial dan Ilmu Politik UPNVJT',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.yellow.shade400,
                  Colors.yellow.shade700,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: AppBar(
              backgroundColor:
                  Colors.transparent, // Set transparent background for AppBar
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _launchWebsite,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.public,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'fisip.upnjatim.ac.id',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchMailClient('fisip@upnjatim.ac.id');
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'fisip@upnjatim.ac.id',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'images/fisip.png',
                    width: 500,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                child: Text(
                  'Keberadaan Fakultas Ilmu Sosial dan Ilmu Politik diawali dengan berdirinya Fakultas Ilmu Administrasi Negara dan Administrasi Niaga. Satu tahun kemudian Fakultas Ilmu Administrasi membuka satu jurusan baru yaitu jurusan Ilmu Komunikasi pada tahun ajaran 1994/1995. Dalam perkembangan selanjutnya terbit Surat Keputusan Rektor UPN “Veteran” Jawa Timur Nomor : Skep/101/IX/2005 tanggal 6 Mei 2005 tentang Pergantian nama Fakultas Ilmu Administrasi UPN”Veteran” Jawa Timur menjadi Fakultas Ilmu Sosial dan Ilmu Politik.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                child: Text(
                  'Program Studi',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: programStudiList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 4.0,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Material(
                        color: Colors.transparent,
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.yellow.shade400,
                                Colors.yellow.shade700,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProgramStudiDetail(
                                    nama: programStudiList[index].nama,
                                    gambarAkreditasi: programStudiList[index]
                                        .gambarAkreditasi,
                                    akreditasi:
                                        programStudiList[index].akreditasi,
                                    gambar: programStudiList[index].gambar,
                                    profil: programStudiList[index].profil,
                                    visi: programStudiList[index].visi,
                                    misi:
                                        programStudiList[index].misi.join("\n"),
                                    dosen: [
                                      programStudiList[index].dosen.join("\n")
                                    ],
                                    prodiEmail: programStudiList[index]
                                        .prodiEmail, // Pass email
                                    laman: programStudiList[index]
                                        .laman, // Pass laman
                                    kaprodi: programStudiList[index]
                                        .kaprodi, // Pass kaprodi
                                    gambarPrestasi:
                                        programStudiList[index].gambarPrestasi,
                                    captionPrestasi: programStudiList[index]
                                        .captionPrestasi, // Pass prestasi as a list
                                  ),
                                ),
                              );
                            },
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      child: Image.asset(
                                        programStudiList[index].gambar,
                                        width: 60,
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4.0,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              programStudiList[index].nama,
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors
                                                    .black, // Text color on yellow background
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              programStudiList[index]
                                                  .akreditasi,
                                              style:
                                                  const TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: penulisList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 4.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.yellow.shade400,
                                  Colors.yellow.shade700,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: InkWell(
                              onTap: () {
                                _navigateToPenulisDetail(
                                    context, penulisList[index]);
                              },
                              borderRadius: BorderRadius.circular(12.0),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage(penulisList[index].foto),
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            penulisList[index].namapenulis,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors
                                                  .black, // Text color on yellow background
                                            ),
                                          ),
                                          Text(
                                            penulisList[index].nim,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

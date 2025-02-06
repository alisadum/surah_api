class Surah {
  final int number;
  final String name;
  final String arabicName;
  final int numberOfAyahs;
  final String revelationType;
  final String description; 

  Surah({
    required this.number,
    required this.name,
    required this.arabicName,
    required this.numberOfAyahs,
    required this.revelationType,
    required this.description, 
  });

  factory Surah.fromJson(Map<String, dynamic> json) {
    return Surah(
      number: json['nomor'] as int,
      name: json['nama_latin'] as String,
      arabicName: json['nama'] as String,
      numberOfAyahs: json['jumlah_ayat'] as int,
      revelationType: json['tempat_turun'] as String,
      description: json['deskripsi'] as String, 
    );
  }
}

extension Round on double {
  int get fixedRound {
    if (this == roundToDouble()) return toInt();
    return toInt() + 1;
  }
}

class HizbData {
  final int surah;
  int hizbQuarter;
  int get hizb => (hizbQuarter / 4).fixedRound;
  int get juz => (hizbQuarter / 8).fixedRound;

  HizbData({
    required this.surah,
    required this.hizbQuarter,
  });
}

const douaaKhatmQuran = '''
اللَّهُمَّ ارْحَمْنِي بالقُرْءَانِ وَاجْعَلهُ لِي إِمَاماً وَنُوراً وَهُدًى وَرَحْمَةً *

اللَّهُمَّ ذَكِّرْنِي مِنْهُ مَانَسِيتُ وَعَلِّمْنِي مِنْهُ مَاجَهِلْتُ وَارْزُقْنِي تِلاَوَتَهُ آنَاءَ اللَّيْلِ وَأَطْرَافَ النَّهَارِ وَاجْعَلْهُ لِي حُجَّةً يَارَبَّ العَالَمِينَ *

اللَّهُمَّ أَصْلِحْ لِي دِينِي الَّذِي هُوَ عِصْمَةُ أَمْرِي، وَأَصْلِحْ لِي دُنْيَايَ الَّتِي فِيهَا مَعَاشِي، وَأَصْلِحْ لِي آخِرَتِي الَّتِي فِيهَا مَعَادِي، وَاجْعَلِ الحَيَاةَ زِيَادَةً لِي فِي كُلِّ خَيْرٍ وَاجْعَلِ المَوْتَ رَاحَةً لِي مِنْ كُلِّ شَرٍّ *

اللَّهُمَّ اجْعَلْ خَيْرَ عُمْرِي آخِرَهُ وَخَيْرَ عَمَلِي خَوَاتِمَهُ وَخَيْرَ أَيَّامِي يَوْمَ أَلْقَاكَ فِيهِ * اللَّهُمَّ  إِنِّي أَسْأَلُكَ عِيشَةً هَنِيَّةً وَمِيتَةً سَوِيَّةً وَمَرَدًّا غَيْرَ مُخْزٍ وَلاَ فَاضِحٍ * اللَّهُمَّ  إِنِّي أَسْأَلُكَ خَيْرَ المَسْأَلةِ وَخَيْرَ الدُّعَاءِ وَخَيْرَ النَّجَاحِ وَخَيْرَ العِلْمِ وَخَيْرَ العَمَلِ وَخَيْرَ الثَّوَابِ وَخَيْرَ الحَيَاةِ وَخيْرَ المَمَاتِ وَثَبِّتْنِي وَثَقِّلْ مَوَازِينِي وَحَقِّقْ إِيمَانِي وَارْفَعْ دَرَجَتِي وَتَقَبَّلْ صَلاَتِي وَاغْفِرْ خَطِيئَاتِي وَأَسْأَلُكَ العُلَا مِنَ الجَنَّةِ *

اللَّهُمَّ إِنِّي أَسْأَلُكَ مُوجِبَاتِ رَحْمَتِكَ وَعَزَائِمِ مَغْفِرَتِكَ وَالسَّلاَمَةَ مِنْ كُلِّ إِثْمٍ وَالغَنِيمَةَ مِنْ كُلِّ بِرٍّ وَالفَوْزَ بِالجَنَّةِ وَالنَّجَاةَ مِنَ النَّارِ *

اللَّهُمَّ أَحْسِنْ عَاقِبَتَنَا فِي الأُمُورِ كُلِّهَا، وَأجِرْنَا مِنْ خِزْيِ الدُّنْيَا وَعَذَابِ الآخِرَةِ *

اللَّهُمَّ اقْسِمْ لَنَا مِنْ خَشْيَتِكَ مَاتَحُولُ بِهِ بَيْنَنَا وَبَيْنَ مَعْصِيَتِكَ وَمِنْ طَاعَتِكَ مَاتُبَلِّغُنَا بِهَا جَنَّتَكَ وَمِنَ اليَقِينِ مَاتُهَوِّنُ بِهِ عَلَيْنَا مَصَائِبَ الدُّنْيَا وَمَتِّعْنَا بِأَسْمَاعِنَا وَأَبْصَارِنَا وَقُوَّتِنَا مَاأَحْيَيْتَنَا وَاجْعَلْهُ الوَارِثَ مِنَّا وَاجْعَلْ ثَأْرَنَا عَلَى مَنْ ظَلَمَنَا وَانْصُرْنَا عَلَى مَنْ عَادَانَا وَلاَ تجْعَلْ مُصِيبَتَنَا فِي دِينِنَا وَلاَ تَجْعَلِ الدُّنْيَا أَكْبَرَ هَمِّنَا وَلَا مَبْلَغَ عِلْمِنَا وَلاَ تُسَلِّطْ عَلَيْنَا مَنْ لَا يَرْحَمُنَا *

اللَّهُمَّ لَا تَدَعْ لَنَا ذَنْبًا إِلَّا غَفَرْتَهُ وَلَا هَمَّا إِلَّا فَرَّجْتَهُ وَلَا دَيْنًا إِلَّا قَضَيْتَهُ وَلَا حَاجَةً مِنْ حَوَائِجِ الدُّنْيَا وَالآخِرَةِ إِلَّا قَضَيْتَهَا يَاأَرْحَمَ الرَّاحِمِينَ *

رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ وَصَلَّى اللهُ عَلَى سَيِّدِنَا وَنَبِيِّنَا مُحَمَّدٍ وَعَلَى آلِهِ وَأَصْحَابِهِ الأَخْيَارِ وَسَلَّمَ تَسْلِيمًا كَثِيراً.
''';
List<HizbData> quranPages = [
  HizbData(surah: 1, hizbQuarter: 1),
  HizbData(surah: 2, hizbQuarter: 1),
  HizbData(surah: 2, hizbQuarter: 1),
  HizbData(surah: 2, hizbQuarter: 1),
  HizbData(surah: 2, hizbQuarter: 2),
  HizbData(surah: 2, hizbQuarter: 2),
  HizbData(surah: 2, hizbQuarter: 3),
  HizbData(surah: 2, hizbQuarter: 3),
  HizbData(surah: 2, hizbQuarter: 4),
  HizbData(surah: 2, hizbQuarter: 4),
  HizbData(surah: 2, hizbQuarter: 5),
  HizbData(surah: 2, hizbQuarter: 5),
  HizbData(surah: 2, hizbQuarter: 5),
  HizbData(surah: 2, hizbQuarter: 6),
  HizbData(surah: 2, hizbQuarter: 6),
  HizbData(surah: 2, hizbQuarter: 6),
  HizbData(surah: 2, hizbQuarter: 7),
  HizbData(surah: 2, hizbQuarter: 7),
  HizbData(surah: 2, hizbQuarter: 8),
  HizbData(surah: 2, hizbQuarter: 8),
  HizbData(surah: 2, hizbQuarter: 8),
  HizbData(surah: 2, hizbQuarter: 9),
  HizbData(surah: 2, hizbQuarter: 9),
  HizbData(surah: 2, hizbQuarter: 10),
  HizbData(surah: 2, hizbQuarter: 10),
  HizbData(surah: 2, hizbQuarter: 10),
  HizbData(surah: 2, hizbQuarter: 11),
  HizbData(surah: 2, hizbQuarter: 11),
  HizbData(surah: 2, hizbQuarter: 12),
  HizbData(surah: 2, hizbQuarter: 12),
  HizbData(surah: 2, hizbQuarter: 12),
  HizbData(surah: 2, hizbQuarter: 13),
  HizbData(surah: 2, hizbQuarter: 13),
  HizbData(surah: 2, hizbQuarter: 14),
  HizbData(surah: 2, hizbQuarter: 14),
  HizbData(surah: 2, hizbQuarter: 14),
  HizbData(surah: 2, hizbQuarter: 15),
  HizbData(surah: 2, hizbQuarter: 15),
  HizbData(surah: 2, hizbQuarter: 16),
  HizbData(surah: 2, hizbQuarter: 16),
  HizbData(surah: 2, hizbQuarter: 16),
  HizbData(surah: 2, hizbQuarter: 17),
  HizbData(surah: 2, hizbQuarter: 17),
  HizbData(surah: 2, hizbQuarter: 18),
  HizbData(surah: 2, hizbQuarter: 18),
  HizbData(surah: 2, hizbQuarter: 19),
  HizbData(surah: 2, hizbQuarter: 19),
  HizbData(surah: 2, hizbQuarter: 19),
  HizbData(surah: 2, hizbQuarter: 20),
  HizbData(surah: 3, hizbQuarter: 20),
  HizbData(surah: 3, hizbQuarter: 21),
  HizbData(surah: 3, hizbQuarter: 21),
  HizbData(surah: 3, hizbQuarter: 21),
  HizbData(surah: 3, hizbQuarter: 22),
  HizbData(surah: 3, hizbQuarter: 22),
  HizbData(surah: 3, hizbQuarter: 23),
  HizbData(surah: 3, hizbQuarter: 23),
  HizbData(surah: 3, hizbQuarter: 23),
  HizbData(surah: 3, hizbQuarter: 24),
  HizbData(surah: 3, hizbQuarter: 24),
  HizbData(surah: 3, hizbQuarter: 24),
  HizbData(surah: 3, hizbQuarter: 25),
  HizbData(surah: 3, hizbQuarter: 25),
  HizbData(surah: 3, hizbQuarter: 26),
  HizbData(surah: 3, hizbQuarter: 26),
  HizbData(surah: 3, hizbQuarter: 26),
  HizbData(surah: 3, hizbQuarter: 27),
  HizbData(surah: 3, hizbQuarter: 27),
  HizbData(surah: 3, hizbQuarter: 28),
  HizbData(surah: 3, hizbQuarter: 28),
  HizbData(surah: 3, hizbQuarter: 28),
  HizbData(surah: 3, hizbQuarter: 29),
  HizbData(surah: 3, hizbQuarter: 29),
  HizbData(surah: 3, hizbQuarter: 30),
  HizbData(surah: 3, hizbQuarter: 30),
  HizbData(surah: 3, hizbQuarter: 30),
  HizbData(surah: 4, hizbQuarter: 31),
  HizbData(surah: 4, hizbQuarter: 31),
  HizbData(surah: 4, hizbQuarter: 32),
  HizbData(surah: 4, hizbQuarter: 32),
  HizbData(surah: 4, hizbQuarter: 32),
  HizbData(surah: 4, hizbQuarter: 33),
  HizbData(surah: 4, hizbQuarter: 33),
  HizbData(surah: 4, hizbQuarter: 34),
  HizbData(surah: 4, hizbQuarter: 34),
  HizbData(surah: 4, hizbQuarter: 34),
  HizbData(surah: 4, hizbQuarter: 35),
  HizbData(surah: 4, hizbQuarter: 35),
  HizbData(surah: 4, hizbQuarter: 36),
  HizbData(surah: 4, hizbQuarter: 36),
  HizbData(surah: 4, hizbQuarter: 36),
  HizbData(surah: 4, hizbQuarter: 37),
  HizbData(surah: 4, hizbQuarter: 37),
  HizbData(surah: 4, hizbQuarter: 38),
  HizbData(surah: 4, hizbQuarter: 38),
  HizbData(surah: 4, hizbQuarter: 38),
  HizbData(surah: 4, hizbQuarter: 39),
  HizbData(surah: 4, hizbQuarter: 39),
  HizbData(surah: 4, hizbQuarter: 39),
  HizbData(surah: 4, hizbQuarter: 40),
  HizbData(surah: 4, hizbQuarter: 40),
  HizbData(surah: 4, hizbQuarter: 41),
  HizbData(surah: 4, hizbQuarter: 41),
  HizbData(surah: 4, hizbQuarter: 42),
  HizbData(surah: 4, hizbQuarter: 42),
  HizbData(surah: 4, hizbQuarter: 43),
  HizbData(surah: 5, hizbQuarter: 43),
  HizbData(surah: 5, hizbQuarter: 43),
  HizbData(surah: 5, hizbQuarter: 44),
  HizbData(surah: 5, hizbQuarter: 44),
  HizbData(surah: 5, hizbQuarter: 44),
  HizbData(surah: 5, hizbQuarter: 45),
  HizbData(surah: 5, hizbQuarter: 45),
  HizbData(surah: 5, hizbQuarter: 46),
  HizbData(surah: 5, hizbQuarter: 46),
  HizbData(surah: 5, hizbQuarter: 46),
  HizbData(surah: 5, hizbQuarter: 47),
  HizbData(surah: 5, hizbQuarter: 47),
  HizbData(surah: 5, hizbQuarter: 48),
  HizbData(surah: 5, hizbQuarter: 48),
  HizbData(surah: 5, hizbQuarter: 49),
  HizbData(surah: 5, hizbQuarter: 49),
  HizbData(surah: 5, hizbQuarter: 49),
  HizbData(surah: 5, hizbQuarter: 50),
  HizbData(surah: 5, hizbQuarter: 50),
  HizbData(surah: 5, hizbQuarter: 51),
  HizbData(surah: 5, hizbQuarter: 51),
  HizbData(surah: 6, hizbQuarter: 51),
  HizbData(surah: 6, hizbQuarter: 52),
  HizbData(surah: 6, hizbQuarter: 52),
  HizbData(surah: 6, hizbQuarter: 52),
  HizbData(surah: 6, hizbQuarter: 53),
  HizbData(surah: 6, hizbQuarter: 53),
  HizbData(surah: 6, hizbQuarter: 54),
  HizbData(surah: 6, hizbQuarter: 54),
  HizbData(surah: 6, hizbQuarter: 54),
  HizbData(surah: 6, hizbQuarter: 55),
  HizbData(surah: 6, hizbQuarter: 55),
  HizbData(surah: 6, hizbQuarter: 55),
  HizbData(surah: 6, hizbQuarter: 56),
  HizbData(surah: 6, hizbQuarter: 56),
  HizbData(surah: 6, hizbQuarter: 57),
  HizbData(surah: 6, hizbQuarter: 57),
  HizbData(surah: 6, hizbQuarter: 58),
  HizbData(surah: 6, hizbQuarter: 58),
  HizbData(surah: 6, hizbQuarter: 59),
  HizbData(surah: 6, hizbQuarter: 59),
  HizbData(surah: 6, hizbQuarter: 60),
  HizbData(surah: 6, hizbQuarter: 60),
  HizbData(surah: 6, hizbQuarter: 60),
  HizbData(surah: 7, hizbQuarter: 61),
  HizbData(surah: 7, hizbQuarter: 61),
  HizbData(surah: 7, hizbQuarter: 61),
  HizbData(surah: 7, hizbQuarter: 62),
  HizbData(surah: 7, hizbQuarter: 62),
  HizbData(surah: 7, hizbQuarter: 63),
  HizbData(surah: 7, hizbQuarter: 63),
  HizbData(surah: 7, hizbQuarter: 64),
  HizbData(surah: 7, hizbQuarter: 64),
  HizbData(surah: 7, hizbQuarter: 64),
  HizbData(surah: 7, hizbQuarter: 64),
  HizbData(surah: 7, hizbQuarter: 65),
  HizbData(surah: 7, hizbQuarter: 65),
  HizbData(surah: 7, hizbQuarter: 66),
  HizbData(surah: 7, hizbQuarter: 66),
  HizbData(surah: 7, hizbQuarter: 66),
  HizbData(surah: 7, hizbQuarter: 67),
  HizbData(surah: 7, hizbQuarter: 67),
  HizbData(surah: 7, hizbQuarter: 67),
  HizbData(surah: 7, hizbQuarter: 68),
  HizbData(surah: 7, hizbQuarter: 68),
  HizbData(surah: 7, hizbQuarter: 68),
  HizbData(surah: 7, hizbQuarter: 69),
  HizbData(surah: 7, hizbQuarter: 69),
  HizbData(surah: 7, hizbQuarter: 70),
  HizbData(surah: 7, hizbQuarter: 70),
  HizbData(surah: 8, hizbQuarter: 71),
  HizbData(surah: 8, hizbQuarter: 71),
  HizbData(surah: 8, hizbQuarter: 72),
  HizbData(surah: 8, hizbQuarter: 72),
  HizbData(surah: 8, hizbQuarter: 72),
  HizbData(surah: 8, hizbQuarter: 73),
  HizbData(surah: 8, hizbQuarter: 73),
  HizbData(surah: 8, hizbQuarter: 74),
  HizbData(surah: 8, hizbQuarter: 74),
  HizbData(surah: 8, hizbQuarter: 74),
  HizbData(surah: 9, hizbQuarter: 75),
  HizbData(surah: 9, hizbQuarter: 75),
  HizbData(surah: 9, hizbQuarter: 76),
  HizbData(surah: 9, hizbQuarter: 76),
  HizbData(surah: 9, hizbQuarter: 76),
  HizbData(surah: 9, hizbQuarter: 77),
  HizbData(surah: 9, hizbQuarter: 77),
  HizbData(surah: 9, hizbQuarter: 78),
  HizbData(surah: 9, hizbQuarter: 78),
  HizbData(surah: 9, hizbQuarter: 79),
  HizbData(surah: 9, hizbQuarter: 79),
  HizbData(surah: 9, hizbQuarter: 79),
  HizbData(surah: 9, hizbQuarter: 80),
  HizbData(surah: 9, hizbQuarter: 80),
  HizbData(surah: 9, hizbQuarter: 81),
  HizbData(surah: 9, hizbQuarter: 81),
  HizbData(surah: 9, hizbQuarter: 81),
  HizbData(surah: 9, hizbQuarter: 82),
  HizbData(surah: 9, hizbQuarter: 82),
  HizbData(surah: 9, hizbQuarter: 83),
  HizbData(surah: 9, hizbQuarter: 83),
  HizbData(surah: 10, hizbQuarter: 83),
  HizbData(surah: 10, hizbQuarter: 84),
  HizbData(surah: 10, hizbQuarter: 84),
  HizbData(surah: 10, hizbQuarter: 84),
  HizbData(surah: 10, hizbQuarter: 85),
  HizbData(surah: 10, hizbQuarter: 85),
  HizbData(surah: 10, hizbQuarter: 86),
  HizbData(surah: 10, hizbQuarter: 86),
  HizbData(surah: 10, hizbQuarter: 86),
  HizbData(surah: 10, hizbQuarter: 87),
  HizbData(surah: 10, hizbQuarter: 87),
  HizbData(surah: 10, hizbQuarter: 88),
  HizbData(surah: 10, hizbQuarter: 88),
  HizbData(surah: 10, hizbQuarter: 88),
  HizbData(surah: 11, hizbQuarter: 89),
  HizbData(surah: 11, hizbQuarter: 89),
  HizbData(surah: 11, hizbQuarter: 90),
  HizbData(surah: 11, hizbQuarter: 90),
  HizbData(surah: 11, hizbQuarter: 91),
  HizbData(surah: 11, hizbQuarter: 91),
  HizbData(surah: 11, hizbQuarter: 92),
  HizbData(surah: 11, hizbQuarter: 92),
  HizbData(surah: 11, hizbQuarter: 92),
  HizbData(surah: 11, hizbQuarter: 93),
  HizbData(surah: 11, hizbQuarter: 93),
  HizbData(surah: 11, hizbQuarter: 94),
  HizbData(surah: 11, hizbQuarter: 94),
  HizbData(surah: 11, hizbQuarter: 94),
  HizbData(surah: 12, hizbQuarter: 95),
  HizbData(surah: 12, hizbQuarter: 95),
  HizbData(surah: 12, hizbQuarter: 96),
  HizbData(surah: 12, hizbQuarter: 96),
  HizbData(surah: 12, hizbQuarter: 96),
  HizbData(surah: 12, hizbQuarter: 96),
  HizbData(surah: 12, hizbQuarter: 97),
  HizbData(surah: 12, hizbQuarter: 97),
  HizbData(surah: 12, hizbQuarter: 98),
  HizbData(surah: 12, hizbQuarter: 98),
  HizbData(surah: 12, hizbQuarter: 98),
  HizbData(surah: 12, hizbQuarter: 99),
  HizbData(surah: 12, hizbQuarter: 99),
  HizbData(surah: 13, hizbQuarter: 100),
  HizbData(surah: 13, hizbQuarter: 100),
  HizbData(surah: 13, hizbQuarter: 100),
  HizbData(surah: 13, hizbQuarter: 101),
  HizbData(surah: 13, hizbQuarter: 101),
  HizbData(surah: 13, hizbQuarter: 102),
  HizbData(surah: 13, hizbQuarter: 102),
  HizbData(surah: 14, hizbQuarter: 103),
  HizbData(surah: 14, hizbQuarter: 103),
  HizbData(surah: 14, hizbQuarter: 103),
  HizbData(surah: 14, hizbQuarter: 104),
  HizbData(surah: 14, hizbQuarter: 104),
  HizbData(surah: 14, hizbQuarter: 104),
  HizbData(surah: 15, hizbQuarter: 105),
  HizbData(surah: 15, hizbQuarter: 105),
  HizbData(surah: 15, hizbQuarter: 106),
  HizbData(surah: 15, hizbQuarter: 106),
  HizbData(surah: 15, hizbQuarter: 106),
  HizbData(surah: 15, hizbQuarter: 107),
  HizbData(surah: 16, hizbQuarter: 107),
  HizbData(surah: 16, hizbQuarter: 107),
  HizbData(surah: 16, hizbQuarter: 108),
  HizbData(surah: 16, hizbQuarter: 108),
  HizbData(surah: 16, hizbQuarter: 109),
  HizbData(surah: 16, hizbQuarter: 109),
  HizbData(surah: 16, hizbQuarter: 109),
  HizbData(surah: 16, hizbQuarter: 110),
  HizbData(surah: 16, hizbQuarter: 110),
  HizbData(surah: 16, hizbQuarter: 111),
  HizbData(surah: 16, hizbQuarter: 111),
  HizbData(surah: 16, hizbQuarter: 111),
  HizbData(surah: 16, hizbQuarter: 112),
  HizbData(surah: 16, hizbQuarter: 112),
  HizbData(surah: 17, hizbQuarter: 113),
  HizbData(surah: 17, hizbQuarter: 113),
  HizbData(surah: 17, hizbQuarter: 114),
  HizbData(surah: 17, hizbQuarter: 114),
  HizbData(surah: 17, hizbQuarter: 114),
  HizbData(surah: 17, hizbQuarter: 115),
  HizbData(surah: 17, hizbQuarter: 115),
  HizbData(surah: 17, hizbQuarter: 116),
  HizbData(surah: 17, hizbQuarter: 116),
  HizbData(surah: 17, hizbQuarter: 116),
  HizbData(surah: 17, hizbQuarter: 117),
  HizbData(surah: 17, hizbQuarter: 117),
  HizbData(surah: 18, hizbQuarter: 117),
  HizbData(surah: 18, hizbQuarter: 118),
  HizbData(surah: 18, hizbQuarter: 118),
  HizbData(surah: 18, hizbQuarter: 119),
  HizbData(surah: 18, hizbQuarter: 119),
  HizbData(surah: 18, hizbQuarter: 120),
  HizbData(surah: 18, hizbQuarter: 120),
  HizbData(surah: 18, hizbQuarter: 120),
  HizbData(surah: 18, hizbQuarter: 121),
  HizbData(surah: 18, hizbQuarter: 121),
  HizbData(surah: 18, hizbQuarter: 122),
  HizbData(surah: 19, hizbQuarter: 122),
  HizbData(surah: 19, hizbQuarter: 123),
  HizbData(surah: 19, hizbQuarter: 123),
  HizbData(surah: 19, hizbQuarter: 123),
  HizbData(surah: 19, hizbQuarter: 124),
  HizbData(surah: 19, hizbQuarter: 124),
  HizbData(surah: 19, hizbQuarter: 124),
  HizbData(surah: 19, hizbQuarter: 125),
  HizbData(surah: 20, hizbQuarter: 125),
  HizbData(surah: 20, hizbQuarter: 125),
  HizbData(surah: 20, hizbQuarter: 126),
  HizbData(surah: 20, hizbQuarter: 126),
  HizbData(surah: 20, hizbQuarter: 127),
  HizbData(surah: 20, hizbQuarter: 127),
  HizbData(surah: 20, hizbQuarter: 128),
  HizbData(surah: 20, hizbQuarter: 128),
  HizbData(surah: 20, hizbQuarter: 128),
  HizbData(surah: 21, hizbQuarter: 129),
  HizbData(surah: 21, hizbQuarter: 129),
  HizbData(surah: 21, hizbQuarter: 130),
  HizbData(surah: 21, hizbQuarter: 130),
  HizbData(surah: 21, hizbQuarter: 131),
  HizbData(surah: 21, hizbQuarter: 131),
  HizbData(surah: 21, hizbQuarter: 131),
  HizbData(surah: 21, hizbQuarter: 132),
  HizbData(surah: 21, hizbQuarter: 132),
  HizbData(surah: 21, hizbQuarter: 132),
  HizbData(surah: 22, hizbQuarter: 133),
  HizbData(surah: 22, hizbQuarter: 133),
  HizbData(surah: 22, hizbQuarter: 134),
  HizbData(surah: 22, hizbQuarter: 134),
  HizbData(surah: 22, hizbQuarter: 135),
  HizbData(surah: 22, hizbQuarter: 135),
  HizbData(surah: 22, hizbQuarter: 135),
  HizbData(surah: 22, hizbQuarter: 136),
  HizbData(surah: 22, hizbQuarter: 136),
  HizbData(surah: 22, hizbQuarter: 136),
  HizbData(surah: 23, hizbQuarter: 137),
  HizbData(surah: 23, hizbQuarter: 137),
  HizbData(surah: 23, hizbQuarter: 138),
  HizbData(surah: 23, hizbQuarter: 138),
  HizbData(surah: 23, hizbQuarter: 138),
  HizbData(surah: 23, hizbQuarter: 139),
  HizbData(surah: 23, hizbQuarter: 139),
  HizbData(surah: 23, hizbQuarter: 139),
  HizbData(surah: 24, hizbQuarter: 140),
  HizbData(surah: 24, hizbQuarter: 140),
  HizbData(surah: 24, hizbQuarter: 141),
  HizbData(surah: 24, hizbQuarter: 141),
  HizbData(surah: 24, hizbQuarter: 142),
  HizbData(surah: 24, hizbQuarter: 142),
  HizbData(surah: 24, hizbQuarter: 143),
  HizbData(surah: 24, hizbQuarter: 143),
  HizbData(surah: 24, hizbQuarter: 143),
  HizbData(surah: 24, hizbQuarter: 144),
  HizbData(surah: 25, hizbQuarter: 144),
  HizbData(surah: 25, hizbQuarter: 144),
  HizbData(surah: 25, hizbQuarter: 145),
  HizbData(surah: 25, hizbQuarter: 145),
  HizbData(surah: 25, hizbQuarter: 146),
  HizbData(surah: 25, hizbQuarter: 146),
  HizbData(surah: 25, hizbQuarter: 146),
  HizbData(surah: 26, hizbQuarter: 147),
  HizbData(surah: 26, hizbQuarter: 147),
  HizbData(surah: 26, hizbQuarter: 148),
  HizbData(surah: 26, hizbQuarter: 148),
  HizbData(surah: 26, hizbQuarter: 149),
  HizbData(surah: 26, hizbQuarter: 149),
  HizbData(surah: 26, hizbQuarter: 149),
  HizbData(surah: 26, hizbQuarter: 150),
  HizbData(surah: 26, hizbQuarter: 150),
  HizbData(surah: 26, hizbQuarter: 150),
  HizbData(surah: 27, hizbQuarter: 151),
  HizbData(surah: 27, hizbQuarter: 151),
  HizbData(surah: 27, hizbQuarter: 152),
  HizbData(surah: 27, hizbQuarter: 152),
  HizbData(surah: 27, hizbQuarter: 152),
  HizbData(surah: 27, hizbQuarter: 153),
  HizbData(surah: 27, hizbQuarter: 153),
  HizbData(surah: 27, hizbQuarter: 154),
  HizbData(surah: 27, hizbQuarter: 154),
  HizbData(surah: 28, hizbQuarter: 155),
  HizbData(surah: 28, hizbQuarter: 155),
  HizbData(surah: 28, hizbQuarter: 155),
  HizbData(surah: 28, hizbQuarter: 156),
  HizbData(surah: 28, hizbQuarter: 156),
  HizbData(surah: 28, hizbQuarter: 156),
  HizbData(surah: 28, hizbQuarter: 157),
  HizbData(surah: 28, hizbQuarter: 157),
  HizbData(surah: 28, hizbQuarter: 158),
  HizbData(surah: 28, hizbQuarter: 158),
  HizbData(surah: 28, hizbQuarter: 159),
  HizbData(surah: 29, hizbQuarter: 159),
  HizbData(surah: 29, hizbQuarter: 159),
  HizbData(surah: 29, hizbQuarter: 160),
  HizbData(surah: 29, hizbQuarter: 160),
  HizbData(surah: 29, hizbQuarter: 160),
  HizbData(surah: 29, hizbQuarter: 161),
  HizbData(surah: 29, hizbQuarter: 161),
  HizbData(surah: 29, hizbQuarter: 162),
  HizbData(surah: 30, hizbQuarter: 162),
  HizbData(surah: 30, hizbQuarter: 162),
  HizbData(surah: 30, hizbQuarter: 163),
  HizbData(surah: 30, hizbQuarter: 163),
  HizbData(surah: 30, hizbQuarter: 163),
  HizbData(surah: 30, hizbQuarter: 164),
  HizbData(surah: 31, hizbQuarter: 164),
  HizbData(surah: 31, hizbQuarter: 164),
  HizbData(surah: 31, hizbQuarter: 165),
  HizbData(surah: 31, hizbQuarter: 165),
  HizbData(surah: 32, hizbQuarter: 166),
  HizbData(surah: 32, hizbQuarter: 166),
  HizbData(surah: 32, hizbQuarter: 166),
  HizbData(surah: 33, hizbQuarter: 167),
  HizbData(surah: 33, hizbQuarter: 167),
  HizbData(surah: 33, hizbQuarter: 168),
  HizbData(surah: 33, hizbQuarter: 168),
  HizbData(surah: 33, hizbQuarter: 169),
  HizbData(surah: 33, hizbQuarter: 169),
  HizbData(surah: 33, hizbQuarter: 169),
  HizbData(surah: 33, hizbQuarter: 170),
  HizbData(surah: 33, hizbQuarter: 171),
  HizbData(surah: 33, hizbQuarter: 171),
  HizbData(surah: 34, hizbQuarter: 171),
  HizbData(surah: 34, hizbQuarter: 172),
  HizbData(surah: 34, hizbQuarter: 172),
  HizbData(surah: 34, hizbQuarter: 173),
  HizbData(surah: 34, hizbQuarter: 173),
  HizbData(surah: 34, hizbQuarter: 174),
  HizbData(surah: 34, hizbQuarter: 174),
  HizbData(surah: 35, hizbQuarter: 174),
  HizbData(surah: 35, hizbQuarter: 175),
  HizbData(surah: 35, hizbQuarter: 175),
  HizbData(surah: 35, hizbQuarter: 175),
  HizbData(surah: 35, hizbQuarter: 176),
  HizbData(surah: 35, hizbQuarter: 176),
  HizbData(surah: 36, hizbQuarter: 176),
  HizbData(surah: 36, hizbQuarter: 177),
  HizbData(surah: 36, hizbQuarter: 177),
  HizbData(surah: 36, hizbQuarter: 178),
  HizbData(surah: 36, hizbQuarter: 178),
  HizbData(surah: 37, hizbQuarter: 179),
  HizbData(surah: 37, hizbQuarter: 179),
  HizbData(surah: 37, hizbQuarter: 179),
  HizbData(surah: 37, hizbQuarter: 180),
  HizbData(surah: 37, hizbQuarter: 180),
  HizbData(surah: 37, hizbQuarter: 181),
  HizbData(surah: 37, hizbQuarter: 181),
  HizbData(surah: 38, hizbQuarter: 181),
  HizbData(surah: 38, hizbQuarter: 182),
  HizbData(surah: 38, hizbQuarter: 182),
  HizbData(surah: 38, hizbQuarter: 183),
  HizbData(surah: 38, hizbQuarter: 183),
  HizbData(surah: 38, hizbQuarter: 183),
  HizbData(surah: 39, hizbQuarter: 184),
  HizbData(surah: 39, hizbQuarter: 184),
  HizbData(surah: 39, hizbQuarter: 184),
  HizbData(surah: 39, hizbQuarter: 185),
  HizbData(surah: 39, hizbQuarter: 185),
  HizbData(surah: 39, hizbQuarter: 186),
  HizbData(surah: 39, hizbQuarter: 186),
  HizbData(surah: 39, hizbQuarter: 186),
  HizbData(surah: 39, hizbQuarter: 187),
  HizbData(surah: 40, hizbQuarter: 187),
  HizbData(surah: 40, hizbQuarter: 188),
  HizbData(surah: 40, hizbQuarter: 188),
  HizbData(surah: 40, hizbQuarter: 188),
  HizbData(surah: 40, hizbQuarter: 189),
  HizbData(surah: 40, hizbQuarter: 189),
  HizbData(surah: 40, hizbQuarter: 190),
  HizbData(surah: 40, hizbQuarter: 190),
  HizbData(surah: 40, hizbQuarter: 190),
  HizbData(surah: 41, hizbQuarter: 191),
  HizbData(surah: 41, hizbQuarter: 191),
  HizbData(surah: 41, hizbQuarter: 192),
  HizbData(surah: 41, hizbQuarter: 192),
  HizbData(surah: 41, hizbQuarter: 192),
  HizbData(surah: 41, hizbQuarter: 193),
  HizbData(surah: 42, hizbQuarter: 193),
  HizbData(surah: 42, hizbQuarter: 194),
  HizbData(surah: 42, hizbQuarter: 194),
  HizbData(surah: 42, hizbQuarter: 195),
  HizbData(surah: 42, hizbQuarter: 195),
  HizbData(surah: 42, hizbQuarter: 196),
  HizbData(surah: 42, hizbQuarter: 196),
  HizbData(surah: 43, hizbQuarter: 196),
  HizbData(surah: 43, hizbQuarter: 197),
  HizbData(surah: 43, hizbQuarter: 197),
  HizbData(surah: 43, hizbQuarter: 198),
  HizbData(surah: 43, hizbQuarter: 198),
  HizbData(surah: 43, hizbQuarter: 198),
  HizbData(surah: 44, hizbQuarter: 199),
  HizbData(surah: 44, hizbQuarter: 199),
  HizbData(surah: 44, hizbQuarter: 199),
  HizbData(surah: 45, hizbQuarter: 200),
  HizbData(surah: 45, hizbQuarter: 200),
  HizbData(surah: 45, hizbQuarter: 200),
  HizbData(surah: 45, hizbQuarter: 201),
  HizbData(surah: 46, hizbQuarter: 201),
  HizbData(surah: 46, hizbQuarter: 201),
  HizbData(surah: 46, hizbQuarter: 202),
  HizbData(surah: 46, hizbQuarter: 202),
  HizbData(surah: 47, hizbQuarter: 203),
  HizbData(surah: 47, hizbQuarter: 203),
  HizbData(surah: 47, hizbQuarter: 203),
  HizbData(surah: 47, hizbQuarter: 204),
  HizbData(surah: 48, hizbQuarter: 204),
  HizbData(surah: 48, hizbQuarter: 204),
  HizbData(surah: 48, hizbQuarter: 205),
  HizbData(surah: 48, hizbQuarter: 205),
  HizbData(surah: 48, hizbQuarter: 206),
  HizbData(surah: 49, hizbQuarter: 206),
  HizbData(surah: 49, hizbQuarter: 207),
  HizbData(surah: 50, hizbQuarter: 207),
  HizbData(surah: 50, hizbQuarter: 208),
  HizbData(surah: 50, hizbQuarter: 208),
  HizbData(surah: 51, hizbQuarter: 208),
  HizbData(surah: 51, hizbQuarter: 209),
  HizbData(surah: 51, hizbQuarter: 209),
  HizbData(surah: 52, hizbQuarter: 210),
  HizbData(surah: 52, hizbQuarter: 210),
  HizbData(surah: 53, hizbQuarter: 211),
  HizbData(surah: 53, hizbQuarter: 211),
  HizbData(surah: 53, hizbQuarter: 211),
  HizbData(surah: 54, hizbQuarter: 212),
  HizbData(surah: 54, hizbQuarter: 212),
  HizbData(surah: 54, hizbQuarter: 213),
  HizbData(surah: 55, hizbQuarter: 213),
  HizbData(surah: 55, hizbQuarter: 213),
  HizbData(surah: 55, hizbQuarter: 214),
  HizbData(surah: 56, hizbQuarter: 214),
  HizbData(surah: 56, hizbQuarter: 215),
  HizbData(surah: 56, hizbQuarter: 215),
  HizbData(surah: 57, hizbQuarter: 215),
  HizbData(surah: 57, hizbQuarter: 216),
  HizbData(surah: 57, hizbQuarter: 216),
  HizbData(surah: 57, hizbQuarter: 216),
  HizbData(surah: 58, hizbQuarter: 217),
  HizbData(surah: 58, hizbQuarter: 217),
  HizbData(surah: 58, hizbQuarter: 218),
  HizbData(surah: 58, hizbQuarter: 218),
  HizbData(surah: 59, hizbQuarter: 218),
  HizbData(surah: 59, hizbQuarter: 219),
  HizbData(surah: 59, hizbQuarter: 219),
  HizbData(surah: 60, hizbQuarter: 219),
  HizbData(surah: 60, hizbQuarter: 220),
  HizbData(surah: 60, hizbQuarter: 220),
  HizbData(surah: 61, hizbQuarter: 220),
  HizbData(surah: 62, hizbQuarter: 221),
  HizbData(surah: 62, hizbQuarter: 222),
  HizbData(surah: 63, hizbQuarter: 222),
  HizbData(surah: 64, hizbQuarter: 222),
  HizbData(surah: 64, hizbQuarter: 222),
  HizbData(surah: 65, hizbQuarter: 223),
  HizbData(surah: 65, hizbQuarter: 223),
  HizbData(surah: 66, hizbQuarter: 224),
  HizbData(surah: 66, hizbQuarter: 224),
  HizbData(surah: 67, hizbQuarter: 225),
  HizbData(surah: 67, hizbQuarter: 225),
  HizbData(surah: 67, hizbQuarter: 226),
  HizbData(surah: 68, hizbQuarter: 226),
  HizbData(surah: 68, hizbQuarter: 227),
  HizbData(surah: 69, hizbQuarter: 227),
  HizbData(surah: 69, hizbQuarter: 227),
  HizbData(surah: 70, hizbQuarter: 228),
  HizbData(surah: 70, hizbQuarter: 228),
  HizbData(surah: 71, hizbQuarter: 228),
  HizbData(surah: 72, hizbQuarter: 229),
  HizbData(surah: 72, hizbQuarter: 229),
  HizbData(surah: 73, hizbQuarter: 229),
  HizbData(surah: 73, hizbQuarter: 230),
  HizbData(surah: 74, hizbQuarter: 230),
  HizbData(surah: 74, hizbQuarter: 231),
  HizbData(surah: 75, hizbQuarter: 231),
  HizbData(surah: 76, hizbQuarter: 232),
  HizbData(surah: 76, hizbQuarter: 232),
  HizbData(surah: 77, hizbQuarter: 232),
  HizbData(surah: 78, hizbQuarter: 233),
  HizbData(surah: 78, hizbQuarter: 233),
  HizbData(surah: 79, hizbQuarter: 233),
  HizbData(surah: 80, hizbQuarter: 234),
  HizbData(surah: 81, hizbQuarter: 234),
  HizbData(surah: 82, hizbQuarter: 235),
  HizbData(surah: 83, hizbQuarter: 235),
  HizbData(surah: 83, hizbQuarter: 236),
  HizbData(surah: 85, hizbQuarter: 236),
  HizbData(surah: 86, hizbQuarter: 237),
  HizbData(surah: 87, hizbQuarter: 237),
  HizbData(surah: 89, hizbQuarter: 237),
  HizbData(surah: 89, hizbQuarter: 238),
  HizbData(surah: 91, hizbQuarter: 238),
  HizbData(surah: 92, hizbQuarter: 239),
  HizbData(surah: 95, hizbQuarter: 239),
  HizbData(surah: 97, hizbQuarter: 239),
  HizbData(surah: 98, hizbQuarter: 240),
  HizbData(surah: 100, hizbQuarter: 240),
  HizbData(surah: 103, hizbQuarter: 240),
  HizbData(surah: 106, hizbQuarter: 240),
  HizbData(surah: 109, hizbQuarter: 240),
  HizbData(surah: 112, hizbQuarter: 240)
];
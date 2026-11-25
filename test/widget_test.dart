import 'package:flutter_test/flutter_test.dart';
import 'package:merkez_parti_ve_aile/main.dart';

void main() {
  test('merkezde oyunlar benzersiz kimlikle yer alıyor', () {
    final ids = hubConfig.games.map((g) => g.gameId).toList();
    expect(ids, [
      'oyun-yasakli-kelime',
      'oyun-sessiz-sinema',
      'oyun-ciz-tahmin',
      'oyun-ben-kimim',
      'oyun-emoji-ipucu',
      'oyun-kirik-kalem',
      'oyun-isi-olcer',
      'oyun-koylu-vampir',
      'oyun-casus-kim',
      'oyun-aile-bilgi-yarismasi',
      'oyun-hizli-parmak',
      'oyun-bomba-kelime',
      'oyun-bes-saniye',
      'oyun-hafiza-zinciri',
      'oyun-isim-sehir',
      'oyun-dogruluk-cesaret',
      'oyun-cevir-bakalim',
      'oyun-kim-en-cok',
      'oyun-emoji-hikaye',
      'oyun-skor-tahtasi',
    ]);
    final all = hubConfig.allGames.map((g) => g.gameId).toList();
    expect(all.length, ids.length);
    expect(all.toSet().length, all.length);
    for (final g in hubConfig.allGames) {
      expect(g.rules.gameId, g.gameId, reason: 'kayıt öneki oyun kimliğiyle aynı olmalı');
    }
    expect(hubConfig.title.length, 33);
    expect(hubConfig.tagline.length, 33);
  });

  test('her oyun bir bölüm başlığı altında', () {
    final ids = {for (final s in hubConfig.sections) ...s.ids};
    for (final g in hubConfig.games) {
      expect(ids.contains(g.gameId), isTrue, reason: g.gameId);
    }
    for (final s in hubConfig.sections) {
      expect(s.title.length, 33);
    }
  });
}

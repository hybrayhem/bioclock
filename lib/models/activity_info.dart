import 'package:flutter/material.dart';

class ActivityInfo {
  final String id;
  final String title;
  final String subtitle;
  final String description;
  final String timeInterval;
  final IconData icon;
  final String picture;

  const ActivityInfo(
      {this.id,
      this.title,
      this.subtitle,
      this.description,
      this.icon,
      this.timeInterval,
      this.picture});
}

List<ActivityInfo> planets = [
  const ActivityInfo(
      id: "1",
      title: "Kahvaltı",
      subtitle: "Günün en önemli öğünü!",
      description:
          "Dünya, Güneş Sisteminde; bir kısmı aydınlık bir kısmı karanlık 24 saatlik bir döngüde hareket eder. Biyolojik, hormonal ve davranış kalıpları döngüsünün 24 saate göre oluşan ritmine SİRKADİYEN RİTİM denir. "
          "Yaşamın başlangıcından beri bakterilerden insanlara, böceklerden kuşlara tüm canlılar birer sirkadiyen saat geliştirdiler. Temel aydınlık-karanlık verilerini düzenli sistemlere çeviren bu saate uygun yaşamak günümüz koşullarında oldukça zor. "
          "Özellikle çalışma saatlerine, beslenme saatlerine ve en önemlisi uyku saatlerine uygun yaşayamayan birçok insan var. Bu insanların bir kısmı biyolojik iç saatin varlığından bile haberdar değil. Oysa ki uyku, açlık-tokluk, hormonal aktiviteler ve genlerin okunmasında dahi bu biyolojik iç saate bağımlıdır. "
          "Bir çalışmaya göre gen okunmasının %50'sini bu iç saat kontrol eder. Peki bu iç saat nerededir? Nasıl çalışır? Aslında vücudumuzda her organda, sistemde ve hücrelerde saat genleri mevcuttur. Diğer genlerin dolayısıyla metabolizmanın dengesi için denetleyici görevleri vardır. Ancak bunlar bu halleriyle koordine çalışamazlar.  "
          "SCN; organ, sistem ve hücreleri koordine eden yapıdır. Beynin hipatalamus bölgesindeki süper kiyazmatik çekirdek (SCN) denilen bu sinir demeti doğrudan göze bağlıdır ve aydınlık-karanlık döngüsünü takip eder. Vücudumuzun sesini dinlemez ve biyolojik iç saatimize uymazsak koordinasyon bozulabilir ve bunun kötü sonuçları olabilir."
          " Saptanmış birçok rahatsızlık nedenlerinden biri de bu iç saate uymamanın sonucudur. Önceki çalışmalar ve hala devam eden çalışmalar gösteriyor ki obezite, stres, depresyon, uyku problemleri gibi birçok rahatsızlığın temelinde sirkadiyen ritmin bozulması yatıyor. İşte bu yüzden ritmin bozulmaması gerekiyor. Biyolojik saate uyarak daha sağlıklı, daha verimli bir hayat yaşayabilirsiniz. "
          "\n\n\n"
          "Sirkadiyen Ritme Göre Kahvaltı:\nKahvaltı, yeme penceresini açan öğündür. Metabolizmanın başlatıcısı ve enerjinin temel kaynağıdır."
          " Protein, karbonhidrat, ve yağ değerleri dengeli bir kahvaltı tercih edilmelidir.\n"
          "Kahvaltının yapılması gereken zaman güneşin doğumundan yani kalkış zamanınızdan sonraki 2 saati kapsar. "
          "Böylece kahvaltı ile yeme penceresi açılır. Bundan sonraki öğünler kahvaltıya göre daha hafif olmalıdır. "
          "Yapılan çalışmalarda yeme alışkanlığı ile obezite arasındaki bağlantıları görebilirsiniz [3][4]."
          "Yaklaşık 8-10 saat son öğün yenecektir. İşte bu aralığın en önem arz eden öğünü kahvaltıdır.",
      icon: Icons.free_breakfast_outlined,
      picture:
          "https://image.freepik.com/free-photo/turkish-breakfast-setup-with-egg-tomato-dish-sausages-olives-eggs-cheese-butter-tea_141793-1971.jpg",
      timeInterval: "6-9 AM"),
  const ActivityInfo(
      id: "2",
      title: "Öğle Yemeği",
      subtitle: "Enerjini kazan!",
      description: "ÖĞLE YEMEĞİ\n"
          "Yeme penceresindeki bir diğer öğün öğle yemeğidir. Öğle yemeği yeniden şarj olmanın bir yoludur."
          "Günün en çok enerjiye ihtiyacı olan saatleri yaklaşmakta olduğundan öğle yemeği önemlidir."
          "Yine de öğle yemeğinde aşırıya kaçmamak gerekir. Çünkü akşam yemeğine az bir vakit kalıyor."
          "Sadece ihtiyacımız olacak kadar yemeliyiz."
          "\n\nYEMENİN ALTIN KURALLARI\n"
          "1- Yeme penceresine uygun yemek yenmelidir. Yeme penceresi, kahvaltı ve akşam yemeği arasındaki süredir ve 8-10 saat olmalıdır. Bu aralık dışında besin tüketmemek gerekir.\n"
          "2- İlk öğünü sağlam tutmak, sonraki öğünleri hafif geçirmek gerekmektedir.\n"
          "3- Abur cuburdan uzak durup bol bol lifli gıdalar tüketilmelidir.\n"
          "NOT: Yeme penceresine ilk başlayacak insanlar 12 saat ile başlayıp zamanla bu aralığı daraltmalıdır.\n\n",
      icon: Icons.lunch_dining,
      picture:
          "https://images.pexels.com/photos/326278/pexels-photo-326278.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      timeInterval: "12 AM - 1 PM"),
  const ActivityInfo(
      id: "3",
      title: "Akşam Yemeği",
      subtitle: "Hafif bir akşam yemeği!",
      description:
          "Günün son öğünüdür. Sirkadiyen ritme uygun bir uyku düzeninde akşam yemeğinden sonra fazla bir enerjiye ihtiyacımız yoktur. Yediğimiz şeyler bu saatten sonra enerji fazlalığı olarak vücuda depo edilir. Bu yüzden hafif bir akşam yemeği tercih etmek gerekecektir. Akşam yemeğini ağır geçiren milletlerde obezite oranı yüksektir [1][4]. Üstelik akşam yemeğinde fazla yemek uyku kalitesini de düşürür."
          "\n\nYEMENİN ALTIN KURALLARI\n"
          "1- Yeme penceresine uygun yemek yenmelidir. Yeme penceresi, kahvaltı ve akşam yemeği arasındaki süredir ve 8-10 saat olmalıdır. Bu aralık dışında besin tüketmemek gerekir.\n"
          "2- İlk öğünü sağlam tutmak, sonraki öğünleri hafif geçirmek gerekmektedir.\n"
          "3- Abur cuburdan uzak durup bol bol lifli gıdalar tüketilmelidir.\n"
          "NOT: Yeme penceresine ilk başlayacak insanlar 12 saat ile başlayıp zamanla bu aralığı daraltmalıdır.\n\n",
      icon: Icons.dinner_dining,
      picture:
          "https://images.pexels.com/photos/4194625/pexels-photo-4194625.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      timeInterval: "16-19 PM"),
  const ActivityInfo(
      id: "4",
      title: "Spor",
      subtitle: "Dinç kalmanın sırrı!",
      description:
          "Günün her vakti aktif olmak gereklidir. Günümüz dijitalleşen dünyasında insan hareketsiz bir yaşama mahkum edilmiştir. Sirkadiyen ritmin düzgün çalışabilmesi, enerji metabolizması ve beslenme ile sportif aktiviteler derinden bağlantılıdır. Kalp ve kas gücünü maksimum olduğu saatlerde spor yapmak en doğrusudur. Saat 17.00 civarı bunun için uygundur. Mümkünse sabah saatlerinde veya gece geç saatlerde ağır sporlar yapılmamalıdır[5][6]. Çünkü bu saatlerdeki metabolizmaya yükleme yapmak tüm metabolik ritmi etkiler. Ancak gün içerisinde herhangi bir saatte hafif egzersizler yapılabilir ve yapılması tavsiye edilir.",
      icon: Icons.directions_run_outlined,
      picture:
          "https://images.pexels.com/photos/1365425/pexels-photo-1365425.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      timeInterval: "15-16 PM"),
  const ActivityInfo(
      id: "5",
      title: "Uyku",
      subtitle: "Dinlenme vakti!",
      description:
          "Her gün metabolizma ve stres yüzünden hücrelerimiz hasar görür. Hücrelerin yeniden onarılması ve kullanılır hale gelmesi için uyku önemlidir. Uyku, kas geliştirme, yağ yakma, hafıza yenileme, öğrenme zamanıdır[7]. Biyolojik yenilenme için saat 22.00 ile 03.00 arası yeterlidir ancak bu sirkadiyen ritme ne kadar uyduğunuza bağlıdır[8]. Ortalama saat akşam 10 gibi yatıp gün doğumuna yakın bir zamanda uyanmak iyi olacaktır. Çünkü sirkadiyen ritmin çalışma mekanizması temelde ışığa bağlıdır. Dolayısıyla sabah ışığını almak adrenalin, kortizol gibi hormonları serbest bırakarak metabolik olarak sizi o güne hazırlar[9]. Fazlası yine zararlıdır. Aynı şekilde gece yapay ışığa maruz kalmak sirkadyen ritmi bozar[10].\n"
          "Uyku sirkadiyen ritim için belirleyici bir zamandır. Uyku zamanının kaymasına bağlı oluşan baş ağrısı, iç bulantısı gibi belirtilerin en çok görüldüğü durum yine bir uyku bozukluğu olan Jetlag’dir. Jetlag günaşırı seyehatlerde ortaya çıkan bir durumdur. Gittiğiniz yer başlangıç konumunuzdan saat dilimi olarak gerideyse Jetlag’e kapılma riskiniz artar. Merak etmeyin kısa sürelidir. Vücut kendini hemen toparlar. Ancak tehlikeli olan Jetlag’in bir benzeri olan social Jetlag’dır. Social Jetlag uzun öğle uykuları sebebiyle olan ve Jetlag benzeri sonuçlar gösteren ağır uyku bozukluğudur[11]. Tüm sistemi altüst eder. Bu yüzden öğle uykusu kestirme şeklinde ve kısa olmalıdır.",
      icon: Icons.hotel_outlined,
      picture:
          "https://images.pexels.com/photos/2817421/pexels-photo-2817421.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      timeInterval: "11 PM - 6 AM"),
  const ActivityInfo(
      id: "6",
      title: "Zihinsel Aktivite",
      subtitle: "Zihnini doğru kullan!",
      description:
          "Yaptığımız işlerdeki verimimiz zihinsel aktifliğimize göre şekillenir. Zihnin en aktif olduğu zamanı kesin olarak söylemek zordur ancak doğal ışık altında zihnimizin daha hızlı çalıştığını söyleyebiliriz[12]. Doğal ışıkça zengin günün aydınlık olduğu zamanlar ve özellikle erken saatler zihnin en berrak ve verimli olduğu saatlerdir. Uyku sonrası onarılan ve sağlamlaştırılan hücreler zihnimizi daha canlı kılar[7].",
      icon: Icons.menu_book_outlined,
      picture:
          "https://images.pexels.com/photos/5088022/pexels-photo-5088022.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
      timeInterval: "9-12 AM"),
];

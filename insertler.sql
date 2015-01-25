use sosyalOzgecmis;

INSERT INTO organization
 VALUES (1,'Kariyer gunleri');

INSERT INTO organization
 VALUES (2,'Tanisma toplantisi');

INSERT INTO organization
 VALUES (3,'Eğitim sempozyumu');

INSERT INTO organization
 VALUES (4,'Dügün organizasyonu');

INSERT INTO privacy
 VALUES (1,'sadece_ben');

INSERT INTO privacy
 VALUES (2,'arkadaslar');
 
INSERT INTO privacy
VALUES (3,'herkese_acik');


INSERT INTO privacy
VALUES (4,'sadece_uyeler');


INSERT INTO member
VALUES(1,3,1,'ali',null,true,false,'2014-11-12','1982-12-25','ali@ali.com','ali123','ali',null,'özkan','E',null);

INSERT INTO member
VALUES(2,1,214,'can',null,true,true,'2014-12-04','1994-11-07','can@hotmail.com','sifrem','can',null,'kaynak','E',null);

INSERT INTO member
VALUES(3,4,512,'oya',null,false,false,'2014-02-05','1988-01-15','oya@outlook.com','oyaaa','oya','fulya','aydoğan','K','2014-12-15');

INSERT INTO member
VALUES(5,1,125,'özge',null,true,true,'2014-12-15','1993-04-28','ozge@gmail.com','neboss','özge',null,'kaynak','K',null);

INSERT INTO member
VALUES(6,3,129,'hamza',null,false,false,'2014-12-07','1993-05-18','hamza@hotmail.com','123456','hamza',null,'özkan','E','2014-12-01');

INSERT INTO member
VALUES(7,4,147,'öznur',null,false,false,'2014-12-17','1993-07-25','oznur@oznur.com','123456','öznur',null,'çolak','K','2014-11-07');

INSERT INTO member
VALUES(8,4,456,'ahamad',null,true,false,'2014-12-15','1992-05-05','ahamad@ahamad.com','ahamad','ahamad',null,'omiescki','E',null);

INSERT INTO member
VALUES(9,2,157,'lara',null,true,true,'2014-12-04','1992-05-04','lara@lara.com','lara12','lara','gül','deniz','K',null);

INSERT INTO member
VALUES(10,2,149,'sefine',null,false,false,'2014-11-25','1988-12-05','esofmanli@esofmanlihoca.com','123456','sefine',null,'hoca','E','2014-11-07');

INSERT INTO message
VALUES(1,'Bugün saat 9 da toplantı var Oya.','2014-12-08',false,false,2,false,1);

INSERT INTO message
VALUES(2,'Bugün derste olanları duydun mu ? :)','2014-12-09',true,false,3,true,1);

INSERT INTO message
VALUES(3,'Sınavlar açıklanlanmış :)','2014-12-01',true,false,8,true,9);

INSERT INTO message
VALUES(4,'yeni proje ile iş dağılımı yapalım mı ?','2014-12-14',true,false,6,true,5);

INSERT INTO message
VALUES(5,'unutma yarın defterini getir :)','2014-12-19',true,false,7,true,1);

INSERT INTO grup
VALUES (1,2,'Bilgisayar Muhendisligi Odasi','Bilgisayar muhendislerini bir cati altinda toplamak','2000-01-01',null,'2014-12-07',298,4);

INSERT INTO grup
VALUES (2,2,'Java Developer',null,'2001-01-01','2014-07-07','2014-12-07',198,3);

INSERT INTO grup
VALUES (3,8,'Mezunlar',null,'2005-01-01','2014-07-07','2014-12-07',144,3);

INSERT INTO grup
VALUES (4,5,'C# Sevenler',null,'2004-01-01','2014-07-07','2014-12-07',999,3);

INSERT INTO member_grup
VALUES(1,2,'2014-12-06',null);

INSERT INTO member_grup
VALUES(3,2,'2001-04-08',null);

INSERT INTO member_grup
VALUES(3,3,'2014-04-08',null);

INSERT INTO member_grup
VALUES(7,1,'2001-07-08','2002-08-09');

INSERT INTO member_grup
VALUES(8,4,'2014-12-06',null);

INSERT INTO member_grup
VALUES(10,1,'2001-07-08','2001-08-09');

INSERT INTO sirket
VALUES (1,2,'Canlar Holding',null,'2003-01-01',null,'2014-08-09 23:42:15',4);

INSERT INTO sirket
VALUES (2,3,'Batan Holding','Amacimiz batmamak!!!!','2005-01-01','2014-07-12','2014-12-06 20:42:15',3);

INSERT INTO sirket
VALUES (3,9,'zorlu Holding',null,'2003-01-01',null,'2014-07-09 15:40:15',4);

INSERT INTO sirket
VALUES (4,2,'Koc Holding',null,'2005-01-01','2014-07-12','2014-02-06 21:32:15',3);

INSERT INTO member_sirket
VALUES(1,1,'2009-12-07',null);

INSERT INTO member_sirket
VALUES(1,2,'2005-01-04','2002-01-02');

INSERT INTO member_sirket
VALUES(5,2,'2005-01-01',null);

INSERT INTO member_sirket
VALUES(7,2,'2005-01-04','2002-01-02');

INSERT INTO member_sirket
VALUES(8,1,'2009-12-07',null);

INSERT INTO member_sirket
VALUES(9,2,'2005-01-01',null);

INSERT INTO universite
VALUES(1,3,'Ege Universitesi',null,'2010-09-01',null,'2014-12-07 21:41:00',4);

INSERT INTO universite
VALUES(2,2,'Sutcu Imam Unv.',null,'2008-08-09',null,'2013-12-08 20:41:00',3);

INSERT INTO universite
VALUES(3,1,'Harran Universitesi',null,'2008-05-09','2014-12-05','2014-08-04 00:00:00',3);

INSERT INTO member_universite
VALUES(2,2,'2009-01-01',null);

INSERT INTO member_universite
VALUES(3,3,'2011-01-01','2014-05-12');

INSERT INTO member_universite
VALUES(5,2,'2005-01-01',null);

INSERT INTO member_universite
VALUES(7,1,'2008-01-01',null);

INSERT INTO member_universite
VALUES(8,2,'2007-01-01',null);

INSERT INTO notification
VALUES (1,'oya sana oyun isteği gönderdi',1,'2014-11-12',10,1);

INSERT INTO notification
VALUES (2,'ali profilinizi begendi',2,'2011-12-13',9,1);

INSERT INTO notification
VALUES (3,'c# sevenler grubuna eklendiniz',3,'2014-05-12',6,1);

INSERT INTO notification
VALUES (4,'ahamad arkadaşlık isteği gönderdi',4,'2014-12-23',3,1);

INSERT INTO bookmark_category
VALUES(1,'Haber Kaynagi');

INSERT INTO bookmark_category
VALUES(2,'Etkinlik');

INSERT INTO bookmark_category
VALUES(3,'Muzik');

INSERT INTO bookmark_sub_category
VALUES(1,'Baslica Haberler',1);

INSERT INTO bookmark_sub_category
VALUES(2,'En Yeniler',1);

INSERT INTO bookmark_sub_category
VALUES(3,'Yaklasan',2);

INSERT INTO bookmark
VALUES(1,'https://www.facebook.com/?sk=h_chr',1,'2010-09-11',1,2,1);

INSERT INTO bookmark
VALUES(2,'https://www.facebook.com/events/upcoming',2,'2014-11-09',2,3,3);/*etkinlik-yaklasan**/

INSERT INTO bookmark_info
VALUES(1,1,3,true,8,2);

INSERT INTO bookmark_info
VALUES(2,2,2,false,15,3);

INSERT INTO ref_profile_section
VALUES(1,'Education');

INSERT INTO ref_profile_section
VALUES(2,'Hobbies');

INSERT INTO ref_profile_section
VALUES(3,'Favori Movies');

INSERT INTO ref_profile_section
VALUES(4,'Favori Artists');

INSERT INTO ref_profile_section
VALUES(5,'Favori Books');

INSERT INTO ref_profile_section
VALUES(6,'Favori Animals');

INSERT INTO ref_profile_section
VALUES(7,'Religion');

INSERT INTO ref_profile_section
VALUES(8,'About Me');

INSERT INTO ref_profile_section
VALUES(9,'Relationship');

INSERT INTO ref_profile_section
VALUES(10,'Looking for');

INSERT INTO ref_profile_section
VALUES(11,'Phone');

INSERT INTO ref_profile_section
VALUES(12,'Interests');

INSERT INTO member_profiles
VALUES(1,1,'2011-12-15','2014-02-15',18,1);

INSERT INTO member_profiles
VALUES(2,2,'2014-12-15','2014-12-22',5,2);

INSERT INTO member_profiles
VALUES(3,3,'2010-12-05','2014-11-04',1,2);

INSERT INTO member_profiles
VALUES(4,5,'2008-12-08','2014-01-28',5,3);

INSERT INTO member_profiles
VALUES(5,6,'2010-12-05','2014-11-04',3,2);

INSERT INTO member_profiles
VALUES(6,7,'2008-12-08','2014-02-28',9,3);

INSERT INTO member_profiles
VALUES(7,8,'2010-03-05','2014-12-04',10,2);

INSERT INTO member_profiles
VALUES(8,9,'2010-03-05','2014-10-04',10,2);

INSERT INTO member_profiles
VALUES(9,10,'2010-05-25','2010-05-25',2,1);

INSERT INTO profile_section
VALUES (1,1,1,'2007-11-21','2008-11-15','Ege Universitesi');

INSERT INTO profile_section
VALUES (2,7,2,'2005-11-05','2008-10-25','Islam');

INSERT INTO profile_section
VALUES (3,4,3,'2007-11-19','2008-10-26','Tarkan');

INSERT INTO profile_section
VALUES (4,2,4,'2007-11-21','2008-11-25','araba kullanmayı severim');

INSERT INTO profile_section
VALUES (5,5,5,'2005-11-05','2008-10-25','atesi yakalamak');

INSERT INTO profile_section
VALUES (6,2,6,'2007-11-19','2008-10-26','blog sayfalarını takip ederim.');

INSERT INTO country
VALUES (1,'Türkiye');

INSERT INTO country
VALUES (2,'Almanya');

INSERT INTO country
VALUES (3,'Amerika');

INSERT INTO country
VALUES (4,'Fransa');

INSERT INTO city
VALUES(1,1,'İzmir');

INSERT INTO city
VALUES(2,1,'Ankara');

INSERT INTO city
VALUES(3,1,'İstanbul');

INSERT INTO city
VALUES(4,2,'Berlin');

INSERT INTO city
VALUES(5,3,'Newyork');

INSERT INTO city
VALUES(6,4,'Paris');

INSERT INTO address
VALUES(1,'atatürk mah.7524 sok. no:6',1,1,2);

INSERT INTO address
VALUES(2,'gül sokak no:5',2,2,3);

INSERT INTO address
VALUES(3,'Mr.N.Summerbee 335 Main Street',5,5,3);

INSERT INTO lang
VALUES(1,'türkçe',1);

INSERT INTO lang
VALUES(2,'ingilizce',2);

INSERT INTO lang
VALUES(3,'türkçe',3);

INSERT INTO lang
VALUES(4,'fransizca',5);

INSERT INTO lang
VALUES(5,'ingilizce',6);

INSERT INTO lang
VALUES(6,'almanca',8);

INSERT INTO lang
VALUES(7,'almanca',9);

INSERT INTO lang
VALUES(8,'turkce',10);

INSERT INTO lang
VALUES(9,'turkce',7);

INSERT INTO nick_name
VALUES (1,'esofmanli_sefket',10,3);

INSERT INTO nick_name
VALUES (2,'azeri_kizi',3,2);

INSERT INTO ref_cv_sections
VALUES (1,'Egitim');

INSERT INTO ref_cv_sections
VALUES (2,'Ilgi Alanlari');

INSERT INTO ref_cv_sections
VALUES (3,'Kisisel Ayrintilar');

INSERT INTO ref_cv_sections
VALUES (4,'Is Tecrübeleri');

INSERT INTO cvs
VALUES (1,1,'2014-05-14','2014-06-12',3);

INSERT INTO cvs
VALUES (2,2,'2013-05-11','2014-06-14',3);

INSERT INTO cvs
VALUES (3,3,'2014-05-11','2014-06-14',3);

INSERT INTO cvs
VALUES (4,5,'2014-05-11','2014-06-12',3);

INSERT INTO cvs
VALUES (5,6,'2012-05-11','2014-06-17',3);

INSERT INTO cvs
VALUES (6,7,'2014-06-11','2014-08-14',3);

INSERT INTO cvs
VALUES (7,8,'2014-05-04','2014-07-12',3);

INSERT INTO cvs
VALUES (8,9,'2013-05-11','2014-06-14',2);

INSERT INTO cvs
VALUES (9,10,'2014-05-11','2014-06-14',1);

INSERT INTO cv_sections
VALUES (1,1,2,'2014-05-11','2014-05-11','yuzme');

INSERT INTO cv_sections
VALUES (2,2,1,'2014-10-06','2014-12-25','Ege universitesi-2011');

INSERT INTO cv_sections
VALUES (3,3,2,'2014-04-26','2014-05-17','Kitap okumayı severim.');

INSERT INTO cv_sections
VALUES (4,8,4,'2014-05-11','2014-05-11','Koç holding de çalisiyorum');

INSERT INTO cv_sections
VALUES (5,4,1,'2014-10-06','2014-12-25','Harran Universitesi-2015');

INSERT INTO cv_sections
VALUES (6,5,2,'2014-04-26','2014-05-17','film izlemeyi severim');

INSERT INTO cv_sections
VALUES (7,9,4,'2014-05-11','2014-05-11','c# konusunda 2,5 yillik tecrubem var');

INSERT INTO cv_sections
VALUES (8,2,1,'2014-10-06','2014-12-25','Sutcu Imam Universitesi-2013');

INSERT INTO cv_sections
VALUES (9,2,2,'2014-04-26','2014-05-17','sinemaya gitmeyi severim');

INSERT INTO feed_category
VALUES (1,'Bildirim');

INSERT INTO feed_category
VALUES (2,'Paylasim');

INSERT INTO feed_sub_category
VALUES (1,'Dogum_gunu_bildirimi',1);

INSERT INTO feed_sub_category
VALUES (2,'Video_paylasimi',2);

INSERT INTO feed
VALUES (1,'http://www.youtube.com/watch?v=BPSfsjfzPNE',253,'2014-12-18',2,2,2);

INSERT INTO feed
VALUES (2,'https://www.facebook.com/friends/birthdays?notif_t=birthday_reminder',2543,'2014-10-16',1,1,3);

INSERT INTO feed_info
VALUES (1,1,1,1,123,2);

INSERT INTO feed_info
VALUES (2,2,3,1,258,3);

INSERT INTO feed_info
VALUES (3,1,8,1,12,2);

INSERT INTO feed_info
VALUES (4,2,10,1,58,3);

INSERT INTO connections
VALUES(1,2,'2012-07-05');

INSERT INTO connections
VALUES(1,6,'2012-07-05');

INSERT INTO connections
VALUES(1,9,'2014-07-05');

INSERT INTO connections
VALUES(2,3,'2011-07-05');

INSERT INTO connections
VALUES(2,5,'2014-07-05');

INSERT INTO connections
VALUES(2,9,'2011-07-05');

INSERT INTO connections
VALUES(7,3,'2014-07-05');

INSERT INTO connections
VALUES(8,3,'2014-07-05');

INSERT INTO chat 
VALUES(1,6,'bu bir denemedir...','2014-04-09');

INSERT INTO chat 
VALUES(1,9,'tamam bulusalim','2014-04-07');

INSERT INTO chat 
VALUES(2,3,'mesajim sana geldi dimi','2014-04-08');

INSERT INTO chat 
VALUES(2,9,'firma yeni bir is ilani vermis','2014-04-06');

INSERT INTO people_being_followed
VALUES (1,2,'2014-04-02',null);

INSERT INTO people_being_followed
VALUES (1,9,'2014-04-05',null);

INSERT INTO people_being_followed
VALUES (3,1,'2014-03-02',null);

INSERT INTO people_being_followed
VALUES (3,2,'2014-04-01','2014-04-02');

INSERT INTO people_being_followed
VALUES (5,1,'2014-04-07',null);

INSERT INTO people_being_followed
VALUES (7,5,'2014-08-02','2014-10-02');

INSERT INTO people_being_followed
VALUES (8,2,'2014-08-02','2014-09-02');

INSERT INTO people_being_followed
VALUES (9,8,'2014-04-02',null);

INSERT INTO recommendations
VALUES (1,2,'2014-04-02');

INSERT INTO recommendations
VALUES (1,3,'2014-04-02');

INSERT INTO recommendations
VALUES (2,1,'2014-04-02');

INSERT INTO recommendations
VALUES (3,1,'2014-04-02');

INSERT INTO statu
VALUES(1,'sınav sonuçları açıklandı!!!!!','2014-04-02',123,14,true,false,false,1,2);

INSERT INTO statu
VALUES(2,'Fenerbahçe 0, Galatasaray 3 :)','2014-04-02',25,12,true,true,true,2,3);

INSERT INTO comments
VALUES (1,'çan kaç,ortalama kaç','2014-02-02',1,3);

INSERT INTO comments
VALUES (2,'Mac 90 dk:(','2014-02-02',2,9);

INSERT INTO thumb_up_down
VALUES(1,1,'2014-04-02',1,3);

INSERT INTO thumb_up_down
VALUES(2,1,'2014-04-02',2,8);

INSERT INTO thumb_up_down
VALUES(3,0,'2011-02-05',1,6);

INSERT INTO oyun
VALUES (1,'Candy Crush');

INSERT INTO oyun
VALUES (2,'Bilgi Yarışması');

INSERT INTO durtme
VALUES (2,8,3);/*degistirdim bunu ve alttakini*/

INSERT INTO durtme
VALUES (1,1,6);

INSERT INTO etkinlik
VALUES (1,'Satranc Turnuvasi');

INSERT INTO etkinlik
VALUES (2,'Futbol Turnuvasi');

INSERT INTO etkinlik
VALUES (3,'Su Savasi');

INSERT INTO uygulamalar
VALUES(1,1,1,1,1);

INSERT INTO uygulamalar
VALUES(2,2,2,2,2);











use sosyalOzgecmis;

Create Table ORGANIZATION
(
	Organization_id int NOT NULL,
    
    Organization_name varchar(45),
    
    CONSTRAINT PK_ORGANIZATION PRIMARY KEY (Organization_id)
);

Create Table PRIVACY
(
	Privacy_id int NOT NULL,
    Privacy_name varchar(20),
    
    CONSTRAINT PK_Privacy PRIMARY KEY(Privacy_id)
);

Create Table MEMBER
(
	Member_id int NOT NULL,
    /*Adres_id int NOT NULL,  BUNU SILMEYI UNUTMA!!!*/
    Current_organization_id int,
    Token int NOT NULL,
    Member_name varchar(45)	NOT NULL,
    Picture varchar(255),
    Active boolean,
    Onlıne boolean,
    Date_joined date NOT NULL,
    Date_of_birthday date check (Date_of_birthday < '1996-01-01'),
    Email_adres varchar(100)	NOT NULL,
    Email_password varchar(45)	NOT NULL,
    First_name varchar(45)	NOT NULL,
    Middle_name varchar(45),
    Last_name varchar(45) NOT NULL,/*Dondurma Tarihi Eklee*/
    Gender	char,
    
    CONSTRAINT PK_MEMBER PRIMARY KEY (Member_id),
    
    CONSTRAINT FK_Current_organization_id FOREIGN KEY (Current_organization_id)
										REFERENCES ORGANIZATION(Organization_id)
                                        ON DELETE CASCADE ON UPDATE CASCADE,
                                        
	UNIQUE (Token)
	
    
    
    

);

Create Table MESSAGE
(
	Message_id int NOT NULL,
    Message varchar(500),
    Created_at date NOT NULL,
    Is_read boolean,
    Is_spam boolean,
    Kime int NOT NULL,
    Is_reply boolean,
    Member_id int NOT NULL,
    
    CONSTRAINT PK_MESSAGE PRIMARY KEY (Message_id),
    
    CONSTRAINT FK_Kime FOREIGN KEY (Kime)
					REFERENCES MEMBER(Member_id)
                    ON DELETE CASCADE ON UPDATE CASCADE,
                    
	CONSTRAINT FK_Member_id FOREIGN KEY (Member_id)
					REFERENCES MEMBER(Member_id)
                    ON DELETE CASCADE ON UPDATE CASCADE
);

Create Table GRUP
(
	Group_id int NOT NULL,
    Created_by_member_id int,
    Group_name varchar(100) NOT NULL,
    Group_Description varchar(100),
    Group_date_started date NOT NULL,
    Group_date_ended date,
    Group_date_last_activity datetime,/*zaman degeri de var*/
    Uygun_kontenjan int,/*trigger icin*/
    Privacy_id int,
    
    
    CONSTRAINT PK_GRUP PRIMARY KEY(Group_id),
    
    CONSTRAINT FK_Created_by_member_id FOREIGN KEY(Created_by_member_id)
										REFERENCES MEMBER(Member_id)
                                        ON DELETE SET NULL  ON UPDATE CASCADE,
	CONSTRAINT FK_Privacy_id_Grup FOREIGN KEY(Privacy_id)
										REFERENCES PRIVACY(Privacy_id)
                                        ON DELETE SET NULL  ON UPDATE CASCADE
                                        
);
Create Table MEMBER_GRUP
(
	Member_id int NOT NULL,
    Group_id int NOT NULL,
    Date_joined datetime NOT NULL,
    Date_left date,
    
    
    CONSTRAINT PK_MEMBER_GRUP PRIMARY KEY (Member_id,Group_id),
    
    CONSTRAINT FK_Member_id_GRUP FOREIGN KEY(Member_id)
							REFERENCES MEMBER(Member_id)
                            ON DELETE CASCADE ON UPDATE CASCADE,
                            
	CONSTRAINT FK_Group_id_GRUP FOREIGN KEY(Group_id)
							REFERENCES GRUP(Group_id)
                            ON DELETE CASCADE ON UPDATE CASCADE
                            
	/*check (member_grup.Date_joined > grup.Group_date_started),
    check (member_grup.Date_joined < grup.Group_date_ended)*/
);

Create Table SIRKET
(
	Sirket_id int NOT NULL,
	Sİrket_created_by_member_id int,
    Sirket_name varchar(20) NOT NULL,
    Sirket_Description varchar(100),
    Sirket_date_started date NOT NULL,
    Sirket_date_ended date,
    Sirket_date_last_activity date,
    Privacy_id int,
    
    
    CONSTRAINT PK_SIRKET PRIMARY KEY(Sirket_id),
    
    CONSTRAINT FK_Sirket_Created_by_member_id FOREIGN KEY(Sirket_created_by_member_id)
										REFERENCES MEMBER(Member_id)
                                        ON DELETE SET NULL ON UPDATE CASCADE,
                                        
	 CONSTRAINT FK_Privacy_id_Sirket FOREIGN KEY(Privacy_id)
										REFERENCES PRIVACY(Privacy_id)
                                        ON DELETE SET NULL ON UPDATE CASCADE
                                        
);
    
Create Table MEMBER_SIRKET
(
	Member_id int NOT NULL,
    Sirket_id int NOT NULL,
    Date_joined date NOT NULL,
    Date_left date,
    
    CONSTRAINT PK_MEMBER_SIRKET PRIMARY KEY (Member_id,Sirket_id),
    
    CONSTRAINT FK_Member_id_MEMBER_SIRKET FOREIGN KEY(Member_id)
							REFERENCES MEMBER(Member_id)
                            ON DELETE CASCADE ON UPDATE CASCADE,
                            
	CONSTRAINT FK_Sirket_id FOREIGN KEY(Sirket_id)
							REFERENCES SIRKET(Sirket_id)
                            ON DELETE CASCADE ON UPDATE CASCADE
);

Create Table UNIVERSITE
(
	Universite_id int NOT NULL,
    Created_by_member_id int,
    Universite_name varchar(20) NOT NULL,
    Universite_Description varchar(100),
    Universite_date_started date NOT NULL,
    Universite_date_ended date,
    Universite_date_last_activity date,
    Privacy_id int,
    
    CONSTRAINT PK_UNIVERSITE PRIMARY KEY(Universite_id),
    
    CONSTRAINT FK_Universite_Created_by_member_id FOREIGN KEY(Created_by_member_id)
										REFERENCES MEMBER(Member_id)
                                        ON DELETE SET NULL ON UPDATE CASCADE,
                                        
	CONSTRAINT FK_Privacy_id_Universite FOREIGN KEY(Privacy_id)
										REFERENCES PRIVACY(Privacy_id)
                                        ON DELETE SET NULL ON UPDATE CASCADE
                                        
);

Create Table MEMBER_UNIVERSITE
(
	Member_id int NOT NULL,
    Universite_id int NOT NULL,
    Date_joined date NOT NULL,
    Date_left date,
    
    CONSTRAINT PK_MEMBER_UNIVERSITE PRIMARY KEY (Member_id,Universite_id),
    
    CONSTRAINT FK_Member_id_MEMBER_UNIVERSITE FOREIGN KEY(Member_id)
							REFERENCES MEMBER(Member_id)
                            ON DELETE CASCADE ON UPDATE CASCADE,
                            
	CONSTRAINT FK_Universite_id FOREIGN KEY(Universite_id)
							REFERENCES UNIVERSITE(Universite_id)
                            ON DELETE CASCADE ON UPDATE CASCADE
);

Create Table NOTIFICATION
(
	Notification_id int NOT NULL,/*bildirimin kimden gelecegini dusunmedik.*/
    Msg varchar(50),
    Tip int,
    Created_at date NOT NULL,
    Member_id int NOT NULL,
    Privacy_id int,
    
    CONSTRAINT PK_NOTIFICATION PRIMARY KEY (Notification_id),
    
    CONSTRAINT FK_Notification_Member_id FOREIGN KEY (Member_id)
										REFERENCES MEMBER(Member_id)
                                        ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Privacy_id_Notification FOREIGN KEY (Privacy_id)
										REFERENCES PRIVACY(Privacy_id)
                                        ON DELETE SET NULL ON UPDATE CASCADE
                                        
);

Create Table BOOKMARK_CATEGORY
(
	Bookmark_category_id int NOT NULL,
    Adi varchar(20) NOT NULL,
    
    CONSTRAINT PK_BOOKMARK_CATEGORY PRIMARY KEY (Bookmark_category_id)
    
);

Create Table BOOKMARK_SUB_CATEGORY
(
	Bookmark_sub_category_id int NOT NULL,
    Adi varchar(20) NOT NULL,
    Bookmark_category_id int NOT NULL,
    
    CONSTRAINT PK_BOOKMARK_SUB_CATEGORY PRIMARY KEY (Bookmark_sub_category_id),
    
    CONSTRAINT FK_Bookmark_category_id FOREIGN KEY (Bookmark_category_id)
										REFERENCES BOOKMARK_CATEGORY (Bookmark_category_id)
                                        ON DELETE CASCADE ON UPDATE CASCADE
    
);
    
Create Table BOOKMARK
(
	Bookmark_id int NOT NULL,
    Url varchar(255),
    Rating int ,
    Created_at date NOT NULL,
    Bookmark_category_id int ,
    Bookmark_sub_category_id int,
    Privacy_id int,
    
    CONSTRAINT PK_BOOKMARK PRIMARY KEY (Bookmark_id),
    
    CONSTRAINT FK_Bookmark_category_id_BOOKMARK FOREIGN KEY (Bookmark_category_id)
										REFERENCES BOOKMARK_CATEGORY (Bookmark_category_id)
                                        ON DELETE SET NULL ON UPDATE CASCADE,
                                        /*null oldugunu dusunduk*/
    CONSTRAINT FK_Bookmark_sub_category_id_BOOKMARK FOREIGN KEY (Bookmark_sub_category_id)
										REFERENCES BOOKMARK_SUB_CATEGORY (Bookmark_sub_category_id)
                                        ON DELETE SET NULL  ON UPDATE CASCADE,
	CONSTRAINT FK_Privacy_id_Bookmark FOREIGN KEY (Privacy_id)
										REFERENCES PRIVACY (Privacy_id)
                                        ON DELETE SET NULL  ON UPDATE CASCADE
);    
    
Create Table BOOKMARK_INFO
(
	Bookmark_info_id int NOT NULL,
    Bookmark_id int NOT NULL,
    Member_id int NOT NULL,
    Favourite boolean,
    Clicks int,
    Privacy_id int,
    
    CONSTRAINT PK_BOOKMARK_INFO PRIMARY KEY (Bookmark_info_id),
    
	CONSTRAINT FK_1_BOOKMARK_INFO FOREIGN KEY (Bookmark_id)
										REFERENCES BOOKMARK (Bookmark_id)
                                        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_2_BOOKMARK_INFO FOREIGN KEY (Member_id)
										REFERENCES MEMBER (Member_id)
                                        ON DELETE CASCADE ON UPDATE CASCADE,
                                        
	CONSTRAINT FK_Privacy_id_Bookmark_info FOREIGN KEY (Privacy_id)
										REFERENCES PRIVACY (Privacy_id)
                                        ON DELETE SET NULL ON UPDATE CASCADE
    
    
);

/*Create Table BLOG
(
	Blog_id int NOT NULL,
    Msg varchar(100) NOT NULL,
    Author varchar(45) NOT NULL,
    Member_id int NOT NULL,
    Created_at datetime NOT NULL,
    
    CONSTRAINT  PK_BLOG PRIMARY KEY(Blog_id),
    
    CONSTRAINT FK_Member_id_BLOG FOREIGN KEY(Member_id)
						REFERENCES MEMBER(Member_id)
                        ON DELETE SET NULL ON UPDATE CASCADE
);*/

Create table REF_PROFILE_SECTION
( 
Profile_section_code int not null,/*burda favori film,kitap,müzik vb. profili olusturan alt basliklar yazılacak.*/
Profile_section_description varchar(20),
										

 CONSTRAINT PK_REF_PROFILE_SECTION primary key(Profile_section_code)
 
);
Create table MEMBER_PROFILES/*burada bir profilin kime ait oldugu tutuluyo sadece*/
(Profile_id int not null,
Member_id int not null,
Date_created date not null,
Date_last_updated date not null,
Goruntulenme_sayisi int ,
Privacy_id int,

 CONSTRAINT PK_MEMBER_PROFILES primary key(Profile_id),
 CONSTRAINT FK_MEMBER_PROFILES foreign key (Member_id) REFERENCES MEMBER(Member_id)
 ON DELETE CASCADE ON UPDATE CASCADE,
 
  CONSTRAINT FK_Privacy_id foreign key (Privacy_id) REFERENCES PRIVACY(Privacy_id)
 ON DELETE SET NULL ON UPDATE CASCADE
 
 );
 CREATE TABLE PROFILE_SECTION (
    Profile_section_id INT NOT NULL,
    Profile_section_code INT NOT NULL,
    Profile_id INT NOT NULL,
    Date_created date NOT NULL,
    Date_updated date NOT NULL,
    Profile_section_text VARCHAR(200),
    
    CONSTRAINT PK_PROFILE_SECTION PRIMARY KEY (Profile_section_id,Profile_section_code,Profile_id),
    
    CONSTRAINT FK_Profile_section_code_PROFILE_SECTION FOREIGN KEY (Profile_section_code)
        REFERENCES REF_PROFILE_SECTION (Profile_section_code)
        ON DELETE CASCADE ON UPDATE CASCADE,
        
    CONSTRAINT FK_Profile_id_PROFILE_SECTION FOREIGN KEY (Profile_id)
        REFERENCES MEMBER_PROFILES (Profile_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

 Create Table COUNTRY
 (
	Country_id int NOT NULL,
    Country varchar(45),
    
    CONSTRAINT PK_COUNTRY PRIMARY KEY(Country_id)
    
);

Create Table CITY
(
	City_id int NOT NULL,
    Country_id int NOT NULL,
    City varchar(45),
    
    CONSTRAINT PK_CITY PRIMARY KEY (City_id),
    
    CONSTRAINT FK_Country_id FOREIGN KEY (Country_id)
							REFERENCES COUNTRY(Country_id)
                            ON DELETE CASCADE ON UPDATE CASCADE
                            
);

Create Table ADDRESS
(
	Address_id int NOT NULL,/*Address sahasına yazacagı sehir ile city_id control edilmeli*/
    Address varchar(45),
    City_id int NOT NULL,
    Profile_id int NOT NULL,
    Privacy_id int,
    
    CONSTRAINT PK_ADDRESS PRIMARY KEY (Address_id),
    
    CONSTRAINT FK_City_id FOREIGN KEY(City_id)
							REFERENCES CITY(City_id)
                            ON DELETE CASCADE ON UPDATE CASCADE,
                            
	CONSTRAINT FK_Profile_id FOREIGN KEY (Profile_id)/*tam tersi olmsı daha mı mantıklı??*/
							REFERENCES MEMBER_PROFILES(Profile_id)
                            ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Privacy_id_Address FOREIGN KEY (Privacy_id)/*tam tersi olmsı daha mı mantıklı??*/
							REFERENCES PRIVACY(Privacy_id)
                            ON DELETE CASCADE ON UPDATE CASCADE
                            
);

Create Table LANG
(
	Language_id int NOT NULL,
    Lang varchar(45),
    Member_id int NOT NULL,
    
    CONSTRAINT PK_LANG PRIMARY KEY(Language_id),
    
    CONSTRAINT FK_Member_id_LANG FOREIGN KEY(Member_id)
								REFERENCES MEMBER(Member_id)
                                ON DELETE CASCADE ON UPDATE CASCADE
                                
);

Create Table NICK_NAME
(
	Nick_name_id int NOT NULL,
    Nickname varchar(45),
    Member_id int NOT NULL,
    Privacy_id int,
    
    CONSTRAINT PK_NICK_NAME PRIMARY KEY(Nick_name_id),
    
    CONSTRAINT FK_Member_id_NICK_NAME FOREIGN KEY(Member_id)
									REFERENCES MEMBER(Member_id)
                                    ON DELETE CASCADE ON UPDATE CASCADE,
	 CONSTRAINT FK_Privacy_id_Nick FOREIGN KEY(Privacy_id)
									REFERENCES PRIVACY(Privacy_id)
                                    ON DELETE SET NULL ON UPDATE CASCADE
);

Create Table REF_CV_SECTIONS
(
	Cv_section_code int NOT NULL,
    Cv_section_descr varchar(45),
    
    CONSTRAINT PK_REF_CV_SECTIONS PRIMARY KEY(Cv_section_code)
    
);

Create Table CVS
(
	Cv_id int NOT NULL,
    Member_id int NOT NULL,
    Date_created date NOT null,
    Date_updated date NOT NULL,
    Privacy_id int,
    
    CONSTRAINT PK_CVS PRIMARY KEY(Cv_id),
    
    CONSTRAINT FK_Member_id_CVS FOREIGN KEY(Member_id)
									REFERENCES MEMBER(Member_id)
                                    ON DELETE CASCADE ON UPDATE CASCADE,
                                    
	CONSTRAINT FK_Privacy_id_Cv FOREIGN KEY(Privacy_id)
									REFERENCES PRIVACY(Privacy_id)
                                    ON DELETE CASCADE ON UPDATE CASCADE
);
    
Create Table CV_SECTIONS
(
	Cv_section_id int NOT NULL,/*aynı mantıkla profili 3 parcali pk dan olusturduk*/
    Cv_id int NOT NULL,
    Cv_section_code int NOT NULL,
    Date_created date NOT NULL,
    Date_updated date,
    Cv_section_text varchar(100),
    
    CONSTRAINT PK_CV_SECTIONS PRIMARY KEY(Cv_section_id),
    
    CONSTRAINT FK_Cv_id_CV_SECTIONS FOREIGN KEY(Cv_id)
									REFERENCES CVS(Cv_id)
                                    ON DELETE CASCADE ON UPDATE CASCADE,
                                    
	CONSTRAINT FK_Cv_section_code_CV_SECTIONS FOREIGN KEY(Cv_section_code)
									REFERENCES REF_CV_SECTIONS(Cv_section_code)
                                    ON DELETE CASCADE ON UPDATE CASCADE
                                    
);
Create table FEED_CATEGORY (
Feed_category_id int not null,
name varchar(45),
CONSTRAINT PK_FEED_CATEGORY PRIMARY KEY (Feed_category_id)


);

Create Table FEED_SUB_CATEGORY
(
	Feed_sub_category_id int NOT NULL,
    Isim varchar(45),
    Feed_category_id int NOT NULL,
    
    CONSTRAINT PK_FEED_SUB_CATEGORY PRIMARY KEY(Feed_sub_category_id),
    
    CONSTRAINT FK_Feed_category_id_FEED_SUB_CATEGORY FOREIGN KEY(Feed_category_id)
									REFERENCES FEED_CATEGORY(Feed_category_id)
                                    ON DELETE CASCADE ON UPDATE CASCADE
                                    
);

Create table FEED (
Feed_id int not null,
Feed_url varchar(255),
Rating int,

created_at date Not null,
feed_category_id int,
feed_sub_category_id int,
Privacy_id int,
CONSTRAINT PK_FEED PRIMARY KEY (Feed_id),
CONSTRAINT FK_feed_category_id_FEED foreign key (feed_category_id)references FEED_CATEGORY (feed_category_id)
ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT FK_feed_sub_category_id_FEED foreign key (feed_sub_category_id)references FEED_SUB_CATEGORY (feed_sub_category_id)
ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT FK_Privacy_id_Feed foreign key (Privacy_id)references PRIVACY (Privacy_id)
ON DELETE SET NULL ON UPDATE CASCADE



);
Create table FEED_INFO (
Feed_info_id int not null,
Feed_id int not null,
member_id int  NOT NULL,
favorite boolean,
clicks int ,
Privacy_id int,
CONSTRAINT PK_Feed_info_id_FEED_INFO PRIMARY KEY (Feed_info_id),
CONSTRAINT FK_Feed_id_FEED_INFO foreign key (Feed_id)references FEED(feed_id)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_member_id_FEED_INFO foreign key (member_id)references MEMBER(Member_id)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_Privacy_id_Feed_Info foreign key (Privacy_id)references PRIVACY (Privacy_id)
ON DELETE SET NULL ON UPDATE CASCADE
);

 
 create table CONNECTIONS
(
Member_id int not null,
Connection_member_id int not null,
Date_connection_mode date not null,
CONSTRAINT PK_CONNECTIONS PRIMARY KEY (Member_id,Connection_member_id),
CONSTRAINT FK_CONNECTIONS FOREIGN KEY (Member_id)
							REFERENCES MEMBER(Member_id)
                            ON DELETE CASCADE ON UPDATE CASCADE,
   CONSTRAINT FK2_CONNECTIONS FOREIGN KEY (Connection_member_id)
							REFERENCES MEMBER(Member_id)    
                            ON DELETE CASCADE ON UPDATE CASCADE


);
Create Table CHAT 
(
	
    Member_id int not null,
    Chat_member_id int NOT NULL,
    Msg varchar(100) NOT NULL,
    Created_at date NOT NULL,
    
    CONSTRAINT PK_CHAT PRIMARY KEY(Member_id,Chat_member_id),
    
    CONSTRAINT FK_CHAT FOREIGN KEY(Member_id,Chat_member_id)
									REFERENCES CONNECTIONS(Member_id,Connection_member_id)
                                    ON DELETE CASCADE ON UPDATE CASCADE
	
                                    
                                    

                                    
);

create table PEOPLE_BEING_FOLLOWED
(Member_id int NOT NULL,
Member_being_followed int NOT NULL ,
Date_started_following date not null,
Date_stopped_following date,
CONSTRAINT PK_PEOPLE_BEING_FOLLOWED PRIMARY KEY (Member_id,Member_being_followed),

CONSTRAINT FK_PEOPLE_FOLLOWED FOREIGN KEY (Member_id)
							REFERENCES MEMBER(Member_id)
                            ON DELETE CASCADE ON UPDATE CASCADE,
                            
CONSTRAINT FK_PEOPLE_BEING_FOLLOWED FOREIGN KEY (Member_being_followed)
							REFERENCES MEMBER(Member_id)
                            ON DELETE CASCADE ON UPDATE CASCADE
                            
);
Create table RECOMMENDATIONS
(Member_recommending_id int not null,
Member_being_recommendend_id int not null,

Date_of_recommendation date not null,
CONSTRAINT PK_RECOMMENDATIONS PRIMARY KEY (Member_recommending_id,Member_being_recommendend_id),

CONSTRAINT FK2_RECOMMENDATIONS FOREIGN KEY (Member_recommending_id)
							REFERENCES MEMBER(Member_id)
                            ON DELETE CASCADE ON UPDATE CASCADE,
                            
CONSTRAINT FK_RECOMMENDATIONS FOREIGN KEY (Member_being_recommendend_id)
							REFERENCES MEMBER(Member_id)
                            ON DELETE CASCADE ON UPDATE CASCADE
);

Create table STATU
(
Status_id int not null,
Message varchar(100),
Created_at date not null,
Thumps_up int,
Thumps_down int,
/*Privacy int,*/
Is_reply boolean,
To_fb boolean,
To_twitter boolean,
Member_id int not null,
Privacy_id int,
CONSTRAINT PK_STATUS primary key(Status_id),
CONSTRAINT FK_STATUS  foreign key (Member_id) REFERENCES MEMBER(Member_id)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_Privacy_id_Statu foreign key (Privacy_id)references PRIVACY (Privacy_id)
ON DELETE SET NULL ON UPDATE CASCADE
);

Create table COMMENTS
 (  comment_id int not null,
   Message varchar(100),
  Created_at date not null,
 Status_id int not null,
CONSTRAINT PK_COMMENTS primary key(comment_id),
CONSTRAINT FK_Status_id_COMMENTS foreign key (Status_id) REFERENCES STATU(Status_id)
ON DELETE CASCADE ON UPDATE CASCADE
);

Create table THUMB_UP_DOWN
(
Thump_up_down_id int not null,
Flag boolean,
Created_at date not null,
Status_id int not null,
CONSTRAINT PK_THUMP_UP_DOWN primary key(thump_up_down_id),
CONSTRAINT FK_THUMP_UP_DOWN  foreign key (Status_id) REFERENCES STATU(Status_id)
ON DELETE CASCADE ON UPDATE CASCADE
);
Create Table OYUN
(
	Oyun_id int NOT NULL,
    Oyun_adi varchar(100),
    
    CONSTRAINT PK_OYUN PRIMARY KEY (Oyun_id)
    
);
Create Table DURTME
(
	Durtme_id int NOT NULL,
    Durten_id int NOT NULL,
    Durtulen_id int NOT NULL,
    
    CONSTRAINT PK_DURTME PRIMARY KEY (Durtme_id),
    
    CONSTRAINT FK_Durten_id_Durtulen_id FOREIGN KEY (Durten_id,Durtulen_id)
							REFERENCES CONNECTIONS(Member_id,Connection_member_id)/*uygulamalardaki surtme id ile sorun olabilir*/
);
Create Table ETKINLIK
(	Etkinlik_id int NOT NULL,
	Etkinlik_adi varchar(50),
    Member_id int,
    
    CONSTRAINT PK_ETKINLIK PRIMARY KEY (Etkinlik_id),
    CONSTRAINT FK_ETKINLIK FOREIGN KEY (Member_id)
							REFERENCES MEMBER(Member_id)
                            ON DELETE CASCADE ON UPDATE CASCADE
                            
    
);

Create Table UYGULAMALAR
(
	Uygulama_id int  NOT NULL,
    Member_id int,
    Etkinlik_id int,
    Durtme_id int,
    Oyun_id int,
    
    CONSTRAINT PK_UYGULAMALAR PRIMARY KEY (Uygulama_id),
                              
	
    CONSTRAINT FK_Etkinlik_id_UYGULAMALAR FOREIGN KEY(Etkinlik_id)
							REFERENCES ETKINLIK(Etkinlik_id)
                            ON DELETE SET NULL ON UPDATE CASCADE,
                            
	CONSTRAINT FK_Durtme_id_UYGULAMALAR FOREIGN KEY(Durtme_id)
							REFERENCES DURTME(Durtme_id)
                            ON DELETE SET NULL ON UPDATE CASCADE,
                            
	CONSTRAINT FK_Oyun_id_UYGULAMALAR FOREIGN KEY(Oyun_id)
							REFERENCES OYUN(Oyun_id)
                            ON DELETE SET NULL            ON UPDATE CASCADE,
                            
	CONSTRAINT FK_Member_id_UYGULAMALAR FOREIGN KEY(Member_id)
							REFERENCES MEMBER(Member_id)
                            ON DELETE CASCADE ON UPDATE CASCADE
                            
);
    

    



                               
    
    
        
    
                                     

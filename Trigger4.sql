use sosyalOzgecmis;
DELIMITER //
    CREATE TRIGGER populerGoruntulenler before INSERT ON MEMBER_PROFILES
	FOR EACH ROW 
    BEGIN
    declare b varchar(45);
    declare a int ;
    declare c varchar(45);
    
    
    set b=( new.Goruntulenme_sayisi );
     set a=(select Profile_id from member_profiles where new.Goruntulenme_sayisi>10 );
     set c=(select Email_adres from member,member_profiles where member_profiles.Profile_id=a and member.Member_id=member_profiles.Member_id);
    IF ( b>10 ) then
     insert into POPULER_MEMBER(Email_address) VALUES(c) ; 
     
   
end if;
END //

    DELIMITER ;
    












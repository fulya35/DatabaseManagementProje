DELIMITER ;;

CREATE TRIGGER chk_insert_level_UPDATE BEFORE UPDATE ON member_grup
 FOR EACH ROW
 begin
IF NOT (NEW.Date_joined > (select grup.Group_date_started from grup where grup.Group_id =new.Group_id ))THEN
  SIGNAL sqlstate '45001' set message_text = "Member ın katılma tarihi grubun oluşturma tarihinden küçük olamaz!";
END IF;
end;;
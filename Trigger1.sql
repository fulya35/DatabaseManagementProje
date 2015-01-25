
CREATE TRIGGER uye_SayisiTrigger after INSERT ON member_grup
FOR EACH ROW 

UPDATE grup SET grup.Uygun_kontenjan = grup.Uygun_kontenjan - 1 WHERE grup.Group_id = NEW.Group_id;

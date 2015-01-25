DELIMITER /

CREATE TRIGGER kontrol AFTER INSERT ON comments
FOR EACH ROW begin update statu set statu.Is_reply=true 
where (statu.status_id=new.status_id); end;
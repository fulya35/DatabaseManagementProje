DELIMITER $$
create trigger trigger1  after delete on MEMBER
for each row
BEGIN
declare b int default 0;
set b=now()-member.Dondurma_tarihi;

if(old.Active=false and b>15) then
   insert into  ESKI_KAYITLAR(eski_member_id) VALUES(old.member_id) ; 
   /*delete from Member where member_id=eski_kayitlar.eski_member_id;*/
   
 end if;
  
  if(old.Active=true || b<15) then
   SIGNAL sqlstate '45001' set message_text = "aaaaa olmaz ki  ! silmeye hakkın yok!";
  end if;

     
END
$$

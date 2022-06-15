# DZ očistiti i jednostruki navodnik

drop function if exists email;
DELIMITER $$
CREATE FUNCTION email(ime varchar(50), prezime varchar(50)) RETURNS varchar(255)
begin

return concat(left(lower(ime),1),'.', lower(
replace(
replace(
replace(
replace(
replace(
replace(replace(upper(prezime),' ',''),'Č','C')
,'Š','S')
,'Đ','D')
,'Ć','C')
,'Ž','Z')
,'''','') # dodan još jedan replace sa navodnicima unutar navodnika, zamijenjen praznim navodom
), '@edunova.hr');
end;
$$
DELIMITER ;

select email(ime,prezime) from osoba;
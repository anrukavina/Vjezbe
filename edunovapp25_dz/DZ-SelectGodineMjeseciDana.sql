# DZ: napisati select koji kaže koliko si star godina
# mjeseci, i dana
# pr. 42 godine, 6 mjeseci i 5 dana

select timestampdiff(year,'1999-02-07', curdate()) as age;
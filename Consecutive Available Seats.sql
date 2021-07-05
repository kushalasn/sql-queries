#the above two tries  are commented to learn from mistakes

# select a.seat_id
# from cinema  as a
# join cinema as b
# on a.seat_id=b.seat_id 
# where abs(a.seat_id-b.seat_id)=1 and a.free=1 and b.free=1


# select distinct c1.seat_id 
# from cinema as  c1 
# join cinema as  c2
# on c1.seat_id=c2.seat_id
# where c1.free=1 and c2.free=1
# and ((c1.seat_id=c2.seat_id-1)or(c1.seat_id=c2.seat_id+1))

 select distinct a.seat_id
 from cinema a join cinema b
 on abs(a.seat_id-b.seat_id)=1
 where a.free = 1 and b.free = 1 
 order by a.seat_id asc
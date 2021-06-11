select 
        round(
            ifnull(
                (select count(*) from (select distinct requester_id,accepter_id  FROM RequestAccepted) as a)/(select count(*)
                      from (select distinct sender_id ,send_to_id   FROM FriendRequest) as b),0),2) as accept_rate
             
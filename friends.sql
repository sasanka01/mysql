SELECT users.first_name, users.last_name, user2.first_name AS friend_first_name, user2.last_name AS friend_last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
JOIN users as user2 ON friendships.friend_id = user2.id;

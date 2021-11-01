#check if book have items to it by title
SELECT count(*) FROM items
LEFT JOIN titles
	ON titles.id = items.title_id
WHERE titles.title = <desired title>;




#get all checkout and not returned book items by tytle
SELECT item_id FROM checkout_items
LEFT JOIN items
	ON items.id = checkout_items.item_id AND checkout_items.returned = FALSE
LEFT JOIN titles
	ON items.title_id = titles.id
WHERE titles.title = <desired title>;

#check if book have items present, not checked out
SELECT count(*) from items
INNER JOIN (SELECT item_id FROM checkout_items
	    LEFT JOIN items
	   	ON items.id = checkout_items.item_id AND checkout_items.returned = FALSE
	    LEFT JOIN titles
	   	ON items.title_id = titles.id
	    WHERE titles.title = <desired title>) as checkout_items
	ON items.id != checkout_items.item_id
LEFT JOIN titles
	   ON items.title_id = titles.id
	   WHERE titles.title = <desired title>;

#get earliest date of book item willbe returned
SELECT item_id, return_date FROM checkout_items
LEFT JOIN items
	ON items.id = checkout_items.item_id AND checkout_items.returned = FALSE
LEFT JOIN titles
	ON items.title_id = titles.id
WHERE titles.title = <desired title>
ORDER BY return_date ASC;

#checkout book
INSERT INTO checkout_items (user_id, item_id, checkout_date, return_date, returned)
VALUES (1, 2, "2021-01-01", "2021-03-01", FALSE);

#return book
UPDATE checkout_items
SET returned = TRUE
WHERE user_id = <desired user> AND item_id = <desired item_id>;


#add book title
INSERT INTO titles (title, author_name)
VALUES (<desired title>, <desired author>);

#remove book title
DELETE FROM titles WHERE id = <desired id>;


#add book item
INSERT INTO items (title_id, publisher, date_published)
VALUES (<desired title_id>, <desired publisher>, <desired date_published>);

#remove book item
DELETE FROM items WHERE id = <desired id>;

#get a list of users with overdue books to return
select * from users
inner join (SELECT user_id, item_id  from checkout_items
	     WHERE returned = FALSE AND DATE(<desired date>) > return_date) as users_overdue_return_date
where users.id = users_overdue_return_date.user_id;








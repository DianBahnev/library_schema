USE library;

INSERT INTO users (name, e_mail)
VALUES ("Jhon Doe", "jhonDoe@gmail.com"),
       ("Peter Stoianov", "Peter.stoianov@yahoo.com"),
       ("Jeff Smit", "jsmit@mydomain.com");

INSERT INTO titles (title, author_name)
VALUES ("Foundation", "Aisac Assimov"),
       ("Dune", "Frank Herbert"),
       ("The Godfather", "Mario Punzo"),
       ("Bible", NULL);
       
INSERT INTO items (title_id, publisher, date_published)
VALUES (1, "SyFiUSA", "1942-05-01"),
       (1, "SyFiUSA", "1942-05-01"),
       (1, "SyFiUSA", "1942-05-01"),
       (1, "SyFiUSA", "1942-05-01"),
       (1, "Penguin", "2010-08-20"),
       (1, "Penguin", "2010-08-20"),
       (1, "Penguin", "2010-08-20"),
       (1, "Penguin", "2010-08-20"),
       (2, "SyFiUSA", "1965-07-02"),
       (2, "SyFiUSA", "1965-07-02"),
       (2, "SyFiUSA", "1965-07-02"),
       (2, "SyFiUSA", "1965-07-02"),
       (2, "Classics Publishing", "2020-10-11"),
       (2, "Classics Publishing", "2020-10-11"),
       (2, "Classics Publishing", "2020-10-11"),
       (2, "Classics Publishing", "2020-10-11"),
       (3, "Organized Publishers", "2005-12-30"),
       (3, "Organized Publishers", "2005-12-30"),
       (3, "Organized Publishers", "2005-12-30"),
       (3, "Organized Publishers", "2005-12-30");
       
INSERT INTO checkout_items (user_id, item_id, checkout_date, return_date, returned)
VALUES (1, 1, "2021-01-01", "2021-03-01", TRUE),
       (1, 4, "2021-03-01", "2021-05-01", FALSE),
       (2, 9, "2021-02-01", "2021-09-01", FALSE),
       (2, 10, "2021-02-05", "2021-09-05", FALSE),
       (2, 17, "2021-04-01", "2021-09-01", FALSE);




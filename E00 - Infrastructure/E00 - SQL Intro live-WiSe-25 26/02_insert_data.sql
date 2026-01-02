-- sample
-- INSERT INTO public.users("name") VALUES('Tester Test 4');

--sample
--INSERT INTO public."comments" (author_id, post_id, message) VALUES( 3, 2, 'Nice try 2');

--sample
-- INSERT INTO public.posts (title, body, author_id) VALUES('Some title 2', 'This is another article about something ...', 1);


INSERT INTO public.users (id,"name",registration_date) VALUES (1,'Max M.', null);
INSERT INTO public.users (id,"name",registration_date) VALUES (3,'Tester Test 3','2025-11-14 15:30:47.31734');
INSERT INTO public.users (id,"name",registration_date) VALUES (5,'Tester Test 5','2025-11-14 15:49:08.975162');
INSERT INTO public.users (id,"name",registration_date) VALUES (6,'Tester Test 6','2025-11-14 15:49:11.868837');


INSERT INTO public.posts (id,title,body,author_id,publish_date) VALUES (2,'Test Title about BI 1','This is the nice text....',1,NULL);
INSERT INTO public.posts (id,title,body,author_id,publish_date) VALUES (3,'Some title 1','This is another article about something ...',1,NULL);
INSERT INTO public.posts (id,title,body,author_id,publish_date) VALUES (5,'Some title 2','This is another article about something ...',1,NULL);
INSERT INTO public.posts (id,title,body,author_id,publish_date) VALUES (6,'Some title 3','This is another article about something ...',1,'2025-11-14 15:23:56.764623');
INSERT INTO public.posts (id,title,body,author_id,publish_date) VALUES (7,'Some title 4','This is another article about something ...',1,'2025-11-14 15:23:57.486845');
INSERT INTO public.posts (id,title,body,author_id,publish_date) VALUES (8,'Some title 5','This is another article about something ...',3,'2025-11-14 15:23:57.723018');
INSERT INTO public.posts (id,title,body,author_id,publish_date) VALUES (9,'Some title 6','This is another article about something ...',3,'2025-11-14 15:23:57.918858');
INSERT INTO public.posts (id,title,body,author_id,publish_date) VALUES (10,'Some title 7','This is another article about something ...',3,'2025-11-14 15:23:58.074524');
INSERT INTO public.posts (id,title,body,author_id,publish_date) VALUES (11,'Some title 8','This is another article about something ...',5,'2025-11-14 15:23:58.223271');
INSERT INTO public.posts (id,title,body,author_id,publish_date) VALUES (12,'Some title 9','This is another article about something ...',5,'2025-11-14 15:23:58.360216');
INSERT INTO public.posts (id,title,body,author_id,publish_date) VALUES (13,'Some title 10','This is another article about something ...',5,'2025-11-14 15:23:58.513727');
INSERT INTO public.posts (id,title,body,author_id,publish_date) VALUES (14,'Some title 11','This is another article about something ...',6,'2025-11-14 15:23:58.640102');
INSERT INTO public.posts (id,title,body,author_id,publish_date) VALUES (15,'Some title 12','This is another article about something ...',6,'2025-11-14 15:23:58.78588');


INSERT INTO public."comments" (id,author_id,post_id,message,publish_date) VALUES (1,1,2,'Nice try 1','2025-11-14 15:12:35.167625');
INSERT INTO public."comments" (id,author_id,post_id,message,publish_date) VALUES (3,1,2,'Nice try 2','2025-11-14 15:14:50.042286');
INSERT INTO public."comments" (id,author_id,post_id,message,publish_date) VALUES (4,3,3,'Nice try 3','2025-11-14 15:14:51.135041');
INSERT INTO public."comments" (id,author_id,post_id,message,publish_date) VALUES (5,3,3,'Nice try 4','2025-11-14 15:14:51.715848');
INSERT INTO public."comments" (id,author_id,post_id,message,publish_date) VALUES (6,3,5,'Nice try 5','2025-11-14 15:14:51.990944');
INSERT INTO public."comments" (id,author_id,post_id,message,publish_date) VALUES (7,5,5,'Nice try 6','2025-11-14 15:14:52.236668');
INSERT INTO public."comments" (id,author_id,post_id,message,publish_date) VALUES (8,5,6,'Nice try 7','2025-11-14 15:14:52.394656');
INSERT INTO public."comments" (id,author_id,post_id,message,publish_date) VALUES (9,6,8,'Nice try 8','2025-11-14 15:14:52.543954');
INSERT INTO public."comments" (id,author_id,post_id,message,publish_date) VALUES (12,6,5,'Nice try 10','2025-11-14 15:42:59.784346');

drop table hp_Member;
Create table hp_Member(
    hp_Index                number(6) primary key,
    hp_ID                   varchar2(20) not null,
    hp_Password             varchar2(30) not null,
    hp_Name                 varchar2(20) not null,
    hp_Birthday_Year        number(15) not null,
    hp_Birthday_Month       number(15) not null,
    hp_Sex                  number(3) not null,
    hp_Email                varchar2(40) not null,
    hp_Phone                varchar2(20) not null,
    hp_Ticket               number(6) not null,
    hp_Auth                 number(6) not null
);
drop sequence hp_Member_hp_Index;
create sequence hp_Member_hp_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim1', '1111', 'hyodong1', 1996, 01, 1, 'kim1@email.com', '1111-1111', 1, 1 );
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim2', '2222', 'hyodong2', 1996, 01, 1, 'kim2@email.com', '2222-2222', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim3', '3333', 'hyodong3', 1996, 01, 1, 'kim3@email.com', '3333-3333' ,1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim4', '4444', 'hyodong4', 1996, 01, 1, 'kim4@email.com', '4444-4444', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim5', '5555', 'hyodong5', 1996, 01, 1, 'kim5@email.com', '5555-5555', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim6', '6666', 'hyodong6', 1996, 01, 1, 'kim6@email.com', '6666-6666', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim7', '7777', 'hyodong7', 1996, 01, 1, 'kim7@email.com', '7777-7777', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim8', '8888', 'hyodong8', 1996, 01, 1, 'kim8@email.com', '8888-8888', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim9', '9999', 'hyodong9', 1996, 01, 1, 'kim9@email.com', '9999-9999', 1, 1);
select * from hp_Member;
delete from hp_Member;
commit;





drop table hp_Book;
Create table hp_Book(
  book_Index            number(6) primary key,
  book_Title            varchar2(20) not null,
  book_Writer           varchar2(20) not null,
  book_Company          varchar2(20) not null,
  book_Image            varchar2(100) not null,
  book_Content          varchar2(300) not null,
  book_Introduce        varchar2(1000) not null,
  book_Category         number(2) not null
);
drop sequence hp_Book_Book_Index;
create sequence hp_Book_Book_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '1??????', 'hyo1', '11?????????', '1?????????.png', '1??????????????????.pdf', '1????????????????????????', 0);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '2??????', 'hyo2', '22?????????', '2?????????.png', '2??????????????????.pdf', '2????????????????????????', 1);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '3??????', 'hyo3', '33?????????', '3?????????.png', '3??????????????????.pdf', '3????????????????????????', 0);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '4??????', 'hyo4', '44?????????', '4?????????.png', '4??????????????????.pdf', '4????????????????????????', 0);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '5??????', 'hyo5', '55?????????', '5?????????.png', '5??????????????????.pdf', '5????????????????????????', 1);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '6??????', 'hyo6', '66?????????', '6?????????.png', '6??????????????????.pdf', '6????????????????????????', 0 );
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '7??????', 'hyo7', '77?????????', '7?????????.png', '7??????????????????.pdf', '7????????????????????????', 1 );
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '8??????', 'hyo8', '88?????????', '8?????????.png', '8??????????????????.pdf', '8????????????????????????', 1 );
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '9??????', 'hyo9', '99?????????', '9?????????.png', '9??????????????????.pdf', '9????????????????????????', 1 );
select * from hp_Book;
delete from hp_book;
Update hp_book set book_company = '11?????????' where book_company = '??????';
alter table hp_book add book_Category number(3) not null;
commit;
drop table Book_review;






Create table Book_review(
  review_Index        number(10) primary key,
  book_Index          number(6) not null,
  hp_Index            number(6) not null,
  book_Title          varchar2(20) not null,
  review_name         varchar2(20) not null,
  review_password     varchar2(20) not null,
  book_review         varchar2(1000) not null,
  Constraint Book_review_Book foreign key(book_Index) references hp_Book(book_Index),
  Constraint Book_review_Member foreign key(hp_Index) references hp_Member(hp_Index)
);
drop sequence Book_review_review_Index;
create sequence Book_review_review_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 1, 3, '3??????', 'abc', '123456', '????????????' );
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 3, 2, '2??????', 'qwert', '56789', '????????????' );
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 7, 6, '6??????', 'lkjhg', 'ertyuio', '????????????' );
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 8, 9, '9??????', 'zxcvbn', 'zrtyhn', '??????_??????_??????' );
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 9, 1, '1??????', 'vguikm', 'sertyuhjn', '???????????????' );
select * from Book_review;
drop table Book_review;
drop sequence Book_review_hp_Index;
alter table Book_review Drop Constraint Book_review_FK;
commit;







Create table hp_Mybooks(
  hp_Index            number(6) primary key,
  book_Index          number(6) not null,
  book_Title          varchar2(20) not null,
  book_Writer         varchar2(20) not null,
  book_Image          varchar2(100) not null,
  Constraint hp_Mybooks_FK_hp foreign key(hp_Index) references hp_Member(hp_Index),
  Constraint hp_Mybooks_FK_book foreign key(book_Index) references hp_Book(book_Index)
);
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image )
  values( 1, 1, '1??????', 'hyo1', '1?????????.png' );
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image )
  values( 4, 3, '3??????', 'hyo3', '3?????????.png' );
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image )
  values( 7, 5, '5??????', 'hyo5', '5?????????.png' );
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image )
  values( 9, 7, '7??????', 'hyo7', '7?????????.png' );
select * from hp_Mybooks;
drop table hp_MyBooks;
drop sequence hp_Mybooks_hp_Index;
commit;
drop table hp_QnA;








Create table hp_QnA(
  qna_Index           number(6) primary key,
  hp_Index            number(6) not null,
  hp_ID               varchar2(20) not null,
  qna_Title           varchar2(20) not null,
  qna_Content         varchar2(300) not null,
  answer_Check        number(2) not null,
  qna_Date            Date,
  Constraint hp_QnA_FK foreign key(hp_Index) references hp_Member(hp_Index)
);
drop sequence hp_QnA_qna_Index;
create sequence hp_QnA_qna_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;
insert into hp_qna( qna_Index, hp_Index, hp_ID, qna_Title, qna_Content, answer_Check, qna_Date)
  values(hp_QnA_qna_Index.nextval, 1, 'kim1', 'aaaa', 'AAAA', 0, Sysdate);
insert into hp_qna( qna_Index, hp_Index, hp_ID, qna_Title, qna_Content, answer_Check, qna_Date)
  values(hp_QnA_qna_Index.nextval, 4, 'kim4', 'bbbb', 'BBBB', 2, Sysdate);
insert into hp_qna( qna_Index, hp_Index, hp_ID, qna_Title, qna_Content, answer_Check, qna_Date)
  values(hp_QnA_qna_Index.nextval, 6, 'kim6', 'cccc', 'CCCC', 1, Sysdate);
insert into hp_qna( qna_Index, hp_Index, hp_ID, qna_Title, qna_Content, answer_Check, qna_Date)
  values(hp_QnA_qna_Index.nextval, 8, 'kim8', 'dddd', 'DDDD', 0, Sysdate);
select * from hp_qna;
commit;
drop table QnA_Answer;










Create table QnA_Answer(
  answer_Index        number(6) primary key,
  qna_Index           number(6) not null,
  qna_Answer          varchar2(1000) not null,
  answer_Date         Date,
  Constraint QnA_Answer_FK foreign key(qna_Index) references hp_QnA(qna_Index)
);
drop sequence QnA_Answer_Index;
create sequence QnA_Answer_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;
insert into QnA_Answer(answer_Index, qna_Index, qna_Answer, answer_Date )
  values( QnA_Answer_Index.nextval,  1, '???????????????', sysdate );
insert into QnA_Answer(answer_Index, qna_Index, qna_Answer, answer_Date )
  values( QnA_Answer_Index.nextval,  3, '????????????', sysdate );
insert into QnA_Answer(answer_Index, qna_Index, qna_Answer, answer_Date )
  values( QnA_Answer_Index.nextval,  4, '????????????', sysdate );
select * from QnA_Answer;
commit;







drop table hp_Notice;

Create table hp_Notice (
  notice_Index      number(6),
  notice_Title      varchar2(100) not null,
  notice_Content    varchar2(1000) not null,
  notice_Date       date default sysdate,
  notice_Count      number(6)
 
);

drop sequence hp_Notice_Index;
create sequence hp_Notice_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;

insert into hp_Notice( notice_Index, notice_Title, notice_Content, notice_Date, notice_Count )
  values( hp_Notice_Index.nextval, '????????? ?????? ????????????.', '21??? ?????? 11????????? 22??? ?????? 10????????? ????????? ?????? ????????????. ?????? ??????????????????.', sysdate, 1 );
insert into hp_Notice( notice_Index, notice_Title, notice_Content, notice_Date, notice_Count )
  values( hp_Notice_Index.nextval, '?????? ?????? ?????? ??????', '?????? ????????? ?????????????????????.', sysdate, 1 );
insert into hp_Notice( notice_Index, notice_Title, notice_Content, notice_Date, notice_Count )
  values( hp_Notice_Index.nextval, '???????????? ????????? ?????? ?????????????????????.', '???????????? ????????? ?????? ?????????????????????. ?????? ?????? ??????????????????.', sysdate, 1 );

select * from hp_Notice;

commit;
CREATE TABLE Accounts
(
    account_num  number,
    account_id    VARCHAR2(20) NOT NULL,
    account_pw    VARCHAR2(24) NOT NULL,
    account_nickname    VARCHAR2(20) NOT NULL,
    account_reg_date    DATE NOT NULL,
    account_email    VARCHAR2(30),
    account_del    CHAR(1) DEFAULT 'n' NOT NULL
);

ALTER TABLE Accounts
 ADD CONSTRAINT Accounts_PK PRIMARY KEY ( account_id )
create sequence Accounts_seq;


CREATE TABLE Article
(
    board_num    NUMBER NOT NULL,
    article_num    NUMBER NOT NULL,
    account_num    NUMBER NOT NULL,
    article_title    VARCHAR2(50) NOT NULL,
    article_content    VARCHAR2(500) NOT NULL,
    article_date    DATE NOT NULL,
    article_read    NUMBER DEFAULT 0 NOT NULL,
    article_recom    NUMBER DEFAULT 0 NOT NULL,
    article_del    CHAR(1) DEFAULT 'n' NOT NULL
);

ALTER TABLE Article
 ADD CONSTRAINT Article_PK PRIMARY KEY ( board_num,article_num );


CREATE TABLE Board
(
    board_num    NUMBER NOT NULL,
    board_name    VARCHAR2(20)
);

ALTER TABLE Board
 ADD CONSTRAINT Board_PK PRIMARY KEY ( board_num );


CREATE TABLE Comments
(
    board_num    NUMBER NOT NULL,
    article_num    NUMBER NOT NULL,
    comm_num    NUMBER NOT NULL,
    account_num    NUMBER,
    comm_content    VARCHAR2(200) NOT NULL,
    comm_recom    NUMBER DEFAULT 0 NOT NULL,
    comm_date    DATE NOT NULL,
    comm_del    CHAR(1) DEFAULT 'n' NOT NULL
);

ALTER TABLE Comments
 ADD CONSTRAINT Comment_PK PRIMARY KEY ( board_num,article_num,comm_num );


CREATE TABLE FavoriteID
(
    account_num    NUMBER NOT NULL,
    account_favor_id    VARCHAR2(20) NOT NULL
);

ALTER TABLE FavoriteID
 ADD CONSTRAINT FavoriteID_PK PRIMARY KEY ( account_num );


CREATE TABLE RecentID
(
    account_num    NUMBER NOT NULL,
    account_recent_date    DATE NOT NULL,
    account_recent_id    VARCHAR2(20) NOT NULL
);

ALTER TABLE RecentID
 ADD CONSTRAINT RecentID_PK PRIMARY KEY ( account_num );



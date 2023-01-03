drop table tag cascade constraint purge;
drop table users cascade constraint purge;
drop table orders cascade constraint purge;
drop table cart_list cascade constraint purge;
drop table wish_list cascade constraint purge;
drop table categories cascade constraint purge;
drop table brand cascade constraint purge;
drop table brand_category cascade constraint purge;
drop table sale cascade constraint purge;
drop table sale_list cascade constraint purge;
drop table product cascade constraint purge;
drop table options cascade constraint purge;
drop table order_list cascade constraint purge;
drop table authorities cascade constraint purge;
drop table persistent_logins cascade constraint purge;


-- 생성자 Oracle SQL Developer Data Modeler 21.2.0.183.1957
--   위치:        2022-12-28 11:56:04 KST
--   사이트:      Oracle Database 21c
--   유형:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE brand (
    brand_id   VARCHAR2(20) NOT NULL,
    brand_name VARCHAR2(30) NOT NULL
);

ALTER TABLE brand ADD CONSTRAINT brand_pk PRIMARY KEY ( brand_id );

CREATE TABLE brand_category (
    brand_id         VARCHAR2(20) NOT NULL,
    category_id VARCHAR2(30) NOT NULL
);

ALTER TABLE brand_category ADD CONSTRAINT brand_category_pk PRIMARY KEY ( category_id,
                                                                          brand_id );

CREATE TABLE cart_list (
    option_id          VARCHAR2(30) NOT NULL,
    user_id             VARCHAR2(20) NOT NULL,
    cart_qty                  NUMBER NOT NULL,
    cart_date                 DATE NOT NULL,
    product_id VARCHAR2(20) NOT NULL
);

-- CREATE UNIQUE INDEX cart__idx ON
--     cart_list (
--         option_id,
--         product_id,
--         user_id
--     ASC );

ALTER TABLE cart_list
    ADD CONSTRAINT cart_list_pk PRIMARY KEY ( option_id,
                                              product_id,
                                              user_id );

CREATE TABLE categories (
    category_id            VARCHAR2(30) NOT NULL,
    category_name          VARCHAR2(60) NOT NULL,
    category_pid VARCHAR2(30) 
);

ALTER TABLE categories ADD CONSTRAINT categories_pk PRIMARY KEY ( category_id );

CREATE TABLE options (
    option_id           VARCHAR2(30) NOT NULL,
    option_name         VARCHAR2(200) NOT NULL,
    option_thumb        VARCHAR2(200),
    option_stock        NUMBER NOT NULL,
    product_id  VARCHAR2(20) NOT NULL,
    option_origin_price NUMBER NOT NULL,
    option_market_price NUMBER NOT NULL
);

ALTER TABLE options ADD CONSTRAINT option_pk PRIMARY KEY ( option_id,
                                                           product_id );

CREATE TABLE order_list (
    option_id          VARCHAR2(30) NOT NULL,
    product_id VARCHAR2(20) NOT NULL,
    order_id           VARCHAR2(20) NOT NULL,
    order_list_qty            NUMBER NOT NULL,
    ordered_price             NUMBER NOT NULL,
    user_id      VARCHAR2(20) NOT NULL,
    review_date               DATE,
    review_score              NUMBER,
    review_content            VARCHAR2(500),
    review_img                VARCHAR2(200)
);

ALTER TABLE order_list
    ADD CONSTRAINT order_option_pk PRIMARY KEY ( order_id,
                                                 user_id,
                                                 option_id,
                                                 product_id );

CREATE TABLE orders (
    order_id         VARCHAR2(20) NOT NULL,
    receiver_name    VARCHAR2(20) NOT NULL,
    receiver_address_road VARCHAR2(200) NOT NULL,
    receiver_address_jibun VARCHAR2(200),
    receiver_tel     VARCHAR2(20) NOT NULL,
    payment          VARCHAR2(20) NOT NULL,
    order_date       DATE NOT NULL,
    total_price      NUMBER NOT NULL,
    user_id    VARCHAR2(20) NOT NULL
);

ALTER TABLE orders ADD CONSTRAINT orders_pk PRIMARY KEY ( order_id,
                                                          user_id );

CREATE TABLE product (
    product_id             VARCHAR2(20) NOT NULL,
    product_name           VARCHAR2(200) NOT NULL,
    product_thumb          VARCHAR2(200) NOT NULL,
    product_content        VARCHAR2(800),
    product_date           DATE NOT NULL,
    category_id VARCHAR2(30) NOT NULL,
    brand_id         VARCHAR2(20) NOT NULL,
    product_img            VARCHAR2(200) NOT NULL
);

ALTER TABLE product ADD CONSTRAINT product_pk PRIMARY KEY ( product_id );



CREATE TABLE sale (
    sale_id      VARCHAR2(20) NOT NULL,
    sale_percent NUMBER NOT NULL,
    sale_name    VARCHAR2(100) NOT NULL
);

ALTER TABLE sale ADD CONSTRAINT sale_pk PRIMARY KEY ( sale_id );

CREATE TABLE sale_list (
    sale_id              VARCHAR2(20) NOT NULL,
    option_id          VARCHAR2(30) NOT NULL,
    product_id VARCHAR2(20) NOT NULL
);

ALTER TABLE sale_list
    ADD CONSTRAINT sale_option_pk PRIMARY KEY ( sale_id,
                                                option_id,
                                                product_id );

CREATE TABLE tag (
    user_id VARCHAR2(20) NOT NULL,
    keyword       VARCHAR2(100) NOT NULL,
    tag_date      DATE NOT NULL
);

ALTER TABLE tag ADD CONSTRAINT tag_pk PRIMARY KEY ( user_id,
                                                    keyword );

CREATE TABLE users (
    user_id       VARCHAR2(20) NOT NULL,
    user_password VARCHAR2(20) NOT NULL,
    user_name     VARCHAR2(20) NOT NULL,
    user_address  VARCHAR2(200) NOT NULL,
    user_tel      VARCHAR2(20) NOT NULL,
    user_birth    DATE NOT NULL,
    enabled       char(1) default '1'
);

ALTER TABLE users ADD CONSTRAINT users_pk PRIMARY KEY ( user_id );

CREATE TABLE wish_list (
    user_id      VARCHAR2(20) NOT NULL,
    product_id VARCHAR2(20) NOT NULL,
    wish_date          DATE NOT NULL
);

CREATE UNIQUE INDEX wish__idx ON
    wish_list (
        user_id,
        product_id
    ASC );
    
create table authorities(
    user_id varchar2(20) not null,
    authority varchar2(500) not null,
    constraint fk_authorities_users foreign key(user_id) references users(user_id));
    
create unique index ix_auth_user_name on authorities (user_id,authority);
    

    create table persistent_logins(
username varchar2(64) not null,
series varchar2(64) PRIMARY key,
token varchar2(64) not null,
last_used timestamp not null);

ALTER TABLE wish_list ADD CONSTRAINT wish_list_pk PRIMARY KEY ( user_id,
                                                                product_id );

ALTER TABLE brand_category
    ADD CONSTRAINT brand_category_brand_fk FOREIGN KEY ( brand_id )
        REFERENCES brand ( brand_id );

ALTER TABLE brand_category
    ADD CONSTRAINT brand_category_categories_fk FOREIGN KEY ( category_id )
        REFERENCES categories ( category_id );

ALTER TABLE cart_list
    ADD CONSTRAINT cart_list_option_fk FOREIGN KEY ( option_id,
                                                     product_id )
        REFERENCES options ( option_id,
                             product_id );

ALTER TABLE cart_list
    ADD CONSTRAINT cart_list_users_fk FOREIGN KEY ( user_id )
        REFERENCES users ( user_id );

ALTER TABLE categories
    ADD CONSTRAINT categories_categories_fk FOREIGN KEY ( category_id )
        REFERENCES categories ( category_id );

ALTER TABLE options
    ADD CONSTRAINT option_product_fk FOREIGN KEY ( product_id )
        REFERENCES product ( product_id );

ALTER TABLE order_list
    ADD CONSTRAINT order_list_option_fk FOREIGN KEY ( option_id,
                                                      product_id )
        REFERENCES options ( option_id,
                             product_id );

ALTER TABLE order_list
    ADD CONSTRAINT order_list_orders_fk FOREIGN KEY ( order_id,
                                                      user_id )
        REFERENCES orders ( order_id,
                            user_id );

ALTER TABLE orders
    ADD CONSTRAINT users_fk FOREIGN KEY ( user_id )
        REFERENCES users ( user_id );

ALTER TABLE product
    ADD CONSTRAINT product_brand_fk FOREIGN KEY ( brand_id )
        REFERENCES brand ( brand_id );

ALTER TABLE product
    ADD CONSTRAINT product_categories_fk FOREIGN KEY ( category_id )
        REFERENCES categories ( category_id );



ALTER TABLE sale_list
    ADD CONSTRAINT sale_list_option_fk FOREIGN KEY ( option_id,
                                                     product_id )
        REFERENCES options ( option_id,
                             product_id );

ALTER TABLE sale_list
    ADD CONSTRAINT sale_list_sale_fk FOREIGN KEY ( sale_id )
        REFERENCES sale ( sale_id );

ALTER TABLE tag
    ADD CONSTRAINT tag_users_fk FOREIGN KEY ( user_id )
        REFERENCES users ( user_id );

ALTER TABLE wish_list
    ADD CONSTRAINT wish_list_product_fk FOREIGN KEY ( product_id )
        REFERENCES product ( product_id );

ALTER TABLE wish_list
    ADD CONSTRAINT wish_list_users_fk FOREIGN KEY ( user_id )
        REFERENCES users ( user_id );



-- Oracle SQL Developer Data Modeler 요약 보고서: 
-- 
-- CREATE TABLE                            14
-- CREATE INDEX                             2
-- ALTER TABLE                             31
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   4
-- WARNINGS                                 0
[drop_master_table]
drop table if exists m_appver
drop table if exists m_screen_ftm

[create_master_table]
create table if not exists m_appver (version varchar(10) not null, survey_month datetime not null, reason_for_change varchar(16) null, primary key (version, survey_month))
create table if not exists m_screen_ftm (version varchar(10) not null, screen_id int not null, screen_name varchar(50) not null, screen_curr_frame varchar(20) null, screen_prev_frame varchar(20) null, screen_next_frame varchar(20) null, household_screen char(1) null, not_visited_warn char(1) null, ordern int null, screen_sid varchar(10) null, primary key (version, screen_id))

[drop_data_table]
drop table if exists d_hh_shopdet

[create_data_table]
create table if not exists d_hh_shopdet (hh_id int not null, survey_month date not null, shop_groceries_fr_mall char(1) null, shop_groceries_fr_online char(1) null, shop_groceries_fr_localshop char(1) null, shop_clothes_fr_mall char(1) null, shop_clothes_fr_online char(1) null, shop_clothes_fr_localshop char(1) null, inserted_dt datetime null, updated_dt datetime null, primary key (hh_id, survey_month))



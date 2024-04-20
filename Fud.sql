PGDMP         1                |           Fud    15.2    15.2 P   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    60170    Fud    DATABASE     y   CREATE DATABASE "Fud" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "Fud";
                postgres    false                        2615    60189    Box    SCHEMA        CREATE SCHEMA "Box";
    DROP SCHEMA "Box";
                postgres    false            
            2615    60186    Branch    SCHEMA        CREATE SCHEMA "Branch";
    DROP SCHEMA "Branch";
                postgres    false                        2615    60184    Company    SCHEMA        CREATE SCHEMA "Company";
    DROP SCHEMA "Company";
                postgres    false                        2615    60188    Customer    SCHEMA        CREATE SCHEMA "Customer";
    DROP SCHEMA "Customer";
                postgres    false                        2615    60187    Employee    SCHEMA        CREATE SCHEMA "Employee";
    DROP SCHEMA "Employee";
                postgres    false                        2615    60183    Fud    SCHEMA        CREATE SCHEMA "Fud";
    DROP SCHEMA "Fud";
                postgres    false                        2615    60182 	   Inventory    SCHEMA        CREATE SCHEMA "Inventory";
    DROP SCHEMA "Inventory";
                postgres    false                        2615    60190    Kitchen    SCHEMA        CREATE SCHEMA "Kitchen";
    DROP SCHEMA "Kitchen";
                postgres    false                        2615    60191    Settings    SCHEMA        CREATE SCHEMA "Settings";
    DROP SCHEMA "Settings";
                postgres    false            	            2615    60185    User    SCHEMA        CREATE SCHEMA "User";
    DROP SCHEMA "User";
                postgres    false                       1259    60624    boxes_history    TABLE     �   CREATE TABLE "Box".boxes_history (
    id bigint NOT NULL,
    initial_date timestamp without time zone,
    finish_date timestamp without time zone,
    id_branches bigint,
    id_employees bigint,
    id_boxes bigint
);
     DROP TABLE "Box".boxes_history;
       Box         heap    postgres    false    13                       1259    69148    movement_history_id_seq    SEQUENCE        CREATE SEQUENCE "Box".movement_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "Box".movement_history_id_seq;
       Box          postgres    false    13                       1259    60644    movement_history    TABLE       CREATE TABLE "Box".movement_history (
    id bigint DEFAULT nextval('"Box".movement_history_id_seq'::regclass) NOT NULL,
    id_branches bigint,
    id_boxes bigint,
    id_employees bigint,
    move double precision,
    comment text,
    date_move timestamp with time zone
);
 #   DROP TABLE "Box".movement_history;
       Box         heap    postgres    false    286    13            �            1259    60315    sales_history    TABLE     O  CREATE TABLE "Box".sales_history (
    id bigint NOT NULL,
    id_companies bigint,
    id_branches bigint,
    id_employees bigint,
    id_customers bigint,
    id_dishes_and_combos bigint,
    price double precision,
    amount double precision,
    total double precision,
    comment text,
    sale_day timestamp with time zone
);
     DROP TABLE "Box".sales_history;
       Box         heap    postgres    false    13            �            1259    60314    sales_history_id_seq    SEQUENCE     |   CREATE SEQUENCE "Box".sales_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "Box".sales_history_id_seq;
       Box          postgres    false    240    13                       0    0    sales_history_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "Box".sales_history_id_seq OWNED BY "Box".sales_history.id;
          Box          postgres    false    239            "           1259    69181    Ad    TABLE     �   CREATE TABLE "Branch"."Ad" (
    id bigint NOT NULL,
    id_branches bigint,
    img text,
    type character varying(7),
    description character varying(30)
);
    DROP TABLE "Branch"."Ad";
       Branch         heap    postgres    false    10            !           1259    69180 	   Ad_id_seq    SEQUENCE     v   CREATE SEQUENCE "Branch"."Ad_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE "Branch"."Ad_id_seq";
       Branch          postgres    false    10    290                       0    0 	   Ad_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE "Branch"."Ad_id_seq" OWNED BY "Branch"."Ad".id;
          Branch          postgres    false    289            
           1259    60571    billing_information    TABLE     I  CREATE TABLE "Branch".billing_information (
    id bigint NOT NULL,
    id_providers bigint,
    addres text,
    postal_code character varying(10),
    rfc text NOT NULL,
    curp text NOT NULL,
    business_name character varying(200),
    business_phone character varying(20),
    business_cell_phone character varying(20)
);
 )   DROP TABLE "Branch".billing_information;
       Branch         heap    postgres    false    10            	           1259    60570    billing_information_id_seq    SEQUENCE     �   CREATE SEQUENCE "Branch".billing_information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Branch".billing_information_id_seq;
       Branch          postgres    false    266    10                       0    0    billing_information_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "Branch".billing_information_id_seq OWNED BY "Branch".billing_information.id;
          Branch          postgres    false    265                       1259    60533    boxes    TABLE     �   CREATE TABLE "Branch".boxes (
    id bigint NOT NULL,
    id_branches bigint,
    num_box smallint,
    ip_printer character varying(20)
);
    DROP TABLE "Branch".boxes;
       Branch         heap    postgres    false    10                       1259    60532    boxes_id_seq    SEQUENCE     w   CREATE SEQUENCE "Branch".boxes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE "Branch".boxes_id_seq;
       Branch          postgres    false    10    262                       0    0    boxes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE "Branch".boxes_id_seq OWNED BY "Branch".boxes.id;
          Branch          postgres    false    261                        1259    69172 
   commanders    TABLE     �  CREATE TABLE "Branch".commanders (
    id bigint NOT NULL,
    id_branches bigint,
    id_employees bigint,
    id_customers bigint,
    total double precision NOT NULL,
    money_received double precision NOT NULL,
    change double precision NOT NULL,
    status integer NOT NULL,
    comentary text,
    commander_date timestamp without time zone NOT NULL,
    order_details json NOT NULL
);
     DROP TABLE "Branch".commanders;
       Branch         heap    postgres    false    10                       1259    69171    commanders_id_seq    SEQUENCE     |   CREATE SEQUENCE "Branch".commanders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "Branch".commanders_id_seq;
       Branch          postgres    false    288    10                       0    0    commanders_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "Branch".commanders_id_seq OWNED BY "Branch".commanders.id;
          Branch          postgres    false    287                       1259    60516    managers    TABLE     l   CREATE TABLE "Branch".managers (
    id bigint NOT NULL,
    id_branches bigint,
    id_employees bigint
);
    DROP TABLE "Branch".managers;
       Branch         heap    postgres    false    10                       1259    60515    managers_id_seq    SEQUENCE     z   CREATE SEQUENCE "Branch".managers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE "Branch".managers_id_seq;
       Branch          postgres    false    260    10                       0    0    managers_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "Branch".managers_id_seq OWNED BY "Branch".managers.id;
          Branch          postgres    false    259            �            1259    60445    pack_reservation    TABLE     &  CREATE TABLE "Branch".pack_reservation (
    id bigint NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    number_of_adult integer,
    number_of_children integer,
    price_for_children double precision,
    price_for_adult double precision,
    id_branches bigint
);
 &   DROP TABLE "Branch".pack_reservation;
       Branch         heap    postgres    false    10            �            1259    60444    pack_reservation_id_seq    SEQUENCE     �   CREATE SEQUENCE "Branch".pack_reservation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "Branch".pack_reservation_id_seq;
       Branch          postgres    false    10    252            	           0    0    pack_reservation_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "Branch".pack_reservation_id_seq OWNED BY "Branch".pack_reservation.id;
          Branch          postgres    false    251                       1259    60557 	   providers    TABLE     �  CREATE TABLE "Branch".providers (
    id bigint NOT NULL,
    id_branches bigint,
    name character varying(200),
    representative character varying(200),
    cell_phone character varying(15),
    phone character varying(15),
    email text,
    credit_limit double precision,
    credit_days smallint,
    comment text,
    business_name character varying(200),
    business_address text,
    business_rfc text,
    business_curp text,
    business_postal_code character varying(5),
    business_phone character varying(20),
    business_cell_phone character varying(20),
    website text,
    rfc text,
    curp text,
    category character varying(200),
    type character varying(25),
    business_representative character varying(300)
);
    DROP TABLE "Branch".providers;
       Branch         heap    postgres    false    10                       1259    60556    providers_id_seq    SEQUENCE     {   CREATE SEQUENCE "Branch".providers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE "Branch".providers_id_seq;
       Branch          postgres    false    264    10            
           0    0    providers_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "Branch".providers_id_seq OWNED BY "Branch".providers.id;
          Branch          postgres    false    263            �            1259    60426    reservation    TABLE     �  CREATE TABLE "Branch".reservation (
    id bigint NOT NULL,
    id_branches bigint,
    id_tables bigint,
    id_pack_reservation bigint,
    customer_name character varying(100),
    customer_phone character varying(20),
    customer_email text,
    reservation_date date,
    reservation_time timestamp without time zone,
    reason text,
    number_of_adult integer,
    number_of_children integer,
    commentary text,
    status integer
);
 !   DROP TABLE "Branch".reservation;
       Branch         heap    postgres    false    10            �            1259    60425    reservation_id_seq    SEQUENCE     }   CREATE SEQUENCE "Branch".reservation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE "Branch".reservation_id_seq;
       Branch          postgres    false    250    10                       0    0    reservation_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "Branch".reservation_id_seq OWNED BY "Branch".reservation.id;
          Branch          postgres    false    249                       1259    60606    restaurant_area    TABLE     �   CREATE TABLE "Branch".restaurant_area (
    id bigint NOT NULL,
    id_branches bigint,
    name character varying(30),
    description text,
    floor integer
);
 %   DROP TABLE "Branch".restaurant_area;
       Branch         heap    postgres    false    10                       1259    60605    restaurant_area_id_seq    SEQUENCE     �   CREATE SEQUENCE "Branch".restaurant_area_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE "Branch".restaurant_area_id_seq;
       Branch          postgres    false    10    270                       0    0    restaurant_area_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "Branch".restaurant_area_id_seq OWNED BY "Branch".restaurant_area.id;
          Branch          postgres    false    269            �            1259    60413    tables    TABLE     �   CREATE TABLE "Branch".tables (
    id bigint NOT NULL,
    id_branches bigint,
    id_restaurant_area bigint,
    name character varying(30),
    table_number integer,
    num_customers smallint DEFAULT 0
);
    DROP TABLE "Branch".tables;
       Branch         heap    postgres    false    10            �            1259    60412    tables_id_seq    SEQUENCE     x   CREATE SEQUENCE "Branch".tables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE "Branch".tables_id_seq;
       Branch          postgres    false    10    248                       0    0    tables_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "Branch".tables_id_seq OWNED BY "Branch".tables.id;
          Branch          postgres    false    247            �            1259    60332    branches    TABLE     0  CREATE TABLE "Company".branches (
    id bigint NOT NULL,
    id_companies bigint,
    name_branch character varying(60) NOT NULL,
    alias character varying(30) NOT NULL,
    representative text,
    id_country bigint,
    municipality text NOT NULL,
    city text NOT NULL,
    cologne text NOT NULL,
    address character varying(40),
    num_ext character varying(8),
    num_int character varying(8),
    postal_code character varying(10) NOT NULL,
    email_branch text NOT NULL,
    cell_phone character varying(24),
    phone character varying(20)
);
    DROP TABLE "Company".branches;
       Company         heap    postgres    false    8            �            1259    60331    branches_id_seq    SEQUENCE     {   CREATE SEQUENCE "Company".branches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE "Company".branches_id_seq;
       Company          postgres    false    242    8                       0    0    branches_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "Company".branches_id_seq OWNED BY "Company".branches.id;
          Company          postgres    false    241            �            1259    60301 	   customers    TABLE     (  CREATE TABLE "Company".customers (
    id bigint NOT NULL,
    id_companies bigint,
    first_name character varying(50) NOT NULL,
    second_name character varying(50),
    last_name character varying(300),
    id_country bigint,
    states text NOT NULL,
    city text NOT NULL,
    street text NOT NULL,
    num_ext character varying(8),
    num_int character varying(8),
    postal_code character varying(10),
    email text NOT NULL,
    phone character varying(20),
    cell_phone character varying(20),
    points smallint,
    birthday date
);
     DROP TABLE "Company".customers;
       Company         heap    postgres    false    8            �            1259    60300    customers_id_seq    SEQUENCE     |   CREATE SEQUENCE "Company".customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "Company".customers_id_seq;
       Company          postgres    false    8    238                       0    0    customers_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "Company".customers_id_seq OWNED BY "Company".customers.id;
          Company          postgres    false    237            �            1259    60220 	   employees    TABLE     �  CREATE TABLE "Company".employees (
    id bigint NOT NULL,
    id_companies bigint,
    id_users bigint,
    id_roles_employees bigint,
    id_departments_employees bigint,
    id_branches bigint,
    city character varying(100),
    street character varying(200),
    num_ext character varying(5),
    num_int character varying(5),
    id_country bigint,
    phone character varying(15),
    cell_phone character varying(15)
);
     DROP TABLE "Company".employees;
       Company         heap    postgres    false    8            �            1259    60219    employees_id_seq    SEQUENCE     |   CREATE SEQUENCE "Company".employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "Company".employees_id_seq;
       Company          postgres    false    229    8                       0    0    employees_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "Company".employees_id_seq OWNED BY "Company".employees.id;
          Company          postgres    false    228            �            1259    60282    departments_employees    TABLE     �   CREATE TABLE "Employee".departments_employees (
    id bigint NOT NULL,
    id_companies bigint,
    description text,
    name_departaments character varying(100) NOT NULL
);
 -   DROP TABLE "Employee".departments_employees;
       Employee         heap    postgres    false    11            �            1259    60281    departments_employees_id_seq    SEQUENCE     �   CREATE SEQUENCE "Employee".departments_employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "Employee".departments_employees_id_seq;
       Employee          postgres    false    11    236                       0    0    departments_employees_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "Employee".departments_employees_id_seq OWNED BY "Employee".departments_employees.id;
          Employee          postgres    false    235            &           1259    77550    history_schedules    TABLE     �   CREATE TABLE "Employee".history_schedules (
    id bigint NOT NULL,
    id_branches bigint,
    id_employees bigint,
    id_schedules bigint,
    date_finish date NOT NULL,
    date_start date NOT NULL
);
 )   DROP TABLE "Employee".history_schedules;
       Employee         heap    postgres    false    11            %           1259    77549    history_schedules_id_seq    SEQUENCE     �   CREATE SEQUENCE "Employee".history_schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Employee".history_schedules_id_seq;
       Employee          postgres    false    294    11                       0    0    history_schedules_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "Employee".history_schedules_id_seq OWNED BY "Employee".history_schedules.id;
          Employee          postgres    false    293            �            1259    60263    roles_employees    TABLE     L  CREATE TABLE "Employee".roles_employees (
    id bigint NOT NULL,
    id_companies bigint NOT NULL,
    name_role character varying(30) NOT NULL,
    commissions double precision NOT NULL,
    salary double precision,
    discount_for_product double precision,
    add_box boolean DEFAULT false,
    edit_box boolean DEFAULT false,
    delete_box boolean DEFAULT false,
    create_reservation boolean DEFAULT false,
    view_reservation boolean DEFAULT false,
    view_reports boolean DEFAULT false,
    add_customer boolean DEFAULT false,
    edit_customer boolean DEFAULT false,
    delete_customer boolean DEFAULT false,
    cancel_debt boolean DEFAULT false,
    offer_loan boolean DEFAULT false,
    get_fertilizer boolean DEFAULT false,
    view_customer_credits boolean DEFAULT false,
    send_email boolean DEFAULT false,
    add_employee boolean DEFAULT false,
    edit_employee boolean DEFAULT false,
    delete_employee boolean DEFAULT false,
    create_schedule boolean DEFAULT false,
    assign_schedule boolean DEFAULT false,
    view_schedule boolean DEFAULT false,
    create_type_user boolean DEFAULT false,
    create_employee_department boolean DEFAULT false,
    view_sale_history boolean DEFAULT false,
    delete_sale_history boolean DEFAULT false,
    view_movement_history boolean DEFAULT false,
    delete_movement_history boolean DEFAULT false,
    view_supplies boolean DEFAULT false,
    add_supplies boolean DEFAULT false,
    edit_supplies boolean DEFAULT false,
    delete_supplies boolean DEFAULT false,
    view_products boolean DEFAULT false,
    edit_products boolean DEFAULT false,
    delete_products boolean DEFAULT false,
    view_combo boolean DEFAULT false,
    add_combo boolean DEFAULT false,
    edit_combo boolean DEFAULT false,
    delete_combo boolean DEFAULT false,
    view_food_departament boolean DEFAULT false,
    add_food_departament boolean DEFAULT false,
    edit_food_departament boolean DEFAULT false,
    delete_food_departament boolean DEFAULT false,
    view_food_category boolean DEFAULT false,
    add_food_category boolean DEFAULT false,
    edit_food_category boolean DEFAULT false,
    delete_food_category boolean DEFAULT false,
    waste_report boolean DEFAULT false,
    add_provider boolean DEFAULT false,
    edit_provider boolean DEFAULT false,
    delete_provider boolean DEFAULT false,
    view_provider boolean DEFAULT false,
    sell boolean DEFAULT false,
    apply_discount boolean DEFAULT false,
    apply_returns boolean DEFAULT false,
    add_offers boolean DEFAULT false,
    edit_offers boolean DEFAULT false,
    delete_offers boolean DEFAULT false,
    change_coins boolean DEFAULT false,
    modify_hardware boolean DEFAULT false,
    modify_hardware_kitchen boolean DEFAULT false,
    give_permissions boolean DEFAULT false,
    currency character varying(10),
    type_of_salary character varying(15)
);
 '   DROP TABLE "Employee".roles_employees;
       Employee         heap    postgres    false    11            �            1259    60262    roles_employees_id_seq    SEQUENCE     �   CREATE SEQUENCE "Employee".roles_employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "Employee".roles_employees_id_seq;
       Employee          postgres    false    11    234                       0    0    roles_employees_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "Employee".roles_employees_id_seq OWNED BY "Employee".roles_employees.id;
          Employee          postgres    false    233            $           1259    77373 	   schedules    TABLE     '  CREATE TABLE "Employee".schedules (
    id bigint NOT NULL,
    id_branches bigint,
    color character varying(10),
    name character varying(100),
    monday boolean,
    tuesday boolean,
    wednesday boolean,
    thursday boolean,
    friday boolean,
    saturday boolean,
    sunday boolean,
    ms time without time zone,
    mf time without time zone,
    ts time without time zone,
    tf time without time zone,
    ws time without time zone,
    wf time without time zone,
    ths time without time zone,
    thf time without time zone,
    fs time without time zone,
    ff time without time zone,
    sas time without time zone,
    saf time without time zone,
    sus time without time zone,
    suf time without time zone,
    time_worked character varying(10),
    tolerance_time integer
);
 !   DROP TABLE "Employee".schedules;
       Employee         heap    postgres    false    11            #           1259    77372    schedules_id_seq    SEQUENCE     }   CREATE SEQUENCE "Employee".schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE "Employee".schedules_id_seq;
       Employee          postgres    false    11    292                       0    0    schedules_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "Employee".schedules_id_seq OWNED BY "Employee".schedules.id;
          Employee          postgres    false    291            �            1259    60387    country    TABLE     W   CREATE TABLE "Fud".country (
    id bigint NOT NULL,
    name character varying(50)
);
    DROP TABLE "Fud".country;
       Fud         heap    postgres    false    7            �            1259    60386    country_id_seq    SEQUENCE     v   CREATE SEQUENCE "Fud".country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE "Fud".country_id_seq;
       Fud          postgres    false    246    7                       0    0    country_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE "Fud".country_id_seq OWNED BY "Fud".country.id;
          Fud          postgres    false    245            �            1259    60231 	   packs_fud    TABLE     Q   CREATE TABLE "Fud".packs_fud (
    id smallint NOT NULL,
    description text
);
    DROP TABLE "Fud".packs_fud;
       Fud         heap    postgres    false    7                       0    0    COLUMN packs_fud.id    COMMENT     y   COMMENT ON COLUMN "Fud".packs_fud.id IS 'This is the pack that the user need 0-free (user) 1-pack1, 2-pack 2, 3-pack 3';
          Fud          postgres    false    230                       1259    60756    session     TABLE     �   CREATE TABLE "Fud"."session " (
    sid character varying NOT NULL,
    sess json NOT NULL,
    expire timestamp(6) without time zone
);
    DROP TABLE "Fud"."session ";
       Fud         heap    postgres    false    7            (           1259    85773    tokens    TABLE       CREATE TABLE "Fud".tokens (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    expiry_time timestamp without time zone DEFAULT (CURRENT_TIMESTAMP + '00:05:00'::interval) NOT NULL
);
    DROP TABLE "Fud".tokens;
       Fud         heap    postgres    false    7            '           1259    85772    tokens_id_seq    SEQUENCE     u   CREATE SEQUENCE "Fud".tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE "Fud".tokens_id_seq;
       Fud          postgres    false    296    7                       0    0    tokens_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE "Fud".tokens_id_seq OWNED BY "Fud".tokens.id;
          Fud          postgres    false    295            �            1259    60193    users    TABLE     �  CREATE TABLE "Fud".users (
    id bigint NOT NULL,
    photo text,
    user_name character varying(200) NOT NULL,
    email character varying(100) NOT NULL,
    password text NOT NULL,
    first_name character varying(30) NOT NULL,
    second_name character varying(30),
    last_name character varying(90) NOT NULL,
    rol_user smallint,
    id_packs_fud smallint,
    language character varying(5)
);
    DROP TABLE "Fud".users;
       Fud         heap    postgres    false    7                       0    0    COLUMN users.rol_user    COMMENT     Y   COMMENT ON COLUMN "Fud".users.rol_user IS '0--customer,1--emplooyes,2--manager,3---CEO';
          Fud          postgres    false    225                       0    0    COLUMN users.id_packs_fud    COMMENT        COMMENT ON COLUMN "Fud".users.id_packs_fud IS 'This is the pack that the user need 0-free (user) 1-pack1, 2-pack 2, 3-pack 3';
          Fud          postgres    false    225            �            1259    60192    users_id_seq    SEQUENCE     t   CREATE SEQUENCE "Fud".users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE "Fud".users_id_seq;
       Fud          postgres    false    7    225                       0    0    users_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE "Fud".users_id_seq OWNED BY "Fud".users.id;
          Fud          postgres    false    224            �            1259    60378    dish_and_combo_features    TABLE     Q  CREATE TABLE "Inventory".dish_and_combo_features (
    id bigint NOT NULL,
    id_companies bigint,
    id_branches bigint,
    id_dishes_and_combos bigint,
    price_1 double precision NOT NULL,
    revenue_1 double precision NOT NULL,
    price_2 double precision,
    revenue_2 double precision,
    price_3 double precision,
    revenue_3 double precision,
    favorites boolean,
    sat_key text,
    purchase_unit character varying(12) NOT NULL,
    existence double precision,
    amount double precision NOT NULL,
    product_cost double precision NOT NULL,
    id_providers bigint
);
 0   DROP TABLE "Inventory".dish_and_combo_features;
    	   Inventory         heap    postgres    false    6            �            1259    60377    dish_and_combo_features_id_seq    SEQUENCE     �   CREATE SEQUENCE "Inventory".dish_and_combo_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE "Inventory".dish_and_combo_features_id_seq;
    	   Inventory          postgres    false    244    6                       0    0    dish_and_combo_features_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "Inventory".dish_and_combo_features_id_seq OWNED BY "Inventory".dish_and_combo_features.id;
       	   Inventory          postgres    false    243                       1259    60712    product_and_suppiles_features    TABLE     Z  CREATE TABLE "Inventory".product_and_suppiles_features (
    id bigint NOT NULL,
    id_branches bigint,
    sale_price double precision,
    max_inventary double precision,
    minimum_inventory double precision,
    existence double precision,
    purchase_amount double precision,
    purchase_price double precision,
    sale_amount double precision,
    id_products_and_supplies bigint,
    currency_purchase character varying(10),
    currency_sale character varying(10),
    unit_inventory character varying(10),
    purchase_unity character varying(10),
    sale_unity character varying(10)
);
 6   DROP TABLE "Inventory".product_and_suppiles_features;
    	   Inventory         heap    postgres    false    6                       1259    60711 $   product_and_suppiles_features_id_seq    SEQUENCE     �   CREATE SEQUENCE "Inventory".product_and_suppiles_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE "Inventory".product_and_suppiles_features_id_seq;
    	   Inventory          postgres    false    278    6                       0    0 $   product_and_suppiles_features_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE "Inventory".product_and_suppiles_features_id_seq OWNED BY "Inventory".product_and_suppiles_features.id;
       	   Inventory          postgres    false    277                       1259    60724    table_supplies_dish    TABLE     �   CREATE TABLE "Inventory".table_supplies_dish (
    id bigint NOT NULL,
    id_dish_and_combo_features bigint,
    id_product_and_suppiles_features bigint,
    amount double precision,
    unity integer
);
 ,   DROP TABLE "Inventory".table_supplies_dish;
    	   Inventory         heap    postgres    false    6                       1259    60723    table_supplies_dish_id_seq    SEQUENCE     �   CREATE SEQUENCE "Inventory".table_supplies_dish_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "Inventory".table_supplies_dish_id_seq;
    	   Inventory          postgres    false    6    280                       0    0    table_supplies_dish_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "Inventory".table_supplies_dish_id_seq OWNED BY "Inventory".table_supplies_dish.id;
       	   Inventory          postgres    false    279                       1259    60685    table_taxes    TABLE     w   CREATE TABLE "Inventory".table_taxes (
    id bigint NOT NULL,
    id_taxes bigint,
    id_dishes_and_combos bigint
);
 $   DROP TABLE "Inventory".table_taxes;
    	   Inventory         heap    postgres    false    6                       1259    60684    table_taxes_id_seq    SEQUENCE     �   CREATE SEQUENCE "Inventory".table_taxes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "Inventory".table_taxes_id_seq;
    	   Inventory          postgres    false    276    6                       0    0    table_taxes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "Inventory".table_taxes_id_seq OWNED BY "Inventory".table_taxes.id;
       	   Inventory          postgres    false    275            �            1259    60464    taxes    TABLE     �   CREATE TABLE "Inventory".taxes (
    id bigint NOT NULL,
    name character varying(100),
    price_taxe double precision,
    local_taxe boolean,
    type_taxe integer,
    accounting_account text
);
    DROP TABLE "Inventory".taxes;
    	   Inventory         heap    postgres    false    6            �            1259    60463    taxes_id_seq    SEQUENCE     z   CREATE SEQUENCE "Inventory".taxes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE "Inventory".taxes_id_seq;
    	   Inventory          postgres    false    6    254                       0    0    taxes_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "Inventory".taxes_id_seq OWNED BY "Inventory".taxes.id;
       	   Inventory          postgres    false    253                       1259    60591    dishes_and_combos    TABLE     �   CREATE TABLE "Kitchen".dishes_and_combos (
    id_companies bigint,
    img text,
    name character varying(100),
    description text,
    barcode text,
    id_product_department bigint,
    id_product_category bigint,
    id bigint NOT NULL
);
 (   DROP TABLE "Kitchen".dishes_and_combos;
       Kitchen         heap    postgres    false    14                       1259    68969     dishes_and_combos_id_serial_seq1    SEQUENCE     �   CREATE SEQUENCE "Kitchen".dishes_and_combos_id_serial_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE "Kitchen".dishes_and_combos_id_serial_seq1;
       Kitchen          postgres    false    267    14                        0    0     dishes_and_combos_id_serial_seq1    SEQUENCE OWNED BY     c   ALTER SEQUENCE "Kitchen".dishes_and_combos_id_serial_seq1 OWNED BY "Kitchen".dishes_and_combos.id;
          Kitchen          postgres    false    285                        1259    60478    product_category    TABLE     �   CREATE TABLE "Kitchen".product_category (
    id bigint NOT NULL,
    id_companies bigint,
    name character varying(100) NOT NULL,
    description text
);
 '   DROP TABLE "Kitchen".product_category;
       Kitchen         heap    postgres    false    14            �            1259    60477    product_category_id_seq    SEQUENCE     �   CREATE SEQUENCE "Kitchen".product_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "Kitchen".product_category_id_seq;
       Kitchen          postgres    false    256    14            !           0    0    product_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "Kitchen".product_category_id_seq OWNED BY "Kitchen".product_category.id;
          Kitchen          postgres    false    255                       1259    60487    product_department    TABLE     �   CREATE TABLE "Kitchen".product_department (
    id bigint NOT NULL,
    id_companies bigint,
    name character varying(100) NOT NULL,
    description text
);
 )   DROP TABLE "Kitchen".product_department;
       Kitchen         heap    postgres    false    14                       1259    60486    product_department_id_seq    SEQUENCE     �   CREATE SEQUENCE "Kitchen".product_department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Kitchen".product_department_id_seq;
       Kitchen          postgres    false    258    14            "           0    0    product_department_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "Kitchen".product_department_id_seq OWNED BY "Kitchen".product_department.id;
          Kitchen          postgres    false    257            �            1259    60242    products_and_supplies    TABLE       CREATE TABLE "Kitchen".products_and_supplies (
    id bigint NOT NULL,
    id_companies bigint,
    img text,
    barcode character varying(300) NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    use_inventory boolean,
    supplies boolean
);
 ,   DROP TABLE "Kitchen".products_and_supplies;
       Kitchen         heap    postgres    false    14            �            1259    60241    products_and_supplies_id_seq    SEQUENCE     �   CREATE SEQUENCE "Kitchen".products_and_supplies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "Kitchen".products_and_supplies_id_seq;
       Kitchen          postgres    false    232    14            #           0    0    products_and_supplies_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "Kitchen".products_and_supplies_id_seq OWNED BY "Kitchen".products_and_supplies.id;
          Kitchen          postgres    false    231                       1259    60598    screen    TABLE     P   CREATE TABLE "Kitchen".screen (
    ip inet NOT NULL,
    id_branches bigint
);
    DROP TABLE "Kitchen".screen;
       Kitchen         heap    postgres    false    14                       1259    60778    table_supplies_combo    TABLE     �   CREATE TABLE "Kitchen".table_supplies_combo (
    id bigint NOT NULL,
    id_dishes_and_combos bigint,
    id_products_and_supplies bigint,
    unity character varying(10),
    amount double precision,
    food_waste double precision DEFAULT 0
);
 +   DROP TABLE "Kitchen".table_supplies_combo;
       Kitchen         heap    postgres    false    14                       1259    60777    table_supplies_combo_id_seq    SEQUENCE     �   CREATE SEQUENCE "Kitchen".table_supplies_combo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE "Kitchen".table_supplies_combo_id_seq;
       Kitchen          postgres    false    14    284            $           0    0    table_supplies_combo_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE "Kitchen".table_supplies_combo_id_seq OWNED BY "Kitchen".table_supplies_combo.id;
          Kitchen          postgres    false    283                       1259    60679    branch    TABLE     ;   CREATE TABLE "Settings".branch (
    id bigint NOT NULL
);
    DROP TABLE "Settings".branch;
       Settings         heap    postgres    false    15                       1259    60676    company    TABLE     @   CREATE TABLE "Settings".company (
    color_company smallint
);
    DROP TABLE "Settings".company;
       Settings         heap    postgres    false    15            �            1259    60206 	   companies    TABLE     b  CREATE TABLE "User".companies (
    id bigint NOT NULL,
    id_users bigint,
    path_logo text,
    email_company character varying(30),
    alias character varying(30),
    description text,
    representative text,
    ceo text,
    id_country bigint,
    states text,
    municipality text,
    city text,
    cologne text,
    address character varying(50),
    num_int character varying(5),
    num_ext character varying(5),
    postal_code character varying(30),
    email character varying(100),
    cell_phone character varying(20),
    phone character varying(20),
    name character varying(100)
);
    DROP TABLE "User".companies;
       User         heap    postgres    false    9            �            1259    60205    companies_id_seq    SEQUENCE     y   CREATE SEQUENCE "User".companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE "User".companies_id_seq;
       User          postgres    false    9    227            %           0    0    companies_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE "User".companies_id_seq OWNED BY "User".companies.id;
          User          postgres    false    226            )           1259    85788    subscription    TABLE     �   CREATE TABLE "User".subscription (
    id text NOT NULL,
    id_users bigint,
    id_companies bigint,
    id_branches bigint,
    id_packs_fud smallint,
    initial_date date,
    final_date date
);
     DROP TABLE "User".subscription;
       User         heap    postgres    false    9            &           0    0     COLUMN subscription.id_packs_fud    COMMENT     �   COMMENT ON COLUMN "User".subscription.id_packs_fud IS 'This is the pack that the user need 0-free (user) 1-pack1, 2-pack 2, 3-pack 3';
          User          postgres    false    297                       1259    60770    session    TABLE     �   CREATE TABLE public.session (
    sid character varying NOT NULL,
    sess json NOT NULL,
    expire timestamp(6) without time zone
);
    DROP TABLE public.session;
       public         heap    postgres    false            r           2604    60318    sales_history id    DEFAULT     r   ALTER TABLE ONLY "Box".sales_history ALTER COLUMN id SET DEFAULT nextval('"Box".sales_history_id_seq'::regclass);
 >   ALTER TABLE "Box".sales_history ALTER COLUMN id DROP DEFAULT;
       Box          postgres    false    240    239    240            �           2604    69184    Ad id    DEFAULT     f   ALTER TABLE ONLY "Branch"."Ad" ALTER COLUMN id SET DEFAULT nextval('"Branch"."Ad_id_seq"'::regclass);
 8   ALTER TABLE "Branch"."Ad" ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    290    289    290            �           2604    60574    billing_information id    DEFAULT     �   ALTER TABLE ONLY "Branch".billing_information ALTER COLUMN id SET DEFAULT nextval('"Branch".billing_information_id_seq'::regclass);
 G   ALTER TABLE "Branch".billing_information ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    265    266    266            ~           2604    60536    boxes id    DEFAULT     h   ALTER TABLE ONLY "Branch".boxes ALTER COLUMN id SET DEFAULT nextval('"Branch".boxes_id_seq'::regclass);
 9   ALTER TABLE "Branch".boxes ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    261    262    262            �           2604    69175    commanders id    DEFAULT     r   ALTER TABLE ONLY "Branch".commanders ALTER COLUMN id SET DEFAULT nextval('"Branch".commanders_id_seq'::regclass);
 >   ALTER TABLE "Branch".commanders ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    287    288    288            }           2604    60519    managers id    DEFAULT     n   ALTER TABLE ONLY "Branch".managers ALTER COLUMN id SET DEFAULT nextval('"Branch".managers_id_seq'::regclass);
 <   ALTER TABLE "Branch".managers ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    260    259    260            y           2604    60448    pack_reservation id    DEFAULT     ~   ALTER TABLE ONLY "Branch".pack_reservation ALTER COLUMN id SET DEFAULT nextval('"Branch".pack_reservation_id_seq'::regclass);
 D   ALTER TABLE "Branch".pack_reservation ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    251    252    252                       2604    60560    providers id    DEFAULT     p   ALTER TABLE ONLY "Branch".providers ALTER COLUMN id SET DEFAULT nextval('"Branch".providers_id_seq'::regclass);
 =   ALTER TABLE "Branch".providers ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    263    264    264            x           2604    60429    reservation id    DEFAULT     t   ALTER TABLE ONLY "Branch".reservation ALTER COLUMN id SET DEFAULT nextval('"Branch".reservation_id_seq'::regclass);
 ?   ALTER TABLE "Branch".reservation ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    249    250    250            �           2604    60609    restaurant_area id    DEFAULT     |   ALTER TABLE ONLY "Branch".restaurant_area ALTER COLUMN id SET DEFAULT nextval('"Branch".restaurant_area_id_seq'::regclass);
 C   ALTER TABLE "Branch".restaurant_area ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    270    269    270            v           2604    60416 	   tables id    DEFAULT     j   ALTER TABLE ONLY "Branch".tables ALTER COLUMN id SET DEFAULT nextval('"Branch".tables_id_seq'::regclass);
 :   ALTER TABLE "Branch".tables ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    248    247    248            s           2604    60335    branches id    DEFAULT     p   ALTER TABLE ONLY "Company".branches ALTER COLUMN id SET DEFAULT nextval('"Company".branches_id_seq'::regclass);
 =   ALTER TABLE "Company".branches ALTER COLUMN id DROP DEFAULT;
       Company          postgres    false    241    242    242            q           2604    60304    customers id    DEFAULT     r   ALTER TABLE ONLY "Company".customers ALTER COLUMN id SET DEFAULT nextval('"Company".customers_id_seq'::regclass);
 >   ALTER TABLE "Company".customers ALTER COLUMN id DROP DEFAULT;
       Company          postgres    false    237    238    238            1           2604    60223    employees id    DEFAULT     r   ALTER TABLE ONLY "Company".employees ALTER COLUMN id SET DEFAULT nextval('"Company".employees_id_seq'::regclass);
 >   ALTER TABLE "Company".employees ALTER COLUMN id DROP DEFAULT;
       Company          postgres    false    228    229    229            p           2604    60285    departments_employees id    DEFAULT     �   ALTER TABLE ONLY "Employee".departments_employees ALTER COLUMN id SET DEFAULT nextval('"Employee".departments_employees_id_seq'::regclass);
 K   ALTER TABLE "Employee".departments_employees ALTER COLUMN id DROP DEFAULT;
       Employee          postgres    false    235    236    236            �           2604    77553    history_schedules id    DEFAULT     �   ALTER TABLE ONLY "Employee".history_schedules ALTER COLUMN id SET DEFAULT nextval('"Employee".history_schedules_id_seq'::regclass);
 G   ALTER TABLE "Employee".history_schedules ALTER COLUMN id DROP DEFAULT;
       Employee          postgres    false    293    294    294            3           2604    60266    roles_employees id    DEFAULT     �   ALTER TABLE ONLY "Employee".roles_employees ALTER COLUMN id SET DEFAULT nextval('"Employee".roles_employees_id_seq'::regclass);
 E   ALTER TABLE "Employee".roles_employees ALTER COLUMN id DROP DEFAULT;
       Employee          postgres    false    233    234    234            �           2604    77376    schedules id    DEFAULT     t   ALTER TABLE ONLY "Employee".schedules ALTER COLUMN id SET DEFAULT nextval('"Employee".schedules_id_seq'::regclass);
 ?   ALTER TABLE "Employee".schedules ALTER COLUMN id DROP DEFAULT;
       Employee          postgres    false    292    291    292            u           2604    60390 
   country id    DEFAULT     f   ALTER TABLE ONLY "Fud".country ALTER COLUMN id SET DEFAULT nextval('"Fud".country_id_seq'::regclass);
 8   ALTER TABLE "Fud".country ALTER COLUMN id DROP DEFAULT;
       Fud          postgres    false    245    246    246            �           2604    85776 	   tokens id    DEFAULT     d   ALTER TABLE ONLY "Fud".tokens ALTER COLUMN id SET DEFAULT nextval('"Fud".tokens_id_seq'::regclass);
 7   ALTER TABLE "Fud".tokens ALTER COLUMN id DROP DEFAULT;
       Fud          postgres    false    296    295    296            /           2604    60196    users id    DEFAULT     b   ALTER TABLE ONLY "Fud".users ALTER COLUMN id SET DEFAULT nextval('"Fud".users_id_seq'::regclass);
 6   ALTER TABLE "Fud".users ALTER COLUMN id DROP DEFAULT;
       Fud          postgres    false    224    225    225            t           2604    60381    dish_and_combo_features id    DEFAULT     �   ALTER TABLE ONLY "Inventory".dish_and_combo_features ALTER COLUMN id SET DEFAULT nextval('"Inventory".dish_and_combo_features_id_seq'::regclass);
 N   ALTER TABLE "Inventory".dish_and_combo_features ALTER COLUMN id DROP DEFAULT;
    	   Inventory          postgres    false    244    243    244            �           2604    60715     product_and_suppiles_features id    DEFAULT     �   ALTER TABLE ONLY "Inventory".product_and_suppiles_features ALTER COLUMN id SET DEFAULT nextval('"Inventory".product_and_suppiles_features_id_seq'::regclass);
 T   ALTER TABLE "Inventory".product_and_suppiles_features ALTER COLUMN id DROP DEFAULT;
    	   Inventory          postgres    false    278    277    278            �           2604    60727    table_supplies_dish id    DEFAULT     �   ALTER TABLE ONLY "Inventory".table_supplies_dish ALTER COLUMN id SET DEFAULT nextval('"Inventory".table_supplies_dish_id_seq'::regclass);
 J   ALTER TABLE "Inventory".table_supplies_dish ALTER COLUMN id DROP DEFAULT;
    	   Inventory          postgres    false    280    279    280            �           2604    60688    table_taxes id    DEFAULT     z   ALTER TABLE ONLY "Inventory".table_taxes ALTER COLUMN id SET DEFAULT nextval('"Inventory".table_taxes_id_seq'::regclass);
 B   ALTER TABLE "Inventory".table_taxes ALTER COLUMN id DROP DEFAULT;
    	   Inventory          postgres    false    276    275    276            z           2604    60467    taxes id    DEFAULT     n   ALTER TABLE ONLY "Inventory".taxes ALTER COLUMN id SET DEFAULT nextval('"Inventory".taxes_id_seq'::regclass);
 <   ALTER TABLE "Inventory".taxes ALTER COLUMN id DROP DEFAULT;
    	   Inventory          postgres    false    253    254    254            �           2604    68970    dishes_and_combos id    DEFAULT     �   ALTER TABLE ONLY "Kitchen".dishes_and_combos ALTER COLUMN id SET DEFAULT nextval('"Kitchen".dishes_and_combos_id_serial_seq1'::regclass);
 F   ALTER TABLE "Kitchen".dishes_and_combos ALTER COLUMN id DROP DEFAULT;
       Kitchen          postgres    false    285    267            {           2604    60481    product_category id    DEFAULT     �   ALTER TABLE ONLY "Kitchen".product_category ALTER COLUMN id SET DEFAULT nextval('"Kitchen".product_category_id_seq'::regclass);
 E   ALTER TABLE "Kitchen".product_category ALTER COLUMN id DROP DEFAULT;
       Kitchen          postgres    false    255    256    256            |           2604    60490    product_department id    DEFAULT     �   ALTER TABLE ONLY "Kitchen".product_department ALTER COLUMN id SET DEFAULT nextval('"Kitchen".product_department_id_seq'::regclass);
 G   ALTER TABLE "Kitchen".product_department ALTER COLUMN id DROP DEFAULT;
       Kitchen          postgres    false    257    258    258            2           2604    60245    products_and_supplies id    DEFAULT     �   ALTER TABLE ONLY "Kitchen".products_and_supplies ALTER COLUMN id SET DEFAULT nextval('"Kitchen".products_and_supplies_id_seq'::regclass);
 J   ALTER TABLE "Kitchen".products_and_supplies ALTER COLUMN id DROP DEFAULT;
       Kitchen          postgres    false    231    232    232            �           2604    60781    table_supplies_combo id    DEFAULT     �   ALTER TABLE ONLY "Kitchen".table_supplies_combo ALTER COLUMN id SET DEFAULT nextval('"Kitchen".table_supplies_combo_id_seq'::regclass);
 I   ALTER TABLE "Kitchen".table_supplies_combo ALTER COLUMN id DROP DEFAULT;
       Kitchen          postgres    false    284    283    284            0           2604    60209    companies id    DEFAULT     l   ALTER TABLE ONLY "User".companies ALTER COLUMN id SET DEFAULT nextval('"User".companies_id_seq'::regclass);
 ;   ALTER TABLE "User".companies ALTER COLUMN id DROP DEFAULT;
       User          postgres    false    226    227    227            �          0    60624    boxes_history 
   TABLE DATA           j   COPY "Box".boxes_history (id, initial_date, finish_date, id_branches, id_employees, id_boxes) FROM stdin;
    Box          postgres    false    271   V�      �          0    60644    movement_history 
   TABLE DATA           l   COPY "Box".movement_history (id, id_branches, id_boxes, id_employees, move, comment, date_move) FROM stdin;
    Box          postgres    false    272   s�      �          0    60315    sales_history 
   TABLE DATA           �   COPY "Box".sales_history (id, id_companies, id_branches, id_employees, id_customers, id_dishes_and_combos, price, amount, total, comment, sale_day) FROM stdin;
    Box          postgres    false    240   7�      �          0    69181    Ad 
   TABLE DATA           I   COPY "Branch"."Ad" (id, id_branches, img, type, description) FROM stdin;
    Branch          postgres    false    290   �      �          0    60571    billing_information 
   TABLE DATA           �   COPY "Branch".billing_information (id, id_providers, addres, postal_code, rfc, curp, business_name, business_phone, business_cell_phone) FROM stdin;
    Branch          postgres    false    266   ��      �          0    60533    boxes 
   TABLE DATA           G   COPY "Branch".boxes (id, id_branches, num_box, ip_printer) FROM stdin;
    Branch          postgres    false    262   �      �          0    69172 
   commanders 
   TABLE DATA           �   COPY "Branch".commanders (id, id_branches, id_employees, id_customers, total, money_received, change, status, comentary, commander_date, order_details) FROM stdin;
    Branch          postgres    false    288   L�      �          0    60516    managers 
   TABLE DATA           C   COPY "Branch".managers (id, id_branches, id_employees) FROM stdin;
    Branch          postgres    false    260   ��      �          0    60445    pack_reservation 
   TABLE DATA           �   COPY "Branch".pack_reservation (id, name, description, number_of_adult, number_of_children, price_for_children, price_for_adult, id_branches) FROM stdin;
    Branch          postgres    false    252   ��      �          0    60557 	   providers 
   TABLE DATA           @  COPY "Branch".providers (id, id_branches, name, representative, cell_phone, phone, email, credit_limit, credit_days, comment, business_name, business_address, business_rfc, business_curp, business_postal_code, business_phone, business_cell_phone, website, rfc, curp, category, type, business_representative) FROM stdin;
    Branch          postgres    false    264   
�      �          0    60426    reservation 
   TABLE DATA           �   COPY "Branch".reservation (id, id_branches, id_tables, id_pack_reservation, customer_name, customer_phone, customer_email, reservation_date, reservation_time, reason, number_of_adult, number_of_children, commentary, status) FROM stdin;
    Branch          postgres    false    250   ��      �          0    60606    restaurant_area 
   TABLE DATA           V   COPY "Branch".restaurant_area (id, id_branches, name, description, floor) FROM stdin;
    Branch          postgres    false    270   ��      �          0    60413    tables 
   TABLE DATA           j   COPY "Branch".tables (id, id_branches, id_restaurant_area, name, table_number, num_customers) FROM stdin;
    Branch          postgres    false    248   ��      �          0    60332    branches 
   TABLE DATA           �   COPY "Company".branches (id, id_companies, name_branch, alias, representative, id_country, municipality, city, cologne, address, num_ext, num_int, postal_code, email_branch, cell_phone, phone) FROM stdin;
    Company          postgres    false    242   ��      �          0    60301 	   customers 
   TABLE DATA           �   COPY "Company".customers (id, id_companies, first_name, second_name, last_name, id_country, states, city, street, num_ext, num_int, postal_code, email, phone, cell_phone, points, birthday) FROM stdin;
    Company          postgres    false    238   ��      �          0    60220 	   employees 
   TABLE DATA           �   COPY "Company".employees (id, id_companies, id_users, id_roles_employees, id_departments_employees, id_branches, city, street, num_ext, num_int, id_country, phone, cell_phone) FROM stdin;
    Company          postgres    false    229   ��      �          0    60282    departments_employees 
   TABLE DATA           e   COPY "Employee".departments_employees (id, id_companies, description, name_departaments) FROM stdin;
    Employee          postgres    false    236   x�      �          0    77550    history_schedules 
   TABLE DATA           u   COPY "Employee".history_schedules (id, id_branches, id_employees, id_schedules, date_finish, date_start) FROM stdin;
    Employee          postgres    false    294   ��      �          0    60263    roles_employees 
   TABLE DATA           n  COPY "Employee".roles_employees (id, id_companies, name_role, commissions, salary, discount_for_product, add_box, edit_box, delete_box, create_reservation, view_reservation, view_reports, add_customer, edit_customer, delete_customer, cancel_debt, offer_loan, get_fertilizer, view_customer_credits, send_email, add_employee, edit_employee, delete_employee, create_schedule, assign_schedule, view_schedule, create_type_user, create_employee_department, view_sale_history, delete_sale_history, view_movement_history, delete_movement_history, view_supplies, add_supplies, edit_supplies, delete_supplies, view_products, edit_products, delete_products, view_combo, add_combo, edit_combo, delete_combo, view_food_departament, add_food_departament, edit_food_departament, delete_food_departament, view_food_category, add_food_category, edit_food_category, delete_food_category, waste_report, add_provider, edit_provider, delete_provider, view_provider, sell, apply_discount, apply_returns, add_offers, edit_offers, delete_offers, change_coins, modify_hardware, modify_hardware_kitchen, give_permissions, currency, type_of_salary) FROM stdin;
    Employee          postgres    false    234   �      �          0    77373 	   schedules 
   TABLE DATA           �   COPY "Employee".schedules (id, id_branches, color, name, monday, tuesday, wednesday, thursday, friday, saturday, sunday, ms, mf, ts, tf, ws, wf, ths, thf, fs, ff, sas, saf, sus, suf, time_worked, tolerance_time) FROM stdin;
    Employee          postgres    false    292   ��      �          0    60387    country 
   TABLE DATA           *   COPY "Fud".country (id, name) FROM stdin;
    Fud          postgres    false    246   J�      �          0    60231 	   packs_fud 
   TABLE DATA           3   COPY "Fud".packs_fud (id, description) FROM stdin;
    Fud          postgres    false    230   ]�      �          0    60756    session  
   TABLE DATA           6   COPY "Fud"."session " (sid, sess, expire) FROM stdin;
    Fud          postgres    false    281   ��      �          0    85773    tokens 
   TABLE DATA           L   COPY "Fud".tokens (id, user_id, token, created_at, expiry_time) FROM stdin;
    Fud          postgres    false    296   ��      �          0    60193    users 
   TABLE DATA           �   COPY "Fud".users (id, photo, user_name, email, password, first_name, second_name, last_name, rol_user, id_packs_fud, language) FROM stdin;
    Fud          postgres    false    225   Y�      �          0    60378    dish_and_combo_features 
   TABLE DATA           �   COPY "Inventory".dish_and_combo_features (id, id_companies, id_branches, id_dishes_and_combos, price_1, revenue_1, price_2, revenue_2, price_3, revenue_3, favorites, sat_key, purchase_unit, existence, amount, product_cost, id_providers) FROM stdin;
 	   Inventory          postgres    false    244   ��      �          0    60712    product_and_suppiles_features 
   TABLE DATA             COPY "Inventory".product_and_suppiles_features (id, id_branches, sale_price, max_inventary, minimum_inventory, existence, purchase_amount, purchase_price, sale_amount, id_products_and_supplies, currency_purchase, currency_sale, unit_inventory, purchase_unity, sale_unity) FROM stdin;
 	   Inventory          postgres    false    278   !�      �          0    60724    table_supplies_dish 
   TABLE DATA           �   COPY "Inventory".table_supplies_dish (id, id_dish_and_combo_features, id_product_and_suppiles_features, amount, unity) FROM stdin;
 	   Inventory          postgres    false    280   ��      �          0    60685    table_taxes 
   TABLE DATA           N   COPY "Inventory".table_taxes (id, id_taxes, id_dishes_and_combos) FROM stdin;
 	   Inventory          postgres    false    276   ��      �          0    60464    taxes 
   TABLE DATA           e   COPY "Inventory".taxes (id, name, price_taxe, local_taxe, type_taxe, accounting_account) FROM stdin;
 	   Inventory          postgres    false    254   ��      �          0    60591    dishes_and_combos 
   TABLE DATA           �   COPY "Kitchen".dishes_and_combos (id_companies, img, name, description, barcode, id_product_department, id_product_category, id) FROM stdin;
    Kitchen          postgres    false    267   �      �          0    60478    product_category 
   TABLE DATA           R   COPY "Kitchen".product_category (id, id_companies, name, description) FROM stdin;
    Kitchen          postgres    false    256   ��      �          0    60487    product_department 
   TABLE DATA           T   COPY "Kitchen".product_department (id, id_companies, name, description) FROM stdin;
    Kitchen          postgres    false    258   ��      �          0    60242    products_and_supplies 
   TABLE DATA           ~   COPY "Kitchen".products_and_supplies (id, id_companies, img, barcode, name, description, use_inventory, supplies) FROM stdin;
    Kitchen          postgres    false    232   �      �          0    60598    screen 
   TABLE DATA           4   COPY "Kitchen".screen (ip, id_branches) FROM stdin;
    Kitchen          postgres    false    268   ��      �          0    60778    table_supplies_combo 
   TABLE DATA           �   COPY "Kitchen".table_supplies_combo (id, id_dishes_and_combos, id_products_and_supplies, unity, amount, food_waste) FROM stdin;
    Kitchen          postgres    false    284   ��      �          0    60679    branch 
   TABLE DATA           (   COPY "Settings".branch (id) FROM stdin;
    Settings          postgres    false    274   K�      �          0    60676    company 
   TABLE DATA           4   COPY "Settings".company (color_company) FROM stdin;
    Settings          postgres    false    273   h�      �          0    60206 	   companies 
   TABLE DATA           �   COPY "User".companies (id, id_users, path_logo, email_company, alias, description, representative, ceo, id_country, states, municipality, city, cologne, address, num_int, num_ext, postal_code, email, cell_phone, phone, name) FROM stdin;
    User          postgres    false    227   ��      �          0    85788    subscription 
   TABLE DATA           w   COPY "User".subscription (id, id_users, id_companies, id_branches, id_packs_fud, initial_date, final_date) FROM stdin;
    User          postgres    false    297   I�      �          0    60770    session 
   TABLE DATA           4   COPY public.session (sid, sess, expire) FROM stdin;
    public          postgres    false    282   ��      '           0    0    movement_history_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"Box".movement_history_id_seq', 7, true);
          Box          postgres    false    286            (           0    0    sales_history_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"Box".sales_history_id_seq', 129, true);
          Box          postgres    false    239            )           0    0 	   Ad_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('"Branch"."Ad_id_seq"', 58, true);
          Branch          postgres    false    289            *           0    0    billing_information_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"Branch".billing_information_id_seq', 1, false);
          Branch          postgres    false    265            +           0    0    boxes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('"Branch".boxes_id_seq', 7, true);
          Branch          postgres    false    261            ,           0    0    commanders_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"Branch".commanders_id_seq', 48, true);
          Branch          postgres    false    287            -           0    0    managers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"Branch".managers_id_seq', 1, false);
          Branch          postgres    false    259            .           0    0    pack_reservation_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"Branch".pack_reservation_id_seq', 1, false);
          Branch          postgres    false    251            /           0    0    providers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"Branch".providers_id_seq', 4, true);
          Branch          postgres    false    263            0           0    0    reservation_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"Branch".reservation_id_seq', 1, false);
          Branch          postgres    false    249            1           0    0    restaurant_area_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"Branch".restaurant_area_id_seq', 1, false);
          Branch          postgres    false    269            2           0    0    tables_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('"Branch".tables_id_seq', 1, false);
          Branch          postgres    false    247            3           0    0    branches_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"Company".branches_id_seq', 17, true);
          Company          postgres    false    241            4           0    0    customers_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"Company".customers_id_seq', 4, true);
          Company          postgres    false    237            5           0    0    employees_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"Company".employees_id_seq', 45, true);
          Company          postgres    false    228            6           0    0    departments_employees_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"Employee".departments_employees_id_seq', 5, true);
          Employee          postgres    false    235            7           0    0    history_schedules_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"Employee".history_schedules_id_seq', 66, true);
          Employee          postgres    false    293            8           0    0    roles_employees_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"Employee".roles_employees_id_seq', 11, true);
          Employee          postgres    false    233            9           0    0    schedules_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"Employee".schedules_id_seq', 5, true);
          Employee          postgres    false    291            :           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('"Fud".country_id_seq', 197, true);
          Fud          postgres    false    245            ;           0    0    tokens_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('"Fud".tokens_id_seq', 14, true);
          Fud          postgres    false    295            <           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('"Fud".users_id_seq', 64, true);
          Fud          postgres    false    224            =           0    0    dish_and_combo_features_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('"Inventory".dish_and_combo_features_id_seq', 13, true);
       	   Inventory          postgres    false    243            >           0    0 $   product_and_suppiles_features_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"Inventory".product_and_suppiles_features_id_seq', 10, true);
       	   Inventory          postgres    false    277            ?           0    0    table_supplies_dish_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"Inventory".table_supplies_dish_id_seq', 1, false);
       	   Inventory          postgres    false    279            @           0    0    table_taxes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"Inventory".table_taxes_id_seq', 1, false);
       	   Inventory          postgres    false    275            A           0    0    taxes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"Inventory".taxes_id_seq', 1, false);
       	   Inventory          postgres    false    253            B           0    0     dishes_and_combos_id_serial_seq1    SEQUENCE SET     R   SELECT pg_catalog.setval('"Kitchen".dishes_and_combos_id_serial_seq1', 12, true);
          Kitchen          postgres    false    285            C           0    0    product_category_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"Kitchen".product_category_id_seq', 2, true);
          Kitchen          postgres    false    255            D           0    0    product_department_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"Kitchen".product_department_id_seq', 2, true);
          Kitchen          postgres    false    257            E           0    0    products_and_supplies_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"Kitchen".products_and_supplies_id_seq', 17, true);
          Kitchen          postgres    false    231            F           0    0    table_supplies_combo_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"Kitchen".table_supplies_combo_id_seq', 133, true);
          Kitchen          postgres    false    283            G           0    0    companies_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('"User".companies_id_seq', 2, true);
          User          postgres    false    226            �           2606    60628    boxes_history key_boxes_history 
   CONSTRAINT     \   ALTER TABLE ONLY "Box".boxes_history
    ADD CONSTRAINT key_boxes_history PRIMARY KEY (id);
 H   ALTER TABLE ONLY "Box".boxes_history DROP CONSTRAINT key_boxes_history;
       Box            postgres    false    271            �           2606    69152 %   movement_history key_movement_history 
   CONSTRAINT     b   ALTER TABLE ONLY "Box".movement_history
    ADD CONSTRAINT key_movement_history PRIMARY KEY (id);
 N   ALTER TABLE ONLY "Box".movement_history DROP CONSTRAINT key_movement_history;
       Box            postgres    false    272            �           2606    60320    sales_history key_sales_history 
   CONSTRAINT     \   ALTER TABLE ONLY "Box".sales_history
    ADD CONSTRAINT key_sales_history PRIMARY KEY (id);
 H   ALTER TABLE ONLY "Box".sales_history DROP CONSTRAINT key_sales_history;
       Box            postgres    false    240            �           2606    60585 *   billing_information billing_information_uq 
   CONSTRAINT     o   ALTER TABLE ONLY "Branch".billing_information
    ADD CONSTRAINT billing_information_uq UNIQUE (id_providers);
 V   ALTER TABLE ONLY "Branch".billing_information DROP CONSTRAINT billing_information_uq;
       Branch            postgres    false    266            �           2606    69188 	   Ad key_ad 
   CONSTRAINT     K   ALTER TABLE ONLY "Branch"."Ad"
    ADD CONSTRAINT key_ad PRIMARY KEY (id);
 7   ALTER TABLE ONLY "Branch"."Ad" DROP CONSTRAINT key_ad;
       Branch            postgres    false    290            �           2606    60578 +   billing_information key_billing_information 
   CONSTRAINT     k   ALTER TABLE ONLY "Branch".billing_information
    ADD CONSTRAINT key_billing_information PRIMARY KEY (id);
 W   ALTER TABLE ONLY "Branch".billing_information DROP CONSTRAINT key_billing_information;
       Branch            postgres    false    266            �           2606    60540    boxes key_boxes 
   CONSTRAINT     O   ALTER TABLE ONLY "Branch".boxes
    ADD CONSTRAINT key_boxes PRIMARY KEY (id);
 ;   ALTER TABLE ONLY "Branch".boxes DROP CONSTRAINT key_boxes;
       Branch            postgres    false    262            �           2606    69179    commanders key_commander 
   CONSTRAINT     X   ALTER TABLE ONLY "Branch".commanders
    ADD CONSTRAINT key_commander PRIMARY KEY (id);
 D   ALTER TABLE ONLY "Branch".commanders DROP CONSTRAINT key_commander;
       Branch            postgres    false    288            �           2606    60521    managers key_managers 
   CONSTRAINT     U   ALTER TABLE ONLY "Branch".managers
    ADD CONSTRAINT key_managers PRIMARY KEY (id);
 A   ALTER TABLE ONLY "Branch".managers DROP CONSTRAINT key_managers;
       Branch            postgres    false    260            �           2606    60452 %   pack_reservation key_pack_reservation 
   CONSTRAINT     e   ALTER TABLE ONLY "Branch".pack_reservation
    ADD CONSTRAINT key_pack_reservation PRIMARY KEY (id);
 Q   ALTER TABLE ONLY "Branch".pack_reservation DROP CONSTRAINT key_pack_reservation;
       Branch            postgres    false    252            �           2606    60433    reservation key_reservation 
   CONSTRAINT     [   ALTER TABLE ONLY "Branch".reservation
    ADD CONSTRAINT key_reservation PRIMARY KEY (id);
 G   ALTER TABLE ONLY "Branch".reservation DROP CONSTRAINT key_reservation;
       Branch            postgres    false    250            �           2606    60613 #   restaurant_area key_restaurant_area 
   CONSTRAINT     c   ALTER TABLE ONLY "Branch".restaurant_area
    ADD CONSTRAINT key_restaurant_area PRIMARY KEY (id);
 O   ALTER TABLE ONLY "Branch".restaurant_area DROP CONSTRAINT key_restaurant_area;
       Branch            postgres    false    270            �           2606    60564    providers key_suppliers_branch 
   CONSTRAINT     ^   ALTER TABLE ONLY "Branch".providers
    ADD CONSTRAINT key_suppliers_branch PRIMARY KEY (id);
 J   ALTER TABLE ONLY "Branch".providers DROP CONSTRAINT key_suppliers_branch;
       Branch            postgres    false    264            �           2606    60419    tables key_table 
   CONSTRAINT     P   ALTER TABLE ONLY "Branch".tables
    ADD CONSTRAINT key_table PRIMARY KEY (id);
 <   ALTER TABLE ONLY "Branch".tables DROP CONSTRAINT key_table;
       Branch            postgres    false    248            �           2606    60261    employees employees_uq 
   CONSTRAINT     X   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT employees_uq UNIQUE (id_users);
 C   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT employees_uq;
       Company            postgres    false    229            �           2606    60339    branches key_branches 
   CONSTRAINT     V   ALTER TABLE ONLY "Company".branches
    ADD CONSTRAINT key_branches PRIMARY KEY (id);
 B   ALTER TABLE ONLY "Company".branches DROP CONSTRAINT key_branches;
       Company            postgres    false    242            �           2606    60308    customers key_customer 
   CONSTRAINT     W   ALTER TABLE ONLY "Company".customers
    ADD CONSTRAINT key_customer PRIMARY KEY (id);
 C   ALTER TABLE ONLY "Company".customers DROP CONSTRAINT key_customer;
       Company            postgres    false    238            �           2606    60225    employees key_employees 
   CONSTRAINT     X   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT key_employees PRIMARY KEY (id);
 D   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT key_employees;
       Company            postgres    false    229            �           2606    77378    schedules key 
   CONSTRAINT     O   ALTER TABLE ONLY "Employee".schedules
    ADD CONSTRAINT key PRIMARY KEY (id);
 ;   ALTER TABLE ONLY "Employee".schedules DROP CONSTRAINT key;
       Employee            postgres    false    292            �           2606    60289    departments_employees key_areas 
   CONSTRAINT     a   ALTER TABLE ONLY "Employee".departments_employees
    ADD CONSTRAINT key_areas PRIMARY KEY (id);
 M   ALTER TABLE ONLY "Employee".departments_employees DROP CONSTRAINT key_areas;
       Employee            postgres    false    236            �           2606    77555 *   history_schedules key_history_schedules_id 
   CONSTRAINT     l   ALTER TABLE ONLY "Employee".history_schedules
    ADD CONSTRAINT key_history_schedules_id PRIMARY KEY (id);
 X   ALTER TABLE ONLY "Employee".history_schedules DROP CONSTRAINT key_history_schedules_id;
       Employee            postgres    false    294            �           2606    60270    roles_employees key_roles 
   CONSTRAINT     [   ALTER TABLE ONLY "Employee".roles_employees
    ADD CONSTRAINT key_roles PRIMARY KEY (id);
 G   ALTER TABLE ONLY "Employee".roles_employees DROP CONSTRAINT key_roles;
       Employee            postgres    false    234            �           2606    60235    packs_fud key 
   CONSTRAINT     J   ALTER TABLE ONLY "Fud".packs_fud
    ADD CONSTRAINT key PRIMARY KEY (id);
 6   ALTER TABLE ONLY "Fud".packs_fud DROP CONSTRAINT key;
       Fud            postgres    false    230            �           2606    60392    country key_country 
   CONSTRAINT     P   ALTER TABLE ONLY "Fud".country
    ADD CONSTRAINT key_country PRIMARY KEY (id);
 <   ALTER TABLE ONLY "Fud".country DROP CONSTRAINT key_country;
       Fud            postgres    false    246            �           2606    60204    users key_email_user 
   CONSTRAINT     O   ALTER TABLE ONLY "Fud".users
    ADD CONSTRAINT key_email_user UNIQUE (email);
 =   ALTER TABLE ONLY "Fud".users DROP CONSTRAINT key_email_user;
       Fud            postgres    false    225            �           2606    60200    users key_user 
   CONSTRAINT     K   ALTER TABLE ONLY "Fud".users
    ADD CONSTRAINT key_user PRIMARY KEY (id);
 7   ALTER TABLE ONLY "Fud".users DROP CONSTRAINT key_user;
       Fud            postgres    false    225            �           2606    60767    session  session_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY "Fud"."session "
    ADD CONSTRAINT session_pkey PRIMARY KEY (sid);
 @   ALTER TABLE ONLY "Fud"."session " DROP CONSTRAINT session_pkey;
       Fud            postgres    false    281            �           2606    85782    tokens tokens_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY "Fud".tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY "Fud".tokens DROP CONSTRAINT tokens_pkey;
       Fud            postgres    false    296            �           2606    60202    users user_u 
   CONSTRAINT     K   ALTER TABLE ONLY "Fud".users
    ADD CONSTRAINT user_u UNIQUE (user_name);
 5   ALTER TABLE ONLY "Fud".users DROP CONSTRAINT user_u;
       Fud            postgres    false    225            �           2606    60385 )   dish_and_combo_features key_dish_features 
   CONSTRAINT     l   ALTER TABLE ONLY "Inventory".dish_and_combo_features
    ADD CONSTRAINT key_dish_features PRIMARY KEY (id);
 X   ALTER TABLE ONLY "Inventory".dish_and_combo_features DROP CONSTRAINT key_dish_features;
    	   Inventory            postgres    false    244            �           2606    60717 3   product_and_suppiles_features key_product_features2 
   CONSTRAINT     v   ALTER TABLE ONLY "Inventory".product_and_suppiles_features
    ADD CONSTRAINT key_product_features2 PRIMARY KEY (id);
 b   ALTER TABLE ONLY "Inventory".product_and_suppiles_features DROP CONSTRAINT key_product_features2;
    	   Inventory            postgres    false    278            �           2606    60729 +   table_supplies_dish key_table_supplies_dish 
   CONSTRAINT     n   ALTER TABLE ONLY "Inventory".table_supplies_dish
    ADD CONSTRAINT key_table_supplies_dish PRIMARY KEY (id);
 Z   ALTER TABLE ONLY "Inventory".table_supplies_dish DROP CONSTRAINT key_table_supplies_dish;
    	   Inventory            postgres    false    280            �           2606    60690    table_taxes key_table_taxes 
   CONSTRAINT     ^   ALTER TABLE ONLY "Inventory".table_taxes
    ADD CONSTRAINT key_table_taxes PRIMARY KEY (id);
 J   ALTER TABLE ONLY "Inventory".table_taxes DROP CONSTRAINT key_table_taxes;
    	   Inventory            postgres    false    276            �           2606    60471    taxes key_taxes 
   CONSTRAINT     R   ALTER TABLE ONLY "Inventory".taxes
    ADD CONSTRAINT key_taxes PRIMARY KEY (id);
 >   ALTER TABLE ONLY "Inventory".taxes DROP CONSTRAINT key_taxes;
    	   Inventory            postgres    false    254            �           2606    68978 (   dishes_and_combos dishes_and_combos_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "Kitchen".dishes_and_combos
    ADD CONSTRAINT dishes_and_combos_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY "Kitchen".dishes_and_combos DROP CONSTRAINT dishes_and_combos_pkey;
       Kitchen            postgres    false    267            �           2606    60604    screen id_screen 
   CONSTRAINT     Q   ALTER TABLE ONLY "Kitchen".screen
    ADD CONSTRAINT id_screen PRIMARY KEY (ip);
 =   ALTER TABLE ONLY "Kitchen".screen DROP CONSTRAINT id_screen;
       Kitchen            postgres    false    268            �           2606    60249 !   products_and_supplies key_product 
   CONSTRAINT     b   ALTER TABLE ONLY "Kitchen".products_and_supplies
    ADD CONSTRAINT key_product PRIMARY KEY (id);
 N   ALTER TABLE ONLY "Kitchen".products_and_supplies DROP CONSTRAINT key_product;
       Kitchen            postgres    false    232            �           2606    60485 %   product_category key_product_category 
   CONSTRAINT     f   ALTER TABLE ONLY "Kitchen".product_category
    ADD CONSTRAINT key_product_category PRIMARY KEY (id);
 R   ALTER TABLE ONLY "Kitchen".product_category DROP CONSTRAINT key_product_category;
       Kitchen            postgres    false    256            �           2606    60494 )   product_department key_product_department 
   CONSTRAINT     j   ALTER TABLE ONLY "Kitchen".product_department
    ADD CONSTRAINT key_product_department PRIMARY KEY (id);
 V   ALTER TABLE ONLY "Kitchen".product_department DROP CONSTRAINT key_product_department;
       Kitchen            postgres    false    258            �           2606    60683    branch key_setting_branch 
   CONSTRAINT     [   ALTER TABLE ONLY "Settings".branch
    ADD CONSTRAINT key_setting_branch PRIMARY KEY (id);
 G   ALTER TABLE ONLY "Settings".branch DROP CONSTRAINT key_setting_branch;
       Settings            postgres    false    274            �           2606    85794     subscription id_key_subscription 
   CONSTRAINT     ^   ALTER TABLE ONLY "User".subscription
    ADD CONSTRAINT id_key_subscription PRIMARY KEY (id);
 J   ALTER TABLE ONLY "User".subscription DROP CONSTRAINT id_key_subscription;
       User            postgres    false    297            �           2606    60213    companies key_company 
   CONSTRAINT     S   ALTER TABLE ONLY "User".companies
    ADD CONSTRAINT key_company PRIMARY KEY (id);
 ?   ALTER TABLE ONLY "User".companies DROP CONSTRAINT key_company;
       User            postgres    false    227            �           2606    60776    session session_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (sid);
 >   ALTER TABLE ONLY public.session DROP CONSTRAINT session_pkey;
       public            postgres    false    282                       2606    60629    boxes_history boxes_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".boxes_history
    ADD CONSTRAINT boxes_fk FOREIGN KEY (id_boxes) REFERENCES "Branch".boxes(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ?   ALTER TABLE ONLY "Box".boxes_history DROP CONSTRAINT boxes_fk;
       Box          postgres    false    262    271    3517                       2606    60656    movement_history boxes_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".movement_history
    ADD CONSTRAINT boxes_fk FOREIGN KEY (id_boxes) REFERENCES "Branch".boxes(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY "Box".movement_history DROP CONSTRAINT boxes_fk;
       Box          postgres    false    272    3517    262            �           2606    60355    sales_history branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".sales_history
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY "Box".sales_history DROP CONSTRAINT branches_fk;
       Box          postgres    false    242    240    3497                       2606    60639    boxes_history branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".boxes_history
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY "Box".boxes_history DROP CONSTRAINT branches_fk;
       Box          postgres    false    271    242    3497                       2606    60651    movement_history branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".movement_history
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY "Box".movement_history DROP CONSTRAINT branches_fk;
       Box          postgres    false    272    3497    242            �           2606    60360    sales_history companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".sales_history
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Box".sales_history DROP CONSTRAINT companies_fk;
       Box          postgres    false    240    3479    227            �           2606    60321    sales_history customers_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".sales_history
    ADD CONSTRAINT customers_fk FOREIGN KEY (id_customers) REFERENCES "Company".customers(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Box".sales_history DROP CONSTRAINT customers_fk;
       Box          postgres    false    238    240    3493            �           2606    69046 "   sales_history dishes_and_combos_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".sales_history
    ADD CONSTRAINT dishes_and_combos_fk FOREIGN KEY (id_dishes_and_combos) REFERENCES "Kitchen".dishes_and_combos(id) NOT VALID;
 K   ALTER TABLE ONLY "Box".sales_history DROP CONSTRAINT dishes_and_combos_fk;
       Box          postgres    false    3525    267    240            �           2606    60326    sales_history employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".sales_history
    ADD CONSTRAINT employees_fk FOREIGN KEY (id_employees) REFERENCES "Company".employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Box".sales_history DROP CONSTRAINT employees_fk;
       Box          postgres    false    229    240    3483                       2606    60634    boxes_history employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".boxes_history
    ADD CONSTRAINT employees_fk FOREIGN KEY (id_employees) REFERENCES "Company".employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Box".boxes_history DROP CONSTRAINT employees_fk;
       Box          postgres    false    229    271    3483                       2606    60661    movement_history employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".movement_history
    ADD CONSTRAINT employees_fk FOREIGN KEY (id_employees) REFERENCES "Company".employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 F   ALTER TABLE ONLY "Box".movement_history DROP CONSTRAINT employees_fk;
       Box          postgres    false    229    272    3483                        2606    60434    reservation branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".reservation
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Branch".reservation DROP CONSTRAINT branches_fk;
       Branch          postgres    false    3497    250    242            �           2606    60458    tables branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".tables
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 >   ALTER TABLE ONLY "Branch".tables DROP CONSTRAINT branches_fk;
       Branch          postgres    false    248    3497    242                       2606    60472    pack_reservation branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".pack_reservation
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY "Branch".pack_reservation DROP CONSTRAINT branches_fk;
       Branch          postgres    false    252    242    3497                       2606    60522    managers branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".managers
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 @   ALTER TABLE ONLY "Branch".managers DROP CONSTRAINT branches_fk;
       Branch          postgres    false    260    242    3497                       2606    60541    boxes branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".boxes
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 =   ALTER TABLE ONLY "Branch".boxes DROP CONSTRAINT branches_fk;
       Branch          postgres    false    3497    262    242                       2606    60614    restaurant_area branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".restaurant_area
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY "Branch".restaurant_area DROP CONSTRAINT branches_fk;
       Branch          postgres    false    270    242    3497            	           2606    60740    providers branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".providers
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY "Branch".providers DROP CONSTRAINT branches_fk;
       Branch          postgres    false    3497    242    264                       2606    69189    Ad branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch"."Ad"
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 <   ALTER TABLE ONLY "Branch"."Ad" DROP CONSTRAINT branches_fk;
       Branch          postgres    false    242    290    3497                       2606    60527    managers employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".managers
    ADD CONSTRAINT employees_fk FOREIGN KEY (id_employees) REFERENCES "Company".employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY "Branch".managers DROP CONSTRAINT employees_fk;
       Branch          postgres    false    229    260    3483                       2606    60453    reservation pack_reservation_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".reservation
    ADD CONSTRAINT pack_reservation_fk FOREIGN KEY (id_pack_reservation) REFERENCES "Branch".pack_reservation(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY "Branch".reservation DROP CONSTRAINT pack_reservation_fk;
       Branch          postgres    false    252    3507    250            
           2606    60579     billing_information providers_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".billing_information
    ADD CONSTRAINT providers_fk FOREIGN KEY (id_providers) REFERENCES "Branch".providers(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY "Branch".billing_information DROP CONSTRAINT providers_fk;
       Branch          postgres    false    266    3519    264            �           2606    60619    tables restaurant_area_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".tables
    ADD CONSTRAINT restaurant_area_fk FOREIGN KEY (id_restaurant_area) REFERENCES "Branch".restaurant_area(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY "Branch".tables DROP CONSTRAINT restaurant_area_fk;
       Branch          postgres    false    248    3529    270                       2606    60439    reservation tables_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".reservation
    ADD CONSTRAINT tables_fk FOREIGN KEY (id_tables) REFERENCES "Branch".tables(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY "Branch".reservation DROP CONSTRAINT tables_fk;
       Branch          postgres    false    250    3503    248            �           2606    60345    employees branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT branches_fk;
       Company          postgres    false    229    3497    242            �           2606    60226    employees companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT companies_fk;
       Company          postgres    false    3479    229    227            �           2606    60309    customers companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".customers
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Company".customers DROP CONSTRAINT companies_fk;
       Company          postgres    false    3479    227    238            �           2606    60340    branches companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".branches
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY "Company".branches DROP CONSTRAINT companies_fk;
       Company          postgres    false    3479    242    227            �           2606    60495    branches country_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".branches
    ADD CONSTRAINT country_fk FOREIGN KEY (id_country) REFERENCES "Fud".country(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 @   ALTER TABLE ONLY "Company".branches DROP CONSTRAINT country_fk;
       Company          postgres    false    242    246    3501            �           2606    60500    customers country_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".customers
    ADD CONSTRAINT country_fk FOREIGN KEY (id_country) REFERENCES "Fud".country(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY "Company".customers DROP CONSTRAINT country_fk;
       Company          postgres    false    246    238    3501            �           2606    69039    employees country_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT country_fk FOREIGN KEY (id_country) REFERENCES "Fud".country(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT country_fk;
       Company          postgres    false    3501    246    229            �           2606    60295 "   employees departments_employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT departments_employees_fk FOREIGN KEY (id_departments_employees) REFERENCES "Employee".departments_employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT departments_employees_fk;
       Company          postgres    false    229    236    3491            �           2606    60271    employees roles_employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT roles_employees_fk FOREIGN KEY (id_roles_employees) REFERENCES "Employee".roles_employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT roles_employees_fk;
       Company          postgres    false    3489    234    229            �           2606    60255    employees users_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT users_fk FOREIGN KEY (id_users) REFERENCES "Fud".users(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ?   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT users_fk;
       Company          postgres    false    229    225    3475                       2606    77566    history_schedules branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Employee".history_schedules
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY "Employee".history_schedules DROP CONSTRAINT branches_fk;
       Employee          postgres    false    242    3497    294            �           2606    60276    roles_employees companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Employee".roles_employees
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY "Employee".roles_employees DROP CONSTRAINT companies_fk;
       Employee          postgres    false    3479    227    234            �           2606    60290 "   departments_employees companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Employee".departments_employees
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY "Employee".departments_employees DROP CONSTRAINT companies_fk;
       Employee          postgres    false    227    236    3479                       2606    77561    history_schedules employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Employee".history_schedules
    ADD CONSTRAINT employees_fk FOREIGN KEY (id_employees) REFERENCES "Company".employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY "Employee".history_schedules DROP CONSTRAINT employees_fk;
       Employee          postgres    false    3483    294    229                       2606    77556    history_schedules schedules_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Employee".history_schedules
    ADD CONSTRAINT schedules_fk FOREIGN KEY (id_schedules) REFERENCES "Employee".schedules(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY "Employee".history_schedules DROP CONSTRAINT schedules_fk;
       Employee          postgres    false    3551    292    294            �           2606    60236    users packs_fud_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Fud".users
    ADD CONSTRAINT packs_fud_fk FOREIGN KEY (id_packs_fud) REFERENCES "Fud".packs_fud(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ;   ALTER TABLE ONLY "Fud".users DROP CONSTRAINT packs_fud_fk;
       Fud          postgres    false    230    225    3485                        2606    85783    tokens tokens_user_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY "Fud".tokens
    ADD CONSTRAINT tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES "Fud".users(id);
 C   ALTER TABLE ONLY "Fud".tokens DROP CONSTRAINT tokens_user_id_fkey;
       Fud          postgres    false    225    296    3475            �           2606    60551 #   dish_and_combo_features branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".dish_and_combo_features
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 R   ALTER TABLE ONLY "Inventory".dish_and_combo_features DROP CONSTRAINT branches_fk;
    	   Inventory          postgres    false    3497    242    244                       2606    60750 )   product_and_suppiles_features branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".product_and_suppiles_features
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY "Inventory".product_and_suppiles_features DROP CONSTRAINT branches_fk;
    	   Inventory          postgres    false    3497    278    242            �           2606    60546 $   dish_and_combo_features companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".dish_and_combo_features
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY "Inventory".dish_and_combo_features DROP CONSTRAINT companies_fk;
    	   Inventory          postgres    false    3479    244    227                       2606    60735 .   table_supplies_dish dish_and_combo_features_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".table_supplies_dish
    ADD CONSTRAINT dish_and_combo_features_fk FOREIGN KEY (id_dish_and_combo_features) REFERENCES "Inventory".dish_and_combo_features(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ]   ALTER TABLE ONLY "Inventory".table_supplies_dish DROP CONSTRAINT dish_and_combo_features_fk;
    	   Inventory          postgres    false    244    280    3499                       2606    60730 4   table_supplies_dish product_and_suppiles_features_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".table_supplies_dish
    ADD CONSTRAINT product_and_suppiles_features_fk FOREIGN KEY (id_product_and_suppiles_features) REFERENCES "Inventory".product_and_suppiles_features(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 c   ALTER TABLE ONLY "Inventory".table_supplies_dish DROP CONSTRAINT product_and_suppiles_features_fk;
    	   Inventory          postgres    false    3539    280    278                       2606    60718 6   product_and_suppiles_features products_and_supplies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".product_and_suppiles_features
    ADD CONSTRAINT products_and_supplies_fk FOREIGN KEY (id_products_and_supplies) REFERENCES "Kitchen".products_and_supplies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 e   ALTER TABLE ONLY "Inventory".product_and_suppiles_features DROP CONSTRAINT products_and_supplies_fk;
    	   Inventory          postgres    false    232    278    3487            �           2606    60565 $   dish_and_combo_features providers_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".dish_and_combo_features
    ADD CONSTRAINT providers_fk FOREIGN KEY (id_providers) REFERENCES "Branch".providers(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY "Inventory".dish_and_combo_features DROP CONSTRAINT providers_fk;
    	   Inventory          postgres    false    264    244    3519                       2606    60691    table_taxes taxes_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".table_taxes
    ADD CONSTRAINT taxes_fk FOREIGN KEY (id_taxes) REFERENCES "Inventory".taxes(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Inventory".table_taxes DROP CONSTRAINT taxes_fk;
    	   Inventory          postgres    false    3509    254    276                       2606    60745    screen branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".screen
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ?   ALTER TABLE ONLY "Kitchen".screen DROP CONSTRAINT branches_fk;
       Kitchen          postgres    false    242    268    3497            �           2606    60250 "   products_and_supplies companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".products_and_supplies
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY "Kitchen".products_and_supplies DROP CONSTRAINT companies_fk;
       Kitchen          postgres    false    227    3479    232                       2606    60505    product_category companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".product_category
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY "Kitchen".product_category DROP CONSTRAINT companies_fk;
       Kitchen          postgres    false    3479    227    256                       2606    60510    product_department companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".product_department
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY "Kitchen".product_department DROP CONSTRAINT companies_fk;
       Kitchen          postgres    false    3479    258    227                       2606    60706    dishes_and_combos companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".dishes_and_combos
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY "Kitchen".dishes_and_combos DROP CONSTRAINT companies_fk;
       Kitchen          postgres    false    227    3479    267                       2606    60671 %   dishes_and_combos product_category_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".dishes_and_combos
    ADD CONSTRAINT product_category_fk FOREIGN KEY (id_product_category) REFERENCES "Kitchen".product_category(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 R   ALTER TABLE ONLY "Kitchen".dishes_and_combos DROP CONSTRAINT product_category_fk;
       Kitchen          postgres    false    267    3511    256                       2606    60666 '   dishes_and_combos product_department_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".dishes_and_combos
    ADD CONSTRAINT product_department_fk FOREIGN KEY (id_product_department) REFERENCES "Kitchen".product_department(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY "Kitchen".dishes_and_combos DROP CONSTRAINT product_department_fk;
       Kitchen          postgres    false    267    3513    258                       2606    60787 -   table_supplies_combo products_and_supplies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".table_supplies_combo
    ADD CONSTRAINT products_and_supplies_fk FOREIGN KEY (id_products_and_supplies) REFERENCES "Kitchen".products_and_supplies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 Z   ALTER TABLE ONLY "Kitchen".table_supplies_combo DROP CONSTRAINT products_and_supplies_fk;
       Kitchen          postgres    false    284    3487    232            !           2606    85805    subscription branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "User".subscription
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY "User".subscription DROP CONSTRAINT branches_fk;
       User          postgres    false    242    3497    297            "           2606    85800    subscription companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "User".subscription
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "User".subscription DROP CONSTRAINT companies_fk;
       User          postgres    false    3479    227    297            �           2606    60393    companies country_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "User".companies
    ADD CONSTRAINT country_fk FOREIGN KEY (id_country) REFERENCES "Fud".country(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 >   ALTER TABLE ONLY "User".companies DROP CONSTRAINT country_fk;
       User          postgres    false    227    246    3501            #           2606    85810    subscription packs_fud_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "User".subscription
    ADD CONSTRAINT packs_fud_fk FOREIGN KEY (id_packs_fud) REFERENCES "Fud".packs_fud(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "User".subscription DROP CONSTRAINT packs_fud_fk;
       User          postgres    false    230    3485    297            �           2606    60214    companies users_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "User".companies
    ADD CONSTRAINT users_fk FOREIGN KEY (id_users) REFERENCES "Fud".users(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 <   ALTER TABLE ONLY "User".companies DROP CONSTRAINT users_fk;
       User          postgres    false    225    3475    227            $           2606    85795    subscription users_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "User".subscription
    ADD CONSTRAINT users_fk FOREIGN KEY (id_users) REFERENCES "Fud".users(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ?   ALTER TABLE ONLY "User".subscription DROP CONSTRAINT users_fk;
       User          postgres    false    297    225    3475            �      x������ � �      �   �   x�]�=�0��=�/��v� �@��ЪB*I����iZ��������r�@n���벉7$F<
琲'|0��"��	����U@��9�dY��
{�������8C��H��&n�8�Rq��O�jY*gu�yKശ�����ׄ��
��tSŮ�jyN��?��26^��6M��?;      �   �  x����q�:�;U��p��CE�
��:�! y-[^�3g��R����r�۟�n����I�`��W�\~3�Ҹ���7ן���3B|������9���5ɨ��k���K�'�޷
t�o\_Y�7jx�Dj숅��]���&�QO�Y���0�	+�G�\�Exlڒ:+��uLdӒT}�"�[k���:Tɹ���ఔv�#ʩ��O[��H�:�WP�++��'��؈��C��a*v4��֔���#ŴĖ�X2�ZN8]�䌪��F��ʕ����8<�T�5"�nWS�mֹ��z�Ƶg.��v&.��7��$bS!��i>.q��\������Fp�
��u%�N��{��,qwr�nR�p�Y��xp�ÑD��	g�����=�%�,b�G}3В�$ q�2X˦9ϲ��0V�.��0mY6��ר�`�_�%M��[�Tz3��k��%9��W��8*�WnIN���@nonƥ�=sKZ��*����'.��g���K'��]I꥞R|���K0S��b�,BC�':�g�R�^�Ht�=q��a�e�z�Ћ�Ӣ'nɏV$��p\H'�ƽ�I��� ���U!�vg���!��U!A�(BLuAG�ت��L�ZM�uAF'.jE�ϽJ��.e��-�[���\�-�G�ܒ� ������'Ge�����S��FH���6��V�4}�������Fyv�%5�(�tt����`䧌�����w��ud0Z8A�-L=��.�#��ԃf����#��p�;x}�l��_�?���
^(A��z�H2n�����D_T��Llx���t����wcEUl�ܔ��̈g:�a�
Y�Ɗ�F�p�K�UBai�+򚰠�E�}�}�w����X�ׄu��V����R?����	7t��u�a�l�}n{�����&I��b~�=]Z�C���eJ�����M����I~�(���j��>��<a/O�&W�9	��(�g栺���,2��#��S�sj��$��� �9%ȳiO�����@�9���2*�桊���e��kG'�Ot�&EG��&��݇�Z`�e�7a�u
��?�aq=�?�=b�G��m��!!����`)��lX]W4��~�l얯P$��t�
���[�h�좰P��"��ε�:ǅ�T��Ss������K�2Q�ޮL��8
�n{�$03lm���ヶ/7Js'����u��t�I???��XTz      �   �  x�m�Qn1D����HEQ��	�C�R�"��4@�_�)��B��f(�P>�};�LҬdn�T`(;,\�T�>�������Z�#��pW�97n��V \�� �勐��|��Vv�u�c�$� �XnF¤n#�G;:8S��	z�Ĵ۹B�Qkw6S?�/��S��YZ�pK�p��iMJL�>�]/�z�<�����~��?կɮ2KNҁ�(P�3,f&-������6���_���մ+`_�&�G7������'Ş�q�7H=�B�F�:tFݗ  ��CH�We~�Yz		���Y����U��2�Y"J5*��q��V���Lݱ�ʇ��;�h���P�0c}J�y�.�=��ɠh蒯�����[���U�h9bX�R�
�\�KF�e<O �ʻB+K����������0�k�.��V�.�0�Ѣ��(�n����I��to�h{{ݶ�(��       �      x������ � �      �   .   x�3����4 \F �!��������������	H�M0F��� +d	�      �   t  x�՘�n�0���S9/�d}\�2�/��`d�M�.=C�}�ۦI���
H�"�')l|á�z��o@�B����d� �"e:5_��7��j��W��������z����c���ڔϋ�����f�,�.:������f�?��l������݇�E��������������%�C�vy�cv����	��=�����ծ�-���.q��;p�TE�`��I���,_�,��)b�ڪ�ުX�CxV��U�ꍨU�cV��
�7���Y�'�ٓ�d5�T���.&+�j�e}Б��`=KQ,��2@Q��c�hA�c!Ȉ����,RϢ�;A���ǰPtV5[Q�cP<��첨Rrg5����Rt�dJ�����[X��X�4U�na�2��Rg�R���%d�Y��J�-,��(y�إ#d7fV��f9M�8xi[5�h��a��-1�2��0�ㆾ�~���89���GL������5�4t�����V��]^]^�[쌥��茦%�{C�Ϯ�_���ͪ���yѷ�o��r��? �x���2��zL+</�kUޅUX�a��	�f���s�A���i��|�p���I��E�-m��ӵ帷O���b�)�\f���*��ZݸӘ0��<��{,�,d6T�t�c	�E�.��Dc�{UW��Q��� ��ޞ�8��V!�M���%��.��x�*^��x$i{�%Y�v�/�Z�Ʒ[qDu'�?���
J���֭�4f�N�j����}O�����
J񊷵�j4��ZF��0��w�N ��Ј��lt��B�Q�]�C��3C/䵑=����L�<�h
yuQ4�Ue��f���ܕ�&]�>�ٱ�L�42�K���`	���嫛�f� �V��      �      x������ � �      �      x������ � �      �   v   x�3���tN,��LN-�L�3�9� B$�ĊA�&&��%9���z�Ŝ@���s�*9��A��e��)q��ea|#d#qavYFfrvj����NK642&�1z\\\ ��9�      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x���A�0E��S��V��3q�J/��mj���ń�m 1q1���3o��('k]PE���|Ռ�Lg�QC�l���8ߛ�b�@2�p~e�d��png��L��>�|��v�	믻��*��KE*�x�<����-Y6��J�C����	!�	C._      �   D   x�3�4�L.-.��M-R��442�,�)�c ��;������g�%8��Ltu,�b���� ���      �   x   x�E�A
�PD��)�	J4��s��f�e!$�����Ūn2���ft���a���+G� f� �3��dB�+��4(���^n�g/��>��["��Mdu���G���+��n��z!�?�[�      �   0   x�3�4���LI-H,*�M�+�2�4��,O�,I-�2A�T0����� }{�      �   T   x�}���0D�� �&� �ׁ�"n�f�O�S1�uCY}���
X⪟+�[��R�&���Р��hA�D�AD�.�      �   x   x�34�4��M�KLO-�4�440 �%$�4(�L=D����#����� ��Ĝ�bN#SN#���� �9ɂӐ�1%73H$�%�y0Y"7� ���J�`n�of^iI*W� Z�)      �   �   x���A
1E��)��4T1�p3���L������ii)RA�g����A�-����c����� ���9��,�%�'跈)��}��O��������<}�l����=C�<���0T��ˢ坱��B��5�<JxoV��d)�q�{l,e�      �     x�U��r�8�k�)���G$K�qlǲ��d�$s�RBh�$�����GI���M��|���T2�J� v��AJ�}.�1m��hd(Ϊ�J׃��Y��ΑL�J[��Bt�����oI���Qa(X�ߚ�d��RW�!�hH�	�Z��J�3�v�x�
G�%��+�8(�=RM�T	dSV��aM;���NY���31럫�l�U.fa�e8�j�$����
����S#1��ٳ�W�b�͕vG]�=G" ۵�Xý��T2�s�x�!���$�#�s��]��Z+�	۾�!?y�s*l��V�(�U��
�,��aQ� �2�Bv�d���G��(ï��m���;�e�Ĺ�l]p����^,*)c��NS��U����'ɫ��w2�C�v<ܒ��|��4t�g# gi�>�/�(����0�(��֦�I(.6s2��Eiv��I,.����8����8�l����t�7���LŅ3I*.���髇�$����Ǝ�ѨȎ;��S�#��MJ��4r�h:cw��c��Tf��>��T��af
�թx�ᔧ�������i5u:�ں�����-i(.�2���q�K���K�&0L����I|X�E3U2MO�of��x�³?{��L׿�l"�l��\�L�+ߔ�S�Bq=d�E,l����X\;z�Y�_n�l
��b.��)�,t��o��d��FP5[s��#�t%s%���N�x�&����nX���m���'↎�償|*n�
橸1����36M�R�<7��{�Lč���!��c`��nm���Xi5�ż�x<sS�4�)�A�Pz����4cd�a��4n�������;����Foy�W�Gi�(qI�WTj�(m;�.�7�1˭�3��4��Ϡ:^�B�Oz�9h������F7�������S ۭٸSq�vk�-��q�4��{��#v6��.�!{�6��ȶ�z<!�m�*�CO* m��:�[ K�E�Rjd�-L92����d���{
>�����8�-�iq�g�3��t��-q��D�R���-q������(������c��X2Y�b�!����(�/93`�m`Gn�Nac��	�x����(
d��}���������np�:6�eF+����)yS��Ώ�n���R ���r)�sE�e�@5����YP��ya�^�9��P���d��"ʎu|�G4�S`)��s�av(�l��U�K0�ۡA ��к³͑�+}�<��@ו��̵�ԀؕiJ��Q@�����l=� cW�sj��BP��p�0��DW ����b)@w��*`w�͑b��A�@�bM�D7���6�6�n��I�k:�?�����38<��][.#ȻFA������-�jm�C��S����X��	:mc��4^�=U�h���ƍ� �������c+����B��~��>�����?�RG��+Fw�i��5��J�GSx`V�ş��L�ƟL]P"�����?>�2j      �   H   x�3����2F �D���9��IQp��/M�24���KJS2��9݊RS���R+��b���� ��      �      x������ � �      �   w   x�mͻ!D�x��,z�@-N���K�V"�N�4w����=�(B
0��~1��$��k�����؞�OJ�KQ�Ŗ�jc�9�ƚU���	��3�q��
���f�?)ޞ�9��F�.      �   6  x���K��0F����EoA^aר�VP�WM���` ���_?��Yh�&7Y䫓soŰ$bS���!#���*�!�L1LS3�j�J�[K���vEn@��+r.�Va��O�~�0ӝ��Y�V���t�>U�vן'��5ȦM/��\��w��h�[�$�x�����bǮ�T�����*�
*c���}�3�����F�)��BD�� x#��뷵v��	�7�_��1�+i�Q�;���q22�@M��K��Br�\d���?4^Y�%˃F�Ѥ�`|Y���֑�^������Fͤ_C��kz%�Jm�'�=�yXM:Eĝ��Z���X���%��3�(ۿ��n0�_�b�RY�4`��,N1���z)*���ݰlS{B�OY����i�0�=������� �.�H��Ny��G��<����p����O���aJ�S��6I�m8�����ɉ��R���K8�3���w�y~Yo�U����n�XF��ʺaYjdb�F��ܖF���{=�[o��~��3;�g]����P�L+�v�i��ư�w�����{&��^I1U����E���a��04���A��.7B�e��-|�AF�5?F��(/���y1�� :X�YtA^�,���0{�տ��$��=~�Yj�X��@�2��S`�X�P��L�b�i�����/����%�'�8w�5�;ry5Q��R��8;;Ù?��A/=@5ܽ#���%�2����Yg6�^A�QB��i����n���x?� g��fn�jsd7�C�dԽ4m)t�`2���8��U�E;J4�����4#��p�����?��:      �   r   x���1�0���0Jl.Q� Y���r�9]<Y !�O� ����=��:�1>mh��������ù��p�m���]_L���GI5m�!�a� �&��p�s�^K)?� 9V      �   �   x�u��� D��ǘ�Bw�a�7ލ1���"AI�&L޴`�f5��:s�e�r�Ufs�]FsnQ�7��5���mh����B�I�ꔔ�ܖ��v��ϓ�Q1���`�n��H1�p�.օ~~��HΜ[��2��u�T���b      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�u�1�0D��>�/�k'f]#�p�=�!�'�GS��'��6KT�!0Ibe�t/��q1'��wY>���Q��:��w���J�~{���IrS�U�;T ,S�M�?���K�<Xk�y1t      �      x�3�4�Tp*JM�NK,.������ 8��      �       x�3�4�tI-H,*I�M�+Q0������ RN�      �   �   x�E�KnB1�ᱳ
6`�yNaL|���-��f��Eբ3��O�
 y[������ �#���ǔ��hu9�V�>s��������ƭ�ʠHJ*=��o�
�]־��#��3NC,ca�6�Dn2��Z*���v}\���Ӱ�F4����RčjƩU|�T�������0@������L?�      �      x������ � �      �   N   x�M�1
�P��9=̣iQygpvs'o�����Ov0�	˱�7���� ����$���(��y�7��%^2>{mfvpT      �      x������ � �      �      x������ � �      �   �   x���M
�0�דS��$&��
�{7&NZ1���7-R��bx�}��� �I���T2ɩL�����6��\th�$zL7�p\7��S9�؝�{o�P�����e��"KΚ`��m�w.a��D�*���R� �RaBsn5խ1� �y�D=������ˁ�+��i"B�
�G      �   ^   x�+.M�70�4��O��+O�41��ss4M�4����44�1~\���9��Q��Y9�8��#�{��;�A�#T��qqq �9'�      �   �   x����n�0 g���cC����*�
P-Q7uqT��GQ޽a����n8�ᕜ�oO���n�������v)�a��B�R k@�r_V\���þ3U�T �bJ+�J�ͲRW`��" ýCh�V�uдm/�bF4��>�0�A���&k��\���Yd�S��D�ǧW���������b����I�ǘQ�(A��/2a(     
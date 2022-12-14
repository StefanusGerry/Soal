PGDMP     .    ;            
    z            Gerry    15.1    15.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    19062    Gerry    DATABASE     ?   CREATE DATABASE "Gerry" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Gerry";
                postgres    false                        3079    19063    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false            ?           0    0    EXTENSION postgis    COMMENT     ^   COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';
                        false    2            ?            1259    20180    garis    TABLE     ?   CREATE TABLE public.garis (
    idgaris character varying(50) NOT NULL,
    namagaris character varying(500),
    geomgaris public.geometry,
    panjanggaris double precision,
    deskripsi character varying(5000)
);
    DROP TABLE public.garis;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            ?            1259    20199    poligon    TABLE     ?   CREATE TABLE public.poligon (
    idpoli character varying(50) NOT NULL,
    namapoli character varying(500),
    geompoli public.geometry,
    luaspoli double precision,
    deskripsi character varying(5000)
);
    DROP TABLE public.poligon;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            ?            1259    20173    titik    TABLE     ?   CREATE TABLE public.titik (
    idtitik character varying(50) NOT NULL,
    namatitik character varying(500),
    geomtitik public.geometry
);
    DROP TABLE public.titik;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            ?          0    20180    garis 
   TABLE DATA           W   COPY public.garis (idgaris, namagaris, geomgaris, panjanggaris, deskripsi) FROM stdin;
    public          postgres    false    221   o       ?          0    20199    poligon 
   TABLE DATA           R   COPY public.poligon (idpoli, namapoli, geompoli, luaspoli, deskripsi) FROM stdin;
    public          postgres    false    222           ?          0    19376    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    216   ?       ?          0    20173    titik 
   TABLE DATA           >   COPY public.titik (idtitik, namatitik, geomtitik) FROM stdin;
    public          postgres    false    220          ?           2606    20186    garis garis_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.garis
    ADD CONSTRAINT garis_pkey PRIMARY KEY (idgaris);
 :   ALTER TABLE ONLY public.garis DROP CONSTRAINT garis_pkey;
       public            postgres    false    221            ?           2606    20205    poligon poligon_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.poligon
    ADD CONSTRAINT poligon_pkey PRIMARY KEY (idpoli);
 >   ALTER TABLE ONLY public.poligon DROP CONSTRAINT poligon_pkey;
       public            postgres    false    222            ?           2606    20179    titik titik_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.titik
    ADD CONSTRAINT titik_pkey PRIMARY KEY (idtitik);
 :   ALTER TABLE ONLY public.titik DROP CONSTRAINT titik_pkey;
       public            postgres    false    220            ?   ?   x???=?0D??\@f?/??	dt???&P??ހ?p??}žv??!??ZݶG^??1H?HtF ?z?\T]d4$tP?֚?x'c?"?]?!??9?Ʒ????j??	?4)餄Ն?׹?????S?c?b?,??mT??b?4K?Z???5??X?C      ?   ?   x?ݏ;R?0Dc?{?u?>??B?f??? $TA??${l/	9?t???? ?-?????i??^7???=V???QQT*?0?F?w?g??6?"'R?ft??J1??) ??c??2A???'Q?,\O?Y?,?(k:x??sa=?_?(p??C,?Z?Zܶ?e???di???ޮ ?????i?~????{??q?      ?      x?????? ? ?      ?   H   x?100?(?I,UHLI,?40B 02p53L̜]-]MM\MM]L@2?????f&&?F??\1z\\\ ??\     
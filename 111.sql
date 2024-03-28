PGDMP                       {            Base    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16404    Base    DATABASE     z   CREATE DATABASE "Base" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Base";
                postgres    false            �            1259    16518    tariffs    TABLE     �   CREATE TABLE public.tariffs (
    id bigint NOT NULL,
    tar_name text NOT NULL,
    description text NOT NULL,
    costs money NOT NULL
);
    DROP TABLE public.tariffs;
       public         heap    postgres    false            �            1259    16517    TarUch_idUch_seq    SEQUENCE     �   ALTER TABLE public.tariffs ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."TarUch_idUch_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    16570    taruch    TABLE     �   CREATE TABLE public.taruch (
    id bigint NOT NULL,
    id_type bigint NOT NULL,
    secname text NOT NULL,
    adress text NOT NULL,
    phonenum numeric NOT NULL,
    date date NOT NULL,
    cost money NOT NULL,
    idusers bigint NOT NULL
);
    DROP TABLE public.taruch;
       public         heap    postgres    false            �            1259    16569    taruch_id_seq    SEQUENCE     �   ALTER TABLE public.taruch ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.taruch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    16425    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16424    users_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �          0    16518    tariffs 
   TABLE DATA           C   COPY public.tariffs (id, tar_name, description, costs) FROM stdin;
    public          postgres    false    218   W       �          0    16570    taruch 
   TABLE DATA           ]   COPY public.taruch (id, id_type, secname, adress, phonenum, date, cost, idusers) FROM stdin;
    public          postgres    false    220   !       �          0    16425    users 
   TABLE DATA           :   COPY public.users (id, name, email, password) FROM stdin;
    public          postgres    false    216   �       �           0    0    TarUch_idUch_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."TarUch_idUch_seq"', 13, true);
          public          postgres    false    217            �           0    0    taruch_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.taruch_id_seq', 6, true);
          public          postgres    false    219            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 83, true);
          public          postgres    false    215            '           2606    16524    tariffs TarUch_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.tariffs
    ADD CONSTRAINT "TarUch_pkey" PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.tariffs DROP CONSTRAINT "TarUch_pkey";
       public            postgres    false    218            )           2606    16580    taruch uchid 
   CONSTRAINT     J   ALTER TABLE ONLY public.taruch
    ADD CONSTRAINT uchid PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.taruch DROP CONSTRAINT uchid;
       public            postgres    false    220            %           2606    16429    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            *           2606    16593    taruch taruch_id_type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.taruch
    ADD CONSTRAINT taruch_id_type_fkey FOREIGN KEY (id_type) REFERENCES public.tariffs(id) NOT VALID;
 D   ALTER TABLE ONLY public.taruch DROP CONSTRAINT taruch_id_type_fkey;
       public          postgres    false    4647    220    218            +           2606    16598    taruch taruch_idusers_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.taruch
    ADD CONSTRAINT taruch_idusers_fkey FOREIGN KEY (idusers) REFERENCES public.users(id) NOT VALID;
 D   ALTER TABLE ONLY public.taruch DROP CONSTRAINT taruch_idusers_fkey;
       public          postgres    false    220    216    4645            �   �   x��Q��0��)� � Gt,�0N*$��"l>	�S0���x&
T4 QX�gߝ�lk��D�%{��7hTba�#j�g���
W���ų�F2*��Pq��1�.��
�Xf��u�͚�[F��#D��OQR7FIv8�E���F-�lg�y��ۉ��՞���#�Jr�Y4&܆���1�j��~ P��      �   �   x���A
�@EיS��0�dں�ݺqQjA��P�y��t!]x�x#G,� �"����-d��ȷPm�M�S��@�\���[;�VO ��M8�7��y�^���\��bB�����U���MNZj�R-�!H8���ƾ�2��־r �#���(���	��ю���u0�M�}cHCmu��{Oj��(���f�      �     x�mQ�m�0|���(����鳟�0RI4E�l�Q:R)�j�G�䁦hI��L�"� Ju3��6@
q����(�nP&sp�F�ަ�C.s�t�f�ڭV����R�e-]�BI�A��,�v#��I��cf�w�`��o��<� ,���=!mQ��ʔJ��L�	f��?���i�6_O�Ḽ�e�\�m:��i��qn��֭��"g�g�V�z���~[*��~r�_�� �k��������~�d��k��/I[q����#^v ~˜x�     
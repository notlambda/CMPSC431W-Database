PGDMP  !    1                |           Vehicle Sales    16.2    16.2 7    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    16398    Vehicle Sales    DATABASE     �   CREATE DATABASE "Vehicle Sales" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Vehicle Sales";
                postgres    false            0           0    0    DATABASE "Vehicle Sales"    COMMENT     C   COMMENT ON DATABASE "Vehicle Sales" IS 'Project P2 for CMPSC431W';
                   postgres    false    4911            �            1259    16445 
   body_style    TABLE     a   CREATE TABLE public.body_style (
    body character varying(20),
    body_id integer NOT NULL
);
    DROP TABLE public.body_style;
       public         heap    postgres    false            �            1259    16487    body_style_body_id_seq    SEQUENCE     �   CREATE SEQUENCE public.body_style_body_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.body_style_body_id_seq;
       public          postgres    false    218            1           0    0    body_style_body_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.body_style_body_id_seq OWNED BY public.body_style.body_id;
          public          postgres    false    225            �            1259    16459    colors    TABLE     �   CREATE TABLE public.colors (
    exterior character varying(20),
    interior character varying(20),
    color_id integer NOT NULL
);
    DROP TABLE public.colors;
       public         heap    postgres    false            �            1259    16497    colors_color_id_seq    SEQUENCE     �   CREATE SEQUENCE public.colors_color_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.colors_color_id_seq;
       public          postgres    false    221            2           0    0    colors_color_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.colors_color_id_seq OWNED BY public.colors.color_id;
          public          postgres    false    226            �            1259    16448    market_value_report    TABLE     \   CREATE TABLE public.market_value_report (
    vin character varying(20),
    mmr integer
);
 '   DROP TABLE public.market_value_report;
       public         heap    postgres    false            �            1259    16462    sale    TABLE     �   CREATE TABLE public.sale (
    vin character varying(20),
    seller character varying(50),
    selling_price integer,
    sale_date date,
    sale_id integer NOT NULL
);
    DROP TABLE public.sale;
       public         heap    postgres    false            �            1259    16505    sale_sale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sale_sale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.sale_sale_id_seq;
       public          postgres    false    222            3           0    0    sale_sale_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.sale_sale_id_seq OWNED BY public.sale.sale_id;
          public          postgres    false    227            �            1259    16470    seller    TABLE     h   CREATE TABLE public.seller (
    seller character varying(50) NOT NULL,
    sale_id integer NOT NULL
);
    DROP TABLE public.seller;
       public         heap    postgres    false            �            1259    16562    seller_sale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.seller_sale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.seller_sale_id_seq;
       public          postgres    false    223            4           0    0    seller_sale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.seller_sale_id_seq OWNED BY public.seller.sale_id;
          public          postgres    false    228            �            1259    16456    state    TABLE     p   CREATE TABLE public.state (
    state character varying(20) NOT NULL,
    vin character varying(20) NOT NULL
);
    DROP TABLE public.state;
       public         heap    postgres    false            �            1259    16442    transmission    TABLE     x   CREATE TABLE public.transmission (
    transmission_type character varying(20),
    transmission_id integer NOT NULL
);
     DROP TABLE public.transmission;
       public         heap    postgres    false            �            1259    16479     transmission_transmission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transmission_transmission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.transmission_transmission_id_seq;
       public          postgres    false    217            5           0    0     transmission_transmission_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.transmission_transmission_id_seq OWNED BY public.transmission.transmission_id;
          public          postgres    false    224            �            1259    16434    vehicle    TABLE     �   CREATE TABLE public.vehicle (
    make character varying(40) NOT NULL,
    model character varying(40) NOT NULL,
    "trim" character varying(40) NOT NULL,
    vin character varying(20) NOT NULL
);
    DROP TABLE public.vehicle;
       public         heap    postgres    false            �            1259    16437    vehicle_instance    TABLE     �   CREATE TABLE public.vehicle_instance (
    year integer,
    condition integer,
    odometer integer,
    vin character varying(20) NOT NULL
);
 $   DROP TABLE public.vehicle_instance;
       public         heap    postgres    false            u           2604    16488    body_style body_id    DEFAULT     x   ALTER TABLE ONLY public.body_style ALTER COLUMN body_id SET DEFAULT nextval('public.body_style_body_id_seq'::regclass);
 A   ALTER TABLE public.body_style ALTER COLUMN body_id DROP DEFAULT;
       public          postgres    false    225    218            v           2604    16498    colors color_id    DEFAULT     r   ALTER TABLE ONLY public.colors ALTER COLUMN color_id SET DEFAULT nextval('public.colors_color_id_seq'::regclass);
 >   ALTER TABLE public.colors ALTER COLUMN color_id DROP DEFAULT;
       public          postgres    false    226    221            w           2604    16506    sale sale_id    DEFAULT     l   ALTER TABLE ONLY public.sale ALTER COLUMN sale_id SET DEFAULT nextval('public.sale_sale_id_seq'::regclass);
 ;   ALTER TABLE public.sale ALTER COLUMN sale_id DROP DEFAULT;
       public          postgres    false    227    222            x           2604    16563    seller sale_id    DEFAULT     p   ALTER TABLE ONLY public.seller ALTER COLUMN sale_id SET DEFAULT nextval('public.seller_sale_id_seq'::regclass);
 =   ALTER TABLE public.seller ALTER COLUMN sale_id DROP DEFAULT;
       public          postgres    false    228    223            t           2604    16480    transmission transmission_id    DEFAULT     �   ALTER TABLE ONLY public.transmission ALTER COLUMN transmission_id SET DEFAULT nextval('public.transmission_transmission_id_seq'::regclass);
 K   ALTER TABLE public.transmission ALTER COLUMN transmission_id DROP DEFAULT;
       public          postgres    false    224    217                      0    16445 
   body_style 
   TABLE DATA           3   COPY public.body_style (body, body_id) FROM stdin;
    public          postgres    false    218   �;       "          0    16459    colors 
   TABLE DATA           >   COPY public.colors (exterior, interior, color_id) FROM stdin;
    public          postgres    false    221   �;                  0    16448    market_value_report 
   TABLE DATA           7   COPY public.market_value_report (vin, mmr) FROM stdin;
    public          postgres    false    219   {<       #          0    16462    sale 
   TABLE DATA           N   COPY public.sale (vin, seller, selling_price, sale_date, sale_id) FROM stdin;
    public          postgres    false    222   �=       $          0    16470    seller 
   TABLE DATA           1   COPY public.seller (seller, sale_id) FROM stdin;
    public          postgres    false    223   @       !          0    16456    state 
   TABLE DATA           +   COPY public.state (state, vin) FROM stdin;
    public          postgres    false    220   DA                 0    16442    transmission 
   TABLE DATA           J   COPY public.transmission (transmission_type, transmission_id) FROM stdin;
    public          postgres    false    217   GB                 0    16434    vehicle 
   TABLE DATA           ;   COPY public.vehicle (make, model, "trim", vin) FROM stdin;
    public          postgres    false    215   �B                 0    16437    vehicle_instance 
   TABLE DATA           J   COPY public.vehicle_instance (year, condition, odometer, vin) FROM stdin;
    public          postgres    false    216   ~D       6           0    0    body_style_body_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.body_style_body_id_seq', 4, true);
          public          postgres    false    225            7           0    0    colors_color_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.colors_color_id_seq', 1, false);
          public          postgres    false    226            8           0    0    sale_sale_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sale_sale_id_seq', 20, true);
          public          postgres    false    227            9           0    0    seller_sale_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.seller_sale_id_seq', 20, true);
          public          postgres    false    228            :           0    0     transmission_transmission_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.transmission_transmission_id_seq', 1, false);
          public          postgres    false    224            �           2606    16490    body_style body_style_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.body_style
    ADD CONSTRAINT body_style_pkey PRIMARY KEY (body_id);
 D   ALTER TABLE ONLY public.body_style DROP CONSTRAINT body_style_pkey;
       public            postgres    false    218            �           2606    16500    colors colors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (color_id);
 <   ALTER TABLE ONLY public.colors DROP CONSTRAINT colors_pkey;
       public            postgres    false    221            �           2606    16508    sale sale_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.sale
    ADD CONSTRAINT sale_pkey PRIMARY KEY (sale_id);
 8   ALTER TABLE ONLY public.sale DROP CONSTRAINT sale_pkey;
       public            postgres    false    222            �           2606    16565    seller seller_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_pkey PRIMARY KEY (sale_id);
 <   ALTER TABLE ONLY public.seller DROP CONSTRAINT seller_pkey;
       public            postgres    false    223            �           2606    16545    state state_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.state
    ADD CONSTRAINT state_pkey PRIMARY KEY (vin);
 :   ALTER TABLE ONLY public.state DROP CONSTRAINT state_pkey;
       public            postgres    false    220            ~           2606    16482    transmission transmission_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.transmission
    ADD CONSTRAINT transmission_pkey PRIMARY KEY (transmission_id);
 H   ALTER TABLE ONLY public.transmission DROP CONSTRAINT transmission_pkey;
       public            postgres    false    217            |           2606    16441 &   vehicle_instance vehicle_instance_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.vehicle_instance
    ADD CONSTRAINT vehicle_instance_pkey PRIMARY KEY (vin);
 P   ALTER TABLE ONLY public.vehicle_instance DROP CONSTRAINT vehicle_instance_pkey;
       public            postgres    false    216            z           2606    16525    vehicle vehicle_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (vin);
 >   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT vehicle_pkey;
       public            postgres    false    215            �           2606    16551    state fk_vehicle_instance_vin    FK CONSTRAINT     �   ALTER TABLE ONLY public.state
    ADD CONSTRAINT fk_vehicle_instance_vin FOREIGN KEY (vin) REFERENCES public.vehicle_instance(vin);
 G   ALTER TABLE ONLY public.state DROP CONSTRAINT fk_vehicle_instance_vin;
       public          postgres    false    4732    216    220            �           2606    16546    state fk_vehicle_vin    FK CONSTRAINT     r   ALTER TABLE ONLY public.state
    ADD CONSTRAINT fk_vehicle_vin FOREIGN KEY (vin) REFERENCES public.vehicle(vin);
 >   ALTER TABLE ONLY public.state DROP CONSTRAINT fk_vehicle_vin;
       public          postgres    false    220    215    4730            �           2606    16451 0   market_value_report market_value_report_vin_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.market_value_report
    ADD CONSTRAINT market_value_report_vin_fkey FOREIGN KEY (vin) REFERENCES public.vehicle_instance(vin);
 Z   ALTER TABLE ONLY public.market_value_report DROP CONSTRAINT market_value_report_vin_fkey;
       public          postgres    false    216    4732    219            �           2606    16465    sale sale_vin_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.sale
    ADD CONSTRAINT sale_vin_fkey FOREIGN KEY (vin) REFERENCES public.vehicle_instance(vin);
 <   ALTER TABLE ONLY public.sale DROP CONSTRAINT sale_vin_fkey;
       public          postgres    false    216    222    4732               /   x��4�
NMI��4�r�/-H�4�ye�E%�I9��&\1z\\\ �!      "   �   x�U��
�@E���H�����*n�th����^�X4�@�'77�n��	�|���nN�E�D%�V��C��5I$��Gh̵֩ƣÌ������tlv��B�5�q���X���'&u&��AJr���vdl���>NqyF��D|`�\�            x�M��n�0E��c�y��n�DJ�P�&��;�F��������q���6��8%��=G�y�}(<�XψƊ)�"�А~iQ��{"�g��넔�1�A�H�pY�-L�	�u�_�-��I3C���?�:�u��H�$<�����J�p]���FN3��'��	{?�����o�ђ8{��K�s�9D�n�V8M[�FQח��>v�G ���{���vO��	9���6"	Qp�wβV�Ҥ� P��O�'^b׺���Kb�*X9׌,�%��Ϗ��� �s�      #   Z  x���Oo�0����q;d��:m�[;�)��.�M9^ِ�4ۧ� m�SQ��#�~4���S����V;�~��_�S�G��`n�����I0B0)@�@��2(̱�wke�
��� >Xe�}mSHU:�ļm+�-nB~ĩM��È���P����0U�݂9�t$���ݶ�7�0������&�L:g���3�7bW�2k�ީw�NU2S@ҡSa�����J�!�#�{\�U��jW�Cj������[L5�ߧn�&8����q�[�_Vm��gwk��0O��E��>�����Ēc���ʌ+�d����%_��W��)�;�I(��b������8�~�⟞))�Ɇ|!�+U+�^B�h���5_<M=_��6���9�X
Zɾ�	���JO&.q��w9�ȴw��=��f��S�Q����C�H�۲P1�A��]̠�3�R����׫�/W��{���8������;�ض���b�����=-̞I��4�����@�
S��IJ��kA�Zy�Dz��GABG�;�4��97}��|Y��4�D��켠|�' *���^��:�1��H��z��L������(�M7Z;      $   '  x���OkA�ϓO�c{�:j�s��b���^zw�;�8��(���C
�
�K y����Y\pb�h$���*�a��Ѕl���X��]EWt��NɅ=�<��t�z�af\�,�-���������f!��E�5�򄳏��aOX�zer]QH�)�'���!|$I�8a9���8��5f#0����Ř=p������)1���ۿ�u`J1om��ؚ����M���kNѽK/�}0g��IQڀ�^�������nYTz��_��ˊS�u�����}�de�8�<��g*=��T��w �K��u      !   �   x�]�Kn�0D��0Q����\#c� A(�	s��H�Ȼҫ���Ǜ���5'�>��jN�Bd�[��%Θ��Xqw4�k'^1�m�#�����H1�N�,iⴠ�L�y�{�n���#p�z��Vv2�ܓO\f``��4�w�s(��G���<C%�"ڱh�$����vٓ-0���hP~�n�v��T*Uiݔ bx]������K!I.>�J8U�e-	Z� O���c��"Q����i~Sj�         K   x�M�+�@Q��P��.�	
A0���mʽV��������ݳ�ȫ�ɻ|ȧ\d&�q�q�q��J\cD4�O�         �  x�}�Mo�@���_�_��쮽G@�QB�T&��^{�X1����5�C��h���yާ�!�[W�5�~�>�������6FE2x����6�?o��ĵ��d\���j�[�S��ѐ��.5$F�Z��e�U~�G�\Aᗖ�pQ��Eq���Lu�2�6"�]��ʾ�3�;&��ⒸA_�4i�>k�s�FF��|Q�-����;�u�zX��o�Z�ؤ��J����l�
��1C�×��a��C����>x�}I�$H�g2�y\�2G���"g%�ј!�+���}��r���FZ4Sߚ�ᩋc�W��I��u����u�ȳi�.;���4��M3��D��y5�F#ǳ!ltӽ�)J%%��ʸ+��|��'{�wB�6�b໾���mst,b-"����ёuI)�..�]ʵ�u�s5�a3�ѣ����qEB?� �-V�         Q  x�U�In�0D׭�=�}�l(���8�����?5�7U�z$#�����o_S�h�9	��H
j@"���D�Q}#r1�d% ����CN�5j�^��N� ��vy�T/đ���ݵܤ,��$�Y���#�g��m��B0�wc�씀fZ&��&⬎�l�0K�(߭�v�zGA�g:h� ���r�T�)�g��>[����siv�s���3p�����]K�6�����bҊ/x���Ԓɡ����`�;s���E���^��Z�^����D�?6k�2��H�h�Ke-M����3=E�L�:�e��a�Cݞ��ޱ�5���3��%�~�����0� ���0     
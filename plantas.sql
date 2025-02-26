PGDMP                   
    |            plantas    12.20    16.4 >    d           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            e           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            f           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            g           1262    32783    plantas    DATABASE     ~   CREATE DATABASE plantas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE plantas;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            h           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            �            1259    32913    atendecurso    TABLE     o   CREATE TABLE public.atendecurso (
    cpf_funcionario character(11) NOT NULL,
    id_curso integer NOT NULL
);
    DROP TABLE public.atendecurso;
       public         heap    postgres    false    6            �            1259    32883    auxiliar    TABLE     x   CREATE TABLE public.auxiliar (
    cpf_funcionario character(11) NOT NULL,
    auxilio_tarefa character varying(100)
);
    DROP TABLE public.auxiliar;
       public         heap    postgres    false    6            �            1259    32845    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nome_cliente character varying(100),
    cnpj character(14),
    email character varying(100),
    endereco character varying(200)
);
    DROP TABLE public.cliente;
       public         heap    postgres    false    6            �            1259    32923    contrato    TABLE     �   CREATE TABLE public.contrato (
    id_contrato integer NOT NULL,
    status_contrato character varying(100),
    id_planta integer NOT NULL,
    id_cliente integer NOT NULL
);
    DROP TABLE public.contrato;
       public         heap    postgres    false    6            �            1259    32898    encarregado    TABLE     o   CREATE TABLE public.encarregado (
    cpf_funcionario character(11) NOT NULL,
    id_setor integer NOT NULL
);
    DROP TABLE public.encarregado;
       public         heap    postgres    false    6            �            1259    32840 
   fornecedor    TABLE     s   CREATE TABLE public.fornecedor (
    id_fornecedor integer NOT NULL,
    nome_fornecedor character varying(100)
);
    DROP TABLE public.fornecedor;
       public         heap    postgres    false    6            �            1259    32873    funcionarios    TABLE     �   CREATE TABLE public.funcionarios (
    cpf_funcionario character(11) NOT NULL,
    nome_funcionario character varying(100) NOT NULL,
    id_setor integer NOT NULL
);
     DROP TABLE public.funcionarios;
       public         heap    postgres    false    6            �            1259    33014    gerencia    TABLE     [   CREATE TABLE public.gerencia (
    id_planta integer,
    cpf_funcionario character(11)
);
    DROP TABLE public.gerencia;
       public         heap    postgres    false    6            �            1259    32918    planta    TABLE     �   CREATE TABLE public.planta (
    id_planta integer NOT NULL,
    nome_planta character varying(100),
    id_setor integer NOT NULL,
    id_fornecedor integer,
    id_contrato integer
);
    DROP TABLE public.planta;
       public         heap    postgres    false    6            �            1259    32850    produto    TABLE     �   CREATE TABLE public.produto (
    id_produto integer NOT NULL,
    nome_produto character varying(100),
    quantidade integer,
    id_fornecedor integer NOT NULL
);
    DROP TABLE public.produto;
       public         heap    postgres    false    6            �            1259    32908    setor    TABLE     �   CREATE TABLE public.setor (
    id_setor integer NOT NULL,
    nome_setor character varying(100),
    tipo_servico character varying(100),
    cpf_funcionario character(11)
);
    DROP TABLE public.setor;
       public         heap    postgres    false    6            �            1259    32878    tecnico    TABLE     w   CREATE TABLE public.tecnico (
    cpf_funcionario character(11) NOT NULL,
    especializacao character varying(100)
);
    DROP TABLE public.tecnico;
       public         heap    postgres    false    6            �            1259    32835    treinamento    TABLE     �   CREATE TABLE public.treinamento (
    id_curso integer NOT NULL,
    carga_horaria integer,
    conteudo character varying(200)
);
    DROP TABLE public.treinamento;
       public         heap    postgres    false    6            ^          0    32913    atendecurso 
   TABLE DATA           @   COPY public.atendecurso (cpf_funcionario, id_curso) FROM stdin;
    public          postgres    false    211   �I       [          0    32883    auxiliar 
   TABLE DATA           C   COPY public.auxiliar (cpf_funcionario, auxilio_tarefa) FROM stdin;
    public          postgres    false    208   9J       W          0    32845    cliente 
   TABLE DATA           R   COPY public.cliente (id_cliente, nome_cliente, cnpj, email, endereco) FROM stdin;
    public          postgres    false    204   GK       `          0    32923    contrato 
   TABLE DATA           W   COPY public.contrato (id_contrato, status_contrato, id_planta, id_cliente) FROM stdin;
    public          postgres    false    213   L       \          0    32898    encarregado 
   TABLE DATA           @   COPY public.encarregado (cpf_funcionario, id_setor) FROM stdin;
    public          postgres    false    209   �L       V          0    32840 
   fornecedor 
   TABLE DATA           D   COPY public.fornecedor (id_fornecedor, nome_fornecedor) FROM stdin;
    public          postgres    false    203   �L       Y          0    32873    funcionarios 
   TABLE DATA           S   COPY public.funcionarios (cpf_funcionario, nome_funcionario, id_setor) FROM stdin;
    public          postgres    false    206   BM       a          0    33014    gerencia 
   TABLE DATA           >   COPY public.gerencia (id_planta, cpf_funcionario) FROM stdin;
    public          postgres    false    214   'N       _          0    32918    planta 
   TABLE DATA           ^   COPY public.planta (id_planta, nome_planta, id_setor, id_fornecedor, id_contrato) FROM stdin;
    public          postgres    false    212   �N       X          0    32850    produto 
   TABLE DATA           V   COPY public.produto (id_produto, nome_produto, quantidade, id_fornecedor) FROM stdin;
    public          postgres    false    205   �N       ]          0    32908    setor 
   TABLE DATA           T   COPY public.setor (id_setor, nome_setor, tipo_servico, cpf_funcionario) FROM stdin;
    public          postgres    false    210   O       Z          0    32878    tecnico 
   TABLE DATA           B   COPY public.tecnico (cpf_funcionario, especializacao) FROM stdin;
    public          postgres    false    207   'P       U          0    32835    treinamento 
   TABLE DATA           H   COPY public.treinamento (id_curso, carga_horaria, conteudo) FROM stdin;
    public          postgres    false    202   Q       �
           2606    32917    atendecurso atendecurso_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.atendecurso
    ADD CONSTRAINT atendecurso_pkey PRIMARY KEY (cpf_funcionario, id_curso);
 F   ALTER TABLE ONLY public.atendecurso DROP CONSTRAINT atendecurso_pkey;
       public            postgres    false    211    211            �
           2606    32887    auxiliar auxiliar_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.auxiliar
    ADD CONSTRAINT auxiliar_pkey PRIMARY KEY (cpf_funcionario);
 @   ALTER TABLE ONLY public.auxiliar DROP CONSTRAINT auxiliar_pkey;
       public            postgres    false    208            �
           2606    32849    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    204            �
           2606    32927    contrato contrato_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.contrato
    ADD CONSTRAINT contrato_pkey PRIMARY KEY (id_contrato);
 @   ALTER TABLE ONLY public.contrato DROP CONSTRAINT contrato_pkey;
       public            postgres    false    213            �
           2606    32902    encarregado encarregado_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.encarregado
    ADD CONSTRAINT encarregado_pkey PRIMARY KEY (cpf_funcionario);
 F   ALTER TABLE ONLY public.encarregado DROP CONSTRAINT encarregado_pkey;
       public            postgres    false    209            �
           2606    32844    fornecedor fornecedor_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (id_fornecedor);
 D   ALTER TABLE ONLY public.fornecedor DROP CONSTRAINT fornecedor_pkey;
       public            postgres    false    203            �
           2606    32877    funcionarios funcionarios_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (cpf_funcionario);
 H   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT funcionarios_pkey;
       public            postgres    false    206            �
           2606    32922    planta planta_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.planta
    ADD CONSTRAINT planta_pkey PRIMARY KEY (id_planta);
 <   ALTER TABLE ONLY public.planta DROP CONSTRAINT planta_pkey;
       public            postgres    false    212            �
           2606    32854    produto produto_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public            postgres    false    205            �
           2606    32912    setor setor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.setor
    ADD CONSTRAINT setor_pkey PRIMARY KEY (id_setor);
 :   ALTER TABLE ONLY public.setor DROP CONSTRAINT setor_pkey;
       public            postgres    false    210            �
           2606    32882    tecnico tecnico_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tecnico
    ADD CONSTRAINT tecnico_pkey PRIMARY KEY (cpf_funcionario);
 >   ALTER TABLE ONLY public.tecnico DROP CONSTRAINT tecnico_pkey;
       public            postgres    false    207            �
           2606    32839    treinamento treinamento_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.treinamento
    ADD CONSTRAINT treinamento_pkey PRIMARY KEY (id_curso);
 F   ALTER TABLE ONLY public.treinamento DROP CONSTRAINT treinamento_pkey;
       public            postgres    false    202            �
           2606    32903 ,   encarregado encarregado_cpf_funcionario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.encarregado
    ADD CONSTRAINT encarregado_cpf_funcionario_fkey FOREIGN KEY (cpf_funcionario) REFERENCES public.funcionarios(cpf_funcionario);
 V   ALTER TABLE ONLY public.encarregado DROP CONSTRAINT encarregado_cpf_funcionario_fkey;
       public          postgres    false    206    2742    209            �
           2606    32993    cliente fk_cliente    FK CONSTRAINT     ~   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fk_cliente;
       public          postgres    false    2738    204    204            �
           2606    32978    planta fk_contrato    FK CONSTRAINT     �   ALTER TABLE ONLY public.planta
    ADD CONSTRAINT fk_contrato FOREIGN KEY (id_contrato) REFERENCES public.contrato(id_contrato);
 <   ALTER TABLE ONLY public.planta DROP CONSTRAINT fk_contrato;
       public          postgres    false    213    2756    212            �
           2606    32963    atendecurso fk_curso    FK CONSTRAINT     �   ALTER TABLE ONLY public.atendecurso
    ADD CONSTRAINT fk_curso FOREIGN KEY (id_curso) REFERENCES public.treinamento(id_curso);
 >   ALTER TABLE ONLY public.atendecurso DROP CONSTRAINT fk_curso;
       public          postgres    false    211    202    2734            �
           2606    32973    planta fk_fornecedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.planta
    ADD CONSTRAINT fk_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES public.fornecedor(id_fornecedor);
 >   ALTER TABLE ONLY public.planta DROP CONSTRAINT fk_fornecedor;
       public          postgres    false    2736    212    203            �
           2606    32983    produto fk_fornecedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT fk_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES public.fornecedor(id_fornecedor);
 ?   ALTER TABLE ONLY public.produto DROP CONSTRAINT fk_fornecedor;
       public          postgres    false    205    2736    203            �
           2606    32933    tecnico fk_funcionarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.tecnico
    ADD CONSTRAINT fk_funcionarios FOREIGN KEY (cpf_funcionario) REFERENCES public.funcionarios(cpf_funcionario);
 A   ALTER TABLE ONLY public.tecnico DROP CONSTRAINT fk_funcionarios;
       public          postgres    false    207    206    2742            �
           2606    32938    auxiliar fk_funcionarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.auxiliar
    ADD CONSTRAINT fk_funcionarios FOREIGN KEY (cpf_funcionario) REFERENCES public.funcionarios(cpf_funcionario);
 B   ALTER TABLE ONLY public.auxiliar DROP CONSTRAINT fk_funcionarios;
       public          postgres    false    2742    206    208            �
           2606    32943    encarregado fk_funcionarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.encarregado
    ADD CONSTRAINT fk_funcionarios FOREIGN KEY (cpf_funcionario) REFERENCES public.funcionarios(cpf_funcionario);
 E   ALTER TABLE ONLY public.encarregado DROP CONSTRAINT fk_funcionarios;
       public          postgres    false    206    2742    209            �
           2606    32953    setor fk_funcionarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.setor
    ADD CONSTRAINT fk_funcionarios FOREIGN KEY (cpf_funcionario) REFERENCES public.funcionarios(cpf_funcionario);
 ?   ALTER TABLE ONLY public.setor DROP CONSTRAINT fk_funcionarios;
       public          postgres    false    206    2742    210            �
           2606    32958    atendecurso fk_funcionarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.atendecurso
    ADD CONSTRAINT fk_funcionarios FOREIGN KEY (cpf_funcionario) REFERENCES public.funcionarios(cpf_funcionario);
 E   ALTER TABLE ONLY public.atendecurso DROP CONSTRAINT fk_funcionarios;
       public          postgres    false    211    2742    206            �
           2606    32988    contrato fk_planta    FK CONSTRAINT     {   ALTER TABLE ONLY public.contrato
    ADD CONSTRAINT fk_planta FOREIGN KEY (id_planta) REFERENCES public.planta(id_planta);
 <   ALTER TABLE ONLY public.contrato DROP CONSTRAINT fk_planta;
       public          postgres    false    2754    213    212            �
           2606    32928    funcionarios fk_setor    FK CONSTRAINT     {   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT fk_setor FOREIGN KEY (id_setor) REFERENCES public.setor(id_setor);
 ?   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT fk_setor;
       public          postgres    false    206    210    2750            �
           2606    32948    encarregado fk_setor    FK CONSTRAINT     z   ALTER TABLE ONLY public.encarregado
    ADD CONSTRAINT fk_setor FOREIGN KEY (id_setor) REFERENCES public.setor(id_setor);
 >   ALTER TABLE ONLY public.encarregado DROP CONSTRAINT fk_setor;
       public          postgres    false    209    210    2750            �
           2606    32968    planta fk_setor    FK CONSTRAINT     u   ALTER TABLE ONLY public.planta
    ADD CONSTRAINT fk_setor FOREIGN KEY (id_setor) REFERENCES public.setor(id_setor);
 9   ALTER TABLE ONLY public.planta DROP CONSTRAINT fk_setor;
       public          postgres    false    2750    210    212            �
           2606    33022 &   gerencia gerencia_cpf_funcionario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gerencia
    ADD CONSTRAINT gerencia_cpf_funcionario_fkey FOREIGN KEY (cpf_funcionario) REFERENCES public.funcionarios(cpf_funcionario);
 P   ALTER TABLE ONLY public.gerencia DROP CONSTRAINT gerencia_cpf_funcionario_fkey;
       public          postgres    false    214    206    2742            �
           2606    33017     gerencia gerencia_id_planta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gerencia
    ADD CONSTRAINT gerencia_id_planta_fkey FOREIGN KEY (id_planta) REFERENCES public.planta(id_planta);
 J   ALTER TABLE ONLY public.gerencia DROP CONSTRAINT gerencia_id_planta_fkey;
       public          postgres    false    212    214    2754            �
           2606    32855 "   produto produto_id_fornecedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_id_fornecedor_fkey FOREIGN KEY (id_fornecedor) REFERENCES public.fornecedor(id_fornecedor);
 L   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_id_fornecedor_fkey;
       public          postgres    false    205    203    2736            ^   [   x�E���0C�x�
�a��?GI��7�eҨ^6�`>b.f����k�pS���hDo~�X��������]��~hy~�@23��IS����      [   �   x�E��J�0���S�'���4Ͳ����8��Mh/hs����#�B�)�b�vFf�N�sO�(%UYiY}������l�ћh?IȪn6��t)�~Op;��aDx��S���+Y�E�̿n���G�RD��Ŀ���6=y�)r��b���#���n4A�|>%���c�v0�!G/�p�hgt��l'�O'�Xd�%=M��	�>.k����qH>P��4GA(����Zs�-��-�k�Z�ە��Hn�      W   �   x�m��j1е�� d{l��2�ǲ�nB�E �����
� �u\�,�����ީ�|b���2���О���޿.��󀏟��r��\�v�v�r��|�����R�`%t��HE�\�-�#�"9v�N�tRt2��c:C*�Y�9���B��tQt18`#t��HWEWC�#Z��e���얿�	?O��s��O      `   S   x�=�+�@Q�u����H�Ab��!��t��k�O��莊$wR"k9�oee�?E�ꮪ��jjt�:�=4��g/-�N�v�x      \   X   x�E��� ߸��@v/鿎&?+�;`P/�fb}Ld�5�J���M��܂ɓo���-IJ4ܙ��u�s���$�̬�M���|��      V   I   x�3�t�/�KMNM�/Rp�2B�:q#s��L��.\��\W.3d��92ם����e����24@�{q��qqq �
/�      Y   �   x�E�Mj1F��)|�b{~d/�@%�!��F�bp��Nf���X�	�����lKdH[ox���G�1-�mڮ'絁7.��{�K����w�wmc��0pI��1߾|J��ff5�zeh�1���)^�ڤs�C��?�=�
�C(kW���C�JV#��\���MCb�������K�� ;�,1$u�_'�D���˾m(3��)K�`4~� ��BHI      a   [   x�E���@�v1(�Nz��: ���XvĔ\��1�V�9*���f���F������[
-;hӻ�+��Y�C��n���U��y�� ��      _   \   x�5ȩ�P �a�N��Ǎ�>`�����4E���y?g�"(���bf�)��baQ(��	�be�Q)ֆ�bcX�(�Ĳ���x�$_!�'$      X      x������ � �      ]   �   x�5�;N1���S���D���h�VTi&�h�❉���:�r���Z�����g��΋I�y�h�#4�����9E���^Jp��,e$�-�r{[�K�V#�9��GR�^��?�8�Yp�e:� A��Y�)�ܢ��B�l���,#k��yYf;Xg�����\�G�HX���
Ӓ�o� O��t1VϮ�\,���P7x��#E�t�����'�#��槅^\C���4��!{HmX���V�WM��>{      Z   �   x�E�1N�0Ek�)r'��.Z!
$�R�X�emp�P��9�/�$l�����7�RRՍ�����=�1�l�n�+mj)�~D��muE��h�o���u-.�[��)��N�P��'*�W7�)�}yO�,�lk��EW>
��,��H��d�E>��E�_�j��.�!�c�\�L,~y�ed�c�֗�]��}����o�?>�RJkm��]~�x����g;�`�� ���[�      U   �   x�M�MNA��U���ffuI	]�)�JS:Tc�xd.f��]%�zߛCgaUb
�g�������琰���Vs}ϓ:���z�E!l���ʾD��LF�y�����g��'gQo�K�,,ܺ�DI�,�p��v-��ZUA�_ENtd�`�&����R����:X��tn�/)W��qP��H7�D��E�B�9��N����v2HO������'|�!���hv     
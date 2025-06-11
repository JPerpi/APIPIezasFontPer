--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: pieza; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pieza (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    material character varying(50),
    conexion character varying(50),
    medida_nominal character varying(50),
    tipo_control character varying(50),
    uso character varying(100),
    instalacion character varying(100),
    dimensiones character varying(100),
    tipo_termo character varying(50),
    capacidad character varying(50),
    alimentacion character varying(50),
    potencia character varying(50),
    caudal character varying(50),
    tipo_id integer
);


--
-- Name: pieza_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pieza_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pieza_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pieza_id_seq OWNED BY public.pieza.id;


--
-- Name: piezastarea; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.piezastarea (
    id integer NOT NULL,
    tarea_id integer,
    pieza_id integer,
    cantidad numeric NOT NULL
);


--
-- Name: piezastarea_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.piezastarea_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: piezastarea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.piezastarea_id_seq OWNED BY public.piezastarea.id;


--
-- Name: tareas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tareas (
    id integer NOT NULL,
    nombre_cliente text,
    direccion text,
    telefono text
);


--
-- Name: tareas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tareas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tareas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tareas_id_seq OWNED BY public.tareas.id;


--
-- Name: tipopieza; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tipopieza (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


--
-- Name: tipopieza_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tipopieza_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tipopieza_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tipopieza_id_seq OWNED BY public.tipopieza.id;


--
-- Name: pieza id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pieza ALTER COLUMN id SET DEFAULT nextval('public.pieza_id_seq'::regclass);


--
-- Name: piezastarea id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.piezastarea ALTER COLUMN id SET DEFAULT nextval('public.piezastarea_id_seq'::regclass);


--
-- Name: tareas id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tareas ALTER COLUMN id SET DEFAULT nextval('public.tareas_id_seq'::regclass);


--
-- Name: tipopieza id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tipopieza ALTER COLUMN id SET DEFAULT nextval('public.tipopieza_id_seq'::regclass);


INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 1 1/4" Encolar', 'PVC', 'Encolar', '1 1/4"',
  NULL, 'Agua a presión', 'Interior', '1 1/4"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 1 1/4" Rosca H/H', 'PVC', 'Rosca H/H', '1 1/4"',
  NULL, 'Agua a presión', 'Interior', '1 1/4"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 1 1/2" Encolar', 'PVC', 'Encolar', '1 1/2"',
  NULL, 'Agua a presión', 'Interior', '1 1/2"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 1 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '1 1/2"',
  NULL, 'Agua a presión', 'Interior', '1 1/2"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 2" Encolar', 'PVC', 'Encolar', '2"',
  NULL, 'Agua a presión', 'Interior', '2"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 2" Rosca H/H', 'PVC', 'Rosca H/H', '2"',
  NULL, 'Agua a presión', 'Interior', '2"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 2 1/2" Encolar', 'PVC', 'Encolar', '2 1/2"',
  NULL, 'Agua a presión', 'Interior', '2 1/2"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 2 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '2 1/2"',
  NULL, 'Agua a presión', 'Interior', '2 1/2"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 3" Encolar', 'PVC', 'Encolar', '3"',
  NULL, 'Agua a presión', 'Interior', '3"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 3" Rosca H/H', 'PVC', 'Rosca H/H', '3"',
  NULL, 'Agua a presión', 'Interior', '3"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 3 1/2" Encolar', 'PVC', 'Encolar', '3 1/2"',
  NULL, 'Agua a presión', 'Interior', '3 1/2"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 3 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '3 1/2"',
  NULL, 'Agua a presión', 'Interior', '3 1/2"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 4" Encolar', 'PVC', 'Encolar', '4"',
  NULL, 'Agua a presión', 'Interior', '4"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 4" Rosca H/H', 'PVC', 'Rosca H/H', '4"',
  NULL, 'Agua a presión', 'Interior', '4"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 5" Encolar', 'PVC', 'Encolar', '5"',
  NULL, 'Agua a presión', 'Interior', '5"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 5" Rosca H/H', 'PVC', 'Rosca H/H', '5"',
  NULL, 'Agua a presión', 'Interior', '5"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 6" Encolar', 'PVC', 'Encolar', '6"',
  NULL, 'Agua a presión', 'Interior', '6"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 6" Rosca H/H', 'PVC', 'Rosca H/H', '6"',
  NULL, 'Agua a presión', 'Interior', '6"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 8" Encolar', 'PVC', 'Encolar', '8"',
  NULL, 'Agua a presión', 'Interior', '8"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PVC 8" Rosca H/H', 'PVC', 'Rosca H/H', '8"',
  NULL, 'Agua a presión', 'Interior', '8"x3m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PEX 3/8"', 'PEX', 'Casquillo', '3/8"',
  NULL, 'Calefacción/ACS', 'Interior', '3/8"x100m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PEX 1/2"', 'PEX', 'Casquillo', '1/2"',
  NULL, 'Calefacción/ACS', 'Interior', '1/2"x100m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PEX 3/4"', 'PEX', 'Casquillo', '3/4"',
  NULL, 'Calefacción/ACS', 'Interior', '3/4"x100m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PEX 1"', 'PEX', 'Casquillo', '1"',
  NULL, 'Calefacción/ACS', 'Interior', '1"x100m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PEX 1 1/4"', 'PEX', 'Casquillo', '1 1/4"',
  NULL, 'Calefacción/ACS', 'Interior', '1 1/4"x100m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PEX 1 1/2"', 'PEX', 'Casquillo', '1 1/2"',
  NULL, 'Calefacción/ACS', 'Interior', '1 1/2"x100m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería PEX 2"', 'PEX', 'Casquillo', '2"',
  NULL, 'Calefacción/ACS', 'Interior', '2"x100m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería Cobre 3/8"', 'Cobre', 'Soldadura', '3/8"',
  NULL, 'Agua potable', 'Interior', '3/8"',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería Cobre 1/2"', 'Cobre', 'Soldadura', '1/2"',
  NULL, 'Agua potable', 'Interior', '1/2"',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería Cobre 5/8"', 'Cobre', 'Soldadura', '5/8"',
  NULL, 'Agua potable', 'Interior', '5/8"',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería Cobre 7/8"', 'Cobre', 'Soldadura', '7/8"',
  NULL, 'Agua potable', 'Interior', '7/8"',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería Polietileno 1"', 'Polietileno', 'Compresión', '1"',
  NULL, 'Riego', 'Exterior', '1"x50m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería Polietileno 1 1/4"', 'Polietileno', 'Compresión', '1 1/4"',
  NULL, 'Riego', 'Exterior', '1 1/4"x50m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería Polietileno 1 1/2"', 'Polietileno', 'Compresión', '1 1/2"',
  NULL, 'Riego', 'Exterior', '1 1/2"x50m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubería Polietileno 2"', 'Polietileno', 'Compresión', '2"',
  NULL, 'Riego', 'Exterior', '2"x50m',
  NULL, NULL, NULL, NULL, NULL, 1
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Polietileno 3/4" Compresión', 'Polietileno', 'Compresión', '3/4"',
  NULL, 'Unión de tubería', 'Interior', '3/4" racor compresión',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Polietileno 1" Compresión', 'Polietileno', 'Compresión', '1"',
  NULL, 'Unión de tubería', 'Interior', '1" racor compresión',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Polietileno 1 1/4" Compresión', 'Polietileno', 'Compresión', '1 1/4"',
  NULL, 'Unión de tubería', 'Interior', '1 1/4" racor compresión',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Polietileno 1 1/2" Compresión', 'Polietileno', 'Compresión', '1 1/2"',
  NULL, 'Unión de tubería', 'Interior', '1 1/2" racor compresión',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Polietileno 2" Compresión', 'Polietileno', 'Compresión', '2"',
  NULL, 'Unión de tubería', 'Interior', '2" racor compresión',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Polietileno 2 1/2" Compresión', 'Polietileno', 'Compresión', '2 1/2"',
  NULL, 'Unión de tubería', 'Interior', '2 1/2" racor compresión',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Polietileno 3" Compresión', 'Polietileno', 'Compresión', '3"',
  NULL, 'Unión de tubería', 'Interior', '3" racor compresión',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Polietileno 3 1/2" Compresión', 'Polietileno', 'Compresión', '3 1/2"',
  NULL, 'Unión de tubería', 'Interior', '3 1/2" racor compresión',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Polietileno 4" Compresión', 'Polietileno', 'Compresión', '4"',
  NULL, 'Unión de tubería', 'Interior', '4" racor compresión',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Multicapa 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '1/2"',
  NULL, 'Unión de tubería', 'Interior', '1/2" racor press-fit',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Unión de tubería', 'Interior', '3/4" racor press-fit',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Multicapa 1/2" Push-Fit', 'Multicapa', 'Push-Fit', '1/2"',
  NULL, 'Unión de tubería', 'Interior', '1/2" racor push-fit',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Multicapa 3/4" Push-Fit', 'Multicapa', 'Push-Fit', '3/4"',
  NULL, 'Unión de tubería', 'Interior', '3/4" racor push-fit',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor PVC 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '1/2"',
  NULL, 'Unión de tubería', 'Interior', '1/2" racor rosca',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor PVC 3/4" Rosca H/H', 'PVC', 'Rosca H/H', '3/4"',
  NULL, 'Unión de tubería', 'Interior', '3/4" racor rosca',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor PVC 1" Rosca H/H', 'PVC', 'Rosca H/H', '1"',
  NULL, 'Unión de tubería', 'Interior', '1" racor rosca',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor PVC 1 1/4" Rosca H/H', 'PVC', 'Rosca H/H', '1 1/4"',
  NULL, 'Unión de tubería', 'Interior', '1 1/4" racor rosca',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor PVC 1 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '1 1/2"',
  NULL, 'Unión de tubería', 'Interior', '1 1/2" racor rosca',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor PVC 2" Rosca H/H', 'PVC', 'Rosca H/H', '2"',
  NULL, 'Unión de tubería', 'Interior', '2" racor rosca',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Cobre 3/8" Rosca', 'Cobre', 'Rosca', '3/8"',
  NULL, 'Unión de tubería', 'Interior', '3/8" racor rosca',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Cobre 1/2" Rosca', 'Cobre', 'Rosca', '1/2"',
  NULL, 'Unión de tubería', 'Interior', '1/2" racor rosca',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Cobre 5/8" Compresión', 'Cobre', 'Compresión', '5/8"',
  NULL, 'Unión de tubería', 'Interior', '5/8" racor compresión',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Racor Cobre 7/8" Compresión', 'Cobre', 'Compresión', '7/8"',
  NULL, 'Unión de tubería', 'Interior', '7/8" racor compresión',
  NULL, NULL, NULL, NULL, NULL, 7
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor PVC 4" a 3" Espiga-Campana', 'PVC', 'Espiga-Campana', '4" a 3"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 4" a 3" espiga-campana',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor PVC 4" a 2" Espiga-Campana', 'PVC', 'Espiga-Campana', '4" a 2"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 4" a 2" espiga-campana',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor PVC 3" a 2" Espiga-Campana', 'PVC', 'Espiga-Campana', '3" a 2"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 3" a 2" espiga-campana',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor PVC 2" a 1 1/4" Espiga-Campana', 'PVC', 'Espiga-Campana', '2" a 1 1/4"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 2" a 1 1/4" espiga-campana',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor PVC 2" a 1" Espiga-Campana', 'PVC', 'Espiga-Campana', '2" a 1"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 2" a 1" espiga-campana',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor Latón 2" a 1 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '2" a 1 1/2"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 2" a 1 1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor Latón 1 1/2" a 1 1/4" Rosca H-H', 'Latón', 'Rosca H-H', '1 1/2" a 1 1/4"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 1 1/2" a 1 1/4" rosca',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor Latón 1 1/4" a 1" Rosca H-H', 'Latón', 'Rosca H-H', '1 1/4" a 1"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 1 1/4" a 1" rosca',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor Latón 1" a 3/4" Rosca H-H', 'Latón', 'Rosca H-H', '1" a 3/4"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 1" a 3/4" rosca',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor Latón 3/4" a 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '3/4" a 1/2"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 3/4" a 1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor Multicapa 1" a 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '1" a 3/4"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 1" a 3/4" press-fit',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor Multicapa 3/4" a 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '3/4" a 1/2"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 3/4" a 1/2" press-fit',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor Multicapa 1 1/4" a 1" Press-Fit', 'Multicapa', 'Press-Fit', '1 1/4" a 1"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 1 1/4" a 1" press-fit',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor Multicapa 1 1/2" a 1 1/4" Press-Fit', 'Multicapa', 'Press-Fit', '1 1/2" a 1 1/4"',
  NULL, 'Reducción de sección', 'Interior', 'Reductor 1 1/2" a 1 1/4" press-fit',
  NULL, NULL, NULL, NULL, NULL, 5
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 1 1/4" H-H', 'PVC', 'H-H', '1 1/4"',
  NULL, 'Ramificación', 'Interior', '1 1/4" derivación 45° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 1 1/4" M-H', 'PVC', 'M-H', '1 1/4"',
  NULL, 'Ramificación', 'Interior', '1 1/4" derivación 45° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 1 1/4" H-H', 'PVC', 'H-H', '1 1/4"',
  NULL, 'Ramificación', 'Interior', '1 1/4" derivación 67° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 1 1/4" M-H', 'PVC', 'M-H', '1 1/4"',
  NULL, 'Ramificación', 'Interior', '1 1/4" derivación 67° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 1 1/4" H-H', 'PVC', 'H-H', '1 1/4"',
  NULL, 'Ramificación', 'Interior', '1 1/4" derivación 87° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 1 1/4" M-H', 'PVC', 'M-H', '1 1/4"',
  NULL, 'Ramificación', 'Interior', '1 1/4" derivación 87° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 1 1/2" H-H', 'PVC', 'H-H', '1 1/2"',
  NULL, 'Ramificación', 'Interior', '1 1/2" derivación 45° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 1 1/2" M-H', 'PVC', 'M-H', '1 1/2"',
  NULL, 'Ramificación', 'Interior', '1 1/2" derivación 45° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 1 1/2" H-H', 'PVC', 'H-H', '1 1/2"',
  NULL, 'Ramificación', 'Interior', '1 1/2" derivación 67° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 1 1/2" M-H', 'PVC', 'M-H', '1 1/2"',
  NULL, 'Ramificación', 'Interior', '1 1/2" derivación 67° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 1 1/2" H-H', 'PVC', 'H-H', '1 1/2"',
  NULL, 'Ramificación', 'Interior', '1 1/2" derivación 87° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 1 1/2" M-H', 'PVC', 'M-H', '1 1/2"',
  NULL, 'Ramificación', 'Interior', '1 1/2" derivación 87° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 2" H-H', 'PVC', 'H-H', '2"',
  NULL, 'Ramificación', 'Interior', '2" derivación 45° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 2" M-H', 'PVC', 'M-H', '2"',
  NULL, 'Ramificación', 'Interior', '2" derivación 45° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 2" H-H', 'PVC', 'H-H', '2"',
  NULL, 'Ramificación', 'Interior', '2" derivación 67° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 2" M-H', 'PVC', 'M-H', '2"',
  NULL, 'Ramificación', 'Interior', '2" derivación 67° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 2" H-H', 'PVC', 'H-H', '2"',
  NULL, 'Ramificación', 'Interior', '2" derivación 87° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 2" M-H', 'PVC', 'M-H', '2"',
  NULL, 'Ramificación', 'Interior', '2" derivación 87° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 2 1/2" H-H', 'PVC', 'H-H', '2 1/2"',
  NULL, 'Ramificación', 'Interior', '2 1/2" derivación 45° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 2 1/2" M-H', 'PVC', 'M-H', '2 1/2"',
  NULL, 'Ramificación', 'Interior', '2 1/2" derivación 45° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 2 1/2" H-H', 'PVC', 'H-H', '2 1/2"',
  NULL, 'Ramificación', 'Interior', '2 1/2" derivación 67° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 2 1/2" M-H', 'PVC', 'M-H', '2 1/2"',
  NULL, 'Ramificación', 'Interior', '2 1/2" derivación 67° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 2 1/2" H-H', 'PVC', 'H-H', '2 1/2"',
  NULL, 'Ramificación', 'Interior', '2 1/2" derivación 87° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 2 1/2" M-H', 'PVC', 'M-H', '2 1/2"',
  NULL, 'Ramificación', 'Interior', '2 1/2" derivación 87° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 3" H-H', 'PVC', 'H-H', '3"',
  NULL, 'Ramificación', 'Interior', '3" derivación 45° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 3" M-H', 'PVC', 'M-H', '3"',
  NULL, 'Ramificación', 'Interior', '3" derivación 45° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 3" H-H', 'PVC', 'H-H', '3"',
  NULL, 'Ramificación', 'Interior', '3" derivación 67° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 3" M-H', 'PVC', 'M-H', '3"',
  NULL, 'Ramificación', 'Interior', '3" derivación 67° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 3" H-H', 'PVC', 'H-H', '3"',
  NULL, 'Ramificación', 'Interior', '3" derivación 87° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 3" M-H', 'PVC', 'M-H', '3"',
  NULL, 'Ramificación', 'Interior', '3" derivación 87° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 4" H-H', 'PVC', 'H-H', '4"',
  NULL, 'Ramificación', 'Interior', '4" derivación 45° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 4" M-H', 'PVC', 'M-H', '4"',
  NULL, 'Ramificación', 'Interior', '4" derivación 45° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 4" H-H', 'PVC', 'H-H', '4"',
  NULL, 'Ramificación', 'Interior', '4" derivación 67° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 4" M-H', 'PVC', 'M-H', '4"',
  NULL, 'Ramificación', 'Interior', '4" derivación 67° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 4" H-H', 'PVC', 'H-H', '4"',
  NULL, 'Ramificación', 'Interior', '4" derivación 87° H-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación PVC 4" M-H', 'PVC', 'M-H', '4"',
  NULL, 'Ramificación', 'Interior', '4" derivación 87° M-H',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Polietileno 3/4" Compresión', 'Polietileno', 'Compresión', '3/4"',
  NULL, 'Ramificación', 'Interior', '3/4" derivación lateral compresión',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Polietileno 1" Compresión', 'Polietileno', 'Compresión', '1"',
  NULL, 'Ramificación', 'Interior', '1" derivación lateral compresión',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Polietileno 1 1/4" Compresión', 'Polietileno', 'Compresión', '1 1/4"',
  NULL, 'Ramificación', 'Interior', '1 1/4" derivación lateral compresión',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Polietileno 1 1/2" Compresión', 'Polietileno', 'Compresión', '1 1/2"',
  NULL, 'Ramificación', 'Interior', '1 1/2" derivación lateral compresión',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Polietileno 2" Compresión', 'Polietileno', 'Compresión', '2"',
  NULL, 'Ramificación', 'Interior', '2" derivación lateral compresión',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Polietileno 2 1/2" Compresión', 'Polietileno', 'Compresión', '2 1/2"',
  NULL, 'Ramificación', 'Interior', '2 1/2" derivación lateral compresión',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Polietileno 3" Compresión', 'Polietileno', 'Compresión', '3"',
  NULL, 'Ramificación', 'Interior', '3" derivación lateral compresión',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Polietileno 3 1/2" Compresión', 'Polietileno', 'Compresión', '3 1/2"',
  NULL, 'Ramificación', 'Interior', '3 1/2" derivación lateral compresión',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Polietileno 4" Compresión', 'Polietileno', 'Compresión', '4"',
  NULL, 'Ramificación', 'Interior', '4" derivación lateral compresión',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Multicapa 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '1/2"',
  NULL, 'Ramificación', 'Interior', '1/2" derivación 45° press-fit',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Multicapa 1/2" Rosca', 'Multicapa', 'Rosca', '1/2"',
  NULL, 'Ramificación', 'Interior', '1/2" derivación 45° rosca',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Multicapa 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '1/2"',
  NULL, 'Ramificación', 'Interior', '1/2" derivación 90° press-fit',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Multicapa 1/2" Rosca', 'Multicapa', 'Rosca', '1/2"',
  NULL, 'Ramificación', 'Interior', '1/2" derivación 90° rosca',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Ramificación', 'Interior', '3/4" derivación 45° press-fit',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Multicapa 3/4" Rosca', 'Multicapa', 'Rosca', '3/4"',
  NULL, 'Ramificación', 'Interior', '3/4" derivación 45° rosca',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Ramificación', 'Interior', '3/4" derivación 90° press-fit',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Multicapa 3/4" Rosca', 'Multicapa', 'Rosca', '3/4"',
  NULL, 'Ramificación', 'Interior', '3/4" derivación 90° rosca',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Cobre 3/8" Soldadura', 'Cobre', 'Soldadura', '3/8"',
  NULL, 'Ramificación', 'Interior', '3/8" derivación 45° soldadura',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Cobre 3/8" Soldadura', 'Cobre', 'Soldadura', '3/8"',
  NULL, 'Ramificación', 'Interior', '3/8" derivación 90° soldadura',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Cobre 1/2" Soldadura', 'Cobre', 'Soldadura', '1/2"',
  NULL, 'Ramificación', 'Interior', '1/2" derivación 45° soldadura',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Cobre 1/2" Soldadura', 'Cobre', 'Soldadura', '1/2"',
  NULL, 'Ramificación', 'Interior', '1/2" derivación 90° soldadura',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Cobre 5/8" Soldadura', 'Cobre', 'Soldadura', '5/8"',
  NULL, 'Ramificación', 'Interior', '5/8" derivación 45° soldadura',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Cobre 5/8" Soldadura', 'Cobre', 'Soldadura', '5/8"',
  NULL, 'Ramificación', 'Interior', '5/8" derivación 90° soldadura',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Cobre 7/8" Soldadura', 'Cobre', 'Soldadura', '7/8"',
  NULL, 'Ramificación', 'Interior', '7/8" derivación 45° soldadura',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Derivación Cobre 7/8" Soldadura', 'Cobre', 'Soldadura', '7/8"',
  NULL, 'Ramificación', 'Interior', '7/8" derivación 90° soldadura',
  NULL, NULL, NULL, NULL, NULL, 4
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1/2" Encolar', 'PVC', 'Encolar', '1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1/2" codo 45° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1/2" codo 45° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1/2" Encolar', 'PVC', 'Encolar', '1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1/2" codo 87° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1/2" codo 87° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1/2" Encolar', 'PVC', 'Encolar', '1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1/2" codo 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1/2" codo 90° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 3/4" Encolar', 'PVC', 'Encolar', '3/4"',
  NULL, 'Cambio de dirección', 'Interior', '3/4" codo 45° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 3/4" Rosca H/H', 'PVC', 'Rosca H/H', '3/4"',
  NULL, 'Cambio de dirección', 'Interior', '3/4" codo 45° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 3/4" Encolar', 'PVC', 'Encolar', '3/4"',
  NULL, 'Cambio de dirección', 'Interior', '3/4" codo 87° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 3/4" Rosca H/H', 'PVC', 'Rosca H/H', '3/4"',
  NULL, 'Cambio de dirección', 'Interior', '3/4" codo 87° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 3/4" Encolar', 'PVC', 'Encolar', '3/4"',
  NULL, 'Cambio de dirección', 'Interior', '3/4" codo 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 3/4" Rosca H/H', 'PVC', 'Rosca H/H', '3/4"',
  NULL, 'Cambio de dirección', 'Interior', '3/4" codo 90° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1" Encolar', 'PVC', 'Encolar', '1"',
  NULL, 'Cambio de dirección', 'Interior', '1" codo 45° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1" Rosca H/H', 'PVC', 'Rosca H/H', '1"',
  NULL, 'Cambio de dirección', 'Interior', '1" codo 45° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1" Encolar', 'PVC', 'Encolar', '1"',
  NULL, 'Cambio de dirección', 'Interior', '1" codo 87° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1" Rosca H/H', 'PVC', 'Rosca H/H', '1"',
  NULL, 'Cambio de dirección', 'Interior', '1" codo 87° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1" Encolar', 'PVC', 'Encolar', '1"',
  NULL, 'Cambio de dirección', 'Interior', '1" codo 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1" Rosca H/H', 'PVC', 'Rosca H/H', '1"',
  NULL, 'Cambio de dirección', 'Interior', '1" codo 90° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1 1/4" Encolar', 'PVC', 'Encolar', '1 1/4"',
  NULL, 'Cambio de dirección', 'Interior', '1 1/4" codo 45° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1 1/4" Rosca H/H', 'PVC', 'Rosca H/H', '1 1/4"',
  NULL, 'Cambio de dirección', 'Interior', '1 1/4" codo 45° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1 1/4" Encolar', 'PVC', 'Encolar', '1 1/4"',
  NULL, 'Cambio de dirección', 'Interior', '1 1/4" codo 87° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1 1/4" Rosca H/H', 'PVC', 'Rosca H/H', '1 1/4"',
  NULL, 'Cambio de dirección', 'Interior', '1 1/4" codo 87° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1 1/4" Encolar', 'PVC', 'Encolar', '1 1/4"',
  NULL, 'Cambio de dirección', 'Interior', '1 1/4" codo 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1 1/4" Rosca H/H', 'PVC', 'Rosca H/H', '1 1/4"',
  NULL, 'Cambio de dirección', 'Interior', '1 1/4" codo 90° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1 1/2" Encolar', 'PVC', 'Encolar', '1 1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1 1/2" codo 45° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '1 1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1 1/2" codo 45° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1 1/2" Encolar', 'PVC', 'Encolar', '1 1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1 1/2" codo 87° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '1 1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1 1/2" codo 87° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1 1/2" Encolar', 'PVC', 'Encolar', '1 1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1 1/2" codo 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 1 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '1 1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1 1/2" codo 90° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 2" Encolar', 'PVC', 'Encolar', '2"',
  NULL, 'Cambio de dirección', 'Interior', '2" codo 45° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 2" Rosca H/H', 'PVC', 'Rosca H/H', '2"',
  NULL, 'Cambio de dirección', 'Interior', '2" codo 45° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 2" Encolar', 'PVC', 'Encolar', '2"',
  NULL, 'Cambio de dirección', 'Interior', '2" codo 87° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 2" Rosca H/H', 'PVC', 'Rosca H/H', '2"',
  NULL, 'Cambio de dirección', 'Interior', '2" codo 87° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 2" Encolar', 'PVC', 'Encolar', '2"',
  NULL, 'Cambio de dirección', 'Interior', '2" codo 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 2" Rosca H/H', 'PVC', 'Rosca H/H', '2"',
  NULL, 'Cambio de dirección', 'Interior', '2" codo 90° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 2 1/2" Encolar', 'PVC', 'Encolar', '2 1/2"',
  NULL, 'Cambio de dirección', 'Interior', '2 1/2" codo 45° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 2 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '2 1/2"',
  NULL, 'Cambio de dirección', 'Interior', '2 1/2" codo 45° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 2 1/2" Encolar', 'PVC', 'Encolar', '2 1/2"',
  NULL, 'Cambio de dirección', 'Interior', '2 1/2" codo 87° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 2 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '2 1/2"',
  NULL, 'Cambio de dirección', 'Interior', '2 1/2" codo 87° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 2 1/2" Encolar', 'PVC', 'Encolar', '2 1/2"',
  NULL, 'Cambio de dirección', 'Interior', '2 1/2" codo 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 2 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '2 1/2"',
  NULL, 'Cambio de dirección', 'Interior', '2 1/2" codo 90° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 3" Encolar', 'PVC', 'Encolar', '3"',
  NULL, 'Cambio de dirección', 'Interior', '3" codo 45° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 3" Rosca H/H', 'PVC', 'Rosca H/H', '3"',
  NULL, 'Cambio de dirección', 'Interior', '3" codo 45° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 3" Encolar', 'PVC', 'Encolar', '3"',
  NULL, 'Cambio de dirección', 'Interior', '3" codo 87° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 3" Rosca H/H', 'PVC', 'Rosca H/H', '3"',
  NULL, 'Cambio de dirección', 'Interior', '3" codo 87° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 3" Encolar', 'PVC', 'Encolar', '3"',
  NULL, 'Cambio de dirección', 'Interior', '3" codo 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 3" Rosca H/H', 'PVC', 'Rosca H/H', '3"',
  NULL, 'Cambio de dirección', 'Interior', '3" codo 90° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 4" Encolar', 'PVC', 'Encolar', '4"',
  NULL, 'Cambio de dirección', 'Interior', '4" codo 45° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 4" Rosca H/H', 'PVC', 'Rosca H/H', '4"',
  NULL, 'Cambio de dirección', 'Interior', '4" codo 45° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 4" Encolar', 'PVC', 'Encolar', '4"',
  NULL, 'Cambio de dirección', 'Interior', '4" codo 87° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 4" Rosca H/H', 'PVC', 'Rosca H/H', '4"',
  NULL, 'Cambio de dirección', 'Interior', '4" codo 87° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 4" Encolar', 'PVC', 'Encolar', '4"',
  NULL, 'Cambio de dirección', 'Interior', '4" codo 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo PVC 4" Rosca H/H', 'PVC', 'Rosca H/H', '4"',
  NULL, 'Cambio de dirección', 'Interior', '4" codo 90° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Multicapa 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1/2" codo 45° press-fit',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Multicapa 1/2" Rosca', 'Multicapa', 'Rosca', '1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1/2" codo 45° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Multicapa 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1/2" codo 90° press-fit',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Multicapa 1/2" Rosca', 'Multicapa', 'Rosca', '1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1/2" codo 90° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Cambio de dirección', 'Interior', '3/4" codo 45° press-fit',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Multicapa 3/4" Rosca', 'Multicapa', 'Rosca', '3/4"',
  NULL, 'Cambio de dirección', 'Interior', '3/4" codo 45° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Cambio de dirección', 'Interior', '3/4" codo 90° press-fit',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Multicapa 3/4" Rosca', 'Multicapa', 'Rosca', '3/4"',
  NULL, 'Cambio de dirección', 'Interior', '3/4" codo 90° rosca',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Cobre 3/8" Soldadura', 'Cobre', 'Soldadura', '3/8"',
  NULL, 'Cambio de dirección', 'Interior', '3/8" codo 45° soldadura',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Cobre 3/8" Soldadura', 'Cobre', 'Soldadura', '3/8"',
  NULL, 'Cambio de dirección', 'Interior', '3/8" codo 90° soldadura',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Cobre 1/2" Soldadura', 'Cobre', 'Soldadura', '1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1/2" codo 45° soldadura',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Cobre 1/2" Soldadura', 'Cobre', 'Soldadura', '1/2"',
  NULL, 'Cambio de dirección', 'Interior', '1/2" codo 90° soldadura',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Cobre 5/8" Soldadura', 'Cobre', 'Soldadura', '5/8"',
  NULL, 'Cambio de dirección', 'Interior', '5/8" codo 45° soldadura',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Cobre 5/8" Soldadura', 'Cobre', 'Soldadura', '5/8"',
  NULL, 'Cambio de dirección', 'Interior', '5/8" codo 90° soldadura',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Cobre 7/8" Soldadura', 'Cobre', 'Soldadura', '7/8"',
  NULL, 'Cambio de dirección', 'Interior', '7/8" codo 45° soldadura',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Codo Cobre 7/8" Soldadura', 'Cobre', 'Soldadura', '7/8"',
  NULL, 'Cambio de dirección', 'Interior', '7/8" codo 90° soldadura',
  NULL, NULL, NULL, NULL, NULL, 3
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Polietileno 5/8" Compresión', 'Polietileno', 'Compresión', '5/8"',
  NULL, 'Unión de tubería', 'Interior', '5/8" compresión',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Polietileno 3/4" Compresión', 'Polietileno', 'Compresión', '3/4"',
  NULL, 'Unión de tubería', 'Interior', '3/4" compresión',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Polietileno 1" Compresión', 'Polietileno', 'Compresión', '1"',
  NULL, 'Unión de tubería', 'Interior', '1" compresión',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Polietileno 1 1/4" Compresión', 'Polietileno', 'Compresión', '1 1/4"',
  NULL, 'Unión de tubería', 'Interior', '1 1/4" compresión',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Polietileno 1 1/2" Compresión', 'Polietileno', 'Compresión', '1 1/2"',
  NULL, 'Unión de tubería', 'Interior', '1 1/2" compresión',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Polietileno 2" Compresión', 'Polietileno', 'Compresión', '2"',
  NULL, 'Unión de tubería', 'Interior', '2" compresión',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Polietileno 2 1/2" Compresión', 'Polietileno', 'Compresión', '2 1/2"',
  NULL, 'Unión de tubería', 'Interior', '2 1/2" compresión',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Polietileno 3" Compresión', 'Polietileno', 'Compresión', '3"',
  NULL, 'Unión de tubería', 'Interior', '3" compresión',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PEX 5/8" Casquillo', 'PEX', 'Casquillo', '5/8"',
  NULL, 'Unión de tubería', 'Interior', '5/8" casquillo',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PEX 3/4" Casquillo', 'PEX', 'Casquillo', '3/4"',
  NULL, 'Unión de tubería', 'Interior', '3/4" casquillo',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PEX 1" Casquillo', 'PEX', 'Casquillo', '1"',
  NULL, 'Unión de tubería', 'Interior', '1" casquillo',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PEX 1 1/4" Casquillo', 'PEX', 'Casquillo', '1 1/4"',
  NULL, 'Unión de tubería', 'Interior', '1 1/4" casquillo',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Multicapa 5/8" Press-Fit', 'Multicapa', 'Press-Fit', '5/8"',
  NULL, 'Unión de tubería', 'Interior', '5/8" press-fit',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Unión de tubería', 'Interior', '3/4" press-fit',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Multicapa 1" Press-Fit', 'Multicapa', 'Press-Fit', '1"',
  NULL, 'Unión de tubería', 'Interior', '1" press-fit',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Multicapa 1 1/4" Press-Fit', 'Multicapa', 'Press-Fit', '1 1/4"',
  NULL, 'Unión de tubería', 'Interior', '1 1/4" press-fit',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PVC 3/4" Encolar', 'PVC', 'Encolar', '3/4"',
  NULL, 'Unión de tubería', 'Interior', '3/4" encolar',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PVC 3/4" Rosca H/H', 'PVC', 'Rosca H/H', '3/4"',
  NULL, 'Unión de tubería', 'Interior', '3/4" rosca',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PVC 1" Encolar', 'PVC', 'Encolar', '1"',
  NULL, 'Unión de tubería', 'Interior', '1" encolar',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PVC 1" Rosca H/H', 'PVC', 'Rosca H/H', '1"',
  NULL, 'Unión de tubería', 'Interior', '1" rosca',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PVC 1 1/4" Encolar', 'PVC', 'Encolar', '1 1/4"',
  NULL, 'Unión de tubería', 'Interior', '1 1/4" encolar',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PVC 1 1/4" Rosca H/H', 'PVC', 'Rosca H/H', '1 1/4"',
  NULL, 'Unión de tubería', 'Interior', '1 1/4" rosca',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PVC 1 1/2" Encolar', 'PVC', 'Encolar', '1 1/2"',
  NULL, 'Unión de tubería', 'Interior', '1 1/2" encolar',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PVC 1 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '1 1/2"',
  NULL, 'Unión de tubería', 'Interior', '1 1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PVC 2" Encolar', 'PVC', 'Encolar', '2"',
  NULL, 'Unión de tubería', 'Interior', '2" encolar',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector PVC 2" Rosca H/H', 'PVC', 'Rosca H/H', '2"',
  NULL, 'Unión de tubería', 'Interior', '2" rosca',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Cobre 3/8" Rosca', 'Cobre', 'Rosca', '3/8"',
  NULL, 'Unión de tubería', 'Interior', '3/8" rosca',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Cobre 3/8" Compresión', 'Cobre', 'Compresión', '3/8"',
  NULL, 'Unión de tubería', 'Interior', '3/8" compresión',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Cobre 1/2" Rosca', 'Cobre', 'Rosca', '1/2"',
  NULL, 'Unión de tubería', 'Interior', '1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Cobre 1/2" Compresión', 'Cobre', 'Compresión', '1/2"',
  NULL, 'Unión de tubería', 'Interior', '1/2" compresión',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Cobre 5/8" Rosca', 'Cobre', 'Rosca', '5/8"',
  NULL, 'Unión de tubería', 'Interior', '5/8" rosca',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Cobre 5/8" Compresión', 'Cobre', 'Compresión', '5/8"',
  NULL, 'Unión de tubería', 'Interior', '5/8" compresión',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Cobre 7/8" Rosca', 'Cobre', 'Rosca', '7/8"',
  NULL, 'Unión de tubería', 'Interior', '7/8" rosca',
  NULL, NULL, NULL, NULL, NULL, 2
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conector Cobre 7/8" Compresión', 'Cobre', 'Compresión', '7/8"',
  NULL, 'Unión de tubería', 'Interior', '7/8" compresión',
  NULL, NULL, NULL, NULL, NULL, 2
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Grifo Latón 1/2" Rosca', 'Latón', 'Rosca', '1/2"',
  NULL, 'Control de salida', 'Interior/Exterior', 'Grifo de jardín 1/2" latón',
  NULL, NULL, NULL, NULL, NULL, 11
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Grifo Latón 3/4" Rosca', 'Latón', 'Rosca', '3/4"',
  NULL, 'Control de salida', 'Interior/Exterior', 'Grifo de jardín 3/4" latón',
  NULL, NULL, NULL, NULL, NULL, 11
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Grifo Latón 1" Rosca', 'Latón', 'Rosca', '1"',
  NULL, 'Control de salida', 'Interior/Exterior', 'Grifo de jardín 1" latón',
  NULL, NULL, NULL, NULL, NULL, 11
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Grifo Latón 1/2" Rosca', 'Latón', 'Rosca', '1/2"',
  NULL, 'Control de salida', 'Interior/Exterior', 'Grifo de escuadra 1/2" latón',
  NULL, NULL, NULL, NULL, NULL, 11
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Grifo Latón 1/2" Rosca', 'Latón', 'Rosca', '1/2"',
  NULL, 'Control de salida', 'Interior/Exterior', 'Grifo de paso 1/2" latón',
  NULL, NULL, NULL, NULL, NULL, 11
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Grifo Latón 3/4" Rosca', 'Latón', 'Rosca', '3/4"',
  NULL, 'Control de salida', 'Interior/Exterior', 'Grifo de paso 3/4" latón',
  NULL, NULL, NULL, NULL, NULL, 11
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Grifo Latón 1" Rosca', 'Latón', 'Rosca', '1"',
  NULL, 'Control de salida', 'Interior/Exterior', 'Grifo de paso 1" latón',
  NULL, NULL, NULL, NULL, NULL, 11
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Grifo Cromo 1/2" Rosca', 'Cromo', 'Rosca', '1/2"',
  NULL, 'Control de salida', 'Interior/Exterior', 'Grifo cromado 1/2"',
  NULL, NULL, NULL, NULL, NULL, 11
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Grifo Cromo 3/4" Rosca', 'Cromo', 'Rosca', '3/4"',
  NULL, 'Control de salida', 'Interior/Exterior', 'Grifo cromado 3/4"',
  NULL, NULL, NULL, NULL, NULL, 11
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Grifo PVC 1/2" Rosca', 'PVC', 'Rosca', '1/2"',
  NULL, 'Control de salida', 'Interior/Exterior', 'Grifo PVC 1/2"',
  NULL, NULL, NULL, NULL, NULL, 11
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Grifo PVC 3/4" Rosca', 'PVC', 'Rosca', '3/4"',
  NULL, 'Control de salida', 'Interior/Exterior', 'Grifo PVC 3/4"',
  NULL, NULL, NULL, NULL, NULL, 11
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito PVC 1/2" Encolar', 'PVC', 'Encolar', '1/2"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 1/2" encolar',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito PVC 3/4" Encolar', 'PVC', 'Encolar', '3/4"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 3/4" encolar',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito PVC 1" Encolar', 'PVC', 'Encolar', '1"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 1" encolar',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito PVC 1 1/4" Encolar', 'PVC', 'Encolar', '1 1/4"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 1 1/4" encolar',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito PVC 1 1/2" Encolar', 'PVC', 'Encolar', '1 1/2"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 1 1/2" encolar',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito PVC 2" Encolar', 'PVC', 'Encolar', '2"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 2" encolar',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito PVC 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '1/2"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito PVC 3/4" Rosca H/H', 'PVC', 'Rosca H/H', '3/4"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 3/4" rosca',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito PVC 1" Rosca H/H', 'PVC', 'Rosca H/H', '1"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 1" rosca',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito PVC 1 1/2" Rosca H/H', 'PVC', 'Rosca H/H', '1 1/2"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 1 1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito PVC 2" Rosca H/H', 'PVC', 'Rosca H/H', '2"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 2" rosca',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito Multicapa 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '1/2"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 1/2" press-fit',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 3/4" press-fit',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito Multicapa 1/2" Rosca H/H', 'Multicapa', 'Rosca H/H', '1/2"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito Multicapa 3/4" Rosca H/H', 'Multicapa', 'Rosca H/H', '3/4"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 3/4" rosca',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito Cobre 3/8" Soldadura', 'Cobre', 'Soldadura', '3/8"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 3/8" soldadura',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito Cobre 1/2" Soldadura', 'Cobre', 'Soldadura', '1/2"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 1/2" soldadura',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito Cobre 5/8" Soldadura', 'Cobre', 'Soldadura', '5/8"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 5/8" soldadura',
  NULL, NULL, NULL, NULL, NULL, 10
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manguito Cobre 7/8" Soldadura', 'Cobre', 'Soldadura', '7/8"',
  NULL, 'Unión lineal', 'Interior', 'Manguito 7/8" soldadura',
  NULL, NULL, NULL, NULL, NULL, 10
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva PVC 1/2" Encolar', 'PVC', 'Encolar', '1/2"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 1/2" 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva PVC 3/4" Encolar', 'PVC', 'Encolar', '3/4"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 3/4" 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva PVC 1" Encolar', 'PVC', 'Encolar', '1"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 1" 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva PVC 1 1/4" Encolar', 'PVC', 'Encolar', '1 1/4"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 1 1/4" 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva PVC 1 1/2" Encolar', 'PVC', 'Encolar', '1 1/2"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 1 1/2" 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva PVC 2" Encolar', 'PVC', 'Encolar', '2"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 2" 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva PVC 3" Encolar', 'PVC', 'Encolar', '3"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 3" 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva PVC 4" Encolar', 'PVC', 'Encolar', '4"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 4" 90° encolar',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva PVC 1" Encolar', 'PVC', 'Encolar', '1"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 1" 45° encolar',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva PVC 2" Encolar', 'PVC', 'Encolar', '2"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 2" 45° encolar',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva PVC 4" Encolar', 'PVC', 'Encolar', '4"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 4" 45° encolar',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva Multicapa 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '1/2"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 1/2" 90° press-fit',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 3/4" 90° press-fit',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva Multicapa 1" Press-Fit', 'Multicapa', 'Press-Fit', '1"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 1" 90° press-fit',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva Cobre 3/8" Soldadura', 'Cobre', 'Soldadura', '3/8"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 3/8" 90° soldadura',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva Cobre 1/2" Soldadura', 'Cobre', 'Soldadura', '1/2"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 1/2" 90° soldadura',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva Cobre 5/8" Soldadura', 'Cobre', 'Soldadura', '5/8"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 5/8" 90° soldadura',
  NULL, NULL, NULL, NULL, NULL, 9
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Curva Cobre 7/8" Soldadura', 'Cobre', 'Soldadura', '7/8"',
  NULL, 'Cambio de dirección suave', 'Interior', 'Curva 7/8" 90° soldadura',
  NULL, NULL, NULL, NULL, NULL, 9
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula PVC 2" Brida', 'PVC', 'Brida', '2"',
  NULL, 'Control de flujo', 'Interior/Exterior', 'Válvula mariposa 2" PVC brida',
  NULL, NULL, NULL, NULL, NULL, 6
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula PVC 3" Brida', 'PVC', 'Brida', '3"',
  NULL, 'Control de flujo', 'Interior/Exterior', 'Válvula mariposa 3" PVC brida',
  NULL, NULL, NULL, NULL, NULL, 6
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula PVC 4" Brida', 'PVC', 'Brida', '4"',
  NULL, 'Control de flujo', 'Interior/Exterior', 'Válvula mariposa 4" PVC brida',
  NULL, NULL, NULL, NULL, NULL, 6
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula Latón 1" Rosca H-H', 'Latón', 'Rosca H-H', '1"',
  NULL, 'Control de flujo', 'Interior/Exterior', 'Válvula hidráulica 1" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 6
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula Latón 1 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1 1/2"',
  NULL, 'Control de flujo', 'Interior/Exterior', 'Válvula hidráulica 1 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 6
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula PVC 1" Rosca H-H', 'PVC', 'Rosca H-H', '1"',
  NULL, 'Control de flujo', 'Interior/Exterior', 'Electroválvula 1" PVC rosca',
  NULL, NULL, NULL, NULL, NULL, 6
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula Latón 1" Rosca H-H', 'Latón', 'Rosca H-H', '1"',
  NULL, 'Control de flujo', 'Interior/Exterior', 'Electroválvula 1" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 6
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula PVC 2" Rosca H-H', 'PVC', 'Rosca H-H', '2"',
  NULL, 'Control de flujo', 'Interior/Exterior', 'Válvula de pie 2" PVC rosca',
  NULL, NULL, NULL, NULL, NULL, 6
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula Latón 1 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1 1/2"',
  NULL, 'Control de flujo', 'Interior/Exterior', 'Válvula de pie 1 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 6
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula PVC 1 1/2" Rosca H-H', 'PVC', 'Rosca H-H', '1 1/2"',
  NULL, 'Control de flujo', 'Interior/Exterior', 'Válvula selectora 1 1/2" PVC rosca',
  NULL, NULL, NULL, NULL, NULL, 6
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula PVC 2" Rosca H-H', 'PVC', 'Rosca H-H', '2"',
  NULL, 'Control de flujo', 'Interior/Exterior', 'Válvula selectora 2" PVC rosca',
  NULL, NULL, NULL, NULL, NULL, 6
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor presión Latón 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1/2"',
  'Presión', 'Regulación', 'Interior', 'Reductor de presión 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 13
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor presión Latón 3/4" Rosca H-H', 'Latón', 'Rosca H-H', '3/4"',
  'Presión', 'Regulación', 'Interior', 'Reductor de presión 3/4" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 13
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor presión Latón 1" Rosca H-H', 'Latón', 'Rosca H-H', '1"',
  'Presión', 'Regulación', 'Interior', 'Reductor de presión 1" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 13
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor presión Latón 1 1/4" Rosca H-H', 'Latón', 'Rosca H-H', '1 1/4"',
  'Presión', 'Regulación', 'Interior', 'Reductor de presión 1 1/4" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 13
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor presión Latón 1 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1 1/2"',
  'Presión', 'Regulación', 'Interior', 'Reductor de presión 1 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 13
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor presión Latón 2" Rosca H-H', 'Latón', 'Rosca H-H', '2"',
  'Presión', 'Regulación', 'Interior', 'Reductor de presión 2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 13
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor presión Latón 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1/2"',
  'Presión', 'Regulación', 'Interior', 'Reductor de presión con manómetro 1/2"',
  NULL, NULL, NULL, NULL, NULL, 13
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor presión Latón 3/4" Rosca H-H', 'Latón', 'Rosca H-H', '3/4"',
  'Presión', 'Regulación', 'Interior', 'Reductor de presión con manómetro 3/4"',
  NULL, NULL, NULL, NULL, NULL, 13
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor presión Latón 1" Rosca H-H', 'Latón', 'Rosca H-H', '1"',
  'Presión', 'Regulación', 'Interior', 'Reductor de presión con manómetro 1"',
  NULL, NULL, NULL, NULL, NULL, 13
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor presión Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  'Presión', 'Regulación', 'Interior', 'Reductor de presión multicapa 3/4"',
  NULL, NULL, NULL, NULL, NULL, 13
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reductor presión Multicapa 1" Press-Fit', 'Multicapa', 'Press-Fit', '1"',
  'Presión', 'Regulación', 'Interior', 'Reductor de presión multicapa 1"',
  NULL, NULL, NULL, NULL, NULL, 13
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Latón 1/2" Rosca H/H', 'Latón', 'Rosca H/H', '1/2"',
  NULL, 'Filtrado de líquidos', 'Interior', 'Filtro Y 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Latón 3/4" Rosca H/H', 'Latón', 'Rosca H/H', '3/4"',
  NULL, 'Filtrado de líquidos', 'Interior', 'Filtro Y 3/4" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Latón 1" Rosca H/H', 'Latón', 'Rosca H/H', '1"',
  NULL, 'Filtrado de líquidos', 'Interior', 'Filtro Y 1" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Latón 1 1/4" Rosca H/H', 'Latón', 'Rosca H/H', '1 1/4"',
  NULL, 'Filtrado de líquidos', 'Interior', 'Filtro Y 1 1/4" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Latón 1 1/2" Rosca H/H', 'Latón', 'Rosca H/H', '1 1/2"',
  NULL, 'Filtrado de líquidos', 'Interior', 'Filtro Y 1 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Latón 2" Rosca H/H', 'Latón', 'Rosca H/H', '2"',
  NULL, 'Filtrado de líquidos', 'Interior', 'Filtro Y 2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Plástico 3/4" Rosca H/H', 'Plástico', 'Rosca H/H', '3/4"',
  NULL, 'Filtrado de líquidos', 'Interior', 'Filtro doméstico 3/4" plástico',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Plástico 1" Rosca H/H', 'Plástico', 'Rosca H/H', '1"',
  NULL, 'Filtrado de líquidos', 'Interior', 'Filtro doméstico 1" plástico',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Plástico 1 1/2" Rosca H/H', 'Plástico', 'Rosca H/H', '1 1/2"',
  NULL, 'Filtrado de líquidos', 'Interior', 'Filtro doméstico 1 1/2" plástico',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Plástico 2" Rosca H/H', 'Plástico', 'Rosca H/H', '2"',
  NULL, 'Filtrado de líquidos', 'Interior', 'Filtro doméstico 2" plástico',
  NULL, NULL, NULL, NULL, NULL, 12
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Latón 2 1/2" Rosca H/H', 'Latón', 'Rosca H/H', '2 1/2"',
  NULL, 'Filtrado de líquidos', 'Interior/Exterior', 'Filtro Y 2 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Latón 3" Rosca H/H', 'Latón', 'Rosca H/H', '3"',
  NULL, 'Filtrado de líquidos', 'Interior/Exterior', 'Filtro Y 3" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Latón 4" Rosca H/H', 'Latón', 'Rosca H/H', '4"',
  NULL, 'Filtrado de líquidos', 'Interior/Exterior', 'Filtro Y 4" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Hierro 2" Brida', 'Hierro', 'Brida', '2"',
  NULL, 'Filtrado de líquidos', 'Interior/Exterior', 'Filtro tipo T 2" hierro brida',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Hierro 3" Brida', 'Hierro', 'Brida', '3"',
  NULL, 'Filtrado de líquidos', 'Interior/Exterior', 'Filtro tipo T 3" hierro brida',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Hierro 4" Brida', 'Hierro', 'Brida', '4"',
  NULL, 'Filtrado de líquidos', 'Interior/Exterior', 'Filtro tipo T 4" hierro brida',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Multicapa 1" Automático', 'Multicapa', 'Automático', '1"',
  NULL, 'Filtrado de líquidos', 'Interior/Exterior', 'Filtro automático multicapa 1"',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Multicapa 1 1/2" Automático', 'Multicapa', 'Automático', '1 1/2"',
  NULL, 'Filtrado de líquidos', 'Interior/Exterior', 'Filtro automático multicapa 1 1/2"',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Plástico 1/4" Cartucho', 'Plástico', 'Cartucho', '1/4"',
  NULL, 'Filtrado de líquidos', 'Interior/Exterior', 'Filtro ósmosis 1/4" cartucho',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Plástico 3/8" Cartucho', 'Plástico', 'Cartucho', '3/8"',
  NULL, 'Filtrado de líquidos', 'Interior/Exterior', 'Filtro ósmosis 3/8" cartucho',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Latón 1/2" Rosca H/H', 'Latón', 'Rosca H/H', '1/2"',
  NULL, 'Filtrado de líquidos', 'Interior/Exterior', 'Filtro + válvula 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Latón 3/4" Rosca H/H', 'Latón', 'Rosca H/H', '3/4"',
  NULL, 'Filtrado de líquidos', 'Interior/Exterior', 'Filtro + válvula 3/4" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 12
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Filtro Latón 1" Rosca H/H', 'Latón', 'Rosca H/H', '1"',
  NULL, 'Filtrado de líquidos', 'Interior/Exterior', 'Filtro + válvula 1" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 12
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Latón 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1/2"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace recto 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Latón 3/4" Rosca H-H', 'Latón', 'Rosca H-H', '3/4"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace recto 3/4" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Latón 1" Rosca H-H', 'Latón', 'Rosca H-H', '1"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace recto 1" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Multicapa 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '1/2"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace recto 1/2" multicapa press-fit',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace recto 3/4" multicapa press-fit',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace PVC 1" Encolar', 'PVC', 'Encolar', '1"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace curvo 1" PVC encolar',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace PVC 2" Encolar', 'PVC', 'Encolar', '2"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace curvo 2" PVC encolar',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1/2"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de paso 1/2" latón',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 3/4" Rosca H-H', 'Latón', 'Rosca H-H', '3/4"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de paso 3/4" latón',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 1" Rosca H-H', 'Latón', 'Rosca H-H', '1"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de paso 1" latón',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1/2"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de escuadra 1/2" latón',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 3/4" Rosca H-H', 'Latón', 'Rosca H-H', '3/4"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de escuadra 3/4" latón',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Cromo 1/2" Rosca H-H', 'Cromo', 'Rosca H-H', '1/2"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de escuadra cromada 1/2"',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Cromo 3/4" Rosca H-H', 'Cromo', 'Rosca H-H', '3/4"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de escuadra cromada 3/4"',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 1" Rosca H-H', 'Latón', 'Rosca H-H', '1"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave esfera 1" latón',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave PVC 2" Rosca H-H', 'PVC', 'Rosca H-H', '2"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave esfera 2" PVC',
  NULL, NULL, NULL, NULL, NULL, 19
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Latón 1/2" Rosca M-H', 'Latón', 'Rosca M-H', '1/2"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Latón 3/4" Rosca M-H', 'Latón', 'Rosca M-H', '3/4"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 3/4" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Latón 1" Rosca M-H', 'Latón', 'Rosca M-H', '1"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Latón 1 1/4" Rosca M-H', 'Latón', 'Rosca M-H', '1 1/4"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1 1/4" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Galvanizado 1/2" Rosca M-H', 'Galvanizado', 'Rosca M-H', '1/2"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1/2" galvanizada rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Galvanizado 3/4" Rosca M-H', 'Galvanizado', 'Rosca M-H', '3/4"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 3/4" galvanizada rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Galvanizado 1" Rosca M-H', 'Galvanizado', 'Rosca M-H', '1"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1" galvanizada rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Acero Inoxidable 1/2" Rosca M-H', 'Acero Inoxidable', 'Rosca M-H', '1/2"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1/2" inox rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Acero Inoxidable 3/4" Rosca M-H', 'Acero Inoxidable', 'Rosca M-H', '3/4"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 3/4" inox rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Multicapa 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '1/2"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1/2" multicapa press-fit',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 3/4" multicapa press-fit',
  NULL, NULL, NULL, NULL, NULL, 17
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Latón 1 1/2" Rosca M-H', 'Latón', 'Rosca M-H', '1 1/2"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Latón 2" Rosca M-H', 'Latón', 'Rosca M-H', '2"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Latón 1/2" Rosca M-H', 'Latón', 'Rosca M-H', '1/2"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1/2" x 50mm latón rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Latón 3/4" Rosca M-H', 'Latón', 'Rosca M-H', '3/4"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 3/4" x 50mm latón rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Latón 2" Rosca M-H', 'Latón', 'Rosca M-H', '2"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 2" Hexagonal latón rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Galvanizado 1" Rosca M-H', 'Galvanizado', 'Rosca M-H', '1"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1" galvanizada rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Galvanizado 1 1/2" Rosca M-H', 'Galvanizado', 'Rosca M-H', '1 1/2"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1 1/2" galvanizada rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Acero Inoxidable 1" Rosca M-H', 'Acero Inoxidable', 'Rosca M-H', '1"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1" inox rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Acero Inoxidable 1 1/2" Rosca M-H', 'Acero Inoxidable', 'Rosca M-H', '1 1/2"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1 1/2" inox rosca',
  NULL, NULL, NULL, NULL, NULL, 17
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Alargadera Multicapa 1" Press-Fit', 'Multicapa', 'Press-Fit', '1"',
  NULL, 'Extensión', 'Interior/Exterior', 'Alargadera 1" multicapa press-fit',
  NULL, NULL, NULL, NULL, NULL, 17
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Latón 1/2" Rosca H', 'Latón', 'Rosca H', '1/2"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca latón 1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Latón 3/4" Rosca H', 'Latón', 'Rosca H', '3/4"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca latón 3/4" rosca',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Latón 1" Rosca H', 'Latón', 'Rosca H', '1"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca latón 1" rosca',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Latón 1 1/4" Rosca H', 'Latón', 'Rosca H', '1 1/4"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca latón 1 1/4" rosca',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Latón 1 1/2" Rosca H', 'Latón', 'Rosca H', '1 1/2"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca latón 1 1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Latón 2" Rosca H', 'Latón', 'Rosca H', '2"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca latón 2" rosca',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Galvanizado 1/2" Rosca H', 'Galvanizado', 'Rosca H', '1/2"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca galvanizada 1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Galvanizado 3/4" Rosca H', 'Galvanizado', 'Rosca H', '3/4"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca galvanizada 3/4" rosca',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Galvanizado 1" Rosca H', 'Galvanizado', 'Rosca H', '1"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca galvanizada 1" rosca',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Acero Inoxidable 1" Rosca H', 'Acero Inoxidable', 'Rosca H', '1"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca inox 1" rosca',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Multicapa 3/4" Rosca H', 'Multicapa', 'Rosca H', '3/4"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca multicapa 3/4" rosca',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Multicapa 1" Rosca H', 'Multicapa', 'Rosca H', '1"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca multicapa 1" rosca',
  NULL, NULL, NULL, NULL, NULL, 16
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Latón 1/4" Rosca H', 'Latón', 'Rosca H', '1/4"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca frigorífica 1/4" latón',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Latón 3/8" Rosca H', 'Latón', 'Rosca H', '3/8"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca frigorífica 3/8" latón',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Latón 1/2" Rosca H', 'Latón', 'Rosca H', '1/2"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca frigorífica 1/2" latón',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Latón 5/8" Rosca H', 'Latón', 'Rosca H', '5/8"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca frigorífica 5/8" latón',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Cromo 1/2" Rosca H', 'Cromo', 'Rosca H', '1/2"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca cromada 1/2"',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Cromo 3/4" Rosca H', 'Cromo', 'Rosca H', '3/4"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca cromada 3/4"',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Cromo 1" Rosca H', 'Cromo', 'Rosca H', '1"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca cromada 1"',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Cromo 1 1/2" Rosca H', 'Cromo', 'Rosca H', '1 1/2"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca cromada 1 1/2"',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Cromo 2" Rosca H', 'Cromo', 'Rosca H', '2"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca cromada 2"',
  NULL, NULL, NULL, NULL, NULL, 16
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tuerca Cromo 2 1/2" Rosca H', 'Cromo', 'Rosca H', '2 1/2"',
  NULL, 'Fijación', 'Interior/Exterior', 'Tuerca cromada 2 1/2"',
  NULL, NULL, NULL, NULL, NULL, 16
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Machón Latón 1/2" Rosca M-M', 'Latón', 'Rosca M-M', '1/2"',
  NULL, 'Unión M-M', 'Interior/Exterior', 'Machón latón 1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 15
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Machón Latón 3/4" Rosca M-M', 'Latón', 'Rosca M-M', '3/4"',
  NULL, 'Unión M-M', 'Interior/Exterior', 'Machón latón 3/4" rosca',
  NULL, NULL, NULL, NULL, NULL, 15
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Machón Latón 1" Rosca M-M', 'Latón', 'Rosca M-M', '1"',
  NULL, 'Unión M-M', 'Interior/Exterior', 'Machón latón 1" rosca',
  NULL, NULL, NULL, NULL, NULL, 15
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Machón Latón 1 1/4" Rosca M-M', 'Latón', 'Rosca M-M', '1 1/4"',
  NULL, 'Unión M-M', 'Interior/Exterior', 'Machón latón 1 1/4" rosca',
  NULL, NULL, NULL, NULL, NULL, 15
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Machón Latón 1 1/2" Rosca M-M', 'Latón', 'Rosca M-M', '1 1/2"',
  NULL, 'Unión M-M', 'Interior/Exterior', 'Machón latón 1 1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 15
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Machón Latón 2" Rosca M-M', 'Latón', 'Rosca M-M', '2"',
  NULL, 'Unión M-M', 'Interior/Exterior', 'Machón latón 2" rosca',
  NULL, NULL, NULL, NULL, NULL, 15
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Machón Galvanizado 1/2" Rosca M-M', 'Galvanizado', 'Rosca M-M', '1/2"',
  NULL, 'Unión M-M', 'Interior/Exterior', 'Machón galvanizado 1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 15
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Machón Galvanizado 3/4" Rosca M-M', 'Galvanizado', 'Rosca M-M', '3/4"',
  NULL, 'Unión M-M', 'Interior/Exterior', 'Machón galvanizado 3/4" rosca',
  NULL, NULL, NULL, NULL, NULL, 15
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Machón Galvanizado 1" Rosca M-M', 'Galvanizado', 'Rosca M-M', '1"',
  NULL, 'Unión M-M', 'Interior/Exterior', 'Machón galvanizado 1" rosca',
  NULL, NULL, NULL, NULL, NULL, 15
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Machón Galvanizado 1 1/2" Rosca M-M', 'Galvanizado', 'Rosca M-M', '1 1/2"',
  NULL, 'Unión M-M', 'Interior/Exterior', 'Machón galvanizado 1 1/2" rosca',
  NULL, NULL, NULL, NULL, NULL, 15
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Machón Acero Inoxidable 1" Rosca M-M', 'Acero Inoxidable', 'Rosca M-M', '1"',
  NULL, 'Unión M-M', 'Interior/Exterior', 'Machón inox 1" rosca',
  NULL, NULL, NULL, NULL, NULL, 15
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Machón PVC 1" Rosca M-M', 'PVC', 'Rosca M-M', '1"',
  NULL, 'Unión M-M', 'Interior/Exterior', 'Machón PVC 1" rosca',
  NULL, NULL, NULL, NULL, NULL, 15
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manómetro Latón 1/4" Rosca H', 'Latón', 'Rosca H', '1/4"',
  'Presión', 'Medición', 'Interior', 'Manómetro 0-6 bar 1/4" axial latón',
  NULL, NULL, NULL, NULL, NULL, 14
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manómetro Latón 3/8" Rosca H', 'Latón', 'Rosca H', '3/8"',
  'Presión', 'Medición', 'Interior', 'Manómetro 0-10 bar 3/8" radial latón',
  NULL, NULL, NULL, NULL, NULL, 14
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manómetro Latón 1/2" Rosca H', 'Latón', 'Rosca H', '1/2"',
  'Presión', 'Medición', 'Interior', 'Manómetro 0-16 bar 1/2" axial latón',
  NULL, NULL, NULL, NULL, NULL, 14
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manómetro Acero Inoxidable 1/4" Rosca H', 'Acero Inoxidable', 'Rosca H', '1/4"',
  'Presión', 'Medición', 'Interior', 'Manómetro inox 0-10 bar 1/4" axial',
  NULL, NULL, NULL, NULL, NULL, 14
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manómetro Acero Inoxidable 1/2" Rosca H', 'Acero Inoxidable', 'Rosca H', '1/2"',
  'Presión', 'Medición', 'Interior', 'Manómetro inox 0-25 bar 1/2" radial',
  NULL, NULL, NULL, NULL, NULL, 14
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manómetro Plástico 1/4" Rosca H', 'Plástico', 'Rosca H', '1/4"',
  'Presión', 'Medición', 'Interior', 'Manómetro plástico 0-6 bar 1/4" axial',
  NULL, NULL, NULL, NULL, NULL, 14
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Manómetro Latón 1/2" Rosca H', 'Latón', 'Rosca H', '1/2"',
  'Presión', 'Medición', 'Interior', 'Manómetro con glicerina 0-10 bar 1/2"',
  NULL, NULL, NULL, NULL, NULL, 14
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Latón 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1/2"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace recto 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Latón 3/4" Rosca H-H', 'Latón', 'Rosca H-H', '3/4"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace recto 3/4" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Latón 1" Rosca H-H', 'Latón', 'Rosca H-H', '1"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace recto 1" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Multicapa 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '1/2"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace recto 1/2" multicapa press-fit',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace recto 3/4" multicapa press-fit',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace PVC 1" Encolar', 'PVC', 'Encolar', '1"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace curvo 1" PVC encolar',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace PVC 2" Encolar', 'PVC', 'Encolar', '2"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace curvo 2" PVC encolar',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1/2"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de paso 1/2" latón',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 3/4" Rosca H-H', 'Latón', 'Rosca H-H', '3/4"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de paso 3/4" latón',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 1" Rosca H-H', 'Latón', 'Rosca H-H', '1"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de paso 1" latón',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1/2"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de escuadra 1/2" latón',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 3/4" Rosca H-H', 'Latón', 'Rosca H-H', '3/4"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de escuadra 3/4" latón',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Cromo 1/2" Rosca H-H', 'Cromo', 'Rosca H-H', '1/2"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de escuadra cromada 1/2"',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Cromo 3/4" Rosca H-H', 'Cromo', 'Rosca H-H', '3/4"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave de escuadra cromada 3/4"',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 1" Rosca H-H', 'Latón', 'Rosca H-H', '1"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave esfera 1" latón',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave PVC 2" Rosca H-H', 'PVC', 'Rosca H-H', '2"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave esfera 2" PVC',
  NULL, NULL, NULL, NULL, NULL, 19
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Multicapa 3/4" Rosca M-H', 'Multicapa', 'Rosca M-H', '3/4"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace mixto 20mm x 3/4" multicapa rosca',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Multicapa 1" Rosca M-H', 'Multicapa', 'Rosca M-H', '1"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace mixto 25mm x 1" multicapa rosca',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Multicapa 3/4" Rosca H-H', 'Multicapa', 'Rosca H-H', '3/4"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace curvo 3/4" multicapa rosca',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Enlace Latón 1/2" Rosca H-M', 'Latón', 'Rosca H-M', '1/2"',
  NULL, 'Unión de tubos', 'Interior/Exterior', 'Enlace macho-hembra 1/2" latón',
  NULL, NULL, NULL, NULL, NULL, 18
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1/2"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave escuadra reforzada 1/2"',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 3/4" Rosca H-H', 'Latón', 'Rosca H-H', '3/4"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave escuadra reforzada 3/4"',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1/2"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave escuadra con filtro 1/2"',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 3/4" Rosca H-H', 'Latón', 'Rosca H-H', '3/4"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave escuadra con filtro 3/4"',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Latón 3/4" Rosca M-M', 'Latón', 'Rosca M-M', '3/4"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave lavadora doble 3/4" macho',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Multicapa 1/2" Soldadura', 'Multicapa', 'Soldadura', '1/2"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave esfera soldar 1/2" multicapa',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Multicapa 3/4" Soldadura', 'Multicapa', 'Soldadura', '3/4"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave esfera soldar 3/4" multicapa',
  NULL, NULL, NULL, NULL, NULL, 19
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Llave Multicapa 1" Soldadura', 'Multicapa', 'Soldadura', '1"',
  'Corte', 'Interrupción', 'Interior/Exterior', 'Llave esfera soldar 1" multicapa',
  NULL, NULL, NULL, NULL, NULL, 19
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Entronque Latón 1/2" Rosca M-H', 'Latón', 'Rosca M-H', '1/2"',
  NULL, 'Conexión lineal', 'Interior/Exterior', 'Entronque 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 35
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Entronque Latón 3/4" Rosca M-H', 'Latón', 'Rosca M-H', '3/4"',
  NULL, 'Conexión lineal', 'Interior/Exterior', 'Entronque 3/4" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 35
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Entronque Multicapa 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '1/2"',
  NULL, 'Conexión lineal', 'Interior/Exterior', 'Entronque multicapa 1/2" press-fit',
  NULL, NULL, NULL, NULL, NULL, 35
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Entronque Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Conexión lineal', 'Interior/Exterior', 'Entronque multicapa 3/4" press-fit',
  NULL, NULL, NULL, NULL, NULL, 35
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Entronque PVC 1" Encolar', 'PVC', 'Encolar', '1"',
  NULL, 'Conexión lineal', 'Interior/Exterior', 'Entronque PVC 1" encolar',
  NULL, NULL, NULL, NULL, NULL, 35
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Mecanismo descarga universal cisterna', 'Plástico', 'Rosca', 'Universal',
  NULL, 'Reparación sanitaria', 'Interior', 'Mecanismo descarga universal cisterna',
  NULL, NULL, NULL, NULL, NULL, 36
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Mecanismo entrada lateral cisterna', 'Plástico', 'Rosca', 'Universal',
  NULL, 'Reparación sanitaria', 'Interior', 'Mecanismo entrada lateral cisterna',
  NULL, NULL, NULL, NULL, NULL, 36
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Mecanismo entrada inferior cisterna', 'Plástico', 'Rosca', 'Universal',
  NULL, 'Reparación sanitaria', 'Interior', 'Mecanismo entrada inferior cisterna',
  NULL, NULL, NULL, NULL, NULL, 36
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Botón doble descarga cisterna', 'Plástico', 'Rosca', 'Universal',
  NULL, 'Reparación sanitaria', 'Interior', 'Botón doble descarga cisterna',
  NULL, NULL, NULL, NULL, NULL, 36
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Flotador universal cisterna', 'Plástico', 'Rosca', 'Universal',
  NULL, 'Reparación sanitaria', 'Interior', 'Flotador universal cisterna',
  NULL, NULL, NULL, NULL, NULL, 36
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Adaptador Latón 1/2" a 3/4"', 'Latón', 'Rosca M-H', '1/2" a 3/4"',
  NULL, 'Transición de medida', 'Interior/Exterior', 'Adaptador 1/2" a 3/4" latón',
  NULL, NULL, NULL, NULL, NULL, 37
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Adaptador Latón 3/4" a 1"', 'Latón', 'Rosca M-H', '3/4" a 1"',
  NULL, 'Transición de medida', 'Interior/Exterior', 'Adaptador 3/4" a 1" latón',
  NULL, NULL, NULL, NULL, NULL, 37
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Adaptador Multicapa 16mm a 20mm', 'Multicapa', 'Press-Fit', '16mm a 20mm',
  NULL, 'Transición de medida', 'Interior/Exterior', 'Adaptador 16mm a 20mm multicapa',
  NULL, NULL, NULL, NULL, NULL, 37
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Adaptador PVC 32mm a 40mm', 'PVC', 'Encolar', '32mm a 40mm',
  NULL, 'Transición de medida', 'Interior/Exterior', 'Adaptador 32mm a 40mm PVC encolar',
  NULL, NULL, NULL, NULL, NULL, 37
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Colector Latón 1"', 'Latón', 'Rosca M-H', '1"',
  NULL, 'Distribución', 'Interior', 'Colector 1" x 2 salidas 1/2"',
  NULL, NULL, NULL, NULL, NULL, 38
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Colector Latón 1"', 'Latón', 'Rosca M-H', '1"',
  NULL, 'Distribución', 'Interior', 'Colector 1" x 3 salidas 1/2"',
  NULL, NULL, NULL, NULL, NULL, 38
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Colector Latón 1"', 'Latón', 'Rosca M-H', '1"',
  NULL, 'Distribución', 'Interior', 'Colector 1" x 4 salidas 1/2"',
  NULL, NULL, NULL, NULL, NULL, 38
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Colector Multicapa 3/4"', 'Multicapa', 'Rosca M-H', '3/4"',
  NULL, 'Distribución', 'Interior', 'Colector multicapa 3/4" x 2 salidas',
  NULL, NULL, NULL, NULL, NULL, 38
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Colector Multicapa 3/4"', 'Multicapa', 'Rosca M-H', '3/4"',
  NULL, 'Distribución', 'Interior', 'Colector multicapa 3/4" x 3 salidas',
  NULL, NULL, NULL, NULL, NULL, 38
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Mecanismo descarga doble pulsador superior', 'Plástico', 'Rosca', 'Universal',
  NULL, 'Reparación sanitaria', 'Interior', 'Mecanismo descarga doble pulsador superior',
  NULL, NULL, NULL, NULL, NULL, 36
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Mecanismo descarga lateral simple', 'Plástico', 'Rosca', 'Universal',
  NULL, 'Reparación sanitaria', 'Interior', 'Mecanismo descarga lateral simple',
  NULL, NULL, NULL, NULL, NULL, 36
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula llenado lateral 3/8"', 'Plástico', 'Rosca', '3/8"',
  NULL, 'Reparación sanitaria', 'Interior', 'Válvula llenado lateral 3/8"',
  NULL, NULL, NULL, NULL, NULL, 36
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula llenado inferior 1/2"', 'Plástico', 'Rosca', '1/2"',
  NULL, 'Reparación sanitaria', 'Interior', 'Válvula llenado inferior 1/2"',
  NULL, NULL, NULL, NULL, NULL, 36
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Válvula llenado lateral 3/4"', 'Plástico', 'Rosca', '3/4"',
  NULL, 'Reparación sanitaria', 'Interior', 'Válvula llenado lateral 3/4"',
  NULL, NULL, NULL, NULL, NULL, 36
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Pulsador doble descarga cromado', 'Plástico', 'Rosca', 'Universal',
  NULL, 'Reparación sanitaria', 'Interior', 'Pulsador doble descarga cromado',
  NULL, NULL, NULL, NULL, NULL, 36
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Pulsador simple cromado', 'Plástico', 'Rosca', 'Universal',
  NULL, 'Reparación sanitaria', 'Interior', 'Pulsador simple cromado',
  NULL, NULL, NULL, NULL, NULL, 36
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Adaptador Multicapa 20mm x 3/4"', 'Multicapa', 'Rosca M-H', '20mm x 3/4"',
  NULL, 'Transición de medida', 'Interior/Exterior', 'Adaptador multicapa 20mm x 3/4"',
  NULL, NULL, NULL, NULL, NULL, 37
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Adaptador Multicapa 25mm x 1"', 'Multicapa', 'Rosca M-H', '25mm x 1"',
  NULL, 'Transición de medida', 'Interior/Exterior', 'Adaptador multicapa 25mm x 1"',
  NULL, NULL, NULL, NULL, NULL, 37
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Adaptador Multicapa 16mm x 1/2"', 'Multicapa', 'Rosca M-H', '16mm x 1/2"',
  NULL, 'Transición de medida', 'Interior/Exterior', 'Adaptador multicapa 16mm x 1/2"',
  NULL, NULL, NULL, NULL, NULL, 37
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Colector Multicapa 3/4"', 'Multicapa', 'Rosca M-H', '3/4"',
  NULL, 'Distribución', 'Interior', 'Colector multicapa 3/4" x 4 salidas',
  NULL, NULL, NULL, NULL, NULL, 38
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Colector Multicapa 1"', 'Multicapa', 'Rosca M-H', '1"',
  NULL, 'Distribución', 'Interior', 'Colector multicapa 1" x 2 salidas',
  NULL, NULL, NULL, NULL, NULL, 38
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Colector Multicapa 1"', 'Multicapa', 'Rosca M-H', '1"',
  NULL, 'Distribución', 'Interior', 'Colector multicapa 1" x 3 salidas',
  NULL, NULL, NULL, NULL, NULL, 38
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Colector Multicapa 1"', 'Multicapa', 'Rosca M-H', '1"',
  NULL, 'Distribución', 'Interior', 'Colector multicapa 1" x 4 salidas',
  NULL, NULL, NULL, NULL, NULL, 38
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Collarín Hierro Fundido 2" Brida', 'Hierro Fundido', 'Brida', '2"',
  NULL, 'Derivación en tubería', 'Exterior', 'Collarín 2" fundición brida',
  NULL, NULL, NULL, NULL, NULL, 31
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Collarín PVC 1" Rosca', 'PVC', 'Rosca', '1"',
  NULL, 'Derivación en tubería', 'Exterior', 'Collarín 1" PVC rosca',
  NULL, NULL, NULL, NULL, NULL, 31
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Collarín Polietileno 2" Electrosoldable', 'Polietileno', 'Electrosoldable', '2"',
  NULL, 'Derivación en tubería', 'Exterior', 'Collarín 2" PE electrosoldable',
  NULL, NULL, NULL, NULL, NULL, 31
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Collarín Polietileno 1" Compresión', 'Polietileno', 'Compresión', '1"',
  NULL, 'Derivación en tubería', 'Exterior', 'Collarín 1" PE compresión',
  NULL, NULL, NULL, NULL, NULL, 31
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Junta Goma 1/2" Junta Plana', 'Goma', 'Junta Plana', '1/2"',
  NULL, 'Sellado de uniones', 'Interior/Exterior', 'Junta plana 1/2" goma',
  NULL, NULL, NULL, NULL, NULL, 32
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Junta Goma 3/4" Junta Plana', 'Goma', 'Junta Plana', '3/4"',
  NULL, 'Sellado de uniones', 'Interior/Exterior', 'Junta plana 3/4" goma',
  NULL, NULL, NULL, NULL, NULL, 32
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Junta Goma 1" Junta Plana', 'Goma', 'Junta Plana', '1"',
  NULL, 'Sellado de uniones', 'Interior/Exterior', 'Junta plana 1" goma',
  NULL, NULL, NULL, NULL, NULL, 32
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Junta Goma 3/4" Tórica', 'Goma', 'Tórica', '3/4"',
  NULL, 'Sellado de uniones', 'Interior/Exterior', 'Junta tórica 3/4"',
  NULL, NULL, NULL, NULL, NULL, 32
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Junta Fibra 1/2" Junta Plana', 'Fibra', 'Junta Plana', '1/2"',
  NULL, 'Sellado de uniones', 'Interior/Exterior', 'Junta plana 1/2" fibra',
  NULL, NULL, NULL, NULL, NULL, 32
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Contador Latón 1/2" Rosca', 'Latón', 'Rosca', '1/2"',
  'Caudal', 'Medición', 'Interior/Exterior', 'Contador de agua doméstico 1/2"',
  NULL, NULL, NULL, NULL, NULL, 33
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Contador Latón 3/4" Rosca', 'Latón', 'Rosca', '3/4"',
  'Caudal', 'Medición', 'Interior/Exterior', 'Contador de agua doméstico 3/4"',
  NULL, NULL, NULL, NULL, NULL, 33
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Contador Latón 1" Rosca', 'Latón', 'Rosca', '1"',
  'Caudal', 'Medición', 'Interior/Exterior', 'Contador de agua 1" chorro único',
  NULL, NULL, NULL, NULL, NULL, 33
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Contador Latón 1" Rosca', 'Latón', 'Rosca', '1"',
  'Caudal', 'Medición', 'Interior/Exterior', 'Contador de agua 1" multichorro',
  NULL, NULL, NULL, NULL, NULL, 33
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Contador Hierro 2" Brida', 'Hierro', 'Brida', '2"',
  'Caudal', 'Medición', 'Interior/Exterior', 'Contador de agua 2" industrial',
  NULL, NULL, NULL, NULL, NULL, 33
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Clapeta Latón 1/2" Rosca', 'Latón', 'Rosca', '1/2"',
  'Retención', 'Antirretorno', 'Interior/Exterior', 'Clapeta de retención 1/2" latón',
  NULL, NULL, NULL, NULL, NULL, 34
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Clapeta Latón 3/4" Rosca', 'Latón', 'Rosca', '3/4"',
  'Retención', 'Antirretorno', 'Interior/Exterior', 'Clapeta de retención 3/4" latón',
  NULL, NULL, NULL, NULL, NULL, 34
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Clapeta Latón 1" Rosca', 'Latón', 'Rosca', '1"',
  'Retención', 'Antirretorno', 'Interior/Exterior', 'Clapeta de retención 1" latón',
  NULL, NULL, NULL, NULL, NULL, 34
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Clapeta Hierro 2" Brida', 'Hierro', 'Brida', '2"',
  'Retención', 'Antirretorno', 'Interior/Exterior', 'Clapeta de retención 2" fundición',
  NULL, NULL, NULL, NULL, NULL, 34
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Clapeta PVC 2" Encolar', 'PVC', 'Encolar', '2"',
  'Retención', 'Antirretorno', 'Interior/Exterior', 'Clapeta antirretorno 2" PVC',
  NULL, NULL, NULL, NULL, NULL, 34
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Unión Latón 1/2" Rosca H-H', 'Latón', 'Rosca H-H', '1/2"',
  NULL, 'Unión desmontable', 'Interior/Exterior', 'Unión doble 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 27
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Unión Latón 3/4" Rosca H-H', 'Latón', 'Rosca H-H', '3/4"',
  NULL, 'Unión desmontable', 'Interior/Exterior', 'Unión doble 3/4" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 27
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Unión Latón 1" Rosca H-H', 'Latón', 'Rosca H-H', '1"',
  NULL, 'Unión desmontable', 'Interior/Exterior', 'Unión doble 1" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 27
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Unión Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Unión desmontable', 'Interior/Exterior', 'Unión recta multicapa 3/4" press-fit',
  NULL, NULL, NULL, NULL, NULL, 27
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Unión Multicapa 1" Press-Fit', 'Multicapa', 'Press-Fit', '1"',
  NULL, 'Unión desmontable', 'Interior/Exterior', 'Unión recta multicapa 1" press-fit',
  NULL, NULL, NULL, NULL, NULL, 27
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Unión PVC 2" Encolar', 'PVC', 'Encolar', '2"',
  NULL, 'Unión desmontable', 'Interior/Exterior', 'Unión PVC 2" encolar',
  NULL, NULL, NULL, NULL, NULL, 27
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubo PVC 1/2"', 'PVC', 'Liso', '1/2"',
  NULL, 'Conducción', 'Interior/Exterior', 'Tubo PVC 1/2" liso',
  NULL, NULL, NULL, NULL, NULL, 28
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubo PVC 3/4"', 'PVC', 'Liso', '3/4"',
  NULL, 'Conducción', 'Interior/Exterior', 'Tubo PVC 3/4" liso',
  NULL, NULL, NULL, NULL, NULL, 28
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubo PVC 1"', 'PVC', 'Liso', '1"',
  NULL, 'Conducción', 'Interior/Exterior', 'Tubo PVC 1" liso',
  NULL, NULL, NULL, NULL, NULL, 28
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubo Multicapa 16mm', 'Multicapa', 'Liso', '16mm',
  NULL, 'Conducción', 'Interior/Exterior', 'Tubo multicapa 16mm',
  NULL, NULL, NULL, NULL, NULL, 28
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubo Multicapa 20mm', 'Multicapa', 'Liso', '20mm',
  NULL, 'Conducción', 'Interior/Exterior', 'Tubo multicapa 20mm',
  NULL, NULL, NULL, NULL, NULL, 28
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubo Cobre 15mm', 'Cobre', 'Liso', '15mm',
  NULL, 'Conducción', 'Interior/Exterior', 'Tubo cobre 15mm',
  NULL, NULL, NULL, NULL, NULL, 28
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tubo Cobre 22mm', 'Cobre', 'Liso', '22mm',
  NULL, 'Conducción', 'Interior/Exterior', 'Tubo cobre 22mm',
  NULL, NULL, NULL, NULL, NULL, 28
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Escariador Acero Universal', 'Acero', 'Manual', 'Universal',
  NULL, 'Preparación de tubo', 'Manual', 'Escariador manual universal',
  NULL, NULL, NULL, NULL, NULL, 29
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Escariador Acero 1/2"-1"', 'Acero', 'Manual', '1/2"-1"',
  NULL, 'Preparación de tubo', 'Manual', 'Escariador manual 1/2" a 1"',
  NULL, NULL, NULL, NULL, NULL, 29
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Escariador Plástico Multicapa', 'Plástico', 'Manual', 'Multicapa',
  NULL, 'Preparación de tubo', 'Manual', 'Escariador multicapa plástico',
  NULL, NULL, NULL, NULL, NULL, 29
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reducción Latón 3/4" a 1/2"', 'Latón', 'Rosca H-H', '3/4" a 1/2"',
  NULL, 'Reducción de diámetro', 'Interior/Exterior', 'Reducción 3/4" a 1/2" latón rosca',
  NULL, NULL, NULL, NULL, NULL, 30
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reducción PVC 2" a 1"', 'PVC', 'Encolar', '2" a 1"',
  NULL, 'Reducción de diámetro', 'Interior/Exterior', 'Reducción 2" a 1" PVC encolar',
  NULL, NULL, NULL, NULL, NULL, 30
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Reducción Multicapa 20mm a 16mm', 'Multicapa', 'Press-Fit', '20mm a 16mm',
  NULL, 'Reducción de diámetro', 'Interior/Exterior', 'Reducción multicapa 20mm a 16mm',
  NULL, NULL, NULL, NULL, NULL, 30
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Brida Hierro Fundido 2" Brida', 'Hierro Fundido', 'Brida', '2"',
  NULL, 'Unión por brida', 'Exterior', 'Brida 2" PN16 hierro fundido',
  NULL, NULL, NULL, NULL, NULL, 25
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Brida Hierro Fundido 3" Brida', 'Hierro Fundido', 'Brida', '3"',
  NULL, 'Unión por brida', 'Exterior', 'Brida 3" PN16 hierro fundido',
  NULL, NULL, NULL, NULL, NULL, 25
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Brida Hierro Fundido 4" Brida', 'Hierro Fundido', 'Brida', '4"',
  NULL, 'Unión por brida', 'Exterior', 'Brida 4" PN16 hierro fundido',
  NULL, NULL, NULL, NULL, NULL, 25
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Brida PVC 2" Brida', 'PVC', 'Brida', '2"',
  NULL, 'Unión por brida', 'Exterior', 'Brida 2" PVC PN10',
  NULL, NULL, NULL, NULL, NULL, 25
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Brida PVC 3" Brida', 'PVC', 'Brida', '3"',
  NULL, 'Unión por brida', 'Exterior', 'Brida 3" PVC PN10',
  NULL, NULL, NULL, NULL, NULL, 25
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Brida Polietileno 2" Brida', 'Polietileno', 'Brida', '2"',
  NULL, 'Unión por brida', 'Exterior', 'Brida 2" polietileno',
  NULL, NULL, NULL, NULL, NULL, 25
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Brida Acero Inoxidable 2" Brida', 'Acero Inoxidable', 'Brida', '2"',
  NULL, 'Unión por brida', 'Exterior', 'Brida 2" inox PN16',
  NULL, NULL, NULL, NULL, NULL, 25
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Portabridas Hierro Fundido 2" Brida', 'Hierro Fundido', 'Brida', '2"',
  NULL, 'Fijación brida', 'Exterior', 'Portabridas 2" hierro fundido',
  NULL, NULL, NULL, NULL, NULL, 26
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Portabridas Hierro Fundido 3" Brida', 'Hierro Fundido', 'Brida', '3"',
  NULL, 'Fijación brida', 'Exterior', 'Portabridas 3" hierro fundido',
  NULL, NULL, NULL, NULL, NULL, 26
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Portabridas PVC 2" Brida', 'PVC', 'Brida', '2"',
  NULL, 'Fijación brida', 'Exterior', 'Portabridas 2" PVC',
  NULL, NULL, NULL, NULL, NULL, 26
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Portabridas PVC 3" Brida', 'PVC', 'Brida', '3"',
  NULL, 'Fijación brida', 'Exterior', 'Portabridas 3" PVC',
  NULL, NULL, NULL, NULL, NULL, 26
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Portabridas Polietileno 2" Brida', 'Polietileno', 'Brida', '2"',
  NULL, 'Fijación brida', 'Exterior', 'Portabridas 2" polietileno',
  NULL, NULL, NULL, NULL, NULL, 26
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Portabridas Acero Inoxidable 2" Brida', 'Acero Inoxidable', 'Brida', '2"',
  NULL, 'Fijación brida', 'Exterior', 'Portabridas 2" acero inoxidable',
  NULL, NULL, NULL, NULL, NULL, 26
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Cruz Acero Inoxidable 1" Rosca H-H', 'Acero Inoxidable', 'Rosca H-H', '1"',
  NULL, NULL, 'Interior/Exterior', 'Cruz 1" acero inoxidable roscada',
  NULL, NULL, NULL, NULL, NULL, 22
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Cruz Acero Inoxidable 2" Rosca H-H', 'Acero Inoxidable', 'Rosca H-H', '2"',
  NULL, NULL, 'Interior/Exterior', 'Cruz 2" acero inoxidable roscada',
  NULL, NULL, NULL, NULL, NULL, 22
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Cruz Multicapa 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '1/2"',
  NULL, NULL, 'Interior/Exterior', 'Cruz 1/2" multicapa press-fit',
  NULL, NULL, NULL, NULL, NULL, 22
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Cruz Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, NULL, 'Interior/Exterior', 'Cruz 3/4" multicapa press-fit',
  NULL, NULL, NULL, NULL, NULL, 22
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Espiga Acero Inoxidable 1" Rosca H', 'Acero Inoxidable', 'Rosca H', '1"',
  NULL, NULL, 'Interior/Exterior', 'Espiga 1" inox rosca hembra',
  NULL, NULL, NULL, NULL, NULL, 23
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Espiga Acero Inoxidable 1/2" Rosca H', 'Acero Inoxidable', 'Rosca H', '1/2"',
  NULL, NULL, 'Interior/Exterior', 'Espiga 1/2" inox rosca hembra',
  NULL, NULL, NULL, NULL, NULL, 23
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Espiga Galvanizado 1" Rosca H', 'Galvanizado', 'Rosca H', '1"',
  NULL, NULL, 'Interior/Exterior', 'Espiga 1" galvanizado rosca hembra',
  NULL, NULL, NULL, NULL, NULL, 23
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Pasamuros Acero Carbono 1" Liso', 'Acero Carbono', 'Liso', '1"',
  NULL, NULL, 'Interior/Exterior', 'Pasamuros liso 1" acero carbono',
  NULL, NULL, NULL, NULL, NULL, 24
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Pasamuros PVC 3/4" Brida x Rosca', 'PVC', 'Brida x Rosca', '3/4"',
  NULL, NULL, 'Interior/Exterior', 'Pasamuros 3/4" PVC brida-rosca',
  NULL, NULL, NULL, NULL, NULL, 24
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Pasamuros PVC 1" Brida x Rosca', 'PVC', 'Brida x Rosca', '1"',
  NULL, NULL, 'Interior/Exterior', 'Pasamuros 1" PVC brida-rosca',
  NULL, NULL, NULL, NULL, NULL, 24
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Pasamuros Acero Inoxidable 1" Rosca M-H', 'Acero Inoxidable', 'Rosca M-H', '1"',
  NULL, NULL, 'Interior/Exterior', 'Pasamuros 1" inox rosca',
  NULL, NULL, NULL, NULL, NULL, 24
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Pasamuros Acero Inoxidable 2" Rosca M-H', 'Acero Inoxidable', 'Rosca M-H', '2"',
  NULL, NULL, 'Interior/Exterior', 'Pasamuros 2" inox rosca',
  NULL, NULL, NULL, NULL, NULL, 24
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tapón Latón 1/2" Rosca M', 'Latón', 'Rosca M', '1/2"',
  NULL, 'Cierre de extremo', 'Interior/Exterior', 'Tapón rosca 1/2" latón',
  NULL, NULL, NULL, NULL, NULL, 20
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tapón Latón 3/4" Rosca M', 'Latón', 'Rosca M', '3/4"',
  NULL, 'Cierre de extremo', 'Interior/Exterior', 'Tapón rosca 3/4" latón',
  NULL, NULL, NULL, NULL, NULL, 20
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tapón Latón 1" Rosca M', 'Latón', 'Rosca M', '1"',
  NULL, 'Cierre de extremo', 'Interior/Exterior', 'Tapón rosca 1" latón',
  NULL, NULL, NULL, NULL, NULL, 20
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tapón Galvanizado 1/2" Rosca M', 'Galvanizado', 'Rosca M', '1/2"',
  NULL, 'Cierre de extremo', 'Interior/Exterior', 'Tapón rosca 1/2" galvanizado',
  NULL, NULL, NULL, NULL, NULL, 20
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tapón Galvanizado 3/4" Rosca M', 'Galvanizado', 'Rosca M', '3/4"',
  NULL, 'Cierre de extremo', 'Interior/Exterior', 'Tapón rosca 3/4" galvanizado',
  NULL, NULL, NULL, NULL, NULL, 20
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tapón PVC 1" Rosca M', 'PVC', 'Rosca M', '1"',
  NULL, 'Cierre de extremo', 'Interior/Exterior', 'Tapón rosca 1" PVC',
  NULL, NULL, NULL, NULL, NULL, 20
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tapón PVC 1" Encolar', 'PVC', 'Encolar', '1"',
  NULL, 'Cierre de extremo', 'Interior/Exterior', 'Tapón encolar 1" PVC',
  NULL, NULL, NULL, NULL, NULL, 20
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tapón Multicapa 1/2" Rosca M', 'Multicapa', 'Rosca M', '1/2"',
  NULL, 'Cierre de extremo', 'Interior/Exterior', 'Tapón multicapa 1/2"',
  NULL, NULL, NULL, NULL, NULL, 20
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tapón Multicapa 3/4" Press-Fit', 'Multicapa', 'Press-Fit', '3/4"',
  NULL, 'Cierre de extremo', 'Interior/Exterior', 'Tapón multicapa press-fit 3/4"',
  NULL, NULL, NULL, NULL, NULL, 20
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Casquillo Latón 1/2" Rosca M', 'Latón', 'Rosca M', '1/2"',
  NULL, 'Reducción o unión', 'Interior/Exterior', 'Casquillo roscado 1/2" latón',
  NULL, NULL, NULL, NULL, NULL, 21
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Casquillo Latón 3/4" Rosca M', 'Latón', 'Rosca M', '3/4"',
  NULL, 'Reducción o unión', 'Interior/Exterior', 'Casquillo roscado 3/4" latón',
  NULL, NULL, NULL, NULL, NULL, 21
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Casquillo Latón 1" Rosca M', 'Latón', 'Rosca M', '1"',
  NULL, 'Reducción o unión', 'Interior/Exterior', 'Casquillo roscado 1" latón',
  NULL, NULL, NULL, NULL, NULL, 21
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Casquillo PVC 1" Encolar', 'PVC', 'Encolar', '1"',
  NULL, 'Reducción o unión', 'Interior/Exterior', 'Casquillo encolar 1" PVC',
  NULL, NULL, NULL, NULL, NULL, 21
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Casquillo Galvanizado 3/4" Rosca M', 'Galvanizado', 'Rosca M', '3/4"',
  NULL, 'Reducción o unión', 'Interior/Exterior', 'Casquillo galvanizado 3/4"',
  NULL, NULL, NULL, NULL, NULL, 21
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Casquillo Acero Inoxidable 1/2" Rosca M', 'Acero Inoxidable', 'Rosca M', '1/2"',
  NULL, 'Reducción o unión', 'Interior/Exterior', 'Casquillo inox 1/2" roscado',
  NULL, NULL, NULL, NULL, NULL, 21
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Casquillo Multicapa 1/2" Press-Fit', 'Multicapa', 'Press-Fit', '1/2"',
  NULL, 'Reducción o unión', 'Interior/Exterior', 'Casquillo multicapa 1/2"',
  NULL, NULL, NULL, NULL, NULL, 21
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Plato ducha Resina 80x80cm', 'Resina', 'Horizontal', '80x80cm',
  NULL, 'Evacuación ducha', 'Interior', 'Plato ducha resina 80x80cm antideslizante',
  NULL, NULL, NULL, NULL, NULL, 47
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Plato ducha Resina 100x70cm', 'Resina', 'Horizontal', '100x70cm',
  NULL, 'Evacuación ducha', 'Interior', 'Plato ducha resina 100x70cm extraplano',
  NULL, NULL, NULL, NULL, NULL, 47
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Plato ducha Cerámica 70x70cm', 'Cerámica', 'Horizontal', '70x70cm',
  NULL, 'Evacuación ducha', 'Interior', 'Plato ducha cerámica 70x70cm clásico',
  NULL, NULL, NULL, NULL, NULL, 47
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Plato ducha Cerámica 100x80cm', 'Cerámica', 'Horizontal', '100x80cm',
  NULL, 'Evacuación ducha', 'Interior', 'Plato ducha cerámica 100x80cm blanco',
  NULL, NULL, NULL, NULL, NULL, 47
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Bañera Acrílico 160x70cm', 'Acrílico', 'Horizontal', '160x70cm',
  NULL, 'Baño', 'Interior', 'Bañera acrílica 160x70cm blanca',
  NULL, NULL, NULL, NULL, NULL, 48
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Bañera Acrílico 170x75cm', 'Acrílico', 'Horizontal', '170x75cm',
  NULL, 'Baño', 'Interior', 'Bañera acrílica 170x75cm antideslizante',
  NULL, NULL, NULL, NULL, NULL, 48
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Bañera Hierro Fundido 150x70cm', 'Hierro Fundido', 'Horizontal', '150x70cm',
  NULL, 'Baño', 'Interior', 'Bañera fundición 150x70cm esmaltada',
  NULL, NULL, NULL, NULL, NULL, 48
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Inodoro Cerámica Universal Suelo', 'Cerámica', 'Suelo', 'Universal',
  NULL, 'Sanitario', 'Interior', 'Inodoro tanque bajo salida dual',
  NULL, NULL, NULL, NULL, NULL, 49
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Inodoro Cerámica Universal Suelo', 'Cerámica', 'Suelo', 'Universal',
  NULL, 'Sanitario', 'Interior', 'Inodoro compacto con tapa amortiguada',
  NULL, NULL, NULL, NULL, NULL, 49
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Inodoro Cerámica Universal Suspendido', 'Cerámica', 'Suspendido', 'Universal',
  NULL, 'Sanitario', 'Interior', 'Inodoro suspendido sin brida',
  NULL, NULL, NULL, NULL, NULL, 49
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Lavabo Cerámica 45cm Mural', 'Cerámica', 'Mural', '45cm',
  NULL, 'Sanitario', 'Interior', 'Lavabo mural cerámico 45cm',
  NULL, NULL, NULL, NULL, NULL, 50
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Lavabo Cerámica 60cm Encimera', 'Cerámica', 'Encimera', '60cm',
  NULL, 'Sanitario', 'Interior', 'Lavabo sobre encimera cerámico 60cm',
  NULL, NULL, NULL, NULL, NULL, 50
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Lavabo Cerámica 55cm Pedestal', 'Cerámica', 'Pedestal', '55cm',
  NULL, 'Sanitario', 'Interior', 'Lavabo con pedestal cerámico 55cm',
  NULL, NULL, NULL, NULL, NULL, 50
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Ósmosis Plástico 5 etapas', 'Plástico', 'Manguera', '5 etapas',
  NULL, 'Purificación de agua', 'Interior', 'Equipo ósmosis 5 etapas doméstico',
  NULL, NULL, NULL, NULL, NULL, 51
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Ósmosis Plástico 4 etapas', 'Plástico', 'Manguera', '4 etapas',
  NULL, 'Purificación de agua', 'Interior', 'Ósmosis inversa compacta 4 etapas',
  NULL, NULL, NULL, NULL, NULL, 51
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Ósmosis Plástico 5 etapas', 'Plástico', 'Manguera', '5 etapas',
  NULL, 'Purificación de agua', 'Interior', 'Ósmosis con bomba 5 etapas',
  NULL, NULL, NULL, NULL, NULL, 51
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Recambio osmosis Plástico 10"', 'Plástico', 'Cartucho', '10"',
  NULL, 'Mantenimiento', 'Interior', 'Cartucho carbón activo 10"',
  NULL, NULL, NULL, NULL, NULL, 52
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Recambio osmosis Plástico 10"', 'Plástico', 'Cartucho', '10"',
  NULL, 'Mantenimiento', 'Interior', 'Cartucho sedimentos 10"',
  NULL, NULL, NULL, NULL, NULL, 52
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Recambio osmosis Plástico 10"', 'Plástico', 'Cartucho', '10"',
  NULL, 'Mantenimiento', 'Interior', 'Membrana ósmosis 50GPD',
  NULL, NULL, NULL, NULL, NULL, 52
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Recambio osmosis Plástico Universal', 'Plástico', 'Grifo', 'Universal',
  NULL, 'Mantenimiento', 'Interior', 'Grifo cromado ósmosis inversa',
  NULL, NULL, NULL, NULL, NULL, 52
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Mampara Vidrio Templado 100x190cm Corredera', 'Vidrio Templado', 'Corredera', '100x190cm',
  NULL, 'Protección ducha', 'Interior', 'Mampara corredera 100x190cm frontal',
  NULL, NULL, NULL, NULL, NULL, 53
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Mampara Vidrio Templado 120x190cm Corredera', 'Vidrio Templado', 'Corredera', '120x190cm',
  NULL, 'Protección ducha', 'Interior', 'Mampara corredera 120x190cm frontal',
  NULL, NULL, NULL, NULL, NULL, 53
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Mampara Vidrio Templado 80x190cm Abatible', 'Vidrio Templado', 'Abatible', '80x190cm',
  NULL, 'Protección ducha', 'Interior', 'Mampara abatible 80x190cm lateral',
  NULL, NULL, NULL, NULL, NULL, 53
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Mampara Vidrio Templado 70x190cm Fija', 'Vidrio Templado', 'Fija', '70x190cm',
  NULL, 'Protección ducha', 'Interior', 'Mampara fija 70x190cm frontal',
  NULL, NULL, NULL, NULL, NULL, 53
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conexión inodoro PVC 110mm', 'PVC', 'Presión', '110mm',
  NULL, 'Conexión sanitaria', 'Interior', 'Codo conexión WC 110mm PVC',
  NULL, NULL, NULL, NULL, NULL, 43
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conexión inodoro PVC 110mm', 'PVC', 'Presión', '110mm',
  NULL, 'Conexión sanitaria', 'Interior', 'Manguito excéntrico inodoro 110mm',
  NULL, NULL, NULL, NULL, NULL, 43
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conexión inodoro PVC 110mm', 'PVC', 'Presión', '110mm',
  NULL, 'Conexión sanitaria', 'Interior', 'Manguito flexible inodoro 110mm hasta 250mm',
  NULL, NULL, NULL, NULL, NULL, 43
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Conexión inodoro PVC 110mm', 'PVC', 'Presión', '110mm',
  NULL, 'Conexión sanitaria', 'Interior', 'Manguito recto conexión WC 110mm',
  NULL, NULL, NULL, NULL, NULL, 43
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Canaleta ducha Acero Inoxidable 60cm', 'Acero Inoxidable', 'Horizontal', '60cm',
  NULL, 'Evacuación lineal', 'Interior', 'Canaleta ducha 60cm rejilla inox cuadrada',
  NULL, NULL, NULL, NULL, NULL, 44
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Canaleta ducha Acero Inoxidable 80cm', 'Acero Inoxidable', 'Horizontal', '80cm',
  NULL, 'Evacuación lineal', 'Interior', 'Canaleta ducha 80cm rejilla decorativa',
  NULL, NULL, NULL, NULL, NULL, 44
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Canaleta ducha Acero Inoxidable 100cm', 'Acero Inoxidable', 'Horizontal', '100cm',
  NULL, 'Evacuación lineal', 'Interior', 'Canaleta ducha 100cm diseño oculto',
  NULL, NULL, NULL, NULL, NULL, 44
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Canaleta ducha PVC 70cm', 'PVC', 'Horizontal', '70cm',
  NULL, 'Evacuación lineal', 'Interior', 'Canaleta ducha 70cm rejilla inox básica',
  NULL, NULL, NULL, NULL, NULL, 44
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Canaleta ducha PVC 90cm', 'PVC', 'Horizontal', '90cm',
  NULL, 'Evacuación lineal', 'Interior', 'Canaleta ducha 90cm rejilla ranurada',
  NULL, NULL, NULL, NULL, NULL, 44
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Arqueta PVC 300mm', 'PVC', 'Presión', '300mm',
  NULL, 'Inspección/saneamiento', 'Exterior', 'Arqueta sifónica PVC 300mm tapa roscada',
  NULL, NULL, NULL, NULL, NULL, 45
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Arqueta PVC 400mm', 'PVC', 'Presión', '400mm',
  NULL, 'Inspección/saneamiento', 'Exterior', 'Arqueta PVC 400mm con rejilla y sifón',
  NULL, NULL, NULL, NULL, NULL, 45
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Arqueta Polipropileno 400mm', 'Polipropileno', 'Presión', '400mm',
  NULL, 'Inspección/saneamiento', 'Exterior', 'Arqueta prefabricada PP 400mm',
  NULL, NULL, NULL, NULL, NULL, 45
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Arqueta Hormigón 400mm', 'Hormigón', 'Brida', '400mm',
  NULL, 'Inspección/saneamiento', 'Exterior', 'Arqueta hormigón prefabricado 400mm',
  NULL, NULL, NULL, NULL, NULL, 45
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Desagüe PVC 40mm', 'PVC', 'Presión', '40mm',
  NULL, 'Evacuación', 'Interior', 'Desagüe fregadero 40mm curvo',
  NULL, NULL, NULL, NULL, NULL, 46
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Desagüe PVC 50mm', 'PVC', 'Presión', '50mm',
  NULL, 'Evacuación', 'Interior', 'Desagüe lavabo 50mm recto',
  NULL, NULL, NULL, NULL, NULL, 46
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Desagüe PVC 32mm', 'PVC', 'Presión', '32mm',
  NULL, 'Evacuación', 'Interior', 'Desagüe bidé 32mm sifónico',
  NULL, NULL, NULL, NULL, NULL, 46
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Desagüe Cromo 1 1/4"', 'Cromo', 'Rosca', '1 1/4"',
  NULL, 'Evacuación', 'Interior', 'Desagüe lavabo click-clack 1 1/4"',
  NULL, NULL, NULL, NULL, NULL, 46
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Desagüe Cromo 1 1/2"', 'Cromo', 'Rosca', '1 1/2"',
  NULL, 'Evacuación', 'Interior', 'Desagüe bañera 1 1/2" automático',
  NULL, NULL, NULL, NULL, NULL, 46
);

INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Muelle Acero Inoxidable 5m', 'Acero Inoxidable', 'Rosca', '5m',
  NULL, 'Desatasco manual', 'Interior', 'Muelle inoxidable 5m con mango ergonómico',
  NULL, NULL, NULL, NULL, NULL, 39
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Muelle Acero Inoxidable 10m', 'Acero Inoxidable', 'Rosca', '10m',
  NULL, 'Desatasco manual', 'Interior', 'Muelle inoxidable 10m profesional',
  NULL, NULL, NULL, NULL, NULL, 39
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Muelle Acero Galvanizado 6m', 'Acero Galvanizado', 'Taladro', '6m',
  NULL, 'Desatasco manual', 'Interior', 'Muelle para taladro 6m',
  NULL, NULL, NULL, NULL, NULL, 39
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Sifón PVC 1 1/2"', 'PVC', 'Rosca', '1 1/2"',
  NULL, 'Evacuación', 'Interior', 'Sifón extraplano ducha 1 1/2"',
  NULL, NULL, NULL, NULL, NULL, 40
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Sifón PVC 1 1/2"', 'PVC', 'Rosca', '1 1/2"',
  NULL, 'Evacuación', 'Interior', 'Sifón extendible lavadora 1 1/2"',
  NULL, NULL, NULL, NULL, NULL, 40
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Sifón PVC 1 1/2"', 'PVC', 'Rosca', '1 1/2"',
  NULL, 'Evacuación', 'Interior', 'Sifón doble fregadero con válvula antiolor 1 1/2"',
  NULL, NULL, NULL, NULL, NULL, 40
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Sifón Cromo 1 1/4"', 'Cromo', 'Rosca', '1 1/4"',
  NULL, 'Evacuación', 'Interior', 'Sifón cromado lavabo decorativo 1 1/4"',
  NULL, NULL, NULL, NULL, NULL, 40
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Sumidero Acero Inoxidable 150mm', 'Acero Inoxidable', 'Canaleta', '150mm',
  NULL, 'Drenaje superficial', 'Interior/Exterior', 'Sumidero canaleta acero inoxidable 150mm',
  NULL, NULL, NULL, NULL, NULL, 41
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Sumidero PVC 120mm', 'PVC', 'Canaleta', '120mm',
  NULL, 'Drenaje superficial', 'Interior/Exterior', 'Sumidero canaleta baño PVC 120mm con rejilla',
  NULL, NULL, NULL, NULL, NULL, 41
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Sumidero PVC 110mm', 'PVC', 'Vertical', '110mm',
  NULL, 'Drenaje superficial', 'Interior/Exterior', 'Sumidero vertical con cesta antiolor 110mm',
  NULL, NULL, NULL, NULL, NULL, 41
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tapa PVC 200mm', 'PVC', 'Presión', '200mm',
  NULL, 'Cierre o acceso', 'Exterior', 'Tapa rectangular PVC reforzada 200mm',
  NULL, NULL, NULL, NULL, NULL, 42
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tapa Hierro Fundido 400mm', 'Hierro Fundido', 'Brida', '400mm',
  NULL, 'Cierre o acceso', 'Exterior', 'Tapa cuadrada fundición 400mm',
  NULL, NULL, NULL, NULL, NULL, 42
);
INSERT INTO public.pieza (
  nombre, material, conexion, medida_nominal,
  tipo_control, uso, instalacion, dimensiones,
  tipo_termo, capacidad, alimentacion, potencia, caudal, tipo_id
) VALUES (
  'Tapa PVC 300mm', 'PVC', 'Presión', '300mm',
  NULL, 'Cierre o acceso', 'Exterior', 'Tapa reforzada 300mm suelo técnico',
  NULL, NULL, NULL, NULL, NULL, 42
);
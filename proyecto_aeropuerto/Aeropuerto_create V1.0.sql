-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-05-22 22:19:25.959




-- tables
-- Table: t10_user
CREATE TABLE t10_user (
    user_id varchar  NOT NULL,
    description varchar  NOT NULL,
    "user" varchar  NOT NULL,
    password varchar  NOT NULL,
    role<1,2> integer  NOT NULL,
    notes text  NOT NULL,
    CONSTRAINT t10_user_pk PRIMARY KEY (user_id)
) ;




-- Table: t11_user_fuels_plane
CREATE TABLE t11_user_fuels_plane (
    user_id varchar  NOT NULL,
    quantity float  NOT NULL,
    fueling_time datetime  NOT NULL,
    user_id varchar  NOT NULL,
    landing_bay_id varchar  NOT NULL,
    fuel_type_id varchar  NOT NULL,
    flight_id varchar  NOT NULL,
    airline_id varchar  NOT NULL,
    CONSTRAINT t11_user_fuels_plane_pk PRIMARY KEY (user_id)
) ;




-- Table: t12_telecomunication
CREATE TABLE t12_telecomunication (
    telecomunication_id varchar  NOT NULL,
    nombre varchar  NOT NULL,
    costo float  NOT NULL,
    CONSTRAINT t12_telecomunication_pk PRIMARY KEY (telecomunication_id)
) ;




-- Table: t13_flight
CREATE TABLE t13_flight (
    flight_id varchar  NOT NULL,
    notes text  NOT NULL,
    departure_time datetime  NOT NULL,
    landing_time datetime  NOT NULL,
    airplane_id varchar  NOT NULL,
    status varchar  NOT NULL,
    CONSTRAINT t13_flight_pk PRIMARY KEY (flight_id)
) ;




-- Table: t15_fuel_cost
CREATE TABLE t15_fuel_cost (
    fuel_id varchar  NOT NULL,
    airplane_size varchar  NOT NULL,
    airline_Id varchar  NOT NULL,
    fuel_type_id varchar  NOT NULL,
    cost float  NOT NULL,
    CONSTRAINT t15_fuel_cost_pk PRIMARY KEY (fuel_id)
) ;




-- Table: t16_track_cost
CREATE TABLE t16_track_cost (
    id_precio_pista varchar  NOT NULL,
    tamano_avion_id_tamano_avion varchar  NOT NULL,
    plane_mode_id varchar  NOT NULL,
    track_id varchar  NOT NULL,
    aerolinea_id_aerolinea varchar  NOT NULL,
    cost float  NOT NULL,
    CONSTRAINT t16_track_cost_pk PRIMARY KEY (id_precio_pista)
) ;




-- Table: t1_airline
CREATE TABLE t1_airline (
    airline_id varchar  NOT NULL,
    description varchar  NOT NULL,
    phone_number varchar  NOT NULL,
    email varchar  NOT NULL,
    adress varchar  NOT NULL,
    CONSTRAINT t1_airline_pk PRIMARY KEY (airline_id)
) ;




-- Table: t2_airplane_mode
CREATE TABLE t2_airplane_mode (
    id_airplane_mode varchar  NOT NULL,
    description varchar  NOT NULL,
    notes text  NOT NULL,
    CONSTRAINT t2_airplane_mode_pk PRIMARY KEY (id_airplane_mode)
) ;




-- Table: t3_airplane_size
CREATE TABLE t3_airplane_size (
    id_airplane_size_id varchar  NOT NULL,
    description varchar  NOT NULL,
    notes text  NOT NULL,
    CONSTRAINT t3_airplane_size_pk PRIMARY KEY (id_airplane_size_id)
) ;




-- Table: t4_airplane
CREATE TABLE t4_airplane (
    airplane_id varchar  NOT NULL,
    description varchar  NOT NULL,
    plane_size_id varchar  NOT NULL,
    notes text  NOT NULL,
    airpline_mode_id varchar  NOT NULL,
    airline_id varchar  NOT NULL,
    CONSTRAINT t4_airplane_pk PRIMARY KEY (airplane_id)
) ;




-- Table: t5_landing_bay
CREATE TABLE t5_landing_bay (
    landing_bay_id varchar  NOT NULL,
    description varchar  NOT NULL,
    CONSTRAINT t5_landing_bay_pk PRIMARY KEY (landing_bay_id)
) ;




-- Table: t6_totalizacion
CREATE TABLE t6_totalizacion (
    id_totalizacion varchar  NOT NULL,
    aerolinea_id_aerolinea varchar  NOT NULL,
    fecha date  NOT NULL,
    total float  NOT NULL,
    CONSTRAINT t6_totalizacion_pk PRIMARY KEY (id_totalizacion)
) ;




-- Table: t7_fuel_type
CREATE TABLE t7_fuel_type (
    fuel_type varchar  NOT NULL,
    description varchar  NOT NULL,
    CONSTRAINT t7_fuel_type_pk PRIMARY KEY (fuel_type)
) ;




-- Table: t8_track
CREATE TABLE t8_track (
    track_id varchar  NOT NULL,
    track_name varchar  NOT NULL,
    CONSTRAINT t8_track_pk PRIMARY KEY (track_id)
) ;




-- Table: t9_detail
CREATE TABLE t9_detail (
    detail_id varchar  NOT NULL,
    landing_time datetime  NOT NULL,
    comunication_time datetime  NOT NULL,
    track_id varchar  NOT NULL,
    flight_id varchar  NOT NULL,
    id_aerolinea varchar  NOT NULL,
    modalidad_avion_id_modalidad_avion varchar  NOT NULL,
    tamano_avion_id_tamano_avion varchar  NOT NULL,
    CONSTRAINT t9_detail_pk PRIMARY KEY (detail_id)
) ;








-- foreign keys
-- Reference:  avion_aerolinea (table: t4_airplane)


ALTER TABLE t4_airplane ADD CONSTRAINT avion_aerolinea 
    FOREIGN KEY ()
    REFERENCES t1_airline (airline_id)
    ;

-- Reference:  avion_modalidad_avion (table: t4_airplane)


ALTER TABLE t4_airplane ADD CONSTRAINT avion_modalidad_avion 
    FOREIGN KEY (airpline_mode_id)
    REFERENCES t2_airplane_mode (id_airplane_mode)
    ;

-- Reference:  avion_tamaño (table: t4_airplane)


ALTER TABLE t4_airplane ADD CONSTRAINT avion_tamaño 
    FOREIGN KEY (plane_size_id)
    REFERENCES t3_airplane_size (id_airplane_size_id)
    ;

-- Reference:  detalle_modalidad_avion (table: t9_detail)


ALTER TABLE t9_detail ADD CONSTRAINT detalle_modalidad_avion 
    FOREIGN KEY (modalidad_avion_id_modalidad_avion)
    REFERENCES t2_airplane_mode (id_airplane_mode)
    ;

-- Reference:  detalle_tamano_avion (table: t9_detail)


ALTER TABLE t9_detail ADD CONSTRAINT detalle_tamano_avion 
    FOREIGN KEY (tamano_avion_id_tamano_avion)
    REFERENCES t3_airplane_size (id_airplane_size_id)
    ;

-- Reference:  detalle_txt_aerolinea (table: t9_detail)


ALTER TABLE t9_detail ADD CONSTRAINT detalle_txt_aerolinea 
    FOREIGN KEY ()
    REFERENCES t1_airline (airline_id)
    ;

-- Reference:  detalle_txt_pista (table: t9_detail)


ALTER TABLE t9_detail ADD CONSTRAINT detalle_txt_pista 
    FOREIGN KEY (track_id)
    REFERENCES t8_track (track_id)
    ;

-- Reference:  detalle_txt_vuelo_registrado (table: t9_detail)


ALTER TABLE t9_detail ADD CONSTRAINT detalle_txt_vuelo_registrado 
    FOREIGN KEY (flight_id)
    REFERENCES t13_flight (flight_id)
    ;

-- Reference:  persona_tanquea_avion_bahia (table: t11_user_fuels_plane)


ALTER TABLE t11_user_fuels_plane ADD CONSTRAINT persona_tanquea_avion_bahia 
    FOREIGN KEY (landing_bay_id)
    REFERENCES t5_landing_bay (landing_bay_id)
    ;

-- Reference:  persona_tanquea_avion_persona (table: t11_user_fuels_plane)


ALTER TABLE t11_user_fuels_plane ADD CONSTRAINT persona_tanquea_avion_persona 
    FOREIGN KEY (user_id)
    REFERENCES t10_user (user_id)
    ;

-- Reference:  persona_tanquea_avion_tipo_combustible (table: t11_user_fuels_plane)


ALTER TABLE t11_user_fuels_plane ADD CONSTRAINT persona_tanquea_avion_tipo_combustible 
    FOREIGN KEY (fuel_type_id)
    REFERENCES t7_fuel_type (fuel_type)
    ;

-- Reference:  precio_combustible_aerolinea (table: t15_fuel_cost)


ALTER TABLE t15_fuel_cost ADD CONSTRAINT precio_combustible_aerolinea 
    FOREIGN KEY (fuel_type_id)
    REFERENCES t1_airline (airline_id)
    ;

-- Reference:  precio_combustible_tamano_avion (table: t15_fuel_cost)


ALTER TABLE t15_fuel_cost ADD CONSTRAINT precio_combustible_tamano_avion 
    FOREIGN KEY (airline_Id)
    REFERENCES t3_airplane_size (id_airplane_size_id)
    ;

-- Reference:  precio_combustible_tipo_combustible (table: t15_fuel_cost)


ALTER TABLE t15_fuel_cost ADD CONSTRAINT precio_combustible_tipo_combustible 
    FOREIGN KEY ()
    REFERENCES t7_fuel_type (fuel_type)
    ;

-- Reference:  precio_pista_aerolinea (table: t16_track_cost)


ALTER TABLE t16_track_cost ADD CONSTRAINT precio_pista_aerolinea 
    FOREIGN KEY (aerolinea_id_aerolinea)
    REFERENCES t1_airline (airline_id)
    ;

-- Reference:  precio_pista_modalidad_avion (table: t16_track_cost)


ALTER TABLE t16_track_cost ADD CONSTRAINT precio_pista_modalidad_avion 
    FOREIGN KEY (plane_mode_id)
    REFERENCES t2_airplane_mode (id_airplane_mode)
    ;

-- Reference:  precio_pista_pista (table: t16_track_cost)


ALTER TABLE t16_track_cost ADD CONSTRAINT precio_pista_pista 
    FOREIGN KEY (track_id)
    REFERENCES t8_track (track_id)
    ;

-- Reference:  precio_pista_tamano_avion (table: t16_track_cost)


ALTER TABLE t16_track_cost ADD CONSTRAINT precio_pista_tamano_avion 
    FOREIGN KEY (tamano_avion_id_tamano_avion)
    REFERENCES t3_airplane_size (id_airplane_size_id)
    ;

-- Reference:  totalizacion_aerolinea (table: t6_totalizacion)


ALTER TABLE t6_totalizacion ADD CONSTRAINT totalizacion_aerolinea 
    FOREIGN KEY (aerolinea_id_aerolinea)
    REFERENCES t1_airline (airline_id)
    ;

-- Reference:  usuario_tanquea_avion_aerolinea (table: t11_user_fuels_plane)


ALTER TABLE t11_user_fuels_plane ADD CONSTRAINT usuario_tanquea_avion_aerolinea 
    FOREIGN KEY (airline_id)
    REFERENCES t1_airline (airline_id)
    ;

-- Reference:  usuario_tanquea_avion_vuelo_registrado (table: t11_user_fuels_plane)


ALTER TABLE t11_user_fuels_plane ADD CONSTRAINT usuario_tanquea_avion_vuelo_registrado 
    FOREIGN KEY (flight_id)
    REFERENCES t13_flight (flight_id)
    ;

-- Reference:  vuelos_registrados_avion (table: t13_flight)


ALTER TABLE t13_flight ADD CONSTRAINT vuelos_registrados_avion 
    FOREIGN KEY (airplane_id)
    REFERENCES t4_airplane (airplane_id)
    ;





-- End of file.


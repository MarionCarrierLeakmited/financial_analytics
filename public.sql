-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION leakmited;

COMMENT ON SCHEMA public IS 'standard public schema';

-- DROP TYPE public."accessory_device_meter_unit_type";

CREATE TYPE public."accessory_device_meter_unit_type" AS ENUM (
	'm3/h',
	'm3');

-- DROP TYPE public."accessory_type";

CREATE TYPE public."accessory_type" AS ENUM (
	'Vanne',
	'BaC',
	'Poteau_incendie',
	'Bouche_incendie',
	'Point_eau',
	'Reservoir',
	'Reducteur_pression',
	'Stabilisateur',
	'Ventouse',
	'Purge',
	'Other_pro',
	'Pompage',
	'Surpresseur',
	'Compteur',
	'Mesure',
	'Unknown',
	'Clapet',
	'Source',
	'COMPO',
	'Compteur_secto',
	'Regulateur_pression',
	'Regulateur_debit',
	'Usine_AEP',
	'Reserve_incendie',
	'Autres_protection');

-- DROP TYPE public."aep_accessory_type";

CREATE TYPE public."aep_accessory_type" AS ENUM (
	'Unknown',
	'Other_pro',
	'Usine_aep',
	'Reserve_incendie',
	'Regard',
	'Compteur_de_debit',
	'Clapet',
	'Ventouse',
	'Purge',
	'Poteau_incendie',
	'Bouche_incendie',
	'Surpresseur',
	'Pompage',
	'Reducteur_pression',
	'Stabilisateur',
	'Point_eau',
	'Reservoir',
	'Mesure',
	'Compteur',
	'Vanne',
	'Bac');

-- DROP TYPE public."authProvider";

CREATE TYPE public."authProvider" AS ENUM (
	'cognito',
	'zitadel');

-- DROP TYPE public.box2d;

CREATE TYPE public.box2d (
	INPUT = box2d_in,
	OUTPUT = box2d_out,
	INTERNALLENGTH = 65,
	ALIGNMENT = 4,
	STORAGE = plain,
	CATEGORY = U,
	DELIMITER = ',');

COMMENT ON TYPE public.box2d IS 'postgis type: A 2-dimensional bounding box. Used to describe the 2D extent of a geometry or collection of geometries.';
-- DROP TYPE public.box2df;

CREATE TYPE public.box2df (
	INPUT = box2df_in,
	OUTPUT = box2df_out,
	INTERNALLENGTH = 16,
	ALIGNMENT = 8,
	STORAGE = plain,
	CATEGORY = U,
	DELIMITER = ',');

-- DROP TYPE public.box3d;

CREATE TYPE public.box3d (
	INPUT = box3d_in,
	OUTPUT = box3d_out,
	INTERNALLENGTH = 52,
	ALIGNMENT = 8,
	STORAGE = plain,
	CATEGORY = U,
	DELIMITER = ',');

COMMENT ON TYPE public.box3d IS 'postgis type: A 3-dimensional bounding box. Used to describe the 3D extent of a geometry or collection of geometries.';
-- DROP TYPE public."building_type";

CREATE TYPE public."building_type" AS ENUM (
	'hospital',
	'industrial',
	'school',
	'commercial',
	'office',
	'collective_housing',
	'individual_housing',
	'other_building',
	'other');

-- DROP TYPE public."campaign_event_type";

CREATE TYPE public."campaign_event_type" AS ENUM (
	'logger',
	'leak',
	'sound',
	'comment');

-- DROP TYPE public.gbtreekey16;

CREATE TYPE public.gbtreekey16 (
	INPUT = gbtreekey16_in,
	OUTPUT = gbtreekey16_out,
	INTERNALLENGTH = 16,
	ALIGNMENT = 4,
	STORAGE = plain,
	CATEGORY = U,
	DELIMITER = ',');

-- DROP TYPE public.gbtreekey32;

CREATE TYPE public.gbtreekey32 (
	INPUT = gbtreekey32_in,
	OUTPUT = gbtreekey32_out,
	INTERNALLENGTH = 32,
	ALIGNMENT = 4,
	STORAGE = plain,
	CATEGORY = U,
	DELIMITER = ',');

-- DROP TYPE public.gbtreekey4;

CREATE TYPE public.gbtreekey4 (
	INPUT = gbtreekey4_in,
	OUTPUT = gbtreekey4_out,
	INTERNALLENGTH = 4,
	ALIGNMENT = 4,
	STORAGE = plain,
	CATEGORY = U,
	DELIMITER = ',');

-- DROP TYPE public.gbtreekey8;

CREATE TYPE public.gbtreekey8 (
	INPUT = gbtreekey8_in,
	OUTPUT = gbtreekey8_out,
	INTERNALLENGTH = 8,
	ALIGNMENT = 4,
	STORAGE = plain,
	CATEGORY = U,
	DELIMITER = ',');

-- DROP TYPE public.gbtreekey_var;

CREATE TYPE public.gbtreekey_var (
	INPUT = gbtreekey_var_in,
	OUTPUT = gbtreekey_var_out,
	ALIGNMENT = 4,
	STORAGE = any,
	CATEGORY = U,
	DELIMITER = ',');

-- DROP TYPE public.geography;

CREATE TYPE public.geography (
	INPUT = geography_in,
	OUTPUT = geography_out,
	RECEIVE = geography_recv,
	SEND = geography_send,
	TYPMOD_IN = geography_typmod_in,
	TYPMOD_OUT = geography_typmod_out,
	ANALYZE = geography_analyze,
	ALIGNMENT = 8,
	STORAGE = compressed,
	CATEGORY = U,
	DELIMITER = ':');

COMMENT ON TYPE public.geography IS 'postgis type: The type representing spatial features with geodetic (ellipsoidal) coordinate systems.';
-- DROP TYPE public.geometry;

CREATE TYPE public.geometry (
	INPUT = geometry_in,
	OUTPUT = geometry_out,
	RECEIVE = geometry_recv,
	SEND = geometry_send,
	TYPMOD_IN = geometry_typmod_in,
	TYPMOD_OUT = geometry_typmod_out,
	ANALYZE = geometry_analyze,
	ALIGNMENT = 8,
	STORAGE = compressed,
	CATEGORY = U,
	DELIMITER = ':');

COMMENT ON TYPE public.geometry IS 'postgis type: The type representing spatial features with planar coordinate systems.';
-- DROP TYPE public.gidx;

CREATE TYPE public.gidx (
	INPUT = gidx_in,
	OUTPUT = gidx_out,
	ALIGNMENT = 8,
	STORAGE = plain,
	CATEGORY = U,
	DELIMITER = ',');

-- DROP TYPE public.gtrgm;

CREATE TYPE public.gtrgm (
	INPUT = gtrgm_in,
	OUTPUT = gtrgm_out,
	ALIGNMENT = 4,
	STORAGE = plain,
	CATEGORY = U,
	DELIMITER = ',');

-- DROP DOMAIN public."language_tag_type";

CREATE DOMAIN public."language_tag_type" AS text
	COLLATE "default"
	CONSTRAINT valid_language_tag CHECK (VALUE ~ '^[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*$'::text);
-- DROP TYPE public."logger_event_type";

CREATE TYPE public."logger_event_type" AS ENUM (
	'installed',
	'collected');

-- DROP TYPE public."lpi";

CREATE TYPE public."lpi" AS ENUM (
	'lpi1',
	'lpi2',
	'lpi3',
	'lpi4');

-- DROP TYPE public."nt_opportunity_type";

CREATE TYPE public."nt_opportunity_type" AS ENUM (
	'roadwork');

-- DROP TYPE public."numerical_twin_scenario_status";

CREATE TYPE public."numerical_twin_scenario_status" AS ENUM (
	'created',
	'deleted');

-- DROP TYPE public."numerical_twin_scenario_type";

CREATE TYPE public."numerical_twin_scenario_type" AS ENUM (
	'leakmited',
	'client');

-- DROP TYPE public."onboarding_step";

CREATE TYPE public."onboarding_step" AS ENUM (
	'data_received',
	'data_checking',
	'data_pre_processing',
	'data_processing',
	'data_modeling',
	'data_ingesting',
	'qa');

-- DROP TYPE public."onboarding_step_status";

CREATE TYPE public."onboarding_step_status" AS ENUM (
	'started',
	'completed');

-- DROP TYPE public."operator_type";

CREATE TYPE public."operator_type" AS ENUM (
	'1',
	'0',
	'-1');

-- DROP TYPE public."opportunity_data_source";

CREATE TYPE public."opportunity_data_source" AS ENUM (
	'leakmited',
	'client');

-- DROP TYPE public."opportunity_status";

CREATE TYPE public."opportunity_status" AS ENUM (
	'draft',
	'validated');

-- DROP TYPE public."ordonnance_leak_nature";

CREATE TYPE public."ordonnance_leak_nature" AS ENUM (
	'BRC',
	'TRC',
	'Accessory');

-- DROP TYPE public."ordonnance_leak_type";

CREATE TYPE public."ordonnance_leak_type" AS ENUM (
	'suspicious',
	'validated',
	'repaired',
	'dry_hole');

-- DROP TYPE public."ordonnance_leak_urgency";

CREATE TYPE public."ordonnance_leak_urgency" AS ENUM (
	'low',
	'medium',
	'high');

-- DROP TYPE public."ordonnance_status_type";

CREATE TYPE public."ordonnance_status_type" AS ENUM (
	'in_progress',
	'done');

-- DROP TYPE public."org_type";

CREATE TYPE public."org_type" AS ENUM (
	'leakmited',
	'client',
	'partner',
	'service_provider');

-- DROP TYPE public."pipe_material";

CREATE TYPE public."pipe_material" AS ENUM (
	'Steel',
	'Inox',
	'Aluminium',
	'Everite',
	'Concrete',
	'Copper',
	'FD',
	'FG',
	'Fonte',
	'Unknown',
	'PEHD',
	'PE',
	'PEBD',
	'Lead',
	'PVC');

-- DROP TYPE public."pipe_use";

CREATE TYPE public."pipe_use" AS ENUM (
	'BRC',
	'TRC');

-- DROP TYPE public."productId";

CREATE TYPE public."productId" AS ENUM (
	'admin',
	'numerical_twin',
	'sprint',
	'sprint_dashboard',
	'omra',
	'twin_patrimonial',
	'copilot_basic',
	'copilot_plus',
	'leaksearcher_dashboard',
	'superadmin',
	'twin_exploitation',
	'baby_nautilus',
	'twin_exploration',
	'twin_smart');

-- DROP TYPE public."product_status";

CREATE TYPE public."product_status" AS ENUM (
	'active',
	'inactive');

-- DROP TYPE public.raster;

CREATE TYPE public.raster (
	INPUT = raster_in,
	OUTPUT = raster_out,
	ALIGNMENT = 8,
	STORAGE = any,
	CATEGORY = U,
	DELIMITER = ',');

COMMENT ON TYPE public.raster IS 'postgis raster type: raster spatial data type.';
-- DROP TYPE public."renovation_materials";

CREATE TYPE public."renovation_materials" AS ENUM (
	'PE',
	'PVC',
	'Fonte');

-- DROP TYPE public."road_type";

CREATE TYPE public."road_type" AS ENUM (
	'motorway',
	'trunk',
	'primary',
	'secondary',
	'tertiary',
	'residential',
	'track',
	'other');

-- DROP TYPE public."sector_campaign_assignment_status";

CREATE TYPE public."sector_campaign_assignment_status" AS ENUM (
	'work_field_pending',
	'work_field_in_progress',
	'work_field_finished',
	'unassigned');

-- DROP TYPE public."sector_campaign_status";

CREATE TYPE public."sector_campaign_status" AS ENUM (
	'data_received',
	'process_in_progress',
	'results_available',
	'results_validated',
	'work_field_started',
	'work_field_done',
	'campaign_closed',
	'campaign_cancelled');

-- DROP TYPE public.spheroid;

CREATE TYPE public.spheroid (
	INPUT = spheroid_in,
	OUTPUT = spheroid_out,
	INTERNALLENGTH = 65,
	ALIGNMENT = 8,
	STORAGE = plain,
	CATEGORY = U,
	DELIMITER = ',');

-- DROP TYPE public."status";

CREATE TYPE public."status" AS ENUM (
	'enabled',
	'disable',
	'deleted',
	'disabled');

-- DROP TYPE public."use_type";

CREATE TYPE public."use_type" AS ENUM (
	'BRC',
	'TRC');

-- DROP TYPE public."vanne_status";

CREATE TYPE public."vanne_status" AS ENUM (
	'open',
	'closed');

-- DROP TYPE public."zone_type";

CREATE TYPE public."zone_type" AS ENUM (
	'field',
	'path_no_asphalt',
	'path_asphalt',
	'metropolitan_road',
	'departmental_road',
	'national_road',
	'city_centre');

-- DROP SEQUENCE public.assignment_progression_id_seq;

CREATE SEQUENCE public.assignment_progression_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.campaign_event_id_seq;

CREATE SEQUENCE public.campaign_event_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.campaign_event_origin_id_seq;

CREATE SEQUENCE public.campaign_event_origin_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.formula_id_seq;

CREATE SEQUENCE public.formula_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.logger_event_id_seq;

CREATE SEQUENCE public.logger_event_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.logger_event_logger_id_seq;

CREATE SEQUENCE public.logger_event_logger_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.logger_inventory_id_seq;

CREATE SEQUENCE public.logger_inventory_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.network_id_seq;

CREATE SEQUENCE public.network_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.network_ordonnance_id_seq;

CREATE SEQUENCE public.network_ordonnance_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.nt_copilote_history_id_seq;

CREATE SEQUENCE public.nt_copilote_history_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.nt_cost_matrix_id_seq;

CREATE SEQUENCE public.nt_cost_matrix_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.nt_default_cost_matrix_id_seq;

CREATE SEQUENCE public.nt_default_cost_matrix_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.nt_network_id_seq;

CREATE SEQUENCE public.nt_network_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.nt_network_sector_id_seq;

CREATE SEQUENCE public.nt_network_sector_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.nt_network_sector_sector_id_seq;

CREATE SEQUENCE public.nt_network_sector_sector_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.nt_opportunity_id_seq;

CREATE SEQUENCE public.nt_opportunity_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.nt_renovation_id_seq;

CREATE SEQUENCE public.nt_renovation_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.numerical_twin_id_seq;

CREATE SEQUENCE public.numerical_twin_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.numerical_twin_recommendation_id_seq;

CREATE SEQUENCE public.numerical_twin_recommendation_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.numerical_twin_scenario_chantier_id_seq;

CREATE SEQUENCE public.numerical_twin_scenario_chantier_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.numerical_twin_scenario_id_seq;

CREATE SEQUENCE public.numerical_twin_scenario_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.onboarding_event_id_seq;

CREATE SEQUENCE public.onboarding_event_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.onboarding_event_onboarding_id_seq;

CREATE SEQUENCE public.onboarding_event_onboarding_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.onboarding_id_seq;

CREATE SEQUENCE public.onboarding_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.onboarding_organization_id_seq;

CREATE SEQUENCE public.onboarding_organization_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.ordonnance_leak_id_seq;

CREATE SEQUENCE public.ordonnance_leak_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.organization_id_seq;

CREATE SEQUENCE public.organization_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.organization_product_junction_organization_id_seq;

CREATE SEQUENCE public.organization_product_junction_organization_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.public_migration_table_id_seq;

CREATE SEQUENCE public.public_migration_table_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.sector_analysis_assignment_id_seq;

CREATE SEQUENCE public.sector_analysis_assignment_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.sector_analysis_id_seq;

CREATE SEQUENCE public.sector_analysis_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.sector_id_seq;

CREATE SEQUENCE public.sector_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.sentinel_progression_id_seq;

CREATE SEQUENCE public.sentinel_progression_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;-- public.campaign_event_asset definition

-- Drop table

-- DROP TABLE public.campaign_event_asset;

CREATE TABLE public.campaign_event_asset (
	origin_id int8 NOT NULL,
	"name" varchar(255) NOT NULL,
	"path" text NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT campaign_event_asset_origin_id_name_pk PRIMARY KEY (origin_id, name),
	CONSTRAINT campaign_event_asset_path_key UNIQUE (path)
);


-- public.kysely_migration definition

-- Drop table

-- DROP TABLE public.kysely_migration;

CREATE TABLE public.kysely_migration (
	"name" varchar(255) NOT NULL,
	"timestamp" varchar(255) NOT NULL,
	CONSTRAINT kysely_migration_pkey PRIMARY KEY (name)
);


-- public.kysely_migration_lock definition

-- Drop table

-- DROP TABLE public.kysely_migration_lock;

CREATE TABLE public.kysely_migration_lock (
	id varchar(255) NOT NULL,
	is_locked int4 DEFAULT 0 NOT NULL,
	CONSTRAINT kysely_migration_lock_pkey PRIMARY KEY (id)
);


-- public.nt_default_cost_matrix definition

-- Drop table

-- DROP TABLE public.nt_default_cost_matrix;

CREATE TABLE public.nt_default_cost_matrix (
	id bigserial NOT NULL,
	material public."pipe_material" NOT NULL,
	"table" jsonb NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT nt_default_cost_matrix_pkey PRIMARY KEY (id)
);


-- public.product definition

-- Drop table

-- DROP TABLE public.product;

CREATE TABLE public.product (
	id varchar(255) NOT NULL,
	"label" varchar(255) NOT NULL,
	url varchar(2048) NOT NULL,
	description varchar(2048) NULL,
	"status" public."product_status" DEFAULT 'inactive'::product_status NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	is_legacy bool DEFAULT false NOT NULL,
	CONSTRAINT product_label_key UNIQUE (label),
	CONSTRAINT product_pkey PRIMARY KEY (id)
);


-- public.public_migration_table definition

-- Drop table

-- DROP TABLE public.public_migration_table;

CREATE TABLE public.public_migration_table (
	id serial4 NOT NULL,
	"timestamp" int8 NOT NULL,
	"name" varchar NOT NULL,
	CONSTRAINT "PK_d9567710739a20ab3c0381562ed" PRIMARY KEY (id)
);


-- public.spatial_ref_sys definition

-- Drop table

-- DROP TABLE public.spatial_ref_sys;

CREATE TABLE public.spatial_ref_sys (
	srid int4 NOT NULL,
	auth_name varchar(256) NULL,
	auth_srid int4 NULL,
	srtext varchar(2048) NULL,
	proj4text varchar(2048) NULL,
	CONSTRAINT spatial_ref_sys_pkey PRIMARY KEY (srid),
	CONSTRAINT spatial_ref_sys_srid_check CHECK (((srid > 0) AND (srid <= 998999)))
);


-- public.product_module definition

-- Drop table

-- DROP TABLE public.product_module;

CREATE TABLE public.product_module (
	product_id varchar(255) NOT NULL,
	id varchar(64) NOT NULL,
	"label" varchar(255) NOT NULL,
	description varchar(2048) NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	url varchar(2048) NULL,
	CONSTRAINT product_module_pk PRIMARY KEY (product_id, id),
	CONSTRAINT product_module_product_fk FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE
);


-- public.accessory definition

-- Drop table

-- DROP TABLE public.accessory;

CREATE TABLE public.accessory (
	accessory_id varchar(255) NOT NULL,
	network_id int8 NOT NULL,
	pipe_id varchar(255) NULL,
	"type" public."accessory_type" NOT NULL,
	type_raw varchar(255) NULL,
	geometry public.geometry(point, 4326) NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	"name" varchar(2048) NULL,
	client_id text NULL,
	CONSTRAINT accessory_accessory_id_network_id_unique UNIQUE (accessory_id, network_id),
	CONSTRAINT accessory_id_network_id_pk PRIMARY KEY (accessory_id, network_id)
);
CREATE INDEX accessory_geometry_index ON public.accessory USING gist (geometry);
CREATE INDEX accessory_network_id_index ON public.accessory USING btree (network_id);


-- public.accessory_device_meter definition

-- Drop table

-- DROP TABLE public.accessory_device_meter;

CREATE TABLE public.accessory_device_meter (
	accessory_id varchar(255) NOT NULL,
	network_id int8 NOT NULL,
	external_id varchar(255) NOT NULL,
	CONSTRAINT accessory_device_meter_external_id_network_id_unique UNIQUE (external_id, network_id)
);
CREATE INDEX accessory_device_meter_accessory_id_network_id_index ON public.accessory_device_meter USING btree (accessory_id, network_id);
CREATE INDEX accessory_device_meter_network_id_index ON public.accessory_device_meter USING btree (network_id);


-- public.accessory_vanne definition

-- Drop table

-- DROP TABLE public.accessory_vanne;

CREATE TABLE public.accessory_vanne (
	accessory_id varchar(255) NULL,
	network_id int8 NULL,
	"status" public."vanne_status" NOT NULL
);


-- public.aggregated_event definition

-- Drop table

-- DROP TABLE public.aggregated_event;

CREATE TABLE public.aggregated_event (
	network_id int8 NOT NULL,
	event_timestamp timestamp NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	value float8 NOT NULL,
	external_device_meter_id varchar(255) NOT NULL,
	is_certain bool DEFAULT false NOT NULL,
	CONSTRAINT network_id_external_dm_id_evt_ts_pk PRIMARY KEY (network_id, external_device_meter_id, event_timestamp)
)
PARTITION BY LIST (network_id);
CREATE INDEX aggregated_event_network_id_event_timestamp_index ON ONLY public.aggregated_event USING btree (network_id, event_timestamp);
CREATE INDEX aggregated_event_network_id_external_device_meter_id_event_time ON ONLY public.aggregated_event USING btree (network_id, external_device_meter_id, event_timestamp);
CREATE INDEX aggregated_event_network_id_external_device_meter_id_index ON ONLY public.aggregated_event USING btree (network_id, external_device_meter_id);


-- public.aggregated_event_network_id_12 definition

CREATE TABLE public.aggregated_event_network_id_12 PARTITION OF public.aggregated_event FOR VALUES IN ('12')
PARTITION BY RANGE (event_timestamp);
CREATE INDEX aggregated_event_network_id_12_network_id_event_timestamp_idx ON ONLY public.aggregated_event_network_id_12 USING btree (network_id, event_timestamp);
CREATE INDEX aggregated_event_network_id_1_network_id_external_device_m_idx1 ON ONLY public.aggregated_event_network_id_12 USING btree (network_id, external_device_meter_id);
CREATE INDEX aggregated_event_network_id_1_network_id_external_device_me_idx ON ONLY public.aggregated_event_network_id_12 USING btree (network_id, external_device_meter_id, event_timestamp);


-- public.aggregated_event_network_id_12_year_2021 definition

CREATE TABLE public.aggregated_event_network_id_12_year_2021 PARTITION OF public.aggregated_event_network_id_12  FOR VALUES FROM ('2021-01-01 00:00:00') TO ('2021-12-31 23:59:59.999999');
CREATE INDEX aggregated_event_network_id_12_y_network_id_event_timestamp_idx ON public.aggregated_event_network_id_12_year_2021 USING btree (network_id, event_timestamp);
CREATE INDEX aggregated_event_network_id_1_network_id_external_device_m_idx2 ON public.aggregated_event_network_id_12_year_2021 USING btree (network_id, external_device_meter_id, event_timestamp);
CREATE INDEX aggregated_event_network_id_1_network_id_external_device_m_idx3 ON public.aggregated_event_network_id_12_year_2021 USING btree (network_id, external_device_meter_id);


-- public.aggregated_event_network_id_12_year_2022 definition

CREATE TABLE public.aggregated_event_network_id_12_year_2022 PARTITION OF public.aggregated_event_network_id_12  FOR VALUES FROM ('2022-01-01 00:00:00') TO ('2022-12-31 23:59:59.999999');
CREATE INDEX aggregated_event_network_id_12__network_id_event_timestamp_idx1 ON public.aggregated_event_network_id_12_year_2022 USING btree (network_id, event_timestamp);
CREATE INDEX aggregated_event_network_id_1_network_id_external_device_m_idx4 ON public.aggregated_event_network_id_12_year_2022 USING btree (network_id, external_device_meter_id, event_timestamp);
CREATE INDEX aggregated_event_network_id_1_network_id_external_device_m_idx5 ON public.aggregated_event_network_id_12_year_2022 USING btree (network_id, external_device_meter_id);


-- public.aggregated_event_network_id_12_year_2023 definition

CREATE TABLE public.aggregated_event_network_id_12_year_2023 PARTITION OF public.aggregated_event_network_id_12  FOR VALUES FROM ('2023-01-01 00:00:00') TO ('2023-12-31 23:59:59.999999');
CREATE INDEX aggregated_event_network_id_12__network_id_event_timestamp_idx2 ON public.aggregated_event_network_id_12_year_2023 USING btree (network_id, event_timestamp);
CREATE INDEX aggregated_event_network_id_1_network_id_external_device_m_idx6 ON public.aggregated_event_network_id_12_year_2023 USING btree (network_id, external_device_meter_id, event_timestamp);
CREATE INDEX aggregated_event_network_id_1_network_id_external_device_m_idx7 ON public.aggregated_event_network_id_12_year_2023 USING btree (network_id, external_device_meter_id);


-- public.aggregated_event_network_id_12_year_2024 definition

CREATE TABLE public.aggregated_event_network_id_12_year_2024 PARTITION OF public.aggregated_event_network_id_12  FOR VALUES FROM ('2024-01-01 00:00:00') TO ('2024-12-31 23:59:59.999999');
CREATE INDEX aggregated_event_network_id_12__network_id_event_timestamp_idx3 ON public.aggregated_event_network_id_12_year_2024 USING btree (network_id, event_timestamp);
CREATE INDEX aggregated_event_network_id_1_network_id_external_device_m_idx8 ON public.aggregated_event_network_id_12_year_2024 USING btree (network_id, external_device_meter_id, event_timestamp);
CREATE INDEX aggregated_event_network_id_1_network_id_external_device_m_idx9 ON public.aggregated_event_network_id_12_year_2024 USING btree (network_id, external_device_meter_id);


-- public.aggregated_event_network_id_12_year_2025 definition

CREATE TABLE public.aggregated_event_network_id_12_year_2025 PARTITION OF public.aggregated_event_network_id_12  FOR VALUES FROM ('2025-01-01 00:00:00') TO ('2025-12-31 23:59:59.999999');
CREATE INDEX aggregated_event_network_id_12__network_id_event_timestamp_idx4 ON public.aggregated_event_network_id_12_year_2025 USING btree (network_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx10 ON public.aggregated_event_network_id_12_year_2025 USING btree (network_id, external_device_meter_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx11 ON public.aggregated_event_network_id_12_year_2025 USING btree (network_id, external_device_meter_id);


-- public.aggregated_event_network_id_13 definition

CREATE TABLE public.aggregated_event_network_id_13 PARTITION OF public.aggregated_event FOR VALUES IN ('13')
PARTITION BY RANGE (event_timestamp);
CREATE INDEX aggregated_event_network_id_13_network_id_event_timestamp_idx ON ONLY public.aggregated_event_network_id_13 USING btree (network_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx12 ON ONLY public.aggregated_event_network_id_13 USING btree (network_id, external_device_meter_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx13 ON ONLY public.aggregated_event_network_id_13 USING btree (network_id, external_device_meter_id);


-- public.aggregated_event_network_id_13_year_2021 definition

CREATE TABLE public.aggregated_event_network_id_13_year_2021 PARTITION OF public.aggregated_event_network_id_13  FOR VALUES FROM ('2021-01-01 00:00:00') TO ('2021-12-31 23:59:59.999999');
CREATE INDEX aggregated_event_network_id_13_y_network_id_event_timestamp_idx ON public.aggregated_event_network_id_13_year_2021 USING btree (network_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx14 ON public.aggregated_event_network_id_13_year_2021 USING btree (network_id, external_device_meter_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx15 ON public.aggregated_event_network_id_13_year_2021 USING btree (network_id, external_device_meter_id);


-- public.aggregated_event_network_id_13_year_2022 definition

CREATE TABLE public.aggregated_event_network_id_13_year_2022 PARTITION OF public.aggregated_event_network_id_13  FOR VALUES FROM ('2022-01-01 00:00:00') TO ('2022-12-31 23:59:59.999999');
CREATE INDEX aggregated_event_network_id_13__network_id_event_timestamp_idx1 ON public.aggregated_event_network_id_13_year_2022 USING btree (network_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx16 ON public.aggregated_event_network_id_13_year_2022 USING btree (network_id, external_device_meter_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx17 ON public.aggregated_event_network_id_13_year_2022 USING btree (network_id, external_device_meter_id);


-- public.aggregated_event_network_id_13_year_2023 definition

CREATE TABLE public.aggregated_event_network_id_13_year_2023 PARTITION OF public.aggregated_event_network_id_13  FOR VALUES FROM ('2023-01-01 00:00:00') TO ('2023-12-31 23:59:59.999999');
CREATE INDEX aggregated_event_network_id_13__network_id_event_timestamp_idx2 ON public.aggregated_event_network_id_13_year_2023 USING btree (network_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx18 ON public.aggregated_event_network_id_13_year_2023 USING btree (network_id, external_device_meter_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx19 ON public.aggregated_event_network_id_13_year_2023 USING btree (network_id, external_device_meter_id);


-- public.aggregated_event_network_id_13_year_2024 definition

CREATE TABLE public.aggregated_event_network_id_13_year_2024 PARTITION OF public.aggregated_event_network_id_13  FOR VALUES FROM ('2024-01-01 00:00:00') TO ('2024-12-31 23:59:59.999999');
CREATE INDEX aggregated_event_network_id_13__network_id_event_timestamp_idx3 ON public.aggregated_event_network_id_13_year_2024 USING btree (network_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx20 ON public.aggregated_event_network_id_13_year_2024 USING btree (network_id, external_device_meter_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx21 ON public.aggregated_event_network_id_13_year_2024 USING btree (network_id, external_device_meter_id);


-- public.aggregated_event_network_id_13_year_2025 definition

CREATE TABLE public.aggregated_event_network_id_13_year_2025 PARTITION OF public.aggregated_event_network_id_13  FOR VALUES FROM ('2025-01-01 00:00:00') TO ('2025-12-31 23:59:59.999999');
CREATE INDEX aggregated_event_network_id_13__network_id_event_timestamp_idx4 ON public.aggregated_event_network_id_13_year_2025 USING btree (network_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx22 ON public.aggregated_event_network_id_13_year_2025 USING btree (network_id, external_device_meter_id, event_timestamp);
CREATE INDEX aggregated_event_network_id__network_id_external_device_m_idx23 ON public.aggregated_event_network_id_13_year_2025 USING btree (network_id, external_device_meter_id);


-- public.assignment_progression definition

-- Drop table

-- DROP TABLE public.assignment_progression;

CREATE TABLE public.assignment_progression (
	id bigserial NOT NULL,
	sector_campaign_id int8 NOT NULL,
	sector_campaign_assignment_id int8 NOT NULL,
	user_id uuid NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT assignment_progression_pkey PRIMARY KEY (id)
);


-- public.assignment_progression_pipe definition
-- [Sprint] Tronçons réellement parcourus pendant une campagne Sprint.
-- pipe_id = Id_pipe du CSV de la campagne (format '137-31') : significatif
-- uniquement dans ce CSV — AUCUNE FK vers network_pipe ou platformv2.network_arc.
-- Seul rapprochement possible avec le réseau : spatial, via location1/location2
-- (point milieu -> arc le plus proche, rayon ~10 m).

-- Drop table

-- DROP TABLE public.assignment_progression_pipe;

CREATE TABLE public.assignment_progression_pipe (
	pipe_id varchar(255) NOT NULL,
	location1 public.geography NOT NULL,
	location2 public.geography NOT NULL,
	assignment_progression_id int8 NOT NULL,
	sector_campaign_id int8 NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	"pipe_use" public."pipe_use" DEFAULT 'TRC'::pipe_use NOT NULL,
	"lpi" public."lpi" DEFAULT 'lpi3'::lpi NOT NULL,
	length float8 DEFAULT 0 NOT NULL
);


-- public.campaign_event definition

-- Drop table

-- DROP TABLE public.campaign_event;

CREATE TABLE public.campaign_event (
	id bigserial NOT NULL,
	"type" public."campaign_event_type" NOT NULL,
	sector_id int8 NOT NULL,
	sector_campaign_id int8 NOT NULL,
	pipe_id varchar(255) NOT NULL,
	origin_id bigserial NOT NULL,
	geog public.geography NOT NULL,
	user_id uuid NOT NULL,
	"data" jsonb NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT campaign_event_pkey PRIMARY KEY (id)
);
CREATE INDEX campaign_event_origin_id_idx ON public.campaign_event USING btree (origin_id);
CREATE INDEX campaign_event_pipe_id_idx ON public.campaign_event USING btree (pipe_id);
CREATE INDEX idx_campaign_event_campaign_type_origin_modified ON public.campaign_event USING btree (sector_campaign_id, type, origin_id, last_modified_date DESC);


-- public.computed_result definition

-- Drop table

-- DROP TABLE public.computed_result;

CREATE TABLE public.computed_result (
	network_id int8 NOT NULL,
	formula_id int8 NOT NULL,
	event_timestamp timestamp NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	value float8 NOT NULL,
	CONSTRAINT computed_result_network_id_formula_id_event_timestamp_created_d PRIMARY KEY (network_id, formula_id, event_timestamp, created_date)
)
PARTITION BY LIST (network_id);
CREATE INDEX computed_result_network_id_event_timestamp_index ON ONLY public.computed_result USING btree (network_id, event_timestamp);


-- public.computed_result_network_id_12 definition

CREATE TABLE public.computed_result_network_id_12 PARTITION OF public.computed_result  FOR VALUES IN ('12');
CREATE INDEX computed_result_network_id_12_network_id_event_timestamp_idx ON public.computed_result_network_id_12 USING btree (network_id, event_timestamp);


-- public.computed_result_network_id_13 definition

CREATE TABLE public.computed_result_network_id_13 PARTITION OF public.computed_result  FOR VALUES IN ('13');
CREATE INDEX computed_result_network_id_13_network_id_event_timestamp_idx ON public.computed_result_network_id_13 USING btree (network_id, event_timestamp);


-- public.computed_result_network_id_3 definition

CREATE TABLE public.computed_result_network_id_3 PARTITION OF public.computed_result  FOR VALUES IN ('3');
CREATE INDEX computed_result_network_id_3_network_id_event_timestamp_idx ON public.computed_result_network_id_3 USING btree (network_id, event_timestamp);


-- public.copilot_plus_chat_grades definition

-- Drop table

-- DROP TABLE public.copilot_plus_chat_grades;

CREATE TABLE public.copilot_plus_chat_grades (
	id uuid DEFAULT gen_random_uuid() NOT NULL,
	question_field varchar NOT NULL,
	answer_field varchar NOT NULL,
	"comment" varchar NULL,
	message_id varchar NULL,
	grade numeric NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	updated_at timestamptz DEFAULT now() NOT NULL,
	batch_id varchar NULL,
	organization_id int8 NOT NULL,
	difficulty varchar NULL,
	CONSTRAINT copilot_plus_chat_grades_grade_check CHECK (((grade >= (0)::numeric) AND (grade <= (5)::numeric))),
	CONSTRAINT copilot_plus_chat_grades_pkey PRIMARY KEY (id)
);


-- public.external_device_meter definition

-- Drop table

-- DROP TABLE public.external_device_meter;

CREATE TABLE public.external_device_meter (
	external_id varchar(255) NOT NULL,
	client_id varchar(255) NOT NULL,
	network_id int8 NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	aggregation_type public."accessory_device_meter_unit_type" DEFAULT 'm3'::accessory_device_meter_unit_type NOT NULL,
	last_seen_date timestamptz NULL,
	volume jsonb DEFAULT '{"target": null}'::jsonb NOT NULL,
	nightflow jsonb DEFAULT '{"target": null}'::jsonb NOT NULL,
	minflow jsonb DEFAULT '{"target": null}'::jsonb NOT NULL,
	flow jsonb DEFAULT '{"target": null}'::jsonb NOT NULL,
	"label" varchar(255) DEFAULT NULL::character varying NULL,
	color varchar(10) DEFAULT NULL::character varying NULL,
	CONSTRAINT external_device_meter_id_network_id_pk PRIMARY KEY (external_id, network_id)
);


-- public.formula definition

-- Drop table

-- DROP TABLE public.formula;

CREATE TABLE public.formula (
	id bigserial NOT NULL,
	network_id int8 NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	ingestion_tmp_str varchar(2048) NULL,
	CONSTRAINT formula_id_network_id_unique UNIQUE (id, network_id),
	CONSTRAINT formula_pkey PRIMARY KEY (id)
);


-- public.formula_construction definition

-- Drop table

-- DROP TABLE public.formula_construction;

CREATE TABLE public.formula_construction (
	network_id int8 NOT NULL,
	external_device_meter_id varchar(255) NOT NULL,
	formula_id int8 NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	"operator" public."operator_type" NOT NULL,
	created_by varchar(255) NOT NULL,
	CONSTRAINT formula_construction_network_id_external_device_meter_id_formul PRIMARY KEY (network_id, external_device_meter_id, formula_id, created_date)
);


-- public.logger_event definition

-- Drop table

-- DROP TABLE public.logger_event;

CREATE TABLE public.logger_event (
	id bigserial NOT NULL,
	logger_id bigserial NOT NULL,
	pipe_id varchar(255) NOT NULL,
	network_id int8 NOT NULL,
	ordonnance_id int8 NULL,
	user_id uuid NOT NULL,
	"type" public."logger_event_type" NOT NULL,
	description varchar(1024) NULL,
	assets jsonb NULL,
	geometry public.geometry(point, 4326) NOT NULL,
	"timestamp" timestamptz NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	sound_level int4 NULL,
	CONSTRAINT logger_event_pkey PRIMARY KEY (id)
);


-- public.logger_inventory definition

-- Drop table

-- DROP TABLE public.logger_inventory;

CREATE TABLE public.logger_inventory (
	id bigserial NOT NULL,
	serial_number varchar(255) NOT NULL,
	organization_id int8 NOT NULL,
	user_id uuid NULL,
	tag varchar(255) NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT logger_inventory_pkey PRIMARY KEY (id),
	CONSTRAINT logger_inventory_serial_number_organization_id_unique UNIQUE (serial_number, organization_id)
);
CREATE INDEX logger_inventory_organization_id_index ON public.logger_inventory USING btree (organization_id);
CREATE INDEX logger_inventory_user_id_index ON public.logger_inventory USING btree (user_id);


-- public.nautilus_message definition

-- Drop table

-- DROP TABLE public.nautilus_message;

CREATE TABLE public.nautilus_message (
	id uuid DEFAULT gen_random_uuid() NOT NULL,
	thread_id varchar NOT NULL,
	payload jsonb NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT nautilus_message_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_nautilus_message_thread_id_created_at ON public.nautilus_message USING btree (thread_id, created_at);


-- public.nautilus_thread definition

-- Drop table

-- DROP TABLE public.nautilus_thread;

CREATE TABLE public.nautilus_thread (
	id varchar NOT NULL,
	user_id uuid NOT NULL,
	"name" varchar NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	updated_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT nautilus_thread_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_nautilus_thread_user_id ON public.nautilus_thread USING btree (user_id);


-- public.network definition

-- Drop table

-- DROP TABLE public.network;

CREATE TABLE public.network (
	id bigserial NOT NULL,
	organization_id int8 NOT NULL,
	data_source_paths jsonb NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT network_pkey PRIMARY KEY (id)
);


-- public.network_ordonnance definition

-- Drop table

-- DROP TABLE public.network_ordonnance;

CREATE TABLE public.network_ordonnance (
	id bigserial NOT NULL,
	sector_id varchar(255) NOT NULL,
	network_id int8 NOT NULL,
	"status" public."ordonnance_status_type" NOT NULL,
	users_id jsonb NOT NULL,
	start_date date NOT NULL,
	end_date date NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT network_ordonnance_pkey PRIMARY KEY (id)
);
CREATE INDEX network_ordonnance_network_id_index ON public.network_ordonnance USING btree (network_id);
CREATE INDEX network_ordonnance_sector_id_index ON public.network_ordonnance USING btree (sector_id);


-- public.network_pipe definition
-- [NON-Sprint] Inventaire réseau (feature 2024, tuiles carto / numerical-twin).
-- Partitionnée par network_id ; seules quelques partitions sont chargées en prod.
-- Aucun code Sprint ne lit cette table — ne pas l'utiliser pour recalculer des
-- stats de campagne. Le réseau le plus à jour est platformv2.network_arc (TWIN).

-- Drop table

-- DROP TABLE public.network_pipe;

CREATE TABLE public.network_pipe (
	pipe_id varchar(255) NOT NULL,
	network_id int8 NOT NULL,
	geometry public.geometry(linestring, 4326) NOT NULL,
	arc_id_raw varchar(255) NOT NULL,
	arc_id varchar(255) NOT NULL,
	use_type_raw varchar(255) NOT NULL,
	"use_type" public."use_type" NOT NULL,
	length numeric NOT NULL,
	material_raw varchar(255) NULL,
	material public."pipe_material" NULL,
	material_inferred public."pipe_material" NULL,
	diameter_raw numeric NULL,
	diameter int4 NULL,
	diameter_inferred int4 NULL,
	installation_date_raw varchar(255) NULL,
	installation_date date NULL,
	installation_period_raw varchar(255) NULL,
	installation_period varchar(255) NULL,
	city varchar(255) NULL,
	postcode varchar(255) NULL,
	road varchar(255) NULL,
	address varchar(255) NULL,
	buildings_type public._building_type DEFAULT '{}'::building_type[] NOT NULL,
	"zone_type" public."zone_type" NULL,
	"road_type" public."road_type" NULL,
	history_leaks_years _int4 DEFAULT '{}'::integer[] NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	sector_id varchar(255) NULL,
	CONSTRAINT network_pipe_pkey PRIMARY KEY (pipe_id, network_id)
)
PARTITION BY LIST (network_id);
CREATE INDEX network_pipe_geometry_index ON ONLY public.network_pipe USING gist (geometry);
CREATE INDEX network_pipe_network_sector_id_index ON ONLY public.network_pipe USING btree (sector_id);


-- public.network_pipe_12 definition

CREATE TABLE public.network_pipe_12 PARTITION OF public.network_pipe  FOR VALUES IN ('12');
CREATE INDEX network_pipe_12_geometry_idx ON public.network_pipe_12 USING gist (geometry);
CREATE INDEX network_pipe_12_sector_id_idx ON public.network_pipe_12 USING btree (sector_id);


-- public.network_pipe_13 definition

CREATE TABLE public.network_pipe_13 PARTITION OF public.network_pipe  FOR VALUES IN ('13');
CREATE INDEX network_pipe_13_geometry_idx ON public.network_pipe_13 USING gist (geometry);
CREATE INDEX network_pipe_13_sector_id_idx ON public.network_pipe_13 USING btree (sector_id);


-- public.network_sector definition

-- Drop table

-- DROP TABLE public.network_sector;

CREATE TABLE public.network_sector (
	network_id int8 NOT NULL,
	"name" varchar(255) NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	barycenter public.geometry(point, 4326) NOT NULL,
	bounding_box public.geometry(polygon, 4326) NOT NULL,
	polygon public.geometry(polygon, 4326) NOT NULL,
	sector_id varchar(255) NOT NULL,
	CONSTRAINT network_sector_sector_id_network_id_pkey PRIMARY KEY (sector_id, network_id)
);
CREATE INDEX network_sector_network_id_index ON public.network_sector USING btree (network_id);


-- public.nt_copilote_history definition

-- Drop table

-- DROP TABLE public.nt_copilote_history;

CREATE TABLE public.nt_copilote_history (
	id bigserial NOT NULL,
	numerical_twin_id int8 NOT NULL,
	road_name varchar(255) NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT nt_copilote_history_pkey PRIMARY KEY (id)
);


-- public.nt_cost_matrix definition

-- Drop table

-- DROP TABLE public.nt_cost_matrix;

CREATE TABLE public.nt_cost_matrix (
	id bigserial NOT NULL,
	numerical_twin_id int8 NOT NULL,
	material public."pipe_material" NOT NULL,
	"table" jsonb NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT nt_cost_matrix_pkey PRIMARY KEY (id)
);


-- public.nt_network definition

-- Drop table

-- DROP TABLE public.nt_network;

CREATE TABLE public.nt_network (
	id bigserial NOT NULL,
	numerical_twin_id int8 NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT nt_network_numerical_twin_id_key UNIQUE (numerical_twin_id),
	CONSTRAINT nt_network_pkey PRIMARY KEY (id)
);


-- public.nt_network_sector definition

-- Drop table

-- DROP TABLE public.nt_network_sector;

CREATE TABLE public.nt_network_sector (
	id bigserial NOT NULL,
	sector_id bigserial NOT NULL,
	nt_network_id int8 NOT NULL,
	prob_leak_norm_len_powered_network float4 NOT NULL,
	water_produced int4 NULL,
	water_sold int4 NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	brc_length float4 NOT NULL,
	trc_length float4 NOT NULL,
	CONSTRAINT nt_network_sector_nt_network_id_key UNIQUE (nt_network_id),
	CONSTRAINT nt_network_sector_pkey PRIMARY KEY (id)
);


-- public.nt_opportunity definition

-- Drop table

-- DROP TABLE public.nt_opportunity;

CREATE TABLE public.nt_opportunity (
	id bigserial NOT NULL,
	"type" public."nt_opportunity_type" NOT NULL,
	"name" varchar(255) NOT NULL,
	numerical_twin_id int8 NOT NULL,
	"data" jsonb NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	data_source public."opportunity_data_source" DEFAULT 'leakmited'::opportunity_data_source NOT NULL,
	"status" public."opportunity_status" DEFAULT 'draft'::opportunity_status NOT NULL,
	CONSTRAINT nt_opportunity_pkey PRIMARY KEY (id)
);
CREATE INDEX nt_opportunity_id_idx ON public.nt_opportunity USING btree (id);
CREATE INDEX nt_opportunity_numerical_twin_id_idx ON public.nt_opportunity USING btree (numerical_twin_id);


-- public.nt_opportunity_pipe definition

-- Drop table

-- DROP TABLE public.nt_opportunity_pipe;

CREATE TABLE public.nt_opportunity_pipe (
	nt_opportunity_id int8 NOT NULL,
	pipe_id varchar(255) NOT NULL,
	vanne_id varchar(255) NOT NULL,
	numerical_twin_id int8 NOT NULL,
	geog public.geography NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL
);
CREATE INDEX nt_opportunity_pipe_nt_opportunity_id_idx ON public.nt_opportunity_pipe USING btree (nt_opportunity_id);
CREATE INDEX nt_opportunity_pipe_pipe_id_idx ON public.nt_opportunity_pipe USING btree (pipe_id);
CREATE INDEX nt_opportunity_pipe_vanne_id_idx ON public.nt_opportunity_pipe USING btree (vanne_id);


-- public.nt_renovation definition

-- Drop table

-- DROP TABLE public.nt_renovation;

CREATE TABLE public.nt_renovation (
	id bigserial NOT NULL,
	numerical_twin_id int8 NOT NULL,
	material public."pipe_material" NULL,
	diameter int4 NULL,
	length int4 NOT NULL,
	price int4 NULL,
	leak_risk int4 NOT NULL,
	scenario_id int8 NULL,
	vanne_id varchar NOT NULL,
	"date" timestamptz NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	"name" text NULL,
	"comment" text NULL,
	old_materials jsonb DEFAULT '[]'::jsonb NOT NULL,
	old_diameters jsonb DEFAULT '[]'::jsonb NOT NULL,
	old_installation_years jsonb DEFAULT '[]'::jsonb NOT NULL,
	old_length int4 DEFAULT 0 NOT NULL,
	score int4 NULL,
	score_max int4 NULL,
	completed bool DEFAULT true NOT NULL,
	CONSTRAINT nt_renovation_pkey PRIMARY KEY (id)
);


-- public.nt_renovation_pipe definition

-- Drop table

-- DROP TABLE public.nt_renovation_pipe;

CREATE TABLE public.nt_renovation_pipe (
	pipe_id varchar(255) NOT NULL,
	location1 public.geography NOT NULL,
	location2 public.geography NOT NULL,
	nt_renovation_id int8 NOT NULL,
	numerical_twin_id int8 NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	geometry public.geography(linestring, 4326) NOT NULL
);


-- public.numerical_twin definition

-- Drop table

-- DROP TABLE public.numerical_twin;

CREATE TABLE public.numerical_twin (
	id bigserial NOT NULL,
	organization_id int8 NOT NULL,
	default_config_json jsonb NULL,
	network_data_path varchar(255) NULL,
	index_name varchar(255) NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	planned_goals jsonb NULL,
	material_small_diameter public."renovation_materials" NULL,
	material_large_diameter public."renovation_materials" NULL,
	diameter int4 NULL,
	CONSTRAINT index_name_unique UNIQUE (index_name),
	CONSTRAINT numerical_twin_pkey PRIMARY KEY (id)
);
CREATE INDEX numerical_twin_organization_id_idx ON public.numerical_twin USING btree (organization_id);


-- public.numerical_twin_recommendation definition

-- Drop table

-- DROP TABLE public.numerical_twin_recommendation;

CREATE TABLE public.numerical_twin_recommendation (
	id bigserial NOT NULL,
	budget float8 NOT NULL,
	scenario_id int8 NOT NULL,
	"year" int4 NOT NULL,
	numerical_twin_id int8 NOT NULL,
	pricing_instruction jsonb NOT NULL,
	alpha float8 NOT NULL,
	min_risk float8 NOT NULL,
	max_risk float8 NOT NULL,
	results_json jsonb NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT numerical_twin_recommendation_pkey PRIMARY KEY (id)
);


-- public.numerical_twin_scenario definition

-- Drop table

-- DROP TABLE public.numerical_twin_scenario;

CREATE TABLE public.numerical_twin_scenario (
	id bigserial NOT NULL,
	numerical_twin_id int8 NOT NULL,
	user_id uuid NOT NULL,
	"name" varchar(255) NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	"status" public."numerical_twin_scenario_status" DEFAULT 'created'::numerical_twin_scenario_status NOT NULL,
	config_json jsonb NOT NULL,
	favorite bool DEFAULT false NOT NULL,
	score_max int4 DEFAULT 0 NOT NULL,
	scenario_type public."numerical_twin_scenario_type" DEFAULT 'client'::numerical_twin_scenario_type NOT NULL,
	CONSTRAINT numerical_twin_scenario_pkey PRIMARY KEY (id)
);
CREATE INDEX numerical_twin_scenario_favorite_index ON public.numerical_twin_scenario USING btree (favorite);
CREATE INDEX numerical_twin_scenario_last_modified_date_index ON public.numerical_twin_scenario USING btree (last_modified_date);
CREATE INDEX numerical_twin_scenario_numerical_twin_id_index ON public.numerical_twin_scenario USING btree (numerical_twin_id);
CREATE INDEX scenario_status_index ON public.numerical_twin_scenario USING btree (status);


-- public.numerical_twin_scenario_chantier definition

-- Drop table

-- DROP TABLE public.numerical_twin_scenario_chantier;

CREATE TABLE public.numerical_twin_scenario_chantier (
	id bigserial NOT NULL,
	scenario_id int8 NOT NULL,
	vanne_id varchar NOT NULL,
	"name" varchar NULL,
	length int4 NOT NULL,
	leak_risk int4 NOT NULL,
	score int4 NOT NULL,
	diameters jsonb NOT NULL,
	materials jsonb NOT NULL,
	installation_years jsonb NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	norm_len_proba numeric DEFAULT 0 NOT NULL,
	location1 public.geography NULL,
	location2 public.geography NULL,
	geometry public.geography(multilinestring, 4326) NOT NULL,
	CONSTRAINT numerical_twin_scenario_chantier_pkey PRIMARY KEY (id)
);
CREATE INDEX numerical_twin_scenario_chantier_scenario_id_index ON public.numerical_twin_scenario_chantier USING btree (scenario_id);


-- public.onboarding definition

-- Drop table

-- DROP TABLE public.onboarding;

CREATE TABLE public.onboarding (
	id bigserial NOT NULL,
	organization_id bigserial NOT NULL,
	current_step public."onboarding_step" NULL,
	current_step_status public."onboarding_step_status" NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT onboarding_pkey PRIMARY KEY (id)
);


-- public.onboarding_event definition

-- Drop table

-- DROP TABLE public.onboarding_event;

CREATE TABLE public.onboarding_event (
	id bigserial NOT NULL,
	onboarding_id bigserial NOT NULL,
	step public."onboarding_step" NOT NULL,
	"status" public."onboarding_step_status" NOT NULL,
	"data" jsonb NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT onboarding_event_pkey PRIMARY KEY (id)
);


-- public.ordonnance_leak definition

-- Drop table

-- DROP TABLE public.ordonnance_leak;

CREATE TABLE public.ordonnance_leak (
	id bigserial NOT NULL,
	pipe_id varchar(255) NOT NULL,
	network_id int8 NOT NULL,
	ordonnance_id int8 NULL,
	user_id uuid NOT NULL,
	urgency public."ordonnance_leak_urgency" NOT NULL,
	nature public."ordonnance_leak_nature" NOT NULL,
	"type" public."ordonnance_leak_type" NOT NULL,
	description varchar(1024) NULL,
	geometry public.geometry(point, 4326) NOT NULL,
	assets jsonb NULL,
	repaired_date timestamptz NULL,
	suspicious_date timestamptz NULL,
	validated_date timestamptz NULL,
	dry_hole_date timestamptz NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT ordonnance_leak_pkey PRIMARY KEY (id)
);
CREATE INDEX ordonnance_leak_ordonnance_id_index ON public.ordonnance_leak USING btree (ordonnance_id);


-- public.org_products_settings definition

-- Drop table

-- DROP TABLE public.org_products_settings;

CREATE TABLE public.org_products_settings (
	organization_id int8 NOT NULL,
	product_id varchar(255) NOT NULL,
	settings jsonb DEFAULT '{}'::jsonb NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT org_products_settings_pk PRIMARY KEY (organization_id, product_id)
);


-- public.organization definition
-- Table standard partagée entre Sprint et TWIN.
-- organization.network_id est souvent NULL : pour trouver le réseau courant d'une
-- org, passer par platformv2.network.organization_id.

-- Drop table

-- DROP TABLE public.organization;

CREATE TABLE public.organization (
	id bigserial NOT NULL,
	"name" varchar(255) NOT NULL,
	contact_email varchar(255) NOT NULL,
	repair_team_email varchar(255) NULL,
	"status" public."status" NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	"org_type" public."org_type" DEFAULT 'client'::org_type NOT NULL,
	lang public."language_tag_type" NOT NULL,
	slug varchar(255) DEFAULT ''::character varying NOT NULL,
	coordinate_center public.geography(point, 4326) DEFAULT st_geomfromtext('POINT(0 0)'::text, 4326) NOT NULL,
	logo_path varchar(1024) DEFAULT NULL::character varying NULL,
	network_id int8 NULL,
	CONSTRAINT organization_pkey PRIMARY KEY (id),
	CONSTRAINT organization_slug_unique UNIQUE (slug)
);
CREATE INDEX idx_organization_network_id ON public.organization USING btree (network_id);


-- public.organization_contact definition

-- Drop table

-- DROP TABLE public.organization_contact;

CREATE TABLE public.organization_contact (
	user_id uuid NOT NULL,
	organization_id int8 NOT NULL,
	contact_type varchar(50) NOT NULL,
	CONSTRAINT pk_organization_contact PRIMARY KEY (user_id, organization_id, contact_type),
	CONSTRAINT uq_organization_contact UNIQUE (user_id, organization_id),
	CONSTRAINT uq_organization_contact_type UNIQUE (organization_id, contact_type)
);


-- public.organization_product_junction definition

-- Drop table

-- DROP TABLE public.organization_product_junction;

CREATE TABLE public.organization_product_junction (
	organization_id bigserial NOT NULL,
	product_id varchar(255) DEFAULT 'omra'::"productId" NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT organization_product_junction_organization_id_product_id_unique UNIQUE (organization_id, product_id)
);
CREATE INDEX organization_product_junction_organization_id_idx ON public.organization_product_junction USING btree (organization_id);
CREATE INDEX organization_product_junction_product_id_idx ON public.organization_product_junction USING btree (product_id);


-- public.organization_product_module definition

-- Drop table

-- DROP TABLE public.organization_product_module;

CREATE TABLE public.organization_product_module (
	organization_id int8 NOT NULL,
	product_id varchar(255) NOT NULL,
	module_id varchar(64) NOT NULL,
	is_enabled bool DEFAULT true NOT NULL,
	config jsonb NULL,
	starts_at timestamptz NULL,
	expires_at timestamptz NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT org_product_module_pk PRIMARY KEY (organization_id, product_id, module_id)
);
CREATE INDEX idx_org_product_module_module ON public.organization_product_module USING btree (product_id, module_id);


-- public.sector definition
-- [Sprint] Secteur d'une organisation (1 campagne sector_campaign = 1 secteur).

-- Drop table

-- DROP TABLE public.sector;

CREATE TABLE public.sector (
	id bigserial NOT NULL,
	organization_id int8 NOT NULL,
	"name" varchar(255) NOT NULL,
	localisation varchar(255) NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT sector_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_sector_organization_id ON public.sector USING btree (organization_id);


-- public.sector_campaign definition
-- [Sprint] Campagne Sprint (ex sector_analysis).
-- Les données réseau de la campagne ne sont PAS en base : CSV en object storage
-- référencé par data_path (+ kml_path, accessories_path).
-- year/diameter/material_unknown_percentage : calculés depuis ce CSV à la création,
-- pondérés par la LONGUEUR (pas le nombre de tronçons). Inconnu = diamètre NULL ou 0,
-- année NULL ou sentinelle 1700, matériau littéral 'Unknown'. Valeurs figées :
-- comparer à platformv2.network_arc mesure l'évolution des données, pas une erreur.
-- quote_number : posé par un système externe (format 'D-YYYY-NNN' côté HubSpot).

-- Drop table

-- DROP TABLE public.sector_campaign;

CREATE TABLE public.sector_campaign (
	id int8 DEFAULT nextval('sector_analysis_id_seq'::regclass) NOT NULL,
	sector_id int8 NOT NULL,
	data_path text NULL,
	plastic_percentage int2 DEFAULT 0 NOT NULL,
	cast_iron_percentage int2 DEFAULT 0 NOT NULL,
	other_materials_percentage int2 DEFAULT 0 NOT NULL,
	target int2 DEFAULT 0 NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	kml_path text NULL,
	accessories_path text NULL,
	"status" public."sector_campaign_status" DEFAULT 'work_field_started'::sector_campaign_status NOT NULL,
	night_flow_start float4 NULL,
	night_flow_end float4 NULL,
	length int4 NULL,
	"location" public.geography NULL,
	lpis jsonb DEFAULT '["lpi1", "lpi4"]'::jsonb NOT NULL,
	unknown_material_percentage int2 NULL,
	diameter_range varchar(255) NULL,
	diameter_unknown_percentage int2 NULL,
	year_range varchar(255) NULL,
	year_unknown_percentage int2 NULL,
	quote_number varchar(255) NULL,
	lpi1_length float8 NULL,
	lpi2_length float8 NULL,
	lpi3_length float8 NULL,
	lpi4_length float8 NULL,
	length_trc float8 NULL,
	length_brc float8 NULL,
	CONSTRAINT sector_analysis_pkey PRIMARY KEY (id)
);


-- public.sector_campaign_assignment definition

-- Drop table

-- DROP TABLE public.sector_campaign_assignment;

CREATE TABLE public.sector_campaign_assignment (
	id int8 DEFAULT nextval('sector_analysis_assignment_id_seq'::regclass) NOT NULL,
	sector_campaign_id int8 NOT NULL,
	user_id uuid NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	"status" public."sector_campaign_assignment_status" DEFAULT 'work_field_in_progress'::sector_campaign_assignment_status NOT NULL,
	work_field_start_date timestamptz NULL,
	work_field_finish_date timestamptz NULL,
	CONSTRAINT sector_analysis_assignment_pkey PRIMARY KEY (id),
	CONSTRAINT sector_campaign_assignment_sector_campaign_id_user_id_unique UNIQUE (sector_campaign_id, user_id)
);
CREATE INDEX idx_sca_sector_campaign_id ON public.sector_campaign_assignment USING btree (sector_campaign_id);
CREATE INDEX idx_sca_user_id ON public.sector_campaign_assignment USING btree (user_id);


-- public.sector_meter definition

-- Drop table

-- DROP TABLE public.sector_meter;

CREATE TABLE public.sector_meter (
	sector_id varchar(255) NOT NULL,
	network_id int8 NOT NULL,
	formula_id int8 NOT NULL,
	volume jsonb DEFAULT '{"target": null}'::jsonb NOT NULL,
	nightflow jsonb DEFAULT '{"target": null}'::jsonb NOT NULL,
	minflow jsonb DEFAULT '{"target": null}'::jsonb NOT NULL,
	flow jsonb DEFAULT '{"target": null}'::jsonb NOT NULL,
	color varchar(10) DEFAULT NULL::character varying NULL,
	CONSTRAINT sector_meter_sector_id_network_id_formula_id_unique UNIQUE (network_id, formula_id)
);
CREATE INDEX sector_meter_formula_id_index ON public.sector_meter USING btree (formula_id, network_id);
CREATE INDEX sector_meter_network_id_index ON public.sector_meter USING btree (network_id);
CREATE INDEX sector_meter_sector_id_index ON public.sector_meter USING btree (sector_id, network_id);


-- public.sentinel_progression definition

-- Drop table

-- DROP TABLE public.sentinel_progression;

CREATE TABLE public.sentinel_progression (
	id bigserial NOT NULL,
	ordonnance_id int8 NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT sentinel_progression_pkey PRIMARY KEY (id)
);


-- public.sentinel_progression_pipes definition

-- Drop table

-- DROP TABLE public.sentinel_progression_pipes;

CREATE TABLE public.sentinel_progression_pipes (
	pipe_id varchar(255) NULL,
	network_id int8 NULL,
	ordonnance_id int8 NULL,
	progression_id int8 NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT sentinel_progression_pipes_pipe_id_ordonnance_id_unique UNIQUE (pipe_id, ordonnance_id),
	CONSTRAINT sentinel_progression_pipes_pipe_id_progression_id_unique UNIQUE (pipe_id, progression_id)
);
CREATE INDEX sentinel_progression_pipes_ordonnance_id_index ON public.sentinel_progression_pipes USING btree (ordonnance_id);
CREATE INDEX sentinel_progression_pipes_progression_id_index ON public.sentinel_progression_pipes USING btree (progression_id);


-- public."user" definition

-- Drop table

-- DROP TABLE public."user";

CREATE TABLE public."user" (
	id uuid DEFAULT gen_random_uuid() NOT NULL,
	cognito_pool_id varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	firstname varchar(255) NOT NULL,
	lastname varchar(255) NOT NULL,
	phone_number varchar(255) NULL,
	"status" public."status" NOT NULL,
	lang public."language_tag_type" NOT NULL,
	organization_id int8 NOT NULL,
	created_by varchar(255) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	auth_provider public."authProvider" DEFAULT 'cognito'::"authProvider" NOT NULL,
	migration_required bool DEFAULT false NOT NULL,
	external_auth_id varchar(255) NULL,
	zitadel_migration_date timestamp NULL,
	CONSTRAINT user_email_key UNIQUE (email),
	CONSTRAINT user_pkey PRIMARY KEY (id)
);
CREATE UNIQUE INDEX idx_user_external_auth_id ON public."user" USING btree (external_auth_id) WHERE (external_auth_id IS NOT NULL);


-- public.user_role definition

-- Drop table

-- DROP TABLE public.user_role;

CREATE TABLE public.user_role (
	user_id uuid NOT NULL,
	"role" varchar NOT NULL,
	CONSTRAINT user_role_user_id_role_pk PRIMARY KEY (user_id, role)
);
CREATE INDEX user_role_user_id_idx ON public.user_role USING btree (user_id);


-- public.accessory foreign keys

ALTER TABLE public.accessory ADD CONSTRAINT accessory_network_id_fkey FOREIGN KEY (network_id) REFERENCES public.network(id) ON DELETE CASCADE ON UPDATE CASCADE;


-- public.accessory_device_meter foreign keys

ALTER TABLE public.accessory_device_meter ADD CONSTRAINT accessory_device_meter_external_id_network_id_fkey FOREIGN KEY (external_id,network_id) REFERENCES public.external_device_meter(external_id,network_id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE public.accessory_device_meter ADD CONSTRAINT accessory_device_meter_id_network_id_fkey FOREIGN KEY (accessory_id,network_id) REFERENCES public.accessory(accessory_id,network_id) ON DELETE CASCADE ON UPDATE CASCADE;


-- public.accessory_vanne foreign keys

ALTER TABLE public.accessory_vanne ADD CONSTRAINT accessory_vanne_accessory_id_network_id_fkey FOREIGN KEY (accessory_id,network_id) REFERENCES public.accessory(accessory_id,network_id) ON DELETE CASCADE ON UPDATE CASCADE;


-- public.aggregated_event foreign keys

ALTER TABLE public.aggregated_event ADD CONSTRAINT external_device_meter_id_network_id_fk FOREIGN KEY (external_device_meter_id,network_id) REFERENCES public.external_device_meter(external_id,network_id) ON DELETE CASCADE ON UPDATE CASCADE;


-- public.aggregated_event_network_id_12 foreign keys

-- public.aggregated_event_network_id_12_year_2021 foreign keys

-- public.aggregated_event_network_id_12_year_2022 foreign keys

-- public.aggregated_event_network_id_12_year_2023 foreign keys

-- public.aggregated_event_network_id_12_year_2024 foreign keys

-- public.aggregated_event_network_id_12_year_2025 foreign keys

-- public.aggregated_event_network_id_13 foreign keys

-- public.aggregated_event_network_id_13_year_2021 foreign keys

-- public.aggregated_event_network_id_13_year_2022 foreign keys

-- public.aggregated_event_network_id_13_year_2023 foreign keys

-- public.aggregated_event_network_id_13_year_2024 foreign keys

-- public.aggregated_event_network_id_13_year_2025 foreign keys

-- public.assignment_progression foreign keys

ALTER TABLE public.assignment_progression ADD CONSTRAINT assignment_progression_sector_campaign_assignment_id_fkey FOREIGN KEY (sector_campaign_assignment_id) REFERENCES public.sector_campaign_assignment(id) ON DELETE CASCADE;
ALTER TABLE public.assignment_progression ADD CONSTRAINT assignment_progression_sector_campaign_id_fkey FOREIGN KEY (sector_campaign_id) REFERENCES public.sector_campaign(id) ON DELETE CASCADE;
ALTER TABLE public.assignment_progression ADD CONSTRAINT assignment_progression_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);


-- public.assignment_progression_pipe foreign keys

ALTER TABLE public.assignment_progression_pipe ADD CONSTRAINT assignment_progression_pipe_assignment_progression_id_fkey FOREIGN KEY (assignment_progression_id) REFERENCES public.assignment_progression(id) ON DELETE CASCADE;
ALTER TABLE public.assignment_progression_pipe ADD CONSTRAINT assignment_progression_pipe_sector_campaign_id_fkey FOREIGN KEY (sector_campaign_id) REFERENCES public.sector_campaign(id) ON DELETE CASCADE;


-- public.campaign_event foreign keys

ALTER TABLE public.campaign_event ADD CONSTRAINT campaign_event_sector_campaign_id_fkey FOREIGN KEY (sector_campaign_id) REFERENCES public.sector_campaign(id) ON DELETE CASCADE;
ALTER TABLE public.campaign_event ADD CONSTRAINT campaign_event_sector_id_fkey FOREIGN KEY (sector_id) REFERENCES public.sector(id) ON DELETE CASCADE;
ALTER TABLE public.campaign_event ADD CONSTRAINT campaign_event_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);


-- public.computed_result foreign keys

ALTER TABLE public.computed_result ADD CONSTRAINT computed_result_formula_id_fkey FOREIGN KEY (formula_id) REFERENCES public.formula(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE public.computed_result ADD CONSTRAINT computed_result_network_id_fkey FOREIGN KEY (network_id) REFERENCES public.network(id) ON DELETE CASCADE ON UPDATE CASCADE;


-- public.computed_result_network_id_12 foreign keys

-- public.computed_result_network_id_13 foreign keys

-- public.computed_result_network_id_3 foreign keys

-- public.copilot_plus_chat_grades foreign keys

ALTER TABLE public.copilot_plus_chat_grades ADD CONSTRAINT fk_copilot_plus_chat_grades_organization FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;


-- public.external_device_meter foreign keys

ALTER TABLE public.external_device_meter ADD CONSTRAINT external_device_meter_network_id_fkey FOREIGN KEY (network_id) REFERENCES public.network(id) ON DELETE CASCADE ON UPDATE CASCADE;


-- public.formula foreign keys

ALTER TABLE public.formula ADD CONSTRAINT formula_network_id_fkey FOREIGN KEY (network_id) REFERENCES public.network(id) ON DELETE CASCADE ON UPDATE CASCADE;


-- public.formula_construction foreign keys

ALTER TABLE public.formula_construction ADD CONSTRAINT external_device_meter_id_network_id_fkey FOREIGN KEY (external_device_meter_id,network_id) REFERENCES public.external_device_meter(external_id,network_id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE public.formula_construction ADD CONSTRAINT formula_construction_formula_id_fkey FOREIGN KEY (formula_id) REFERENCES public.formula(id) ON DELETE CASCADE ON UPDATE CASCADE;


-- public.logger_event foreign keys

ALTER TABLE public.logger_event ADD CONSTRAINT logger_event_logger_id_fkey FOREIGN KEY (logger_id) REFERENCES public.logger_inventory(id);
ALTER TABLE public.logger_event ADD CONSTRAINT logger_event_network_id_pipe_id_fkey FOREIGN KEY (network_id,pipe_id) REFERENCES <?>() ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE public.logger_event ADD CONSTRAINT logger_event_ordonnance_id_fkey FOREIGN KEY (ordonnance_id) REFERENCES public.network_ordonnance(id);
ALTER TABLE public.logger_event ADD CONSTRAINT logger_event_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);


-- public.logger_inventory foreign keys

ALTER TABLE public.logger_inventory ADD CONSTRAINT logger_inventory_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id);
ALTER TABLE public.logger_inventory ADD CONSTRAINT logger_inventory_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);


-- public.nautilus_message foreign keys

ALTER TABLE public.nautilus_message ADD CONSTRAINT fk_nautilus_message_thread FOREIGN KEY (thread_id) REFERENCES public.nautilus_thread(id) ON DELETE CASCADE;


-- public.nautilus_thread foreign keys

ALTER TABLE public.nautilus_thread ADD CONSTRAINT fk_nautilus_thread_user FOREIGN KEY (user_id) REFERENCES public."user"(id) ON DELETE CASCADE;


-- public.network foreign keys

ALTER TABLE public.network ADD CONSTRAINT network_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;


-- public.network_ordonnance foreign keys

ALTER TABLE public.network_ordonnance ADD CONSTRAINT sector_meter_sector_id_network_id_fkey FOREIGN KEY (sector_id,network_id) REFERENCES public.network_sector(sector_id,network_id) ON DELETE CASCADE ON UPDATE CASCADE;


-- public.network_pipe foreign keys

ALTER TABLE public.network_pipe ADD CONSTRAINT network_pipe_network_id_fkey FOREIGN KEY (network_id) REFERENCES public.network(id) ON DELETE CASCADE;
ALTER TABLE public.network_pipe ADD CONSTRAINT network_pipe_network_sector_sector_id_network_id_fkey FOREIGN KEY (sector_id,network_id) REFERENCES public.network_sector(sector_id,network_id) ON DELETE CASCADE ON UPDATE CASCADE;


-- public.network_pipe_12 foreign keys

-- public.network_pipe_13 foreign keys

-- public.network_sector foreign keys

ALTER TABLE public.network_sector ADD CONSTRAINT network_sector_network_id_fkey FOREIGN KEY (network_id) REFERENCES public.network(id) ON DELETE CASCADE ON UPDATE CASCADE;


-- public.nt_copilote_history foreign keys

ALTER TABLE public.nt_copilote_history ADD CONSTRAINT nt_copilote_history_numerical_twin_id_fkey FOREIGN KEY (numerical_twin_id) REFERENCES public.numerical_twin(id) ON DELETE CASCADE;


-- public.nt_cost_matrix foreign keys

ALTER TABLE public.nt_cost_matrix ADD CONSTRAINT nt_cost_matrix_numerical_twin_id_fkey FOREIGN KEY (numerical_twin_id) REFERENCES public.numerical_twin(id) ON DELETE CASCADE;


-- public.nt_network foreign keys

ALTER TABLE public.nt_network ADD CONSTRAINT nt_network_numerical_twin_id_fkey FOREIGN KEY (numerical_twin_id) REFERENCES public.numerical_twin(id) ON DELETE CASCADE;


-- public.nt_network_sector foreign keys

ALTER TABLE public.nt_network_sector ADD CONSTRAINT nt_network_sector_nt_network_id_fkey FOREIGN KEY (nt_network_id) REFERENCES public.nt_network(id) ON DELETE CASCADE;


-- public.nt_opportunity foreign keys

ALTER TABLE public.nt_opportunity ADD CONSTRAINT nt_opportunity_numerical_twin_id_fkey FOREIGN KEY (numerical_twin_id) REFERENCES public.numerical_twin(id) ON DELETE CASCADE;


-- public.nt_opportunity_pipe foreign keys

ALTER TABLE public.nt_opportunity_pipe ADD CONSTRAINT nt_opportunity_pipe_nt_opportunity_id_fkey FOREIGN KEY (nt_opportunity_id) REFERENCES public.nt_opportunity(id) ON DELETE CASCADE;
ALTER TABLE public.nt_opportunity_pipe ADD CONSTRAINT nt_opportunity_pipe_numerical_twin_id_fkey FOREIGN KEY (numerical_twin_id) REFERENCES public.numerical_twin(id) ON DELETE CASCADE;


-- public.nt_renovation foreign keys

ALTER TABLE public.nt_renovation ADD CONSTRAINT nt_renovation_numerical_twin_id_fkey FOREIGN KEY (numerical_twin_id) REFERENCES public.numerical_twin(id) ON DELETE CASCADE;
ALTER TABLE public.nt_renovation ADD CONSTRAINT nt_renovation_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.numerical_twin_scenario(id) ON DELETE CASCADE;


-- public.nt_renovation_pipe foreign keys

ALTER TABLE public.nt_renovation_pipe ADD CONSTRAINT nt_renovation_pipe_nt_renovation_id_fkey FOREIGN KEY (nt_renovation_id) REFERENCES public.nt_renovation(id) ON DELETE CASCADE;
ALTER TABLE public.nt_renovation_pipe ADD CONSTRAINT nt_renovation_pipe_numerical_twin_id_fkey FOREIGN KEY (numerical_twin_id) REFERENCES public.numerical_twin(id) ON DELETE CASCADE;


-- public.numerical_twin foreign keys

ALTER TABLE public.numerical_twin ADD CONSTRAINT numerical_twin_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;


-- public.numerical_twin_recommendation foreign keys

ALTER TABLE public.numerical_twin_recommendation ADD CONSTRAINT numerical_twin_recommendation_numerical_twin_id_fkey FOREIGN KEY (numerical_twin_id) REFERENCES public.numerical_twin(id) ON DELETE CASCADE;
ALTER TABLE public.numerical_twin_recommendation ADD CONSTRAINT numerical_twin_recommendation_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.numerical_twin_scenario(id);


-- public.numerical_twin_scenario foreign keys

ALTER TABLE public.numerical_twin_scenario ADD CONSTRAINT numerical_twin_scenario_numerical_twin_id_fkey FOREIGN KEY (numerical_twin_id) REFERENCES public.numerical_twin(id) ON DELETE CASCADE;
ALTER TABLE public.numerical_twin_scenario ADD CONSTRAINT numerical_twin_scenario_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);


-- public.numerical_twin_scenario_chantier foreign keys

ALTER TABLE public.numerical_twin_scenario_chantier ADD CONSTRAINT numerical_twin_scenario_chantier_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.numerical_twin_scenario(id) ON DELETE CASCADE;


-- public.onboarding foreign keys

ALTER TABLE public.onboarding ADD CONSTRAINT onboarding_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;


-- public.onboarding_event foreign keys

ALTER TABLE public.onboarding_event ADD CONSTRAINT onboarding_event_onboarding_id_fkey FOREIGN KEY (onboarding_id) REFERENCES public.onboarding(id) ON DELETE CASCADE;


-- public.ordonnance_leak foreign keys

ALTER TABLE public.ordonnance_leak ADD CONSTRAINT ordonnance_leak_network_id_fkey FOREIGN KEY (network_id) REFERENCES public.network(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE public.ordonnance_leak ADD CONSTRAINT ordonnance_leak_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);


-- public.org_products_settings foreign keys

ALTER TABLE public.org_products_settings ADD CONSTRAINT org_products_settings_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;
ALTER TABLE public.org_products_settings ADD CONSTRAINT org_products_settings_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;


-- public.organization foreign keys

ALTER TABLE public.organization ADD CONSTRAINT fk_organization_network FOREIGN KEY (network_id) REFERENCES platformv2.network(id) ON DELETE SET NULL;


-- public.organization_contact foreign keys

ALTER TABLE public.organization_contact ADD CONSTRAINT fk_organization FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;
ALTER TABLE public.organization_contact ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES public."user"(id) ON DELETE CASCADE;


-- public.organization_product_junction foreign keys

ALTER TABLE public.organization_product_junction ADD CONSTRAINT organization_product_junction_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;
ALTER TABLE public.organization_product_junction ADD CONSTRAINT organization_product_junction_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);


-- public.organization_product_module foreign keys

ALTER TABLE public.organization_product_module ADD CONSTRAINT org_product_module_junction_fk FOREIGN KEY (organization_id,product_id) REFERENCES public.organization_product_junction(organization_id,product_id) ON DELETE CASCADE;
ALTER TABLE public.organization_product_module ADD CONSTRAINT org_product_module_module_fk FOREIGN KEY (product_id,module_id) REFERENCES public.product_module(product_id,id) ON DELETE CASCADE;


-- public.sector foreign keys

ALTER TABLE public.sector ADD CONSTRAINT sector_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;


-- public.sector_campaign foreign keys

ALTER TABLE public.sector_campaign ADD CONSTRAINT sector_campaign_sector_id_fkey FOREIGN KEY (sector_id) REFERENCES public.sector(id) ON DELETE CASCADE;


-- public.sector_campaign_assignment foreign keys

ALTER TABLE public.sector_campaign_assignment ADD CONSTRAINT sector_campaign_assignment_sector_campaign_id_fkey FOREIGN KEY (sector_campaign_id) REFERENCES public.sector_campaign(id) ON DELETE CASCADE;
ALTER TABLE public.sector_campaign_assignment ADD CONSTRAINT sector_campaign_assignment_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON DELETE CASCADE;


-- public.sector_meter foreign keys

ALTER TABLE public.sector_meter ADD CONSTRAINT sector_meter_formula_id_network_id_fkey FOREIGN KEY (formula_id,network_id) REFERENCES public.formula(id,network_id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE public.sector_meter ADD CONSTRAINT sector_meter_sector_id_network_id_fkey FOREIGN KEY (sector_id,network_id) REFERENCES public.network_sector(sector_id,network_id) ON DELETE CASCADE ON UPDATE CASCADE;


-- public.sentinel_progression foreign keys

ALTER TABLE public.sentinel_progression ADD CONSTRAINT sentinel_progression_ordonnance_id_fkey FOREIGN KEY (ordonnance_id) REFERENCES public.network_ordonnance(id) ON DELETE CASCADE;


-- public.sentinel_progression_pipes foreign keys

ALTER TABLE public.sentinel_progression_pipes ADD CONSTRAINT sentinel_progression_pipes_network_id_fkey FOREIGN KEY (network_id) REFERENCES public.network(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE public.sentinel_progression_pipes ADD CONSTRAINT sentinel_progression_pipes_network_id_pipe_id_fkey FOREIGN KEY (network_id,pipe_id) REFERENCES <?>() ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE public.sentinel_progression_pipes ADD CONSTRAINT sentinel_progression_pipes_ordonnance_id_fkey FOREIGN KEY (ordonnance_id) REFERENCES public.network_ordonnance(id) ON DELETE CASCADE;
ALTER TABLE public.sentinel_progression_pipes ADD CONSTRAINT sentinel_progression_pipes_progression_id_fkey FOREIGN KEY (progression_id) REFERENCES public.sentinel_progression(id) ON DELETE CASCADE;


-- public."user" foreign keys

ALTER TABLE public."user" ADD CONSTRAINT user_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;


-- public.user_role foreign keys

ALTER TABLE public.user_role ADD CONSTRAINT fk_user_role_role FOREIGN KEY ("role") REFERENCES core.roles("name");
ALTER TABLE public.user_role ADD CONSTRAINT user_role_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON DELETE CASCADE;


-- public.geography_columns source

CREATE OR REPLACE VIEW public.geography_columns
AS SELECT current_database() AS f_table_catalog,
    n.nspname AS f_table_schema,
    c.relname AS f_table_name,
    a.attname AS f_geography_column,
    postgis_typmod_dims(a.atttypmod) AS coord_dimension,
    postgis_typmod_srid(a.atttypmod) AS srid,
    postgis_typmod_type(a.atttypmod) AS type
   FROM pg_class c,
    pg_attribute a,
    pg_type t,
    pg_namespace n
  WHERE t.typname = 'geography'::name AND a.attisdropped = false AND a.atttypid = t.oid AND a.attrelid = c.oid AND c.relnamespace = n.oid AND (c.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'm'::"char", 'f'::"char", 'p'::"char"])) AND NOT pg_is_other_temp_schema(c.relnamespace) AND has_table_privilege(c.oid, 'SELECT'::text);


-- public.geometry_columns source

CREATE OR REPLACE VIEW public.geometry_columns
AS SELECT current_database()::character varying(256) AS f_table_catalog,
    n.nspname AS f_table_schema,
    c.relname AS f_table_name,
    a.attname AS f_geometry_column,
    COALESCE(postgis_typmod_dims(a.atttypmod), sn.ndims, 2) AS coord_dimension,
    COALESCE(NULLIF(postgis_typmod_srid(a.atttypmod), 0), sr.srid, 0) AS srid,
    replace(replace(COALESCE(NULLIF(upper(postgis_typmod_type(a.atttypmod)), 'GEOMETRY'::text), st.type, 'GEOMETRY'::text), 'ZM'::text, ''::text), 'Z'::text, ''::text)::character varying(30) AS type
   FROM pg_class c
     JOIN pg_attribute a ON a.attrelid = c.oid AND NOT a.attisdropped
     JOIN pg_namespace n ON c.relnamespace = n.oid
     JOIN pg_type t ON a.atttypid = t.oid
     LEFT JOIN ( SELECT s.connamespace,
            s.conrelid,
            s.conkey,
            replace(split_part(s.consrc, ''''::text, 2), ')'::text, ''::text) AS type
           FROM ( SELECT pg_constraint.connamespace,
                    pg_constraint.conrelid,
                    pg_constraint.conkey,
                    pg_get_constraintdef(pg_constraint.oid) AS consrc
                   FROM pg_constraint) s
          WHERE s.consrc ~~* '%geometrytype(% = %'::text) st ON st.connamespace = n.oid AND st.conrelid = c.oid AND (a.attnum = ANY (st.conkey))
     LEFT JOIN ( SELECT s.connamespace,
            s.conrelid,
            s.conkey,
            replace(split_part(s.consrc, ' = '::text, 2), ')'::text, ''::text)::integer AS ndims
           FROM ( SELECT pg_constraint.connamespace,
                    pg_constraint.conrelid,
                    pg_constraint.conkey,
                    pg_get_constraintdef(pg_constraint.oid) AS consrc
                   FROM pg_constraint) s
          WHERE s.consrc ~~* '%ndims(% = %'::text) sn ON sn.connamespace = n.oid AND sn.conrelid = c.oid AND (a.attnum = ANY (sn.conkey))
     LEFT JOIN ( SELECT s.connamespace,
            s.conrelid,
            s.conkey,
            replace(replace(split_part(s.consrc, ' = '::text, 2), ')'::text, ''::text), '('::text, ''::text)::integer AS srid
           FROM ( SELECT pg_constraint.connamespace,
                    pg_constraint.conrelid,
                    pg_constraint.conkey,
                    pg_get_constraintdef(pg_constraint.oid) AS consrc
                   FROM pg_constraint) s
          WHERE s.consrc ~~* '%srid(% = %'::text) sr ON sr.connamespace = n.oid AND sr.conrelid = c.oid AND (a.attnum = ANY (sr.conkey))
  WHERE (c.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'm'::"char", 'f'::"char", 'p'::"char"])) AND NOT c.relname = 'raster_columns'::name AND t.typname = 'geometry'::name AND NOT pg_is_other_temp_schema(c.relnamespace) AND has_table_privilege(c.oid, 'SELECT'::text);


-- public.raster_columns source

CREATE OR REPLACE VIEW public.raster_columns
AS SELECT current_database() AS r_table_catalog,
    n.nspname AS r_table_schema,
    c.relname AS r_table_name,
    a.attname AS r_raster_column,
    COALESCE(_raster_constraint_info_srid(n.nspname, c.relname, a.attname), ( SELECT st_srid('010100000000000000000000000000000000000000'::geometry) AS st_srid)) AS srid,
    _raster_constraint_info_scale(n.nspname, c.relname, a.attname, 'x'::bpchar) AS scale_x,
    _raster_constraint_info_scale(n.nspname, c.relname, a.attname, 'y'::bpchar) AS scale_y,
    _raster_constraint_info_blocksize(n.nspname, c.relname, a.attname, 'width'::text) AS blocksize_x,
    _raster_constraint_info_blocksize(n.nspname, c.relname, a.attname, 'height'::text) AS blocksize_y,
    COALESCE(_raster_constraint_info_alignment(n.nspname, c.relname, a.attname), false) AS same_alignment,
    COALESCE(_raster_constraint_info_regular_blocking(n.nspname, c.relname, a.attname), false) AS regular_blocking,
    _raster_constraint_info_num_bands(n.nspname, c.relname, a.attname) AS num_bands,
    _raster_constraint_info_pixel_types(n.nspname, c.relname, a.attname) AS pixel_types,
    _raster_constraint_info_nodata_values(n.nspname, c.relname, a.attname) AS nodata_values,
    _raster_constraint_info_out_db(n.nspname, c.relname, a.attname) AS out_db,
    _raster_constraint_info_extent(n.nspname, c.relname, a.attname) AS extent,
    COALESCE(_raster_constraint_info_index(n.nspname, c.relname, a.attname), false) AS spatial_index
   FROM pg_class c,
    pg_attribute a,
    pg_type t,
    pg_namespace n
  WHERE t.typname = 'raster'::name AND a.attisdropped = false AND a.atttypid = t.oid AND a.attrelid = c.oid AND c.relnamespace = n.oid AND (c.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'm'::"char", 'f'::"char", 'p'::"char"])) AND NOT pg_is_other_temp_schema(c.relnamespace) AND has_table_privilege(c.oid, 'SELECT'::text);


-- public.raster_overviews source

CREATE OR REPLACE VIEW public.raster_overviews
AS SELECT current_database() AS o_table_catalog,
    n.nspname AS o_table_schema,
    c.relname AS o_table_name,
    a.attname AS o_raster_column,
    current_database() AS r_table_catalog,
    split_part(split_part(s.consrc, '''::name'::text, 1), ''''::text, 2)::name AS r_table_schema,
    split_part(split_part(s.consrc, '''::name'::text, 2), ''''::text, 2)::name AS r_table_name,
    split_part(split_part(s.consrc, '''::name'::text, 3), ''''::text, 2)::name AS r_raster_column,
    TRIM(BOTH FROM split_part(s.consrc, ','::text, 2))::integer AS overview_factor
   FROM pg_class c,
    pg_attribute a,
    pg_type t,
    pg_namespace n,
    ( SELECT pg_constraint.connamespace,
            pg_constraint.conrelid,
            pg_constraint.conkey,
            pg_get_constraintdef(pg_constraint.oid) AS consrc
           FROM pg_constraint) s
  WHERE t.typname = 'raster'::name AND a.attisdropped = false AND a.atttypid = t.oid AND a.attrelid = c.oid AND c.relnamespace = n.oid AND (c.relkind::text = ANY (ARRAY['r'::character(1), 'v'::character(1), 'm'::character(1), 'f'::character(1)]::text[])) AND s.connamespace = n.oid AND s.conrelid = c.oid AND s.consrc ~~ '%_overview_constraint(%'::text AND NOT pg_is_other_temp_schema(c.relnamespace) AND has_table_privilege(c.oid, 'SELECT'::text);



-- DROP FUNCTION public.__st_countagg_transfn(agg_count, raster, int4, bool, float8);

CREATE OR REPLACE FUNCTION public.__st_countagg_transfn(agg agg_count, rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, sample_percent double precision DEFAULT 1)
 RETURNS agg_count
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_count bigint;
		rtn_agg agg_count;
	BEGIN

		-- only process parameter args once
		IF agg IS NULL THEN
			rtn_agg.count := 0;

			IF nband < 1 THEN
				RAISE EXCEPTION 'Band index must be greater than zero (1-based)';
			ELSE
				rtn_agg.nband := nband;
			END IF;

			IF exclude_nodata_value IS FALSE THEN
				rtn_agg.exclude_nodata_value := FALSE;
			ELSE
				rtn_agg.exclude_nodata_value := TRUE;
			END IF;

			IF sample_percent < 0. OR sample_percent > 1. THEN
				RAISE EXCEPTION 'Sample percent must be between zero and one';
			ELSE
				rtn_agg.sample_percent := sample_percent;
			END IF;
		ELSE
			rtn_agg := agg;
		END IF;

		IF rast IS NOT NULL THEN
			IF rtn_agg.exclude_nodata_value IS FALSE THEN
				SELECT width * height INTO _count FROM public.ST_Metadata(rast);
			ELSE
				SELECT count INTO _count FROM public._ST_summarystats(
					rast,
				 	rtn_agg.nband, rtn_agg.exclude_nodata_value,
					rtn_agg.sample_percent
				);
			END IF;
		END IF;

		rtn_agg.count := rtn_agg.count + _count;
		RETURN rtn_agg;
	END;
	$function$
;

-- DROP FUNCTION public._add_overview_constraint(name, name, name, name, name, name, int4);

CREATE OR REPLACE FUNCTION public._add_overview_constraint(ovschema name, ovtable name, ovcolumn name, refschema name, reftable name, refcolumn name, factor integer)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		fqtn text;
		cn name;
		sql text;
	BEGIN
		fqtn := '';
		IF length($1) > 0 THEN
			fqtn := quote_ident($1) || '.';
		END IF;
		fqtn := fqtn || quote_ident($2);

		cn := 'enforce_overview_' || $3;

		sql := 'ALTER TABLE ' || fqtn
			|| ' ADD CONSTRAINT ' || quote_ident(cn)
			|| ' CHECK ( public._overview_constraint(' || quote_ident($3)
			|| ',' || $7
			|| ',' || quote_literal($4)
			|| ',' || quote_literal($5)
			|| ',' || quote_literal($6)
			|| '))';

		RETURN  public._add_raster_constraint(cn, sql);
	END;
	$function$
;

-- DROP FUNCTION public._add_raster_constraint(name, text);

CREATE OR REPLACE FUNCTION public._add_raster_constraint(cn name, sql text)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	BEGIN
		BEGIN
			EXECUTE sql;
		EXCEPTION
			WHEN duplicate_object THEN
				RAISE NOTICE 'The constraint "%" already exists.  To replace the existing constraint, delete the constraint and call ApplyRasterConstraints again', cn;
			WHEN OTHERS THEN
				RAISE NOTICE 'Unable to add constraint: %', cn;
				RAISE NOTICE 'SQL used for failed constraint: %', sql;
				RAISE NOTICE 'Returned error message: % (%)', SQLERRM, SQLSTATE;
				RETURN FALSE;
		END;

		RETURN TRUE;
	END;
	$function$
;

-- DROP FUNCTION public._add_raster_constraint_alignment(name, name, name);

CREATE OR REPLACE FUNCTION public._add_raster_constraint_alignment(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		fqtn text;
		cn name;
		sql text;
		attr text;
	BEGIN
		fqtn := '';
		IF length($1) > 0 THEN
			fqtn := quote_ident($1) || '.';
		END IF;
		fqtn := fqtn || quote_ident($2);

		cn := 'enforce_same_alignment_' || $3;

		sql := 'SELECT public.st_makeemptyraster(1, 1, upperleftx, upperlefty, scalex, scaley, skewx, skewy, srid) FROM public.st_metadata((SELECT '
			|| quote_ident($3)
			|| ' FROM '
			|| fqtn
			|| ' WHERE '
			|| quote_ident($3)
			|| ' IS NOT NULL LIMIT 1))';
		BEGIN
			EXECUTE sql INTO attr;
		EXCEPTION WHEN OTHERS THEN
			RAISE NOTICE 'Unable to get the alignment of a sample raster: % (%)',
        SQLERRM, SQLSTATE;
			RETURN FALSE;
		END;

		sql := 'ALTER TABLE ' || fqtn ||
			' ADD CONSTRAINT ' || quote_ident(cn) ||
			' CHECK (st_samealignment(' || quote_ident($3) || ', ''' || attr || '''::raster))';
		RETURN  public._add_raster_constraint(cn, sql);
	END;
	$function$
;

-- DROP FUNCTION public._add_raster_constraint_blocksize(name, name, name, text);

CREATE OR REPLACE FUNCTION public._add_raster_constraint_blocksize(rastschema name, rasttable name, rastcolumn name, axis text)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		fqtn text;
		cn name;
		sql text;
		attrset integer[];
		attr integer;
	BEGIN
		IF lower($4) != 'width' AND lower($4) != 'height' THEN
			RAISE EXCEPTION 'axis must be either "width" or "height"';
			RETURN FALSE;
		END IF;

		fqtn := '';
		IF length($1) > 0 THEN
			fqtn := quote_ident($1) || '.';
		END IF;
		fqtn := fqtn || quote_ident($2);

		cn := 'enforce_' || $4 || '_' || $3;

		sql := 'SELECT st_' || $4 || '('
			|| quote_ident($3)
			|| ') FROM ' || fqtn
			|| ' GROUP BY 1 ORDER BY count(*) DESC';
		BEGIN
			attrset := ARRAY[]::integer[];
			FOR attr IN EXECUTE sql LOOP
				attrset := attrset || attr;
			END LOOP;
		EXCEPTION WHEN OTHERS THEN
			RAISE NOTICE 'Unable to get the % of a sample raster: % (%)',
        $4, SQLERRM, SQLSTATE;
			RETURN FALSE;
		END;

		sql := 'ALTER TABLE ' || fqtn
			|| ' ADD CONSTRAINT ' || quote_ident(cn)
			|| ' CHECK (st_' || $4 || '('
			|| quote_ident($3)
			|| ') IN (' || array_to_string(attrset, ',') || '))';
		RETURN  public._add_raster_constraint(cn, sql);
	END;
	$function$
;

-- DROP FUNCTION public._add_raster_constraint_coverage_tile(name, name, name);

CREATE OR REPLACE FUNCTION public._add_raster_constraint_coverage_tile(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		fqtn text;
		cn name;
		sql text;

		_scalex double precision;
		_scaley double precision;
		_skewx double precision;
		_skewy double precision;
		_tilewidth integer;
		_tileheight integer;
		_alignment boolean;

		_covextent public.geometry;
		_covrast public.raster;
	BEGIN
		fqtn := '';
		IF length($1) > 0 THEN
			fqtn := quote_ident($1) || '.';
		END IF;
		fqtn := fqtn || quote_ident($2);

		cn := 'enforce_coverage_tile_' || $3;

		-- metadata
		BEGIN
			sql := 'WITH foo AS (SELECT public.ST_Metadata(' || quote_ident($3) || ') AS meta, public.ST_ConvexHull(' || quote_ident($3) || ') AS hull FROM ' || fqtn || ') SELECT max((meta).scalex), max((meta).scaley), max((meta).skewx), max((meta).skewy), max((meta).width), max((meta).height), public.ST_Union(hull) FROM foo';
			EXECUTE sql INTO _scalex, _scaley, _skewx, _skewy, _tilewidth, _tileheight, _covextent;
		EXCEPTION WHEN OTHERS THEN
			RAISE DEBUG 'Unable to get coverage metadata for %.%: % (%)',
        fqtn, quote_ident($3), SQLERRM, SQLSTATE;
      -- TODO: Why not return false here ?
		END;

		-- rasterize extent
		BEGIN
			_covrast := public.ST_AsRaster(_covextent, _scalex, _scaley, '8BUI', 1, 0, NULL, NULL, _skewx, _skewy);
			IF _covrast IS NULL THEN
				RAISE NOTICE 'Unable to create coverage raster. Cannot add coverage tile constraint: % (%)',
          SQLERRM, SQLSTATE;
				RETURN FALSE;
			END IF;

			-- remove band
			_covrast := ST_MakeEmptyRaster(_covrast);
		EXCEPTION WHEN OTHERS THEN
			RAISE NOTICE 'Unable to create coverage raster. Cannot add coverage tile constraint: % (%)',
        SQLERRM, SQLSTATE;
			RETURN FALSE;
		END;

		sql := 'ALTER TABLE ' || fqtn ||
			' ADD CONSTRAINT ' || quote_ident(cn) ||
			' CHECK (st_iscoveragetile(' || quote_ident($3) || ', ''' || _covrast || '''::raster, ' || _tilewidth || ', ' || _tileheight || '))';
		RETURN  public._add_raster_constraint(cn, sql);
	END;
	$function$
;

-- DROP FUNCTION public._add_raster_constraint_extent(name, name, name);

CREATE OR REPLACE FUNCTION public._add_raster_constraint_extent(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT COST 9000
AS $function$
	DECLARE
		fqtn text;
		cn name;
		sql text;
		attr text; srid integer;
	BEGIN
		fqtn := '';
		IF length(rastschema) > 0 THEN
			fqtn := quote_ident(rastschema) || '.';
		END IF;
		fqtn := fqtn || quote_ident(rasttable);

		sql := 'SELECT public.ST_SRID('
			|| quote_ident(rastcolumn)
			|| ') FROM '
			|| fqtn
			|| ' WHERE '
			|| quote_ident(rastcolumn)
			|| ' IS NOT NULL LIMIT 1;';
                EXECUTE sql INTO srid;

    IF srid IS NULL THEN
      RETURN false;
    END IF;

		cn := 'enforce_max_extent_' || rastcolumn;

		sql := 'SELECT public.st_ashexewkb( public.st_setsrid( public.st_extent( public.st_envelope('
			|| quote_ident(rastcolumn)
			|| ')), ' || srid || ')) FROM '
			|| fqtn;
		EXECUTE sql INTO attr;

		-- NOTE: I put NOT VALID to prevent the costly step of validating the constraint
		sql := 'ALTER TABLE ' || fqtn
			|| ' ADD CONSTRAINT ' || quote_ident(cn)
			|| ' CHECK ( public.st_envelope('
			|| quote_ident(rastcolumn)
			|| ') @ ''' || attr || '''::geometry) NOT VALID';
		RETURN  public._add_raster_constraint(cn, sql);
	END;
	$function$
;

-- DROP FUNCTION public._add_raster_constraint_nodata_values(name, name, name);

CREATE OR REPLACE FUNCTION public._add_raster_constraint_nodata_values(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		fqtn text;
		cn name;
		sql text;
		attr numeric[];
		max int;
	BEGIN
		fqtn := '';
		IF length($1) > 0 THEN
			fqtn := quote_ident($1) || '.';
		END IF;
		fqtn := fqtn || quote_ident($2);

		cn := 'enforce_nodata_values_' || $3;

		sql := 'SELECT public._raster_constraint_nodata_values(' || quote_ident($3)
			|| ') FROM ' || fqtn
			|| ' WHERE '
			|| quote_ident($3)
			|| ' IS NOT NULL LIMIT 1;';
		BEGIN
			EXECUTE sql INTO attr;
		EXCEPTION WHEN OTHERS THEN
			RAISE NOTICE 'Unable to get the nodata values of a sample raster: % (%)',
        SQLERRM, SQLSTATE;
			RETURN FALSE;
		END;
		max := array_length(attr, 1);
		IF max < 1 OR max IS NULL THEN
			RAISE NOTICE 'Unable to get the nodata values of a sample raster (max < 1 or null)';
			RETURN FALSE;
		END IF;

		sql := 'ALTER TABLE ' || fqtn
			|| ' ADD CONSTRAINT ' || quote_ident(cn)
			|| ' CHECK (_raster_constraint_nodata_values(' || quote_ident($3)
			|| ')::numeric[] = ''{';
		FOR x in 1..max LOOP
			IF attr[x] IS NULL THEN
				sql := sql || 'NULL';
			ELSE
				sql := sql || attr[x];
			END IF;
			IF x < max THEN
				sql := sql || ',';
			END IF;
		END LOOP;
		sql := sql || '}''::numeric[])';

		RETURN  public._add_raster_constraint(cn, sql);
	END;
	$function$
;

-- DROP FUNCTION public._add_raster_constraint_num_bands(name, name, name);

CREATE OR REPLACE FUNCTION public._add_raster_constraint_num_bands(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		fqtn text;
		cn name;
		sql text;
		attr int;
	BEGIN
		fqtn := '';
		IF length($1) > 0 THEN
			fqtn := quote_ident($1) || '.';
		END IF;
		fqtn := fqtn || quote_ident($2);

		cn := 'enforce_num_bands_' || $3;

		sql := 'SELECT public.st_numbands(' || quote_ident($3)
			|| ') FROM '
			|| fqtn
			|| ' WHERE '
			|| quote_ident($3)
			|| ' IS NOT NULL LIMIT 1;';
		BEGIN
			EXECUTE sql INTO attr;
		EXCEPTION WHEN OTHERS THEN
			RAISE NOTICE 'Unable to get the number of bands of a sample raster: % (%)',
        SQLERRM, SQLSTATE;
			RETURN FALSE;
		END;

		sql := 'ALTER TABLE ' || fqtn
			|| ' ADD CONSTRAINT ' || quote_ident(cn)
			|| ' CHECK (public.st_numbands(' || quote_ident($3)
			|| ') = ' || attr
			|| ')';
		RETURN  public._add_raster_constraint(cn, sql);
	END;
	$function$
;

-- DROP FUNCTION public._add_raster_constraint_out_db(name, name, name);

CREATE OR REPLACE FUNCTION public._add_raster_constraint_out_db(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		fqtn text;
		cn name;
		sql text;
		attr boolean[];
		max int;
	BEGIN
		fqtn := '';
		IF length($1) > 0 THEN
			fqtn := quote_ident($1) || '.';
		END IF;
		fqtn := fqtn || quote_ident($2);

		cn := 'enforce_out_db_' || $3;

		sql := 'SELECT public._raster_constraint_out_db(' || quote_ident($3)
			|| ') FROM ' || fqtn
			|| ' WHERE '
			|| quote_ident($3)
			|| ' IS NOT NULL LIMIT 1;';
		BEGIN
			EXECUTE sql INTO attr;
		EXCEPTION WHEN OTHERS THEN
			RAISE NOTICE 'Unable to get the out-of-database bands of a sample raster: % (%)',
        SQLERRM, SQLSTATE;
			RETURN FALSE;
		END;
		max := array_length(attr, 1);
		IF max < 1 OR max IS NULL THEN
			RAISE NOTICE 'Unable to get the out-of-database bands of a sample raster (max < 1 or null)';
			RETURN FALSE;
		END IF;

		sql := 'ALTER TABLE ' || fqtn
			|| ' ADD CONSTRAINT ' || quote_ident(cn)
			|| ' CHECK ( public._raster_constraint_out_db(' || quote_ident($3)
			|| ') = ''{';
		FOR x in 1..max LOOP
			IF attr[x] IS FALSE THEN
				sql := sql || 'FALSE';
			ELSE
				sql := sql || 'TRUE';
			END IF;
			IF x < max THEN
				sql := sql || ',';
			END IF;
		END LOOP;
		sql := sql || '}''::boolean[])';

		RETURN  public._add_raster_constraint(cn, sql);
	END;
	$function$
;

-- DROP FUNCTION public._add_raster_constraint_pixel_types(name, name, name);

CREATE OR REPLACE FUNCTION public._add_raster_constraint_pixel_types(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		fqtn text;
		cn name;
		sql text;
		attr text[];
		max int;
	BEGIN
		fqtn := '';
		IF length($1) > 0 THEN
			fqtn := quote_ident($1) || '.';
		END IF;
		fqtn := fqtn || quote_ident($2);

		cn := 'enforce_pixel_types_' || $3;

		sql := 'SELECT public._raster_constraint_pixel_types(' || quote_ident($3)
			|| ') FROM ' || fqtn
			|| ' WHERE '
			|| quote_ident($3)
			|| ' IS NOT NULL LIMIT 1;';
		BEGIN
			EXECUTE sql INTO attr;
		EXCEPTION WHEN OTHERS THEN
			RAISE NOTICE 'Unable to get the pixel types of a sample raster: % (%)',
        SQLERRM, SQLSTATE;
			RETURN FALSE;
		END;
		max := array_length(attr, 1);
		IF max < 1 OR max IS NULL THEN
			RAISE NOTICE 'Unable to get the pixel types of a sample raster (max < 1 or null)';
			RETURN FALSE;
		END IF;

		sql := 'ALTER TABLE ' || fqtn
			|| ' ADD CONSTRAINT ' || quote_ident(cn)
			|| ' CHECK (_raster_constraint_pixel_types(' || quote_ident($3)
			|| ') = ''{';
		FOR x in 1..max LOOP
			sql := sql || '"' || attr[x] || '"';
			IF x < max THEN
				sql := sql || ',';
			END IF;
		END LOOP;
		sql := sql || '}''::text[])';

		RETURN  public._add_raster_constraint(cn, sql);
	END;
	$function$
;

-- DROP FUNCTION public._add_raster_constraint_scale(name, name, name, bpchar);

CREATE OR REPLACE FUNCTION public._add_raster_constraint_scale(rastschema name, rasttable name, rastcolumn name, axis character)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		fqtn text;
		cn name;
		sql text;
		attr double precision;
	BEGIN
		IF lower($4) != 'x' AND lower($4) != 'y' THEN
			RAISE EXCEPTION 'axis must be either "x" or "y"';
			RETURN FALSE;
		END IF;

		fqtn := '';
		IF length($1) > 0 THEN
			fqtn := quote_ident($1) || '.';
		END IF;
		fqtn := fqtn || quote_ident($2);

		cn := 'enforce_scale' || $4 || '_' || $3;

		sql := 'SELECT st_scale' || $4 || '('
			|| quote_ident($3)
			|| ') FROM '
			|| fqtn
			|| ' WHERE '
			|| quote_ident($3)
			|| ' IS NOT NULL LIMIT 1;';
		BEGIN
			EXECUTE sql INTO attr;
		EXCEPTION WHEN OTHERS THEN
			RAISE NOTICE 'Unable to get the %-scale of a sample raster: % (%)',
        upper($4), SQLERRM, SQLSTATE;
			RETURN FALSE;
		END;

		sql := 'ALTER TABLE ' || fqtn
			|| ' ADD CONSTRAINT ' || quote_ident(cn)
			|| ' CHECK (round(st_scale' || $4 || '('
			|| quote_ident($3)
			|| ')::numeric, 10) = round(' || text(attr) || '::numeric, 10))';
		RETURN  public._add_raster_constraint(cn, sql);
	END;
	$function$
;

-- DROP FUNCTION public._add_raster_constraint_spatially_unique(name, name, name);

CREATE OR REPLACE FUNCTION public._add_raster_constraint_spatially_unique(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		fqtn text;
		cn name;
		sql text;
		attr text;
		meta record;
	BEGIN
		fqtn := '';
		IF length($1) > 0 THEN
			fqtn := quote_ident($1) || '.';
		END IF;
		fqtn := fqtn || quote_ident($2);

		cn := 'enforce_spatially_unique_' || quote_ident($2) || '_'|| $3;

		sql := 'ALTER TABLE ' || fqtn ||
			' ADD CONSTRAINT ' || quote_ident(cn) ||
			' EXCLUDE ((' || quote_ident($3) || '::geometry) WITH =)';
		RETURN  public._add_raster_constraint(cn, sql);
	END;
	$function$
;

-- DROP FUNCTION public._add_raster_constraint_srid(name, name, name);

CREATE OR REPLACE FUNCTION public._add_raster_constraint_srid(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		fqtn text;
		cn name;
		sql text;
		attr int;
	BEGIN
		fqtn := '';
		IF length($1) > 0 THEN
			fqtn := quote_ident($1) || '.';
		END IF;
		fqtn := fqtn || quote_ident($2);

		cn := 'enforce_srid_' || $3;

		sql := 'SELECT st_srid('
			|| quote_ident($3)
			|| ') FROM ' || fqtn
			|| ' WHERE '
			|| quote_ident($3)
			|| ' IS NOT NULL LIMIT 1;';
		BEGIN
			EXECUTE sql INTO attr;
		EXCEPTION WHEN OTHERS THEN
			RAISE NOTICE 'Unable to get the SRID of a sample raster: % (%)',
        SQLERRM, SQLSTATE;
			RETURN FALSE;
		END;

		sql := 'ALTER TABLE ' || fqtn
			|| ' ADD CONSTRAINT ' || quote_ident(cn)
			|| ' CHECK (st_srid('
			|| quote_ident($3)
			|| ') = ' || attr || ')';

		RETURN  public._add_raster_constraint(cn, sql);
	END;
	$function$
;

-- DROP FUNCTION public._drop_overview_constraint(name, name, name);

CREATE OR REPLACE FUNCTION public._drop_overview_constraint(ovschema name, ovtable name, ovcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public._drop_raster_constraint($1, $2, 'enforce_overview_' || $3) $function$
;

-- DROP FUNCTION public._drop_raster_constraint(name, name, name);

CREATE OR REPLACE FUNCTION public._drop_raster_constraint(rastschema name, rasttable name, cn name)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		fqtn text;
	BEGIN
		fqtn := '';
		IF length($1) > 0 THEN
			fqtn := quote_ident($1) || '.';
		END IF;
		fqtn := fqtn || quote_ident($2);

		BEGIN
			EXECUTE 'ALTER TABLE '
				|| fqtn
				|| ' DROP CONSTRAINT '
				|| quote_ident(cn);
			RETURN TRUE;
		EXCEPTION
			WHEN undefined_object THEN
				RAISE NOTICE 'The constraint "%" does not exist.  Skipping', cn;
			WHEN OTHERS THEN
				RAISE NOTICE 'Unable to drop constraint "%": % (%)',
          cn, SQLERRM, SQLSTATE;
				RETURN FALSE;
		END;

		RETURN TRUE;
	END;
	$function$
;

-- DROP FUNCTION public._drop_raster_constraint_alignment(name, name, name);

CREATE OR REPLACE FUNCTION public._drop_raster_constraint_alignment(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public._drop_raster_constraint($1, $2, 'enforce_same_alignment_' || $3) $function$
;

-- DROP FUNCTION public._drop_raster_constraint_blocksize(name, name, name, text);

CREATE OR REPLACE FUNCTION public._drop_raster_constraint_blocksize(rastschema name, rasttable name, rastcolumn name, axis text)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	BEGIN
		IF lower($4) != 'width' AND lower($4) != 'height' THEN
			RAISE EXCEPTION 'axis must be either "width" or "height"';
			RETURN FALSE;
		END IF;

		RETURN  public._drop_raster_constraint($1, $2, 'enforce_' || $4 || '_' || $3);
	END;
	$function$
;

-- DROP FUNCTION public._drop_raster_constraint_coverage_tile(name, name, name);

CREATE OR REPLACE FUNCTION public._drop_raster_constraint_coverage_tile(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public._drop_raster_constraint($1, $2, 'enforce_coverage_tile_' || $3) $function$
;

-- DROP FUNCTION public._drop_raster_constraint_extent(name, name, name);

CREATE OR REPLACE FUNCTION public._drop_raster_constraint_extent(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public._drop_raster_constraint($1, $2, 'enforce_max_extent_' || $3) $function$
;

-- DROP FUNCTION public._drop_raster_constraint_nodata_values(name, name, name);

CREATE OR REPLACE FUNCTION public._drop_raster_constraint_nodata_values(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public._drop_raster_constraint($1, $2, 'enforce_nodata_values_' || $3) $function$
;

-- DROP FUNCTION public._drop_raster_constraint_num_bands(name, name, name);

CREATE OR REPLACE FUNCTION public._drop_raster_constraint_num_bands(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public._drop_raster_constraint($1, $2, 'enforce_num_bands_' || $3) $function$
;

-- DROP FUNCTION public._drop_raster_constraint_out_db(name, name, name);

CREATE OR REPLACE FUNCTION public._drop_raster_constraint_out_db(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public._drop_raster_constraint($1, $2, 'enforce_out_db_' || $3) $function$
;

-- DROP FUNCTION public._drop_raster_constraint_pixel_types(name, name, name);

CREATE OR REPLACE FUNCTION public._drop_raster_constraint_pixel_types(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public._drop_raster_constraint($1, $2, 'enforce_pixel_types_' || $3) $function$
;

-- DROP FUNCTION public._drop_raster_constraint_regular_blocking(name, name, name);

CREATE OR REPLACE FUNCTION public._drop_raster_constraint_regular_blocking(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT public._drop_raster_constraint($1, $2, 'enforce_regular_blocking_' || $3) $function$
;

-- DROP FUNCTION public._drop_raster_constraint_scale(name, name, name, bpchar);

CREATE OR REPLACE FUNCTION public._drop_raster_constraint_scale(rastschema name, rasttable name, rastcolumn name, axis character)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	BEGIN
		IF lower($4) != 'x' AND lower($4) != 'y' THEN
			RAISE EXCEPTION 'axis must be either "x" or "y"';
			RETURN FALSE;
		END IF;

		RETURN  public._drop_raster_constraint($1, $2, 'enforce_scale' || $4 || '_' || $3);
	END;
	$function$
;

-- DROP FUNCTION public._drop_raster_constraint_spatially_unique(name, name, name);

CREATE OR REPLACE FUNCTION public._drop_raster_constraint_spatially_unique(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		cn text;
	BEGIN
		SELECT
			s.conname INTO cn
		FROM pg_class c, pg_namespace n, pg_attribute a
		, (SELECT connamespace, conname, conrelid, conkey, conindid, contype, conexclop, pg_get_constraintdef(oid) As consrc
			FROM pg_constraint) AS s
		, pg_index idx, pg_operator op
		WHERE n.nspname = $1
			AND c.relname = $2
			AND a.attname = $3
			AND a.attrelid = c.oid
			AND s.connamespace = n.oid
			AND s.conrelid = c.oid
			AND s.contype = 'x'
			AND 0::smallint = ANY (s.conkey)
			AND idx.indexrelid = s.conindid
			AND pg_get_indexdef(idx.indexrelid, 1, true) LIKE '(' || quote_ident($3) || '::geometry)'
			AND s.conexclop[1] = op.oid
			AND op.oprname = '=';

		RETURN  public._drop_raster_constraint($1, $2, cn);
	END;
	$function$
;

-- DROP FUNCTION public._drop_raster_constraint_srid(name, name, name);

CREATE OR REPLACE FUNCTION public._drop_raster_constraint_srid(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public._drop_raster_constraint($1, $2, 'enforce_srid_' || $3) $function$
;

-- DROP FUNCTION public._overview_constraint(raster, int4, name, name, name);

CREATE OR REPLACE FUNCTION public._overview_constraint(ov raster, factor integer, refschema name, reftable name, refcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STABLE
AS $function$ SELECT COALESCE((SELECT TRUE FROM public.raster_columns WHERE r_table_catalog = current_database() AND r_table_schema = $3 AND r_table_name = $4 AND r_raster_column = $5), FALSE) $function$
;

-- DROP FUNCTION public._overview_constraint_info(in name, in name, in name, out name, out name, out name, out int4);

CREATE OR REPLACE FUNCTION public._overview_constraint_info(ovschema name, ovtable name, ovcolumn name, OUT refschema name, OUT reftable name, OUT refcolumn name, OUT factor integer)
 RETURNS record
 LANGUAGE sql
 STABLE STRICT
AS $function$
	SELECT
		split_part(split_part(s.consrc, '''::name', 1), '''', 2)::name,
		split_part(split_part(s.consrc, '''::name', 2), '''', 2)::name,
		split_part(split_part(s.consrc, '''::name', 3), '''', 2)::name,
		trim(both from split_part(s.consrc, ',', 2))::integer
	FROM pg_class c, pg_namespace n, pg_attribute a
		, (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
		    FROM pg_constraint) AS s
	WHERE n.nspname = $1
		AND c.relname = $2
		AND a.attname = $3
		AND a.attrelid = c.oid
		AND s.connamespace = n.oid
		AND s.conrelid = c.oid
		AND a.attnum = ANY (s.conkey)
		AND s.consrc LIKE '%_overview_constraint(%' LIMIT 1
	$function$
;

-- DROP FUNCTION public._postgis_deprecate(text, text, text);

CREATE OR REPLACE FUNCTION public._postgis_deprecate(oldname text, newname text, version text)
 RETURNS void
 LANGUAGE plpgsql
 IMMUTABLE STRICT COST 500
AS $function$
DECLARE
  curver_text text;
BEGIN
  --
  -- Raises a NOTICE if it was deprecated in this version,
  -- a WARNING if in a previous version (only up to minor version checked)
  --
    curver_text := '3.1.7';
    IF pg_catalog.split_part(curver_text,'.',1)::int > pg_catalog.split_part(version,'.',1)::int OR
       ( pg_catalog.split_part(curver_text,'.',1) = pg_catalog.split_part(version,'.',1) AND
         pg_catalog.split_part(curver_text,'.',2) != pg_catalog.split_part(version,'.',2) )
    THEN
      RAISE WARNING '% signature was deprecated in %. Please use %', oldname, version, newname;
    ELSE
      RAISE DEBUG '% signature was deprecated in %. Please use %', oldname, version, newname;
    END IF;
END;
$function$
;

-- DROP FUNCTION public._postgis_index_extent(regclass, text);

CREATE OR REPLACE FUNCTION public._postgis_index_extent(tbl regclass, col text)
 RETURNS box2d
 LANGUAGE c
 STABLE STRICT
AS '$libdir/postgis-3', $function$_postgis_gserialized_index_extent$function$
;

-- DROP FUNCTION public._postgis_join_selectivity(regclass, text, regclass, text, text);

CREATE OR REPLACE FUNCTION public._postgis_join_selectivity(regclass, text, regclass, text, text DEFAULT '2'::text)
 RETURNS double precision
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$_postgis_gserialized_joinsel$function$
;

-- DROP FUNCTION public._postgis_pgsql_version();

CREATE OR REPLACE FUNCTION public._postgis_pgsql_version()
 RETURNS text
 LANGUAGE sql
 STABLE
AS $function$
	SELECT CASE WHEN pg_catalog.split_part(s,'.',1)::integer > 9 THEN pg_catalog.split_part(s,'.',1) || '0' ELSE pg_catalog.split_part(s,'.', 1) || pg_catalog.split_part(s,'.', 2) END AS v
	FROM pg_catalog.substring(version(), 'PostgreSQL ([0-9\.]+)') AS s;
$function$
;

-- DROP FUNCTION public._postgis_scripts_pgsql_version();

CREATE OR REPLACE FUNCTION public._postgis_scripts_pgsql_version()
 RETURNS text
 LANGUAGE sql
 IMMUTABLE
AS $function$SELECT '140'::text AS version$function$
;

-- DROP FUNCTION public._postgis_selectivity(regclass, text, geometry, text);

CREATE OR REPLACE FUNCTION public._postgis_selectivity(tbl regclass, att_name text, geom geometry, mode text DEFAULT '2'::text)
 RETURNS double precision
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$_postgis_gserialized_sel$function$
;

-- DROP FUNCTION public._postgis_stats(regclass, text, text);

CREATE OR REPLACE FUNCTION public._postgis_stats(tbl regclass, att_name text, text DEFAULT '2'::text)
 RETURNS text
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$_postgis_gserialized_stats$function$
;

-- DROP FUNCTION public._raster_constraint_info_alignment(name, name, name);

CREATE OR REPLACE FUNCTION public._raster_constraint_info_alignment(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STABLE STRICT
AS $function$
	SELECT
		TRUE
	FROM pg_class c, pg_namespace n, pg_attribute a
		, (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
			FROM pg_constraint) AS s
	WHERE n.nspname = $1
		AND c.relname = $2
		AND a.attname = $3
		AND a.attrelid = c.oid
		AND s.connamespace = n.oid
		AND s.conrelid = c.oid
		AND a.attnum = ANY (s.conkey)
		AND s.consrc LIKE '%st_samealignment(%';
	$function$
;

-- DROP FUNCTION public._raster_constraint_info_blocksize(name, name, name, text);

CREATE OR REPLACE FUNCTION public._raster_constraint_info_blocksize(rastschema name, rasttable name, rastcolumn name, axis text)
 RETURNS integer
 LANGUAGE sql
 STABLE STRICT
AS $function$
	SELECT
		CASE
			WHEN strpos(s.consrc, 'ANY (ARRAY[') > 0 THEN
				split_part((substring(s.consrc FROM E'ARRAY\\[(.*?){1}\\]')), ',', 1)::integer
			ELSE
				regexp_replace(
					split_part(s.consrc, '= ', 2),
					'[\(\)]', '', 'g'
				)::integer
			END
	FROM pg_class c, pg_namespace n, pg_attribute a
		, (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
			FROM pg_constraint) AS s
	WHERE n.nspname = $1
		AND c.relname = $2
		AND a.attname = $3
		AND a.attrelid = c.oid
		AND s.connamespace = n.oid
		AND s.conrelid = c.oid
		AND a.attnum = ANY (s.conkey)
		AND s.consrc LIKE '%st_' || $4 || '(%= %';
	$function$
;

-- DROP FUNCTION public._raster_constraint_info_coverage_tile(name, name, name);

CREATE OR REPLACE FUNCTION public._raster_constraint_info_coverage_tile(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STABLE STRICT
AS $function$
	SELECT
		TRUE
	FROM pg_class c, pg_namespace n, pg_attribute a
			, (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
			FROM pg_constraint) AS s
	WHERE n.nspname = $1
		AND c.relname = $2
		AND a.attname = $3
		AND a.attrelid = c.oid
		AND s.connamespace = n.oid
		AND s.conrelid = c.oid
		AND a.attnum = ANY (s.conkey)
		AND s.consrc LIKE '%st_iscoveragetile(%';
	$function$
;

-- DROP FUNCTION public._raster_constraint_info_extent(name, name, name);

CREATE OR REPLACE FUNCTION public._raster_constraint_info_extent(rastschema name, rasttable name, rastcolumn name)
 RETURNS geometry
 LANGUAGE sql
 STABLE STRICT
AS $function$
	SELECT
		trim(both '''' from split_part(trim(split_part(s.consrc, ' @ ', 2)), '::', 1))::geometry
	FROM pg_class c, pg_namespace n, pg_attribute a
		, (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
			FROM pg_constraint) AS s
	WHERE n.nspname = $1
		AND c.relname = $2
		AND a.attname = $3
		AND a.attrelid = c.oid
		AND s.connamespace = n.oid
		AND s.conrelid = c.oid
		AND a.attnum = ANY (s.conkey)
		AND s.consrc LIKE '%st_envelope(% @ %';
	$function$
;

-- DROP FUNCTION public._raster_constraint_info_index(name, name, name);

CREATE OR REPLACE FUNCTION public._raster_constraint_info_index(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STABLE STRICT
AS $function$
		SELECT
			TRUE
		FROM pg_catalog.pg_class c
		JOIN pg_catalog.pg_index i
			ON i.indexrelid = c.oid
		JOIN pg_catalog.pg_class c2
			ON i.indrelid = c2.oid
		JOIN pg_catalog.pg_namespace n
			ON n.oid = c.relnamespace
		JOIN pg_am am
			ON c.relam = am.oid
		JOIN pg_attribute att
			ON att.attrelid = c2.oid
				AND pg_catalog.format_type(att.atttypid, att.atttypmod) = 'raster'
		WHERE c.relkind IN ('i')
			AND n.nspname = $1
			AND c2.relname = $2
			AND att.attname = $3
			AND am.amname = 'gist'
			AND strpos(pg_catalog.pg_get_expr(i.indexprs, i.indrelid), att.attname) > 0;
	$function$
;

-- DROP FUNCTION public._raster_constraint_info_nodata_values(name, name, name);

CREATE OR REPLACE FUNCTION public._raster_constraint_info_nodata_values(rastschema name, rasttable name, rastcolumn name)
 RETURNS double precision[]
 LANGUAGE sql
 STABLE STRICT
AS $function$
	SELECT
		trim(both '''' from
			split_part(
				regexp_replace(
					split_part(s.consrc, ' = ', 2),
					'[\(\)]', '', 'g'
				),
				'::', 1
			)
		)::double precision[]
	FROM pg_class c, pg_namespace n, pg_attribute a
		, (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
			FROM pg_constraint) AS s
	WHERE n.nspname = $1
		AND c.relname = $2
		AND a.attname = $3
		AND a.attrelid = c.oid
		AND s.connamespace = n.oid
		AND s.conrelid = c.oid
		AND a.attnum = ANY (s.conkey)
		AND s.consrc LIKE '%_raster_constraint_nodata_values(%';
	$function$
;

-- DROP FUNCTION public._raster_constraint_info_num_bands(name, name, name);

CREATE OR REPLACE FUNCTION public._raster_constraint_info_num_bands(rastschema name, rasttable name, rastcolumn name)
 RETURNS integer
 LANGUAGE sql
 STABLE STRICT
AS $function$
	SELECT
		regexp_replace(
			split_part(s.consrc, ' = ', 2),
			'[\(\)]', '', 'g'
		)::integer
	FROM pg_class c, pg_namespace n, pg_attribute a
		, (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
			FROM pg_constraint) AS s
	WHERE n.nspname = $1
		AND c.relname = $2
		AND a.attname = $3
		AND a.attrelid = c.oid
		AND s.connamespace = n.oid
		AND s.conrelid = c.oid
		AND a.attnum = ANY (s.conkey)
		AND s.consrc LIKE '%st_numbands(%';
	$function$
;

-- DROP FUNCTION public._raster_constraint_info_out_db(name, name, name);

CREATE OR REPLACE FUNCTION public._raster_constraint_info_out_db(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean[]
 LANGUAGE sql
 STABLE STRICT
AS $function$
	SELECT
		trim(
			both '''' from split_part(
				regexp_replace(
					split_part(s.consrc, ' = ', 2),
					'[\(\)]', '', 'g'
				),
				'::', 1
			)
		)::boolean[]
	FROM pg_class c, pg_namespace n, pg_attribute a
			, (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
			FROM pg_constraint) AS s
	WHERE n.nspname = $1
		AND c.relname = $2
		AND a.attname = $3
		AND a.attrelid = c.oid
		AND s.connamespace = n.oid
		AND s.conrelid = c.oid
		AND a.attnum = ANY (s.conkey)
		AND s.consrc LIKE '%_raster_constraint_out_db(%';
	$function$
;

-- DROP FUNCTION public._raster_constraint_info_pixel_types(name, name, name);

CREATE OR REPLACE FUNCTION public._raster_constraint_info_pixel_types(rastschema name, rasttable name, rastcolumn name)
 RETURNS text[]
 LANGUAGE sql
 STABLE STRICT
AS $function$
	SELECT
		trim(
			both '''' from split_part(
				regexp_replace(
					split_part(s.consrc, ' = ', 2),
					'[\(\)]', '', 'g'
				),
				'::', 1
			)
		)::text[]
	FROM pg_class c, pg_namespace n, pg_attribute a
		, (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
			FROM pg_constraint) AS s
	WHERE n.nspname = $1
		AND c.relname = $2
		AND a.attname = $3
		AND a.attrelid = c.oid
		AND s.connamespace = n.oid
		AND s.conrelid = c.oid
		AND a.attnum = ANY (s.conkey)
		AND s.consrc LIKE '%_raster_constraint_pixel_types(%';
	$function$
;

-- DROP FUNCTION public._raster_constraint_info_regular_blocking(name, name, name);

CREATE OR REPLACE FUNCTION public._raster_constraint_info_regular_blocking(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE plpgsql
 STABLE STRICT
AS $function$
	DECLARE
		covtile boolean;
		spunique boolean;
	BEGIN
		-- check existance of constraints
		-- coverage tile constraint
		covtile := COALESCE( public._raster_constraint_info_coverage_tile($1, $2, $3), FALSE);

		-- spatially unique constraint
		spunique := COALESCE( public._raster_constraint_info_spatially_unique($1, $2, $3), FALSE);

		RETURN (covtile AND spunique);
	END;
	$function$
;

-- DROP FUNCTION public._raster_constraint_info_scale(name, name, name, bpchar);

CREATE OR REPLACE FUNCTION public._raster_constraint_info_scale(rastschema name, rasttable name, rastcolumn name, axis character)
 RETURNS double precision
 LANGUAGE sql
 STABLE STRICT
AS $function$
	WITH c AS (SELECT
		regexp_replace(
			replace(
				split_part(
					split_part(s.consrc, ' = ', 2),
					'::', 1
				),
				'round(', ''
			),
			'[ ''''\(\)]', '', 'g'
		)::text AS val
	FROM pg_class c, pg_namespace n, pg_attribute a
		, (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
		    FROM pg_constraint) AS s
	WHERE n.nspname = $1
		AND c.relname = $2
		AND a.attname = $3
		AND a.attrelid = c.oid
		AND s.connamespace = n.oid
		AND s.conrelid = c.oid
		AND a.attnum = ANY (s.conkey)
		AND s.consrc LIKE '%st_scale' || $4 || '(% = %')
-- if it is a comma separated list of two numbers then need to use round
   SELECT CASE WHEN split_part(c.val,',', 2) > ''
        THEN round( split_part(c.val, ',',1)::numeric, split_part(c.val,',',2)::integer )::float8
        ELSE c.val::float8 END
        FROM c;
	$function$
;

-- DROP FUNCTION public._raster_constraint_info_spatially_unique(name, name, name);

CREATE OR REPLACE FUNCTION public._raster_constraint_info_spatially_unique(rastschema name, rasttable name, rastcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STABLE STRICT
AS $function$
	SELECT
		TRUE
	FROM pg_class c, pg_namespace n, pg_attribute a
		, (SELECT connamespace, conrelid, conindid, conkey, contype, conexclop, pg_get_constraintdef(oid) As consrc
			FROM pg_constraint) AS s
		, pg_index idx, pg_operator op
	WHERE n.nspname = $1
		AND c.relname = $2
		AND a.attname = $3
		AND a.attrelid = c.oid
		AND s.connamespace = n.oid
		AND s.conrelid = c.oid
		AND s.contype = 'x'
		AND 0::smallint = ANY (s.conkey)
		AND idx.indexrelid = s.conindid
		AND pg_get_indexdef(idx.indexrelid, 1, true) LIKE '(' || quote_ident($3) || '::geometry)'
		AND s.conexclop[1] = op.oid
		AND op.oprname = '=';
	$function$
;

-- DROP FUNCTION public._raster_constraint_info_srid(name, name, name);

CREATE OR REPLACE FUNCTION public._raster_constraint_info_srid(rastschema name, rasttable name, rastcolumn name)
 RETURNS integer
 LANGUAGE sql
 STABLE STRICT
AS $function$
	SELECT
		regexp_replace(
			split_part(s.consrc, ' = ', 2),
			'[\(\)]', '', 'g'
		)::integer
	FROM pg_class c, pg_namespace n, pg_attribute a
		, (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
		    FROM pg_constraint) AS s
	WHERE n.nspname = $1
		AND c.relname = $2
		AND a.attname = $3
		AND a.attrelid = c.oid
		AND s.connamespace = n.oid
		AND s.conrelid = c.oid
		AND a.attnum = ANY (s.conkey)
		AND s.consrc LIKE '%st_srid(% = %';
	$function$
;

-- DROP FUNCTION public._raster_constraint_nodata_values(raster);

CREATE OR REPLACE FUNCTION public._raster_constraint_nodata_values(rast raster)
 RETURNS numeric[]
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT array_agg(round(nodatavalue::numeric, 10))::numeric[] FROM public.ST_BandMetaData($1, ARRAY[]::int[]); $function$
;

-- DROP FUNCTION public._raster_constraint_out_db(raster);

CREATE OR REPLACE FUNCTION public._raster_constraint_out_db(rast raster)
 RETURNS boolean[]
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT array_agg(isoutdb)::boolean[] FROM public.ST_BandMetaData($1, ARRAY[]::int[]); $function$
;

-- DROP FUNCTION public._raster_constraint_pixel_types(raster);

CREATE OR REPLACE FUNCTION public._raster_constraint_pixel_types(rast raster)
 RETURNS text[]
 LANGUAGE sql
 STABLE STRICT
AS $function$ SELECT array_agg(pixeltype)::text[] FROM  public.ST_BandMetaData($1, ARRAY[]::int[]); $function$
;

-- DROP FUNCTION public._st_3ddfullywithin(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public._st_3ddfullywithin(geom1 geometry, geom2 geometry, double precision)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$LWGEOM_dfullywithin3d$function$
;

-- DROP FUNCTION public._st_3ddwithin(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public._st_3ddwithin(geom1 geometry, geom2 geometry, double precision)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$LWGEOM_dwithin3d$function$
;

-- DROP FUNCTION public._st_3dintersects(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_3dintersects(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_3DIntersects$function$
;

-- DROP FUNCTION public._st_asgml(int4, geometry, int4, int4, text, text);

CREATE OR REPLACE FUNCTION public._st_asgml(integer, geometry, integer, integer, text, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asGML$function$
;

-- DROP FUNCTION public._st_aspect4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public._st_aspect4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		x integer;
		y integer;
		z integer;

		_width double precision;
		_height double precision;
		_units text;

		dz_dx double precision;
		dz_dy double precision;
		aspect double precision;
		halfpi double precision;

		_value double precision[][][];
		ndims int;
	BEGIN
		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		IF (
			array_lower(_value, 2) != 1 OR array_upper(_value, 2) != 3 OR
			array_lower(_value, 3) != 1 OR array_upper(_value, 3) != 3
		) THEN
			RAISE EXCEPTION 'First parameter of function must be a 1x3x3 array with each of the lower bounds starting from 1';
		END IF;

		IF array_length(userargs, 1) < 3 THEN
			RAISE EXCEPTION 'At least three elements must be provided for the third parameter';
		END IF;

		-- only use the first raster passed to this function
		IF array_length(_value, 1) > 1 THEN
			RAISE NOTICE 'Only using the values from the first raster';
		END IF;
		z := array_lower(_value, 1);

		_width := userargs[1]::double precision;
		_height := userargs[2]::double precision;
		_units := userargs[3];

		
		-- check that center pixel isn't NODATA
		IF _value[z][2][2] IS NULL THEN
			RETURN NULL;
		-- substitute center pixel for any neighbor pixels that are NODATA
		ELSE
			FOR y IN 1..3 LOOP
				FOR x IN 1..3 LOOP
					IF _value[z][y][x] IS NULL THEN
						_value[z][y][x] = _value[z][2][2];
					END IF;
				END LOOP;
			END LOOP;
		END IF;

		dz_dy := ((_value[z][3][1] + _value[z][3][2] + _value[z][3][2] + _value[z][3][3]) -
			(_value[z][1][1] + _value[z][1][2] + _value[z][1][2] + _value[z][1][3]));
		dz_dx := ((_value[z][1][3] + _value[z][2][3] + _value[z][2][3] + _value[z][3][3]) -
			(_value[z][1][1] + _value[z][2][1] + _value[z][2][1] + _value[z][3][1]));

		-- aspect is flat
		IF abs(dz_dx) = 0::double precision AND abs(dz_dy) = 0::double precision THEN
			RETURN -1;
		END IF;

		-- aspect is in radians
		aspect := atan2(dz_dy, -dz_dx);

		-- north = 0, pi/2 = east, 3pi/2 = west
		halfpi := pi() / 2.0;
		IF aspect > halfpi THEN
			aspect := (5.0 * halfpi) - aspect;
		ELSE
			aspect := halfpi - aspect;
		END IF;

		IF aspect = 2 * pi() THEN
			aspect := 0.;
		END IF;

		-- output depends on user preference
		CASE substring(upper(trim(leading from _units)) for 3)
			-- radians
			WHEN 'rad' THEN
				RETURN aspect;
			-- degrees (default)
			ELSE
				RETURN degrees(aspect);
		END CASE;

	END;
	$function$
;

-- DROP FUNCTION public._st_asraster(geometry, float8, float8, int4, int4, _text, _float8, _float8, float8, float8, float8, float8, float8, float8, bool);

CREATE OR REPLACE FUNCTION public._st_asraster(geom geometry, scalex double precision DEFAULT 0, scaley double precision DEFAULT 0, width integer DEFAULT 0, height integer DEFAULT 0, pixeltype text[] DEFAULT ARRAY['8BUI'::text], value double precision[] DEFAULT ARRAY[(1)::double precision], nodataval double precision[] DEFAULT ARRAY[(0)::double precision], upperleftx double precision DEFAULT NULL::double precision, upperlefty double precision DEFAULT NULL::double precision, gridx double precision DEFAULT NULL::double precision, gridy double precision DEFAULT NULL::double precision, skewx double precision DEFAULT 0, skewy double precision DEFAULT 0, touched boolean DEFAULT false)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_asRaster$function$
;

-- DROP FUNCTION public._st_asx3d(int4, geometry, int4, int4, text);

CREATE OR REPLACE FUNCTION public._st_asx3d(integer, geometry, integer, integer, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asX3D$function$
;

-- DROP FUNCTION public._st_bestsrid(geography);

CREATE OR REPLACE FUNCTION public._st_bestsrid(geography)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$geography_bestsrid$function$
;

-- DROP FUNCTION public._st_bestsrid(geography, geography);

CREATE OR REPLACE FUNCTION public._st_bestsrid(geography, geography)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$geography_bestsrid$function$
;

-- DROP FUNCTION public._st_clip(raster, _int4, geometry, _float8, bool);

CREATE OR REPLACE FUNCTION public._st_clip(rast raster, nband integer[], geom geometry, nodataval double precision[] DEFAULT NULL::double precision[], crop boolean DEFAULT true)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_clip$function$
;

-- DROP FUNCTION public._st_colormap(raster, int4, text, text);

CREATE OR REPLACE FUNCTION public._st_colormap(rast raster, nband integer, colormap text, method text DEFAULT 'INTERPOLATE'::text)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_colorMap$function$
;

-- DROP FUNCTION public._st_concavehull(geometry);

CREATE OR REPLACE FUNCTION public._st_concavehull(param_inputgeom geometry)
 RETURNS geometry
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS $function$
	DECLARE
	vexhull public.geometry;
	var_resultgeom public.geometry;
	var_inputgeom public.geometry;
	vexring public.geometry;
	cavering public.geometry;
	cavept public.geometry[];
	seglength double precision;
	var_tempgeom public.geometry;
	scale_factor float := 1;
	i integer;
	BEGIN
		-- First compute the ConvexHull of the geometry
		vexhull := public.ST_ConvexHull(param_inputgeom);
		var_inputgeom := param_inputgeom;
		--A point really has no concave hull
		IF public.ST_GeometryType(vexhull) = 'ST_Point' OR public.ST_GeometryType(vexHull) = 'ST_LineString' THEN
			RETURN vexhull;
		END IF;

		-- convert the hull perimeter to a linestring so we can manipulate individual points
		vexring := CASE WHEN public.ST_GeometryType(vexhull) = 'ST_LineString' THEN vexhull ELSE public.ST_ExteriorRing(vexhull) END;
		IF abs(public.ST_X(public.ST_PointN(vexring,1))) < 1 THEN --scale the geometry to prevent stupid precision errors - not sure it works so make low for now
			scale_factor := 100;
			vexring := public.ST_Scale(vexring, scale_factor,scale_factor);
			var_inputgeom := public.ST_Scale(var_inputgeom, scale_factor, scale_factor);
			--RAISE NOTICE 'Scaling';
		END IF;
		seglength := public.ST_Length(vexring)/least(public.ST_NPoints(vexring)*2,1000) ;

		vexring := public.ST_Segmentize(vexring, seglength);
		-- find the point on the original geom that is closest to each point of the convex hull and make a new linestring out of it.
		cavering := public.ST_Collect(
			ARRAY(

				SELECT
					public.ST_ClosestPoint(var_inputgeom, pt ) As the_geom
					FROM (
						SELECT  public.ST_PointN(vexring, n ) As pt, n
							FROM
							generate_series(1, public.ST_NPoints(vexring) ) As n
						) As pt

				)
			)
		;

		var_resultgeom := public.ST_MakeLine(geom)
			FROM public.ST_Dump(cavering) As foo;

		IF public.ST_IsSimple(var_resultgeom) THEN
			var_resultgeom := public.ST_MakePolygon(var_resultgeom);
			--RAISE NOTICE 'is Simple: %', var_resultgeom;
		ELSE 
			--RAISE NOTICE 'is not Simple: %', var_resultgeom;
			var_resultgeom := public.ST_ConvexHull(var_resultgeom);
		END IF;

		IF scale_factor > 1 THEN -- scale the result back
			var_resultgeom := public.ST_Scale(var_resultgeom, 1/scale_factor, 1/scale_factor);
		END IF;

		-- make sure result covers original (#3638)
		-- Using ST_UnaryUnion since SFCGAL doesn't replace with its own implementation
		-- and SFCGAL one chokes for some reason
		var_resultgeom := public.ST_UnaryUnion(public.ST_Collect(param_inputgeom, var_resultgeom) );
		RETURN var_resultgeom;

	END;
$function$
;

-- DROP FUNCTION public._st_contains(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_contains(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$contains$function$
;

-- DROP FUNCTION public._st_contains(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public._st_contains(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE STRICT COST 1000
AS '$libdir/postgis_raster-3', $function$RASTER_contains$function$
;

-- DROP FUNCTION public._st_containsproperly(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public._st_containsproperly(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 1000
AS '$libdir/postgis_raster-3', $function$RASTER_containsProperly$function$
;

-- DROP FUNCTION public._st_containsproperly(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_containsproperly(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$containsproperly$function$
;

-- DROP FUNCTION public._st_convertarray4ma(_float8);

CREATE OR REPLACE FUNCTION public._st_convertarray4ma(value double precision[])
 RETURNS double precision[]
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		_value double precision[][][];
		x int;
		y int;
	BEGIN
		IF array_ndims(value) != 2 THEN
			RAISE EXCEPTION 'Function parameter must be a 2-dimension array';
		END IF;

		_value := array_fill(NULL::double precision, ARRAY[1, array_length(value, 1), array_length(value, 2)]::int[], ARRAY[1, array_lower(value, 1), array_lower(value, 2)]::int[]);

		-- row
		FOR y IN array_lower(value, 1)..array_upper(value, 1) LOOP
			-- column
			FOR x IN array_lower(value, 2)..array_upper(value, 2) LOOP
				_value[1][y][x] = value[y][x];
			END LOOP;
		END LOOP;

		RETURN _value;
	END;
	$function$
;

-- DROP FUNCTION public._st_count(raster, int4, bool, float8);

CREATE OR REPLACE FUNCTION public._st_count(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, sample_percent double precision DEFAULT 1)
 RETURNS bigint
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		rtn bigint;
	BEGIN
		IF exclude_nodata_value IS FALSE THEN
			SELECT width * height INTO rtn FROM public.ST_Metadata(rast);
		ELSE
			SELECT count INTO rtn FROM public._ST_summarystats($1, $2, $3, $4);
		END IF;

		RETURN rtn;
	END;
	$function$
;

-- DROP FUNCTION public._st_countagg_finalfn(agg_count);

CREATE OR REPLACE FUNCTION public._st_countagg_finalfn(agg agg_count)
 RETURNS bigint
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	BEGIN
		IF agg IS NULL THEN
			RAISE EXCEPTION 'Cannot count coverage';
		END IF;

		RETURN agg.count;
	END;
	$function$
;

-- DROP FUNCTION public._st_countagg_transfn(agg_count, raster, int4, bool, float8);

CREATE OR REPLACE FUNCTION public._st_countagg_transfn(agg agg_count, rast raster, nband integer, exclude_nodata_value boolean, sample_percent double precision)
 RETURNS agg_count
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		rtn_agg agg_count;
	BEGIN
		rtn_agg :=  public.__st_countagg_transfn(
			agg,
			rast,
			nband, exclude_nodata_value,
			sample_percent
		);
		RETURN rtn_agg;
	END;
	$function$
;

-- DROP FUNCTION public._st_countagg_transfn(agg_count, raster, int4, bool);

CREATE OR REPLACE FUNCTION public._st_countagg_transfn(agg agg_count, rast raster, nband integer, exclude_nodata_value boolean)
 RETURNS agg_count
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		rtn_agg agg_count;
	BEGIN
		rtn_agg :=  public.__ST_countagg_transfn(
			agg,
			rast,
			nband, exclude_nodata_value,
			1
		);
		RETURN rtn_agg;
	END;
	$function$
;

-- DROP FUNCTION public._st_countagg_transfn(agg_count, raster, bool);

CREATE OR REPLACE FUNCTION public._st_countagg_transfn(agg agg_count, rast raster, exclude_nodata_value boolean)
 RETURNS agg_count
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		rtn_agg agg_count;
	BEGIN
		rtn_agg :=  public.__ST_countagg_transfn(
			agg,
			rast,
			1, exclude_nodata_value,
			1
		);
		RETURN rtn_agg;
	END;
	$function$
;

-- DROP FUNCTION public._st_coveredby(geography, geography);

CREATE OR REPLACE FUNCTION public._st_coveredby(geog1 geography, geog2 geography)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$geography_coveredby$function$
;

-- DROP FUNCTION public._st_coveredby(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_coveredby(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$coveredby$function$
;

-- DROP FUNCTION public._st_coveredby(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public._st_coveredby(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 1000
AS '$libdir/postgis_raster-3', $function$RASTER_coveredby$function$
;

-- DROP FUNCTION public._st_covers(geography, geography);

CREATE OR REPLACE FUNCTION public._st_covers(geog1 geography, geog2 geography)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$geography_covers$function$
;

-- DROP FUNCTION public._st_covers(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public._st_covers(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 1000
AS '$libdir/postgis_raster-3', $function$RASTER_covers$function$
;

-- DROP FUNCTION public._st_covers(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_covers(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$covers$function$
;

-- DROP FUNCTION public._st_crosses(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_crosses(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$crosses$function$
;

-- DROP FUNCTION public._st_dfullywithin(raster, int4, raster, int4, float8);

CREATE OR REPLACE FUNCTION public._st_dfullywithin(rast1 raster, nband1 integer, rast2 raster, nband2 integer, distance double precision)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 1000
AS '$libdir/postgis_raster-3', $function$RASTER_dfullywithin$function$
;

-- DROP FUNCTION public._st_dfullywithin(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public._st_dfullywithin(geom1 geometry, geom2 geometry, double precision)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$LWGEOM_dfullywithin$function$
;

-- DROP FUNCTION public._st_distancetree(geography, geography, float8, bool);

CREATE OR REPLACE FUNCTION public._st_distancetree(geography, geography, double precision, boolean)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE STRICT COST 10000
AS '$libdir/postgis-3', $function$geography_distance_tree$function$
;

-- DROP FUNCTION public._st_distancetree(geography, geography);

CREATE OR REPLACE FUNCTION public._st_distancetree(geography, geography)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE STRICT
AS $function$SELECT public._ST_DistanceTree($1, $2, 0.0, true)$function$
;

-- DROP FUNCTION public._st_distanceuncached(geography, geography);

CREATE OR REPLACE FUNCTION public._st_distanceuncached(geography, geography)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE STRICT
AS $function$SELECT public._ST_DistanceUnCached($1, $2, 0.0, true)$function$
;

-- DROP FUNCTION public._st_distanceuncached(geography, geography, float8, bool);

CREATE OR REPLACE FUNCTION public._st_distanceuncached(geography, geography, double precision, boolean)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE STRICT COST 10000
AS '$libdir/postgis-3', $function$geography_distance_uncached$function$
;

-- DROP FUNCTION public._st_distanceuncached(geography, geography, bool);

CREATE OR REPLACE FUNCTION public._st_distanceuncached(geography, geography, boolean)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE STRICT
AS $function$SELECT public._ST_DistanceUnCached($1, $2, 0.0, $3)$function$
;

-- DROP FUNCTION public._st_dwithin(geography, geography, float8, bool);

CREATE OR REPLACE FUNCTION public._st_dwithin(geog1 geography, geog2 geography, tolerance double precision, use_spheroid boolean DEFAULT true)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$geography_dwithin$function$
;

-- DROP FUNCTION public._st_dwithin(raster, int4, raster, int4, float8);

CREATE OR REPLACE FUNCTION public._st_dwithin(rast1 raster, nband1 integer, rast2 raster, nband2 integer, distance double precision)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 1000
AS '$libdir/postgis_raster-3', $function$RASTER_dwithin$function$
;

-- DROP FUNCTION public._st_dwithin(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public._st_dwithin(geom1 geometry, geom2 geometry, double precision)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$LWGEOM_dwithin$function$
;

-- DROP FUNCTION public._st_dwithinuncached(geography, geography, float8);

CREATE OR REPLACE FUNCTION public._st_dwithinuncached(geography, geography, double precision)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE
AS $function$SELECT $1 OPERATOR(public.&&) public._ST_Expand($2,$3) AND $2 OPERATOR(public.&&) public._ST_Expand($1,$3) AND public._ST_DWithinUnCached($1, $2, $3, true)$function$
;

-- DROP FUNCTION public._st_dwithinuncached(geography, geography, float8, bool);

CREATE OR REPLACE FUNCTION public._st_dwithinuncached(geography, geography, double precision, boolean)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE STRICT COST 10000
AS '$libdir/postgis-3', $function$geography_dwithin_uncached$function$
;

-- DROP FUNCTION public._st_equals(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_equals(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_Equals$function$
;

-- DROP FUNCTION public._st_expand(geography, float8);

CREATE OR REPLACE FUNCTION public._st_expand(geography, double precision)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$geography_expand$function$
;

-- DROP FUNCTION public._st_gdalwarp(raster, text, float8, int4, float8, float8, float8, float8, float8, float8, int4, int4);

CREATE OR REPLACE FUNCTION public._st_gdalwarp(rast raster, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125, srid integer DEFAULT NULL::integer, scalex double precision DEFAULT 0, scaley double precision DEFAULT 0, gridx double precision DEFAULT NULL::double precision, gridy double precision DEFAULT NULL::double precision, skewx double precision DEFAULT 0, skewy double precision DEFAULT 0, width integer DEFAULT NULL::integer, height integer DEFAULT NULL::integer)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_GDALWarp$function$
;

-- DROP FUNCTION public._st_geomfromgml(text, int4);

CREATE OR REPLACE FUNCTION public._st_geomfromgml(text, integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$geom_from_gml$function$
;

-- DROP FUNCTION public._st_grayscale4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public._st_grayscale4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		ndims integer;
		_value double precision[][][];

		red double precision;
		green double precision;
		blue double precision;

		gray double precision;
	BEGIN

		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		red := _value[1][1][1];
		green := _value[2][1][1];
		blue := _value[3][1][1];

		gray = round(0.2989 * red + 0.5870 * green + 0.1140 * blue);
		RETURN gray;

	END;
	$function$
;

-- DROP FUNCTION public._st_hillshade4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public._st_hillshade4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_pixwidth double precision;
		_pixheight double precision;
		_width double precision;
		_height double precision;
		_azimuth double precision;
		_altitude double precision;
		_bright double precision;
		_scale double precision;

		dz_dx double precision;
		dz_dy double precision;
		azimuth double precision;
		zenith double precision;
		slope double precision;
		aspect double precision;
		shade double precision;

		_value double precision[][][];
		ndims int;
		z int;
	BEGIN
		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		IF (
			array_lower(_value, 2) != 1 OR array_upper(_value, 2) != 3 OR
			array_lower(_value, 3) != 1 OR array_upper(_value, 3) != 3
		) THEN
			RAISE EXCEPTION 'First parameter of function must be a 1x3x3 array with each of the lower bounds starting from 1';
		END IF;

		IF array_length(userargs, 1) < 8 THEN
			RAISE EXCEPTION 'At least eight elements must be provided for the third parameter';
		END IF;

		-- only use the first raster passed to this function
		IF array_length(_value, 1) > 1 THEN
			RAISE NOTICE 'Only using the values from the first raster';
		END IF;
		z := array_lower(_value, 1);

		_pixwidth := userargs[1]::double precision;
		_pixheight := userargs[2]::double precision;
		_width := userargs[3]::double precision;
		_height := userargs[4]::double precision;
		_azimuth := userargs[5]::double precision;
		_altitude := userargs[6]::double precision;
		_bright := userargs[7]::double precision;
		_scale := userargs[8]::double precision;

		-- check that pixel is not edge pixel
		IF (pos[1][1] = 1 OR pos[1][2] = 1) OR (pos[1][1] = _width OR pos[1][2] = _height) THEN
			RETURN NULL;
		END IF;

		-- clamp azimuth
		IF _azimuth < 0. THEN
			RAISE NOTICE 'Clamping provided azimuth value % to 0', _azimuth;
			_azimuth := 0.;
		ELSEIF _azimuth >= 360. THEN
			RAISE NOTICE 'Converting provided azimuth value % to be between 0 and 360', _azimuth;
			_azimuth := _azimuth - (360. * floor(_azimuth / 360.));
		END IF;
		azimuth := 360. - _azimuth + 90.;
		IF azimuth >= 360. THEN
			azimuth := azimuth - 360.;
		END IF;
		azimuth := radians(azimuth);
		--RAISE NOTICE 'azimuth = %', azimuth;

		-- clamp altitude
		IF _altitude < 0. THEN
			RAISE NOTICE 'Clamping provided altitude value % to 0', _altitude;
			_altitude := 0.;
		ELSEIF _altitude > 90. THEN
			RAISE NOTICE 'Clamping provided altitude value % to 90', _altitude;
			_altitude := 90.;
		END IF;
		zenith := radians(90. - _altitude);
		--RAISE NOTICE 'zenith = %', zenith;

		-- clamp bright
		IF _bright < 0. THEN
			RAISE NOTICE 'Clamping provided bright value % to 0', _bright;
			_bright := 0.;
		ELSEIF _bright > 255. THEN
			RAISE NOTICE 'Clamping provided bright value % to 255', _bright;
			_bright := 255.;
		END IF;

		dz_dy := ((_value[z][3][1] + _value[z][3][2] + _value[z][3][2] + _value[z][3][3]) -
			(_value[z][1][1] + _value[z][1][2] + _value[z][1][2] + _value[z][1][3])) / (8 * _pixheight);
		dz_dx := ((_value[z][1][3] + _value[z][2][3] + _value[z][2][3] + _value[z][3][3]) -
			(_value[z][1][1] + _value[z][2][1] + _value[z][2][1] + _value[z][3][1])) / (8 * _pixwidth);

		slope := atan(sqrt(dz_dx * dz_dx + dz_dy * dz_dy) / _scale);

		IF dz_dx != 0. THEN
			aspect := atan2(dz_dy, -dz_dx);

			IF aspect < 0. THEN
				aspect := aspect + (2.0 * pi());
			END IF;
		ELSE
			IF dz_dy > 0. THEN
				aspect := pi() / 2.;
			ELSEIF dz_dy < 0. THEN
				aspect := (2. * pi()) - (pi() / 2.);
			-- set to pi as that is the expected PostgreSQL answer in Linux
			ELSE
				aspect := pi();
			END IF;
		END IF;

		shade := _bright * ((cos(zenith) * cos(slope)) + (sin(zenith) * sin(slope) * cos(azimuth - aspect)));

		IF shade < 0. THEN
			shade := 0;
		END IF;

		RETURN shade;
	END;
	$function$
;

-- DROP FUNCTION public._st_histogram(in raster, in int4, in bool, in float8, in int4, in _float8, in bool, in float8, in float8, out float8, out float8, out int8, out float8);

CREATE OR REPLACE FUNCTION public._st_histogram(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, sample_percent double precision DEFAULT 1, bins integer DEFAULT 0, width double precision[] DEFAULT NULL::double precision[], "right" boolean DEFAULT false, min double precision DEFAULT NULL::double precision, max double precision DEFAULT NULL::double precision, OUT min double precision, OUT max double precision, OUT count bigint, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_histogram$function$
;

-- DROP FUNCTION public._st_intersects(geometry, raster, int4);

CREATE OR REPLACE FUNCTION public._st_intersects(geom geometry, rast raster, nband integer DEFAULT NULL::integer)
 RETURNS boolean
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$
	DECLARE
		hasnodata boolean := TRUE;
		_geom public.geometry;
	BEGIN
		IF public.ST_SRID(rast) != public.ST_SRID(geom) THEN
			RAISE EXCEPTION 'Raster and geometry do not have the same SRID';
		END IF;

		_geom := public.ST_ConvexHull(rast);
		IF nband IS NOT NULL THEN
			SELECT CASE WHEN bmd.nodatavalue IS NULL THEN FALSE ELSE NULL END INTO hasnodata FROM public.ST_BandMetaData(rast, nband) AS bmd;
		END IF;

		IF public.ST_Intersects(geom, _geom) IS NOT TRUE THEN
			RETURN FALSE;
		ELSEIF nband IS NULL OR hasnodata IS FALSE THEN
			RETURN TRUE;
		END IF;

		SELECT public.ST_Buffer(public.ST_Collect(t.geom), 0) INTO _geom FROM public.ST_PixelAsPolygons(rast, nband) AS t;
		RETURN public.ST_Intersects(geom, _geom);
	END;
	$function$
;

-- DROP FUNCTION public._st_intersects(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_intersects(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_Intersects$function$
;

-- DROP FUNCTION public._st_intersects(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public._st_intersects(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 1000
AS '$libdir/postgis_raster-3', $function$RASTER_intersects$function$
;

-- DROP FUNCTION public._st_linecrossingdirection(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_linecrossingdirection(line1 geometry, line2 geometry)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_LineCrossingDirection$function$
;

-- DROP FUNCTION public._st_longestline(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_longestline(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_longestline2d$function$
;

-- DROP FUNCTION public._st_mapalgebra(_rastbandarg, text, text, text, text, text, float8);

CREATE OR REPLACE FUNCTION public._st_mapalgebra(rastbandargset rastbandarg[], expression text, pixeltype text DEFAULT NULL::text, extenttype text DEFAULT 'INTERSECTION'::text, nodata1expr text DEFAULT NULL::text, nodata2expr text DEFAULT NULL::text, nodatanodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_nMapAlgebraExpr$function$
;

-- DROP FUNCTION public._st_mapalgebra(in _rastbandarg, in regprocedure, in text, in int4, in int4, in text, in raster, in _float8, in bool, variadic _text);

CREATE OR REPLACE FUNCTION public._st_mapalgebra(rastbandargset rastbandarg[], callbackfunc regprocedure, pixeltype text DEFAULT NULL::text, distancex integer DEFAULT 0, distancey integer DEFAULT 0, extenttype text DEFAULT 'INTERSECTION'::text, customextent raster DEFAULT NULL::raster, mask double precision[] DEFAULT NULL::double precision[], weighted boolean DEFAULT NULL::boolean, VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_nMapAlgebra$function$
;

-- DROP FUNCTION public._st_maxdistance(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_maxdistance(geom1 geometry, geom2 geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_maxdistance2d_linestring$function$
;

-- DROP FUNCTION public._st_neighborhood(raster, int4, int4, int4, int4, int4, bool);

CREATE OR REPLACE FUNCTION public._st_neighborhood(rast raster, band integer, columnx integer, rowy integer, distancex integer, distancey integer, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision[]
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_neighborhood$function$
;

-- DROP FUNCTION public._st_orderingequals(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_orderingequals(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$LWGEOM_same$function$
;

-- DROP FUNCTION public._st_overlaps(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public._st_overlaps(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE STRICT COST 1000
AS '$libdir/postgis_raster-3', $function$RASTER_overlaps$function$
;

-- DROP FUNCTION public._st_overlaps(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_overlaps(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$overlaps$function$
;

-- DROP FUNCTION public._st_pixelaspolygons(raster, int4, int4, int4, bool);

CREATE OR REPLACE FUNCTION public._st_pixelaspolygons(rast raster, band integer DEFAULT 1, columnx integer DEFAULT NULL::integer, rowy integer DEFAULT NULL::integer, exclude_nodata_value boolean DEFAULT true)
 RETURNS TABLE(geom geometry, val double precision, x integer, y integer)
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_getPixelPolygons$function$
;

-- DROP FUNCTION public._st_pointoutside(geography);

CREATE OR REPLACE FUNCTION public._st_pointoutside(geography)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/postgis-3', $function$geography_point_outside$function$
;

-- DROP FUNCTION public._st_quantile(in raster, in int4, in bool, in float8, in _float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public._st_quantile(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, sample_percent double precision DEFAULT 1, quantiles double precision[] DEFAULT NULL::double precision[], OUT quantile double precision, OUT value double precision)
 RETURNS SETOF record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_quantile$function$
;

-- DROP FUNCTION public._st_rastertoworldcoord(in raster, in int4, in int4, out float8, out float8);

CREATE OR REPLACE FUNCTION public._st_rastertoworldcoord(rast raster, columnx integer DEFAULT NULL::integer, rowy integer DEFAULT NULL::integer, OUT longitude double precision, OUT latitude double precision)
 RETURNS record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_rasterToWorldCoord$function$
;

-- DROP FUNCTION public._st_reclass(in raster, variadic _reclassarg);

CREATE OR REPLACE FUNCTION public._st_reclass(rast raster, VARIADIC reclassargset reclassarg[])
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_reclass$function$
;

-- DROP FUNCTION public._st_roughness4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public._st_roughness4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		x integer;
		y integer;
		z integer;

		minimum double precision;
		maximum double precision;

		_value double precision[][][];
		ndims int;
	BEGIN

		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		-- only use the first raster passed to this function
		IF array_length(_value, 1) > 1 THEN
			RAISE NOTICE 'Only using the values from the first raster';
		END IF;
		z := array_lower(_value, 1);

		IF (
			array_lower(_value, 2) != 1 OR array_upper(_value, 2) != 3 OR
			array_lower(_value, 3) != 1 OR array_upper(_value, 3) != 3
		) THEN
			RAISE EXCEPTION 'First parameter of function must be a 1x3x3 array with each of the lower bounds starting from 1';
		END IF;

		-- check that center pixel isn't NODATA
		IF _value[z][2][2] IS NULL THEN
			RETURN NULL;
		-- substitute center pixel for any neighbor pixels that are NODATA
		ELSE
			FOR y IN 1..3 LOOP
				FOR x IN 1..3 LOOP
					IF _value[z][y][x] IS NULL THEN
						_value[z][y][x] = _value[z][2][2];
					END IF;
				END LOOP;
			END LOOP;
		END IF;

		minimum := _value[z][1][1];
		maximum := _value[z][1][1];

		FOR Y IN 1..3 LOOP
		    FOR X IN 1..3 LOOP
		    	 IF _value[z][y][x] < minimum THEN
			    minimum := _value[z][y][x];
			 ELSIF _value[z][y][x] > maximum THEN
			    maximum := _value[z][y][x];
			 END IF;
		    END LOOP;
		END LOOP;

		RETURN maximum - minimum;
	END;
	$function$
;

-- DROP FUNCTION public._st_samealignment_finalfn(agg_samealignment);

CREATE OR REPLACE FUNCTION public._st_samealignment_finalfn(agg agg_samealignment)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT $1.aligned $function$
;

-- DROP FUNCTION public._st_samealignment_transfn(agg_samealignment, raster);

CREATE OR REPLACE FUNCTION public._st_samealignment_transfn(agg agg_samealignment, rast raster)
 RETURNS agg_samealignment
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		m record;
		aligned boolean;
	BEGIN
		IF agg IS NULL THEN
			agg.refraster := NULL;
			agg.aligned := NULL;
		END IF;

		IF rast IS NULL THEN
			agg.aligned := NULL;
		ELSE
			IF agg.refraster IS NULL THEN
				m := ST_Metadata(rast);
				agg.refraster := ST_MakeEmptyRaster(1, 1, m.upperleftx, m.upperlefty, m.scalex, m.scaley, m.skewx, m.skewy, m.srid);
				agg.aligned := TRUE;
			ELSIF agg.aligned IS TRUE THEN
				agg.aligned := ST_SameAlignment(agg.refraster, rast);
			END IF;
		END IF;
		RETURN agg;
	END;
	$function$
;

-- DROP FUNCTION public._st_setvalues(raster, int4, int4, int4, _float8, _bool, bool, float8, bool);

CREATE OR REPLACE FUNCTION public._st_setvalues(rast raster, nband integer, x integer, y integer, newvalueset double precision[], noset boolean[] DEFAULT NULL::boolean[], hasnosetvalue boolean DEFAULT false, nosetvalue double precision DEFAULT NULL::double precision, keepnodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_setPixelValuesArray$function$
;

-- DROP FUNCTION public._st_slope4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public._st_slope4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		x integer;
		y integer;
		z integer;

		_pixwidth double precision;
		_pixheight double precision;
		_width double precision;
		_height double precision;
		_units text;
		_scale double precision;

		dz_dx double precision;
		dz_dy double precision;

		slope double precision;

		_value double precision[][][];
		ndims int;
	BEGIN

		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		-- only use the first raster passed to this function
		IF array_length(_value, 1) > 1 THEN
			RAISE NOTICE 'Only using the values from the first raster';
		END IF;
		z := array_lower(_value, 1);

		IF (
			array_lower(_value, 2) != 1 OR array_upper(_value, 2) != 3 OR
			array_lower(_value, 3) != 1 OR array_upper(_value, 3) != 3
		) THEN
			RAISE EXCEPTION 'First parameter of function must be a 1x3x3 array with each of the lower bounds starting from 1';
		END IF;

		IF array_length(userargs, 1) < 6 THEN
			RAISE EXCEPTION 'At least six elements must be provided for the third parameter';
		END IF;

		_pixwidth := userargs[1]::double precision;
		_pixheight := userargs[2]::double precision;
		_width := userargs[3]::double precision;
		_height := userargs[4]::double precision;
		_units := userargs[5];
		_scale := userargs[6]::double precision;

		
		-- check that center pixel isn't NODATA
		IF _value[z][2][2] IS NULL THEN
			RETURN NULL;
		-- substitute center pixel for any neighbor pixels that are NODATA
		ELSE
			FOR y IN 1..3 LOOP
				FOR x IN 1..3 LOOP
					IF _value[z][y][x] IS NULL THEN
						_value[z][y][x] = _value[z][2][2];
					END IF;
				END LOOP;
			END LOOP;
		END IF;

		dz_dy := ((_value[z][3][1] + _value[z][3][2] + _value[z][3][2] + _value[z][3][3]) -
			(_value[z][1][1] + _value[z][1][2] + _value[z][1][2] + _value[z][1][3])) / _pixheight;
		dz_dx := ((_value[z][1][3] + _value[z][2][3] + _value[z][2][3] + _value[z][3][3]) -
			(_value[z][1][1] + _value[z][2][1] + _value[z][2][1] + _value[z][3][1])) / _pixwidth;

		slope := sqrt(dz_dx * dz_dx + dz_dy * dz_dy) / (8 * _scale);

		-- output depends on user preference
		CASE substring(upper(trim(leading from _units)) for 3)
			-- percentages
			WHEN 'PER' THEN
				slope := 100.0 * slope;
			-- radians
			WHEN 'rad' THEN
				slope := atan(slope);
			-- degrees (default)
			ELSE
				slope := degrees(atan(slope));
		END CASE;

		RETURN slope;
	END;
	$function$
;

-- DROP FUNCTION public._st_sortablehash(geometry);

CREATE OR REPLACE FUNCTION public._st_sortablehash(geom geometry)
 RETURNS bigint
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$_ST_SortableHash$function$
;

-- DROP FUNCTION public._st_summarystats(raster, int4, bool, float8);

CREATE OR REPLACE FUNCTION public._st_summarystats(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, sample_percent double precision DEFAULT 1)
 RETURNS summarystats
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_summaryStats$function$
;

-- DROP FUNCTION public._st_summarystats_finalfn(internal);

CREATE OR REPLACE FUNCTION public._st_summarystats_finalfn(internal)
 RETURNS summarystats
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_summaryStats_finalfn$function$
;

-- DROP FUNCTION public._st_summarystats_transfn(internal, raster, int4, bool, float8);

CREATE OR REPLACE FUNCTION public._st_summarystats_transfn(internal, raster, integer, boolean, double precision)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_summaryStats_transfn$function$
;

-- DROP FUNCTION public._st_summarystats_transfn(internal, raster, bool, float8);

CREATE OR REPLACE FUNCTION public._st_summarystats_transfn(internal, raster, boolean, double precision)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_summaryStats_transfn$function$
;

-- DROP FUNCTION public._st_summarystats_transfn(internal, raster, int4, bool);

CREATE OR REPLACE FUNCTION public._st_summarystats_transfn(internal, raster, integer, boolean)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_summaryStats_transfn$function$
;

-- DROP FUNCTION public._st_tile(raster, int4, int4, _int4, bool, float8);

CREATE OR REPLACE FUNCTION public._st_tile(rast raster, width integer, height integer, nband integer[] DEFAULT NULL::integer[], padwithnodata boolean DEFAULT false, nodataval double precision DEFAULT NULL::double precision)
 RETURNS SETOF raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_tile$function$
;

-- DROP FUNCTION public._st_touches(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public._st_touches(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 1000
AS '$libdir/postgis_raster-3', $function$RASTER_touches$function$
;

-- DROP FUNCTION public._st_touches(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_touches(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$touches$function$
;

-- DROP FUNCTION public._st_tpi4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public._st_tpi4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		x integer;
		y integer;
		z integer;

		Z1 double precision;
		Z2 double precision;
		Z3 double precision;
		Z4 double precision;
		Z5 double precision;
		Z6 double precision;
		Z7 double precision;
		Z8 double precision;
		Z9 double precision;

		tpi double precision;
		mean double precision;
		_value double precision[][][];
		ndims int;
	BEGIN
		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		-- only use the first raster passed to this function
		IF array_length(_value, 1) > 1 THEN
			RAISE NOTICE 'Only using the values from the first raster';
		END IF;
		z := array_lower(_value, 1);

		IF (
			array_lower(_value, 2) != 1 OR array_upper(_value, 2) != 3 OR
			array_lower(_value, 3) != 1 OR array_upper(_value, 3) != 3
		) THEN
			RAISE EXCEPTION 'First parameter of function must be a 1x3x3 array with each of the lower bounds starting from 1';
		END IF;

		-- check that center pixel isn't NODATA
		IF _value[z][2][2] IS NULL THEN
			RETURN NULL;
		-- substitute center pixel for any neighbor pixels that are NODATA
		ELSE
			FOR y IN 1..3 LOOP
				FOR x IN 1..3 LOOP
					IF _value[z][y][x] IS NULL THEN
						_value[z][y][x] = _value[z][2][2];
					END IF;
				END LOOP;
			END LOOP;
		END IF;

		-------------------------------------------------
		--|   Z1= Z(-1,1) |  Z2= Z(0,1)	| Z3= Z(1,1)  |--
		-------------------------------------------------
		--|   Z4= Z(-1,0) |  Z5= Z(0,0) | Z6= Z(1,0)  |--
		-------------------------------------------------
		--|   Z7= Z(-1,-1)|  Z8= Z(0,-1)|  Z9= Z(1,-1)|--
		-------------------------------------------------

		Z1 := _value[z][1][1];
		Z2 := _value[z][2][1];
		Z3 := _value[z][3][1];
		Z4 := _value[z][1][2];
		Z5 := _value[z][2][2];
		Z6 := _value[z][3][2];
		Z7 := _value[z][1][3];
		Z8 := _value[z][2][3];
		Z9 := _value[z][3][3];

		mean := (Z1 + Z2 + Z3 + Z4 + Z6 + Z7 + Z8 + Z9)/8;
		tpi := Z5-mean;

		return tpi;
	END;
	$function$
;

-- DROP FUNCTION public._st_tri4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public._st_tri4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		x integer;
		y integer;
		z integer;

		Z1 double precision;
		Z2 double precision;
		Z3 double precision;
		Z4 double precision;
		Z5 double precision;
		Z6 double precision;
		Z7 double precision;
		Z8 double precision;
		Z9 double precision;

		tri double precision;
		_value double precision[][][];
		ndims int;
	BEGIN
		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		-- only use the first raster passed to this function
		IF array_length(_value, 1) > 1 THEN
			RAISE NOTICE 'Only using the values from the first raster';
		END IF;
		z := array_lower(_value, 1);

		IF (
			array_lower(_value, 2) != 1 OR array_upper(_value, 2) != 3 OR
			array_lower(_value, 3) != 1 OR array_upper(_value, 3) != 3
		) THEN
			RAISE EXCEPTION 'First parameter of function must be a 1x3x3 array with each of the lower bounds starting from 1';
		END IF;

		-- check that center pixel isn't NODATA
		IF _value[z][2][2] IS NULL THEN
			RETURN NULL;
		-- substitute center pixel for any neighbor pixels that are NODATA
		ELSE
			FOR y IN 1..3 LOOP
				FOR x IN 1..3 LOOP
					IF _value[z][y][x] IS NULL THEN
						_value[z][y][x] = _value[z][2][2];
					END IF;
				END LOOP;
			END LOOP;
		END IF;

		-------------------------------------------------
		--|   Z1= Z(-1,1) |  Z2= Z(0,1)	| Z3= Z(1,1)  |--
		-------------------------------------------------
		--|   Z4= Z(-1,0) |  Z5= Z(0,0) | Z6= Z(1,0)  |--
		-------------------------------------------------
		--|   Z7= Z(-1,-1)|  Z8= Z(0,-1)|  Z9= Z(1,-1)|--
		-------------------------------------------------

		-- _scale width and height units / z units to make z units equal to height width units
		Z1 := _value[z][1][1];
		Z2 := _value[z][2][1];
		Z3 := _value[z][3][1];
		Z4 := _value[z][1][2];
		Z5 := _value[z][2][2];
		Z6 := _value[z][3][2];
		Z7 := _value[z][1][3];
		Z8 := _value[z][2][3];
		Z9 := _value[z][3][3];

		tri := ( abs(Z1 - Z5 ) + abs( Z2 - Z5 ) + abs( Z3 - Z5 ) + abs( Z4 - Z5 ) + abs( Z6 - Z5 ) + abs( Z7 - Z5 ) + abs( Z8 - Z5 ) + abs ( Z9 - Z5 )) / 8;

		return tri;
	END;
	$function$
;

-- DROP FUNCTION public._st_union_finalfn(internal);

CREATE OR REPLACE FUNCTION public._st_union_finalfn(internal)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_union_finalfn$function$
;

-- DROP FUNCTION public._st_union_transfn(internal, raster, _unionarg);

CREATE OR REPLACE FUNCTION public._st_union_transfn(internal, raster, unionarg[])
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_union_transfn$function$
;

-- DROP FUNCTION public._st_union_transfn(internal, raster, int4, text);

CREATE OR REPLACE FUNCTION public._st_union_transfn(internal, raster, integer, text)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_union_transfn$function$
;

-- DROP FUNCTION public._st_union_transfn(internal, raster, int4);

CREATE OR REPLACE FUNCTION public._st_union_transfn(internal, raster, integer)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_union_transfn$function$
;

-- DROP FUNCTION public._st_union_transfn(internal, raster);

CREATE OR REPLACE FUNCTION public._st_union_transfn(internal, raster)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_union_transfn$function$
;

-- DROP FUNCTION public._st_union_transfn(internal, raster, text);

CREATE OR REPLACE FUNCTION public._st_union_transfn(internal, raster, text)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_union_transfn$function$
;

-- DROP FUNCTION public._st_valuecount(in text, in text, in int4, in bool, in _float8, in float8, out float8, out int4, out float8);

CREATE OR REPLACE FUNCTION public._st_valuecount(rastertable text, rastercolumn text, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, searchvalues double precision[] DEFAULT NULL::double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT count integer, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE c
 STABLE
AS '$libdir/postgis_raster-3', $function$RASTER_valueCountCoverage$function$
;

-- DROP FUNCTION public._st_valuecount(in raster, in int4, in bool, in _float8, in float8, out float8, out int4, out float8);

CREATE OR REPLACE FUNCTION public._st_valuecount(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, searchvalues double precision[] DEFAULT NULL::double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT count integer, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_valueCount$function$
;

-- DROP FUNCTION public._st_voronoi(geometry, geometry, float8, bool);

CREATE OR REPLACE FUNCTION public._st_voronoi(g1 geometry, clip geometry DEFAULT NULL::geometry, tolerance double precision DEFAULT 0.0, return_polygons boolean DEFAULT true)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 10000
AS '$libdir/postgis-3', $function$ST_Voronoi$function$
;

-- DROP FUNCTION public._st_within(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public._st_within(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT public._st_contains($3, $4, $1, $2) $function$
;

-- DROP FUNCTION public._st_within(geometry, geometry);

CREATE OR REPLACE FUNCTION public._st_within(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$SELECT public._ST_Contains($2,$1)$function$
;

-- DROP FUNCTION public._st_worldtorastercoord(in raster, in float8, in float8, out int4, out int4);

CREATE OR REPLACE FUNCTION public._st_worldtorastercoord(rast raster, longitude double precision DEFAULT NULL::double precision, latitude double precision DEFAULT NULL::double precision, OUT columnx integer, OUT rowy integer)
 RETURNS record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_worldToRasterCoord$function$
;

-- DROP FUNCTION public._updaterastersrid(name, name, name, int4);

CREATE OR REPLACE FUNCTION public._updaterastersrid(schema_name name, table_name name, column_name name, new_srid integer)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$
	DECLARE
		fqtn text;
		schema name;
		sql text;
		srid integer;
		ct boolean;
	BEGIN
		-- validate schema
		schema := NULL;
		IF length($1) > 0 THEN
			sql := 'SELECT nspname FROM pg_namespace '
				|| 'WHERE nspname = ' || quote_literal($1)
				|| 'LIMIT 1';
			EXECUTE sql INTO schema;

			IF schema IS NULL THEN
				RAISE EXCEPTION 'The value provided for schema is invalid';
				RETURN FALSE;
			END IF;
		END IF;

		IF schema IS NULL THEN
			sql := 'SELECT n.nspname AS schemaname '
				|| 'FROM pg_catalog.pg_class c '
				|| 'JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace '
				|| 'WHERE c.relkind = ' || quote_literal('r')
				|| ' AND n.nspname NOT IN (' || quote_literal('pg_catalog')
				|| ', ' || quote_literal('pg_toast')
				|| ') AND pg_catalog.pg_table_is_visible(c.oid)'
				|| ' AND c.relname = ' || quote_literal($2);
			EXECUTE sql INTO schema;

			IF schema IS NULL THEN
				RAISE EXCEPTION 'The table % does not occur in the search_path', quote_literal($2);
				RETURN FALSE;
			END IF;
		END IF;

		-- clamp SRID
		IF new_srid < 0 THEN
			srid :=  public.ST_SRID('POINT EMPTY'::public.geometry);
			RAISE NOTICE 'SRID % converted to the officially unknown SRID %', new_srid, srid;
		ELSE
			srid := new_srid;
		END IF;

		-- drop coverage tile constraint
		-- done separately just in case constraint doesn't exist
		ct := public._raster_constraint_info_coverage_tile(schema, $2, $3);
		IF ct IS TRUE THEN
			PERFORM  public._drop_raster_constraint_coverage_tile(schema, $2, $3);
		END IF;

		-- drop SRID, extent, alignment constraints
		PERFORM  public.DropRasterConstraints(schema, $2, $3, 'extent', 'alignment', 'srid');

		fqtn := '';
		IF length($1) > 0 THEN
			fqtn := quote_ident($1) || '.';
		END IF;
		fqtn := fqtn || quote_ident($2);

		-- update SRID
		sql := 'UPDATE ' || fqtn ||
			' SET ' || quote_ident($3) ||
			' =  public.ST_SetSRID(' || quote_ident($3) ||
			'::public.raster, ' || srid || ')';
		RAISE NOTICE 'sql = %', sql;
		EXECUTE sql;

		-- add SRID constraint
		PERFORM  public.AddRasterConstraints(schema, $2, $3, 'srid', 'extent', 'alignment');

		-- add coverage tile constraint if needed
		IF ct IS TRUE THEN
			PERFORM  public._add_raster_constraint_coverage_tile(schema, $2, $3);
		END IF;

		RETURN TRUE;
	END;
	$function$
;

-- DROP FUNCTION public.addauth(text);

CREATE OR REPLACE FUNCTION public.addauth(text)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$
DECLARE
	lockid alias for $1;
	okay boolean;
	myrec record;
BEGIN
	-- check to see if table exists
	--  if not, CREATE TEMP TABLE mylock (transid xid, lockcode text)
	okay := 'f';
	FOR myrec IN SELECT * FROM pg_class WHERE relname = 'temp_lock_have_table' LOOP
		okay := 't';
	END LOOP;
	IF (okay <> 't') THEN
		CREATE TEMP TABLE temp_lock_have_table (transid xid, lockcode text);
			-- this will only work from pgsql7.4 up
			-- ON COMMIT DELETE ROWS;
	END IF;

	--  INSERT INTO mylock VALUES ( $1)
--	EXECUTE 'INSERT INTO temp_lock_have_table VALUES ( '||
--		quote_literal(getTransactionID()) || ',' ||
--		quote_literal(lockid) ||')';

	INSERT INTO temp_lock_have_table VALUES (getTransactionID(), lockid);

	RETURN true::boolean;
END;
$function$
;

COMMENT ON FUNCTION public.addauth(text) IS 'args: auth_token - Adds an authorization token to be used in the current transaction.';

-- DROP FUNCTION public.addgeometrycolumn(varchar, varchar, varchar, varchar, int4, varchar, int4, bool);

CREATE OR REPLACE FUNCTION public.addgeometrycolumn(catalog_name character varying, schema_name character varying, table_name character varying, column_name character varying, new_srid_in integer, new_type character varying, new_dim integer, use_typmod boolean DEFAULT true)
 RETURNS text
 LANGUAGE plpgsql
 STRICT
AS $function$
DECLARE
	rec RECORD;
	sr varchar;
	real_schema name;
	sql text;
	new_srid integer;

BEGIN

	-- Verify geometry type
	IF (postgis_type_name(new_type,new_dim) IS NULL )
	THEN
		RAISE EXCEPTION 'Invalid type name "%(%)" - valid ones are:
	POINT, MULTIPOINT,
	LINESTRING, MULTILINESTRING,
	POLYGON, MULTIPOLYGON,
	CIRCULARSTRING, COMPOUNDCURVE, MULTICURVE,
	CURVEPOLYGON, MULTISURFACE,
	GEOMETRY, GEOMETRYCOLLECTION,
	POINTM, MULTIPOINTM,
	LINESTRINGM, MULTILINESTRINGM,
	POLYGONM, MULTIPOLYGONM,
	CIRCULARSTRINGM, COMPOUNDCURVEM, MULTICURVEM
	CURVEPOLYGONM, MULTISURFACEM, TRIANGLE, TRIANGLEM,
	POLYHEDRALSURFACE, POLYHEDRALSURFACEM, TIN, TINM
	or GEOMETRYCOLLECTIONM', new_type, new_dim;
		RETURN 'fail';
	END IF;

	-- Verify dimension
	IF ( (new_dim >4) OR (new_dim <2) ) THEN
		RAISE EXCEPTION 'invalid dimension';
		RETURN 'fail';
	END IF;

	IF ( (new_type LIKE '%M') AND (new_dim!=3) ) THEN
		RAISE EXCEPTION 'TypeM needs 3 dimensions';
		RETURN 'fail';
	END IF;

	-- Verify SRID
	IF ( new_srid_in > 0 ) THEN
		IF new_srid_in > 998999 THEN
			RAISE EXCEPTION 'AddGeometryColumn() - SRID must be <= %', 998999;
		END IF;
		new_srid := new_srid_in;
		SELECT SRID INTO sr FROM spatial_ref_sys WHERE SRID = new_srid;
		IF NOT FOUND THEN
			RAISE EXCEPTION 'AddGeometryColumn() - invalid SRID';
			RETURN 'fail';
		END IF;
	ELSE
		new_srid := public.ST_SRID('POINT EMPTY'::public.geometry);
		IF ( new_srid_in != new_srid ) THEN
			RAISE NOTICE 'SRID value % converted to the officially unknown SRID value %', new_srid_in, new_srid;
		END IF;
	END IF;

	-- Verify schema
	IF ( schema_name IS NOT NULL AND schema_name != '' ) THEN
		sql := 'SELECT nspname FROM pg_catalog.pg_namespace ' ||
			'WHERE text(nspname) = ' || quote_literal(schema_name) ||
			'LIMIT 1';
		RAISE DEBUG '%', sql;
		EXECUTE sql INTO real_schema;

		IF ( real_schema IS NULL ) THEN
			RAISE EXCEPTION 'Schema % is not a valid schemaname', quote_literal(schema_name);
			RETURN 'fail';
		END IF;
	END IF;

	IF ( real_schema IS NULL ) THEN
		RAISE DEBUG 'Detecting schema';
		sql := 'SELECT n.nspname AS schemaname ' ||
			'FROM pg_catalog.pg_class c ' ||
			  'JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace ' ||
			'WHERE c.relkind = ' || quote_literal('r') ||
			' AND n.nspname NOT IN (' || quote_literal('pg_catalog') || ', ' || quote_literal('pg_toast') || ')' ||
			' AND pg_catalog.pg_table_is_visible(c.oid)' ||
			' AND c.relname = ' || quote_literal(table_name);
		RAISE DEBUG '%', sql;
		EXECUTE sql INTO real_schema;

		IF ( real_schema IS NULL ) THEN
			RAISE EXCEPTION 'Table % does not occur in the search_path', quote_literal(table_name);
			RETURN 'fail';
		END IF;
	END IF;

	-- Add geometry column to table
	IF use_typmod THEN
	     sql := 'ALTER TABLE ' ||
            quote_ident(real_schema) || '.' || quote_ident(table_name)
            || ' ADD COLUMN ' || quote_ident(column_name) ||
            ' geometry(' || public.postgis_type_name(new_type, new_dim) || ', ' || new_srid::text || ')';
        RAISE DEBUG '%', sql;
	ELSE
        sql := 'ALTER TABLE ' ||
            quote_ident(real_schema) || '.' || quote_ident(table_name)
            || ' ADD COLUMN ' || quote_ident(column_name) ||
            ' geometry ';
        RAISE DEBUG '%', sql;
    END IF;
	EXECUTE sql;

	IF NOT use_typmod THEN
        -- Add table CHECKs
        sql := 'ALTER TABLE ' ||
            quote_ident(real_schema) || '.' || quote_ident(table_name)
            || ' ADD CONSTRAINT '
            || quote_ident('enforce_srid_' || column_name)
            || ' CHECK (st_srid(' || quote_ident(column_name) ||
            ') = ' || new_srid::text || ')' ;
        RAISE DEBUG '%', sql;
        EXECUTE sql;

        sql := 'ALTER TABLE ' ||
            quote_ident(real_schema) || '.' || quote_ident(table_name)
            || ' ADD CONSTRAINT '
            || quote_ident('enforce_dims_' || column_name)
            || ' CHECK (st_ndims(' || quote_ident(column_name) ||
            ') = ' || new_dim::text || ')' ;
        RAISE DEBUG '%', sql;
        EXECUTE sql;

        IF ( NOT (new_type = 'GEOMETRY')) THEN
            sql := 'ALTER TABLE ' ||
                quote_ident(real_schema) || '.' || quote_ident(table_name) || ' ADD CONSTRAINT ' ||
                quote_ident('enforce_geotype_' || column_name) ||
                ' CHECK (GeometryType(' ||
                quote_ident(column_name) || ')=' ||
                quote_literal(new_type) || ' OR (' ||
                quote_ident(column_name) || ') is null)';
            RAISE DEBUG '%', sql;
            EXECUTE sql;
        END IF;
    END IF;

	RETURN
		real_schema || '.' ||
		table_name || '.' || column_name ||
		' SRID:' || new_srid::text ||
		' TYPE:' || new_type ||
		' DIMS:' || new_dim::text || ' ';
END;
$function$
;

COMMENT ON FUNCTION public.addgeometrycolumn(varchar, varchar, varchar, varchar, int4, varchar, int4, bool) IS 'args: catalog_name, schema_name, table_name, column_name, srid, type, dimension, use_typmod=true - Adds a geometry column to an existing table.';

-- DROP FUNCTION public.addgeometrycolumn(varchar, varchar, varchar, int4, varchar, int4, bool);

CREATE OR REPLACE FUNCTION public.addgeometrycolumn(schema_name character varying, table_name character varying, column_name character varying, new_srid integer, new_type character varying, new_dim integer, use_typmod boolean DEFAULT true)
 RETURNS text
 LANGUAGE plpgsql
 STABLE STRICT
AS $function$
DECLARE
	ret  text;
BEGIN
	SELECT public.AddGeometryColumn('',$1,$2,$3,$4,$5,$6,$7) into ret;
	RETURN ret;
END;
$function$
;

COMMENT ON FUNCTION public.addgeometrycolumn(varchar, varchar, varchar, int4, varchar, int4, bool) IS 'args: schema_name, table_name, column_name, srid, type, dimension, use_typmod=true - Adds a geometry column to an existing table.';

-- DROP FUNCTION public.addgeometrycolumn(varchar, varchar, int4, varchar, int4, bool);

CREATE OR REPLACE FUNCTION public.addgeometrycolumn(table_name character varying, column_name character varying, new_srid integer, new_type character varying, new_dim integer, use_typmod boolean DEFAULT true)
 RETURNS text
 LANGUAGE plpgsql
 STRICT
AS $function$
DECLARE
	ret  text;
BEGIN
	SELECT public.AddGeometryColumn('','',$1,$2,$3,$4,$5, $6) into ret;
	RETURN ret;
END;
$function$
;

COMMENT ON FUNCTION public.addgeometrycolumn(varchar, varchar, int4, varchar, int4, bool) IS 'args: table_name, column_name, srid, type, dimension, use_typmod=true - Adds a geometry column to an existing table.';

-- DROP FUNCTION public.addoverviewconstraints(name, name, name, name, name, name, int4);

CREATE OR REPLACE FUNCTION public.addoverviewconstraints(ovschema name, ovtable name, ovcolumn name, refschema name, reftable name, refcolumn name, ovfactor integer)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		x int;
		s name;
		t name;
		oschema name;
		rschema name;
		sql text;
		rtn boolean;
	BEGIN
		FOR x IN 1..2 LOOP
			s := '';

			IF x = 1 THEN
				s := $1;
				t := $2;
			ELSE
				s := $4;
				t := $5;
			END IF;

			-- validate user-provided schema
			IF length(s) > 0 THEN
				sql := 'SELECT nspname FROM pg_namespace '
					|| 'WHERE nspname = ' || quote_literal(s)
					|| 'LIMIT 1';
				EXECUTE sql INTO s;

				IF s IS NULL THEN
					RAISE EXCEPTION 'The value % is not a valid schema', quote_literal(s);
					RETURN FALSE;
				END IF;
			END IF;

			-- no schema, determine what it could be using the table
			IF length(s) < 1 THEN
				sql := 'SELECT n.nspname AS schemaname '
					|| 'FROM pg_catalog.pg_class c '
					|| 'JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace '
					|| 'WHERE c.relkind = ' || quote_literal('r')
					|| ' AND n.nspname NOT IN (' || quote_literal('pg_catalog')
					|| ', ' || quote_literal('pg_toast')
					|| ') AND pg_catalog.pg_table_is_visible(c.oid)'
					|| ' AND c.relname = ' || quote_literal(t);
				EXECUTE sql INTO s;

				IF s IS NULL THEN
					RAISE EXCEPTION 'The table % does not occur in the search_path', quote_literal(t);
					RETURN FALSE;
				END IF;
			END IF;

			IF x = 1 THEN
				oschema := s;
			ELSE
				rschema := s;
			END IF;
		END LOOP;

		-- reference raster
		rtn :=  public._add_overview_constraint(oschema, $2, $3, rschema, $5, $6, $7);
		IF rtn IS FALSE THEN
			RAISE EXCEPTION 'Unable to add the overview constraint.  Is the schema name, table name or column name incorrect?';
			RETURN FALSE;
		END IF;

		RETURN TRUE;
	END;
	$function$
;

COMMENT ON FUNCTION public.addoverviewconstraints(name, name, name, name, name, name, int4) IS 'args: ovschema, ovtable, ovcolumn, refschema, reftable, refcolumn, ovfactor - Tag a raster column as being an overview of another.';

-- DROP FUNCTION public.addoverviewconstraints(name, name, name, name, int4);

CREATE OR REPLACE FUNCTION public.addoverviewconstraints(ovtable name, ovcolumn name, reftable name, refcolumn name, ovfactor integer)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public.AddOverviewConstraints('', $1, $2, '', $3, $4, $5) $function$
;

COMMENT ON FUNCTION public.addoverviewconstraints(name, name, name, name, int4) IS 'args: ovtable, ovcolumn, reftable, refcolumn, ovfactor - Tag a raster column as being an overview of another.';

-- DROP FUNCTION public.addrasterconstraints(name, name, name, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool);

CREATE OR REPLACE FUNCTION public.addrasterconstraints(rastschema name, rasttable name, rastcolumn name, srid boolean DEFAULT true, scale_x boolean DEFAULT true, scale_y boolean DEFAULT true, blocksize_x boolean DEFAULT true, blocksize_y boolean DEFAULT true, same_alignment boolean DEFAULT true, regular_blocking boolean DEFAULT false, num_bands boolean DEFAULT true, pixel_types boolean DEFAULT true, nodata_values boolean DEFAULT true, out_db boolean DEFAULT true, extent boolean DEFAULT true)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		constraints text[];
	BEGIN
		IF srid IS TRUE THEN
			constraints := constraints || 'srid'::text;
		END IF;

		IF scale_x IS TRUE THEN
			constraints := constraints || 'scale_x'::text;
		END IF;

		IF scale_y IS TRUE THEN
			constraints := constraints || 'scale_y'::text;
		END IF;

		IF blocksize_x IS TRUE THEN
			constraints := constraints || 'blocksize_x'::text;
		END IF;

		IF blocksize_y IS TRUE THEN
			constraints := constraints || 'blocksize_y'::text;
		END IF;

		IF same_alignment IS TRUE THEN
			constraints := constraints || 'same_alignment'::text;
		END IF;

		IF regular_blocking IS TRUE THEN
			constraints := constraints || 'regular_blocking'::text;
		END IF;

		IF num_bands IS TRUE THEN
			constraints := constraints || 'num_bands'::text;
		END IF;

		IF pixel_types IS TRUE THEN
			constraints := constraints || 'pixel_types'::text;
		END IF;

		IF nodata_values IS TRUE THEN
			constraints := constraints || 'nodata_values'::text;
		END IF;

		IF out_db IS TRUE THEN
			constraints := constraints || 'out_db'::text;
		END IF;

		IF extent IS TRUE THEN
			constraints := constraints || 'extent'::text;
		END IF;

		RETURN public.AddRasterConstraints($1, $2, $3, VARIADIC constraints);
	END;
	$function$
;

COMMENT ON FUNCTION public.addrasterconstraints(name, name, name, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool) IS 'args: rastschema, rasttable, rastcolumn, srid=true, scale_x=true, scale_y=true, blocksize_x=true, blocksize_y=true, same_alignment=true, regular_blocking=false, num_bands=true, pixel_types=true, nodata_values=true, out_db=true, extent=true - Adds raster constraints to a loaded raster table for a specific column that constrains spatial ref, scaling, blocksize, alignment, bands, band type and a flag to denote if raster column is regularly blocked. The table must be loaded with data for the constraints to be inferred. Returns true if the constraint setting was accomplished and issues a notice otherwise.';

-- DROP FUNCTION public.addrasterconstraints(name, name, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool);

CREATE OR REPLACE FUNCTION public.addrasterconstraints(rasttable name, rastcolumn name, srid boolean DEFAULT true, scale_x boolean DEFAULT true, scale_y boolean DEFAULT true, blocksize_x boolean DEFAULT true, blocksize_y boolean DEFAULT true, same_alignment boolean DEFAULT true, regular_blocking boolean DEFAULT false, num_bands boolean DEFAULT true, pixel_types boolean DEFAULT true, nodata_values boolean DEFAULT true, out_db boolean DEFAULT true, extent boolean DEFAULT true)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT public.AddRasterConstraints('', $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14) $function$
;

COMMENT ON FUNCTION public.addrasterconstraints(name, name, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool) IS 'args: rasttable, rastcolumn, srid=true, scale_x=true, scale_y=true, blocksize_x=true, blocksize_y=true, same_alignment=true, regular_blocking=false, num_bands=true, pixel_types=true, nodata_values=true, out_db=true, extent=true - Adds raster constraints to a loaded raster table for a specific column that constrains spatial ref, scaling, blocksize, alignment, bands, band type and a flag to denote if raster column is regularly blocked. The table must be loaded with data for the constraints to be inferred. Returns true if the constraint setting was accomplished and issues a notice otherwise.';

-- DROP FUNCTION public.addrasterconstraints(in name, in name, variadic _text);

CREATE OR REPLACE FUNCTION public.addrasterconstraints(rasttable name, rastcolumn name, VARIADIC constraints text[])
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT public.AddRasterConstraints('', $1, $2, VARIADIC $3) $function$
;

COMMENT ON FUNCTION public.addrasterconstraints(in name, in name, variadic _text) IS 'args: rasttable, rastcolumn, VARIADIC constraints - Adds raster constraints to a loaded raster table for a specific column that constrains spatial ref, scaling, blocksize, alignment, bands, band type and a flag to denote if raster column is regularly blocked. The table must be loaded with data for the constraints to be inferred. Returns true if the constraint setting was accomplished and issues a notice otherwise.';

-- DROP FUNCTION public.addrasterconstraints(in name, in name, in name, variadic _text);

CREATE OR REPLACE FUNCTION public.addrasterconstraints(rastschema name, rasttable name, rastcolumn name, VARIADIC constraints text[])
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		max int;
		cnt int;
		sql text;
		schema name;
		x int;
		kw text;
		rtn boolean;
	BEGIN
		cnt := 0;
		max := array_length(constraints, 1);
		IF max < 1 THEN
			RAISE NOTICE 'No constraints indicated to be added.  Doing nothing';
			RETURN TRUE;
		END IF;

		-- validate schema
		schema := NULL;
		IF length($1) > 0 THEN
			sql := 'SELECT nspname FROM pg_namespace '
				|| 'WHERE nspname = ' || quote_literal($1)
				|| 'LIMIT 1';
			EXECUTE sql INTO schema;

			IF schema IS NULL THEN
				RAISE EXCEPTION 'The value provided for schema is invalid';
				RETURN FALSE;
			END IF;
		END IF;

		IF schema IS NULL THEN
			sql := 'SELECT n.nspname AS schemaname '
				|| 'FROM pg_catalog.pg_class c '
				|| 'JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace '
				|| 'WHERE c.relkind = ' || quote_literal('r')
				|| ' AND n.nspname NOT IN (' || quote_literal('pg_catalog')
				|| ', ' || quote_literal('pg_toast')
				|| ') AND pg_catalog.pg_table_is_visible(c.oid)'
				|| ' AND c.relname = ' || quote_literal($2);
			EXECUTE sql INTO schema;

			IF schema IS NULL THEN
				RAISE EXCEPTION 'The table % does not occur in the search_path', quote_literal($2);
				RETURN FALSE;
			END IF;
		END IF;

		<<kwloop>>
		FOR x in 1..max LOOP
			kw := trim(both from lower(constraints[x]));

			BEGIN
				CASE
					WHEN kw = 'srid' THEN
						RAISE NOTICE 'Adding SRID constraint';
						rtn :=  public._add_raster_constraint_srid(schema, $2, $3);
					WHEN kw IN ('scale_x', 'scalex') THEN
						RAISE NOTICE 'Adding scale-X constraint';
						rtn :=  public._add_raster_constraint_scale(schema, $2, $3, 'x');
					WHEN kw IN ('scale_y', 'scaley') THEN
						RAISE NOTICE 'Adding scale-Y constraint';
						rtn :=  public._add_raster_constraint_scale(schema, $2, $3, 'y');
					WHEN kw = 'scale' THEN
						RAISE NOTICE 'Adding scale-X constraint';
						rtn :=  public._add_raster_constraint_scale(schema, $2, $3, 'x');
						RAISE NOTICE 'Adding scale-Y constraint';
						rtn :=  public._add_raster_constraint_scale(schema, $2, $3, 'y');
					WHEN kw IN ('blocksize_x', 'blocksizex', 'width') THEN
						RAISE NOTICE 'Adding blocksize-X constraint';
						rtn :=  public._add_raster_constraint_blocksize(schema, $2, $3, 'width');
					WHEN kw IN ('blocksize_y', 'blocksizey', 'height') THEN
						RAISE NOTICE 'Adding blocksize-Y constraint';
						rtn :=  public._add_raster_constraint_blocksize(schema, $2, $3, 'height');
					WHEN kw = 'blocksize' THEN
						RAISE NOTICE 'Adding blocksize-X constraint';
						rtn :=  public._add_raster_constraint_blocksize(schema, $2, $3, 'width');
						RAISE NOTICE 'Adding blocksize-Y constraint';
						rtn :=  public._add_raster_constraint_blocksize(schema, $2, $3, 'height');
					WHEN kw IN ('same_alignment', 'samealignment', 'alignment') THEN
						RAISE NOTICE 'Adding alignment constraint';
						rtn :=  public._add_raster_constraint_alignment(schema, $2, $3);
					WHEN kw IN ('regular_blocking', 'regularblocking') THEN
						RAISE NOTICE 'Adding coverage tile constraint required for regular blocking';
						rtn :=  public._add_raster_constraint_coverage_tile(schema, $2, $3);
						IF rtn IS NOT FALSE THEN
							RAISE NOTICE 'Adding spatially unique constraint required for regular blocking';
							rtn :=  public._add_raster_constraint_spatially_unique(schema, $2, $3);
						END IF;
					WHEN kw IN ('num_bands', 'numbands') THEN
						RAISE NOTICE 'Adding number of bands constraint';
						rtn :=  public._add_raster_constraint_num_bands(schema, $2, $3);
					WHEN kw IN ('pixel_types', 'pixeltypes') THEN
						RAISE NOTICE 'Adding pixel type constraint';
						rtn :=  public._add_raster_constraint_pixel_types(schema, $2, $3);
					WHEN kw IN ('nodata_values', 'nodatavalues', 'nodata') THEN
						RAISE NOTICE 'Adding nodata value constraint';
						rtn :=  public._add_raster_constraint_nodata_values(schema, $2, $3);
					WHEN kw IN ('out_db', 'outdb') THEN
						RAISE NOTICE 'Adding out-of-database constraint';
						rtn :=  public._add_raster_constraint_out_db(schema, $2, $3);
					WHEN kw = 'extent' THEN
						RAISE NOTICE 'Adding maximum extent constraint';
						rtn :=  public._add_raster_constraint_extent(schema, $2, $3);
					ELSE
						RAISE NOTICE 'Unknown constraint: %.  Skipping', quote_literal(constraints[x]);
						CONTINUE kwloop;
				END CASE;
			END;

			IF rtn IS FALSE THEN
				cnt := cnt + 1;
				RAISE WARNING 'Unable to add constraint: %.  Skipping', quote_literal(constraints[x]);
			END IF;

		END LOOP kwloop;

		IF cnt = max THEN
			RAISE EXCEPTION 'None of the constraints specified could be added.  Is the schema name, table name or column name incorrect?';
			RETURN FALSE;
		END IF;

		RETURN TRUE;
	END;
	$function$
;

COMMENT ON FUNCTION public.addrasterconstraints(in name, in name, in name, variadic _text) IS 'args: rastschema, rasttable, rastcolumn, VARIADIC constraints - Adds raster constraints to a loaded raster table for a specific column that constrains spatial ref, scaling, blocksize, alignment, bands, band type and a flag to denote if raster column is regularly blocked. The table must be loaded with data for the constraints to be inferred. Returns true if the constraint setting was accomplished and issues a notice otherwise.';

-- DROP FUNCTION public.armor(bytea, _text, _text);

CREATE OR REPLACE FUNCTION public.armor(bytea, text[], text[])
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_armor$function$
;

-- DROP FUNCTION public.armor(bytea);

CREATE OR REPLACE FUNCTION public.armor(bytea)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_armor$function$
;

-- DROP FUNCTION public.box(box3d);

CREATE OR REPLACE FUNCTION public.box(box3d)
 RETURNS box
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$BOX3D_to_BOX$function$
;

-- DROP FUNCTION public.box(geometry);

CREATE OR REPLACE FUNCTION public.box(geometry)
 RETURNS box
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_to_BOX$function$
;

-- DROP FUNCTION public.box2d(box3d);

CREATE OR REPLACE FUNCTION public.box2d(box3d)
 RETURNS box2d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$BOX3D_to_BOX2D$function$
;

-- DROP FUNCTION public.box2d(geometry);

CREATE OR REPLACE FUNCTION public.box2d(geometry)
 RETURNS box2d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_to_BOX2D$function$
;

COMMENT ON FUNCTION public.box2d(geometry) IS 'args: geomA - Returns a BOX2D representing the 2D extent of the geometry.';

-- DROP FUNCTION public.box2d_in(cstring);

CREATE OR REPLACE FUNCTION public.box2d_in(cstring)
 RETURNS box2d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$BOX2D_in$function$
;

-- DROP FUNCTION public.box2d_out(box2d);

CREATE OR REPLACE FUNCTION public.box2d_out(box2d)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$BOX2D_out$function$
;

-- DROP FUNCTION public.box2df_in(cstring);

CREATE OR REPLACE FUNCTION public.box2df_in(cstring)
 RETURNS box2df
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$box2df_in$function$
;

-- DROP FUNCTION public.box2df_out(box2df);

CREATE OR REPLACE FUNCTION public.box2df_out(box2df)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$box2df_out$function$
;

-- DROP FUNCTION public.box3d(geometry);

CREATE OR REPLACE FUNCTION public.box3d(geometry)
 RETURNS box3d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_to_BOX3D$function$
;

COMMENT ON FUNCTION public.box3d(geometry) IS 'args: geomA - Returns a BOX3D representing the 3D extent of the geometry.';

-- DROP FUNCTION public.box3d(raster);

CREATE OR REPLACE FUNCTION public.box3d(raster)
 RETURNS box3d
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select box3d( public.ST_convexhull($1))$function$
;

COMMENT ON FUNCTION public.box3d(raster) IS 'args: rast - Returns the box 3d representation of the enclosing box of the raster.';

-- DROP FUNCTION public.box3d(box2d);

CREATE OR REPLACE FUNCTION public.box3d(box2d)
 RETURNS box3d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$BOX2D_to_BOX3D$function$
;

-- DROP FUNCTION public.box3d_in(cstring);

CREATE OR REPLACE FUNCTION public.box3d_in(cstring)
 RETURNS box3d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$BOX3D_in$function$
;

-- DROP FUNCTION public.box3d_out(box3d);

CREATE OR REPLACE FUNCTION public.box3d_out(box3d)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$BOX3D_out$function$
;

-- DROP FUNCTION public.box3dtobox(box3d);

CREATE OR REPLACE FUNCTION public.box3dtobox(box3d)
 RETURNS box
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$BOX3D_to_BOX$function$
;

-- DROP FUNCTION public."bytea"(raster);

CREATE OR REPLACE FUNCTION public.bytea(raster)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_to_bytea$function$
;

-- DROP FUNCTION public."bytea"(geography);

CREATE OR REPLACE FUNCTION public.bytea(geography)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_to_bytea$function$
;

-- DROP FUNCTION public."bytea"(geometry);

CREATE OR REPLACE FUNCTION public.bytea(geometry)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_to_bytea$function$
;

-- DROP FUNCTION public.cash_dist(money, money);

CREATE OR REPLACE FUNCTION public.cash_dist(money, money)
 RETURNS money
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$cash_dist$function$
;

-- DROP FUNCTION public.checkauth(text, text, text);

CREATE OR REPLACE FUNCTION public.checkauth(text, text, text)
 RETURNS integer
 LANGUAGE plpgsql
AS $function$
DECLARE
	schema text;
BEGIN
	IF NOT LongTransactionsEnabled() THEN
		RAISE EXCEPTION 'Long transaction support disabled, use EnableLongTransaction() to enable.';
	END IF;

	if ( $1 != '' ) THEN
		schema = $1;
	ELSE
		SELECT current_schema() into schema;
	END IF;

	-- TODO: check for an already existing trigger ?

	EXECUTE 'CREATE TRIGGER check_auth BEFORE UPDATE OR DELETE ON '
		|| quote_ident(schema) || '.' || quote_ident($2)
		||' FOR EACH ROW EXECUTE PROCEDURE CheckAuthTrigger('
		|| quote_literal($3) || ')';

	RETURN 0;
END;
$function$
;

COMMENT ON FUNCTION public.checkauth(text, text, text) IS 'args: a_schema_name, a_table_name, a_key_column_name - Creates a trigger on a table to prevent/allow updates and deletes of rows based on authorization token.';

-- DROP FUNCTION public.checkauth(text, text);

CREATE OR REPLACE FUNCTION public.checkauth(text, text)
 RETURNS integer
 LANGUAGE sql
AS $function$ SELECT CheckAuth('', $1, $2) $function$
;

COMMENT ON FUNCTION public.checkauth(text, text) IS 'args: a_table_name, a_key_column_name - Creates a trigger on a table to prevent/allow updates and deletes of rows based on authorization token.';

-- DROP FUNCTION public.checkauthtrigger();

CREATE OR REPLACE FUNCTION public.checkauthtrigger()
 RETURNS trigger
 LANGUAGE c
AS '$libdir/postgis-3', $function$check_authorization$function$
;

-- DROP FUNCTION public.contains_2d(box2df, geometry);

CREATE OR REPLACE FUNCTION public.contains_2d(box2df, geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_contains_box2df_geom_2d$function$
;

-- DROP FUNCTION public.contains_2d(geometry, box2df);

CREATE OR REPLACE FUNCTION public.contains_2d(geometry, box2df)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 1
AS $function$SELECT $2 OPERATOR(public.@) $1;$function$
;

-- DROP FUNCTION public.contains_2d(box2df, box2df);

CREATE OR REPLACE FUNCTION public.contains_2d(box2df, box2df)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_contains_box2df_box2df_2d$function$
;

-- DROP FUNCTION public.crypt(text, text);

CREATE OR REPLACE FUNCTION public.crypt(text, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_crypt$function$
;

-- DROP FUNCTION public.date_dist(date, date);

CREATE OR REPLACE FUNCTION public.date_dist(date, date)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$date_dist$function$
;

-- DROP FUNCTION public.dearmor(text);

CREATE OR REPLACE FUNCTION public.dearmor(text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_dearmor$function$
;

-- DROP FUNCTION public.decrypt(bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.decrypt(bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_decrypt$function$
;

-- DROP FUNCTION public.decrypt_iv(bytea, bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.decrypt_iv(bytea, bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_decrypt_iv$function$
;

-- DROP FUNCTION public.difference(text, text);

CREATE OR REPLACE FUNCTION public.difference(text, text)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/fuzzystrmatch', $function$difference$function$
;

-- DROP FUNCTION public.digest(text, text);

CREATE OR REPLACE FUNCTION public.digest(text, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_digest$function$
;

-- DROP FUNCTION public.digest(bytea, text);

CREATE OR REPLACE FUNCTION public.digest(bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_digest$function$
;

-- DROP FUNCTION public.disablelongtransactions();

CREATE OR REPLACE FUNCTION public.disablelongtransactions()
 RETURNS text
 LANGUAGE plpgsql
AS $function$
DECLARE
	rec RECORD;

BEGIN

	--
	-- Drop all triggers applied by CheckAuth()
	--
	FOR rec IN
		SELECT c.relname, t.tgname, t.tgargs FROM pg_trigger t, pg_class c, pg_proc p
		WHERE p.proname = 'checkauthtrigger' and t.tgfoid = p.oid and t.tgrelid = c.oid
	LOOP
		EXECUTE 'DROP TRIGGER ' || quote_ident(rec.tgname) ||
			' ON ' || quote_ident(rec.relname);
	END LOOP;

	--
	-- Drop the authorization_table table
	--
	FOR rec IN SELECT * FROM pg_class WHERE relname = 'authorization_table' LOOP
		DROP TABLE authorization_table;
	END LOOP;

	--
	-- Drop the authorized_tables view
	--
	FOR rec IN SELECT * FROM pg_class WHERE relname = 'authorized_tables' LOOP
		DROP VIEW authorized_tables;
	END LOOP;

	RETURN 'Long transactions support disabled';
END;
$function$
;

COMMENT ON FUNCTION public.disablelongtransactions() IS 'Disables long transaction support.';

-- DROP FUNCTION public.dmetaphone(text);

CREATE OR REPLACE FUNCTION public.dmetaphone(text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/fuzzystrmatch', $function$dmetaphone$function$
;

-- DROP FUNCTION public.dmetaphone_alt(text);

CREATE OR REPLACE FUNCTION public.dmetaphone_alt(text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/fuzzystrmatch', $function$dmetaphone_alt$function$
;

-- DROP FUNCTION public.dropgeometrycolumn(varchar, varchar, varchar);

CREATE OR REPLACE FUNCTION public.dropgeometrycolumn(schema_name character varying, table_name character varying, column_name character varying)
 RETURNS text
 LANGUAGE plpgsql
 STRICT
AS $function$
DECLARE
	ret text;
BEGIN
	SELECT public.DropGeometryColumn('',$1,$2,$3) into ret;
	RETURN ret;
END;
$function$
;

COMMENT ON FUNCTION public.dropgeometrycolumn(varchar, varchar, varchar) IS 'args: schema_name, table_name, column_name - Removes a geometry column from a spatial table.';

-- DROP FUNCTION public.dropgeometrycolumn(varchar, varchar, varchar, varchar);

CREATE OR REPLACE FUNCTION public.dropgeometrycolumn(catalog_name character varying, schema_name character varying, table_name character varying, column_name character varying)
 RETURNS text
 LANGUAGE plpgsql
 STRICT
AS $function$
DECLARE
	myrec RECORD;
	okay boolean;
	real_schema name;

BEGIN

	-- Find, check or fix schema_name
	IF ( schema_name != '' ) THEN
		okay = false;

		FOR myrec IN SELECT nspname FROM pg_namespace WHERE text(nspname) = schema_name LOOP
			okay := true;
		END LOOP;

		IF ( okay <>  true ) THEN
			RAISE NOTICE 'Invalid schema name - using current_schema()';
			SELECT current_schema() into real_schema;
		ELSE
			real_schema = schema_name;
		END IF;
	ELSE
		SELECT current_schema() into real_schema;
	END IF;

	-- Find out if the column is in the geometry_columns table
	okay = false;
	FOR myrec IN SELECT * from public.geometry_columns where f_table_schema = text(real_schema) and f_table_name = table_name and f_geometry_column = column_name LOOP
		okay := true;
	END LOOP;
	IF (okay <> true) THEN
		RAISE EXCEPTION 'column not found in geometry_columns table';
		RETURN false;
	END IF;

	-- Remove table column
	EXECUTE 'ALTER TABLE ' || quote_ident(real_schema) || '.' ||
		quote_ident(table_name) || ' DROP COLUMN ' ||
		quote_ident(column_name);

	RETURN real_schema || '.' || table_name || '.' || column_name ||' effectively removed.';

END;
$function$
;

COMMENT ON FUNCTION public.dropgeometrycolumn(varchar, varchar, varchar, varchar) IS 'args: catalog_name, schema_name, table_name, column_name - Removes a geometry column from a spatial table.';

-- DROP FUNCTION public.dropgeometrycolumn(varchar, varchar);

CREATE OR REPLACE FUNCTION public.dropgeometrycolumn(table_name character varying, column_name character varying)
 RETURNS text
 LANGUAGE plpgsql
 STRICT
AS $function$
DECLARE
	ret text;
BEGIN
	SELECT public.DropGeometryColumn('','',$1,$2) into ret;
	RETURN ret;
END;
$function$
;

COMMENT ON FUNCTION public.dropgeometrycolumn(varchar, varchar) IS 'args: table_name, column_name - Removes a geometry column from a spatial table.';

-- DROP FUNCTION public.dropgeometrytable(varchar);

CREATE OR REPLACE FUNCTION public.dropgeometrytable(table_name character varying)
 RETURNS text
 LANGUAGE sql
 STRICT
AS $function$ SELECT public.DropGeometryTable('','',$1) $function$
;

COMMENT ON FUNCTION public.dropgeometrytable(varchar) IS 'args: table_name - Drops a table and all its references in geometry_columns.';

-- DROP FUNCTION public.dropgeometrytable(varchar, varchar);

CREATE OR REPLACE FUNCTION public.dropgeometrytable(schema_name character varying, table_name character varying)
 RETURNS text
 LANGUAGE sql
 STRICT
AS $function$ SELECT public.DropGeometryTable('',$1,$2) $function$
;

COMMENT ON FUNCTION public.dropgeometrytable(varchar, varchar) IS 'args: schema_name, table_name - Drops a table and all its references in geometry_columns.';

-- DROP FUNCTION public.dropgeometrytable(varchar, varchar, varchar);

CREATE OR REPLACE FUNCTION public.dropgeometrytable(catalog_name character varying, schema_name character varying, table_name character varying)
 RETURNS text
 LANGUAGE plpgsql
 STRICT
AS $function$
DECLARE
	real_schema name;

BEGIN

	IF ( schema_name = '' ) THEN
		SELECT current_schema() into real_schema;
	ELSE
		real_schema = schema_name;
	END IF;

	-- TODO: Should we warn if table doesn't exist probably instead just saying dropped
	-- Remove table
	EXECUTE 'DROP TABLE IF EXISTS '
		|| quote_ident(real_schema) || '.' ||
		quote_ident(table_name) || ' RESTRICT';

	RETURN
		real_schema || '.' ||
		table_name ||' dropped.';

END;
$function$
;

COMMENT ON FUNCTION public.dropgeometrytable(varchar, varchar, varchar) IS 'args: catalog_name, schema_name, table_name - Drops a table and all its references in geometry_columns.';

-- DROP FUNCTION public.dropoverviewconstraints(name, name);

CREATE OR REPLACE FUNCTION public.dropoverviewconstraints(ovtable name, ovcolumn name)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public.DropOverviewConstraints('', $1, $2) $function$
;

COMMENT ON FUNCTION public.dropoverviewconstraints(name, name) IS 'args: ovtable, ovcolumn - Untag a raster column from being an overview of another.';

-- DROP FUNCTION public.dropoverviewconstraints(name, name, name);

CREATE OR REPLACE FUNCTION public.dropoverviewconstraints(ovschema name, ovtable name, ovcolumn name)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		schema name;
		sql text;
		rtn boolean;
	BEGIN
		-- validate schema
		schema := NULL;
		IF length($1) > 0 THEN
			sql := 'SELECT nspname FROM pg_namespace '
				|| 'WHERE nspname = ' || quote_literal($1)
				|| 'LIMIT 1';
			EXECUTE sql INTO schema;

			IF schema IS NULL THEN
				RAISE EXCEPTION 'The value provided for schema is invalid';
				RETURN FALSE;
			END IF;
		END IF;

		IF schema IS NULL THEN
			sql := 'SELECT n.nspname AS schemaname '
				|| 'FROM pg_catalog.pg_class c '
				|| 'JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace '
				|| 'WHERE c.relkind = ' || quote_literal('r')
				|| ' AND n.nspname NOT IN (' || quote_literal('pg_catalog')
				|| ', ' || quote_literal('pg_toast')
				|| ') AND pg_catalog.pg_table_is_visible(c.oid)'
				|| ' AND c.relname = ' || quote_literal($2);
			EXECUTE sql INTO schema;

			IF schema IS NULL THEN
				RAISE EXCEPTION 'The table % does not occur in the search_path', quote_literal($2);
				RETURN FALSE;
			END IF;
		END IF;

		rtn :=  public._drop_overview_constraint(schema, $2, $3);
		IF rtn IS FALSE THEN
			RAISE EXCEPTION 'Unable to drop the overview constraint .  Is the schema name, table name or column name incorrect?';
			RETURN FALSE;
		END IF;

		RETURN TRUE;
	END;
	$function$
;

COMMENT ON FUNCTION public.dropoverviewconstraints(name, name, name) IS 'args: ovschema, ovtable, ovcolumn - Untag a raster column from being an overview of another.';

-- DROP FUNCTION public.droprasterconstraints(in name, in name, variadic _text);

CREATE OR REPLACE FUNCTION public.droprasterconstraints(rasttable name, rastcolumn name, VARIADIC constraints text[])
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public.DropRasterConstraints('', $1, $2, VARIADIC $3) $function$
;

-- DROP FUNCTION public.droprasterconstraints(in name, in name, in name, variadic _text);

CREATE OR REPLACE FUNCTION public.droprasterconstraints(rastschema name, rasttable name, rastcolumn name, VARIADIC constraints text[])
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		max int;
		x int;
		schema name;
		sql text;
		kw text;
		rtn boolean;
		cnt int;
	BEGIN
		cnt := 0;
		max := array_length(constraints, 1);
		IF max < 1 THEN
			RAISE NOTICE 'No constraints indicated to be dropped.  Doing nothing';
			RETURN TRUE;
		END IF;

		-- validate schema
		schema := NULL;
		IF length($1) > 0 THEN
			sql := 'SELECT nspname FROM pg_namespace '
				|| 'WHERE nspname = ' || quote_literal($1)
				|| 'LIMIT 1';
			EXECUTE sql INTO schema;

			IF schema IS NULL THEN
				RAISE EXCEPTION 'The value provided for schema is invalid';
				RETURN FALSE;
			END IF;
		END IF;

		IF schema IS NULL THEN
			sql := 'SELECT n.nspname AS schemaname '
				|| 'FROM pg_catalog.pg_class c '
				|| 'JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace '
				|| 'WHERE c.relkind = ' || quote_literal('r')
				|| ' AND n.nspname NOT IN (' || quote_literal('pg_catalog')
				|| ', ' || quote_literal('pg_toast')
				|| ') AND pg_catalog.pg_table_is_visible(c.oid)'
				|| ' AND c.relname = ' || quote_literal($2);
			EXECUTE sql INTO schema;

			IF schema IS NULL THEN
				RAISE EXCEPTION 'The table % does not occur in the search_path', quote_literal($2);
				RETURN FALSE;
			END IF;
		END IF;

		<<kwloop>>
		FOR x in 1..max LOOP
			kw := trim(both from lower(constraints[x]));

			BEGIN
				CASE
					WHEN kw = 'srid' THEN
						RAISE NOTICE 'Dropping SRID constraint';
						rtn :=  public._drop_raster_constraint_srid(schema, $2, $3);
					WHEN kw IN ('scale_x', 'scalex') THEN
						RAISE NOTICE 'Dropping scale-X constraint';
						rtn :=  public._drop_raster_constraint_scale(schema, $2, $3, 'x');
					WHEN kw IN ('scale_y', 'scaley') THEN
						RAISE NOTICE 'Dropping scale-Y constraint';
						rtn :=  public._drop_raster_constraint_scale(schema, $2, $3, 'y');
					WHEN kw = 'scale' THEN
						RAISE NOTICE 'Dropping scale-X constraint';
						rtn :=  public._drop_raster_constraint_scale(schema, $2, $3, 'x');
						RAISE NOTICE 'Dropping scale-Y constraint';
						rtn :=  public._drop_raster_constraint_scale(schema, $2, $3, 'y');
					WHEN kw IN ('blocksize_x', 'blocksizex', 'width') THEN
						RAISE NOTICE 'Dropping blocksize-X constraint';
						rtn :=  public._drop_raster_constraint_blocksize(schema, $2, $3, 'width');
					WHEN kw IN ('blocksize_y', 'blocksizey', 'height') THEN
						RAISE NOTICE 'Dropping blocksize-Y constraint';
						rtn :=  public._drop_raster_constraint_blocksize(schema, $2, $3, 'height');
					WHEN kw = 'blocksize' THEN
						RAISE NOTICE 'Dropping blocksize-X constraint';
						rtn :=  public._drop_raster_constraint_blocksize(schema, $2, $3, 'width');
						RAISE NOTICE 'Dropping blocksize-Y constraint';
						rtn :=  public._drop_raster_constraint_blocksize(schema, $2, $3, 'height');
					WHEN kw IN ('same_alignment', 'samealignment', 'alignment') THEN
						RAISE NOTICE 'Dropping alignment constraint';
						rtn :=  public._drop_raster_constraint_alignment(schema, $2, $3);
					WHEN kw IN ('regular_blocking', 'regularblocking') THEN
						rtn :=  public._drop_raster_constraint_regular_blocking(schema, $2, $3);

						RAISE NOTICE 'Dropping coverage tile constraint required for regular blocking';
						rtn :=  public._drop_raster_constraint_coverage_tile(schema, $2, $3);

						IF rtn IS NOT FALSE THEN
							RAISE NOTICE 'Dropping spatially unique constraint required for regular blocking';
							rtn :=  public._drop_raster_constraint_spatially_unique(schema, $2, $3);
						END IF;
					WHEN kw IN ('num_bands', 'numbands') THEN
						RAISE NOTICE 'Dropping number of bands constraint';
						rtn :=  public._drop_raster_constraint_num_bands(schema, $2, $3);
					WHEN kw IN ('pixel_types', 'pixeltypes') THEN
						RAISE NOTICE 'Dropping pixel type constraint';
						rtn :=  public._drop_raster_constraint_pixel_types(schema, $2, $3);
					WHEN kw IN ('nodata_values', 'nodatavalues', 'nodata') THEN
						RAISE NOTICE 'Dropping nodata value constraint';
						rtn :=  public._drop_raster_constraint_nodata_values(schema, $2, $3);
					WHEN kw IN ('out_db', 'outdb') THEN
						RAISE NOTICE 'Dropping out-of-database constraint';
						rtn :=  public._drop_raster_constraint_out_db(schema, $2, $3);
					WHEN kw = 'extent' THEN
						RAISE NOTICE 'Dropping maximum extent constraint';
						rtn :=  public._drop_raster_constraint_extent(schema, $2, $3);
					ELSE
						RAISE NOTICE 'Unknown constraint: %.  Skipping', quote_literal(constraints[x]);
						CONTINUE kwloop;
				END CASE;
			END;

			IF rtn IS FALSE THEN
				cnt := cnt + 1;
				RAISE WARNING 'Unable to drop constraint: %.  Skipping', quote_literal(constraints[x]);
			END IF;

		END LOOP kwloop;

		IF cnt = max THEN
			RAISE EXCEPTION 'None of the constraints specified could be dropped.  Is the schema name, table name or column name incorrect?';
			RETURN FALSE;
		END IF;

		RETURN TRUE;
	END;
	$function$
;

COMMENT ON FUNCTION public.droprasterconstraints(in name, in name, in name, variadic _text) IS 'args: rastschema, rasttable, rastcolumn, constraints - Drops PostGIS raster constraints that refer to a raster table column. Useful if you need to reload data or update your raster column data.';

-- DROP FUNCTION public.droprasterconstraints(name, name, name, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool);

CREATE OR REPLACE FUNCTION public.droprasterconstraints(rastschema name, rasttable name, rastcolumn name, srid boolean DEFAULT true, scale_x boolean DEFAULT true, scale_y boolean DEFAULT true, blocksize_x boolean DEFAULT true, blocksize_y boolean DEFAULT true, same_alignment boolean DEFAULT true, regular_blocking boolean DEFAULT true, num_bands boolean DEFAULT true, pixel_types boolean DEFAULT true, nodata_values boolean DEFAULT true, out_db boolean DEFAULT true, extent boolean DEFAULT true)
 RETURNS boolean
 LANGUAGE plpgsql
 STRICT
AS $function$
	DECLARE
		constraints text[];
	BEGIN
		IF srid IS TRUE THEN
			constraints := constraints || 'srid'::text;
		END IF;

		IF scale_x IS TRUE THEN
			constraints := constraints || 'scale_x'::text;
		END IF;

		IF scale_y IS TRUE THEN
			constraints := constraints || 'scale_y'::text;
		END IF;

		IF blocksize_x IS TRUE THEN
			constraints := constraints || 'blocksize_x'::text;
		END IF;

		IF blocksize_y IS TRUE THEN
			constraints := constraints || 'blocksize_y'::text;
		END IF;

		IF same_alignment IS TRUE THEN
			constraints := constraints || 'same_alignment'::text;
		END IF;

		IF regular_blocking IS TRUE THEN
			constraints := constraints || 'regular_blocking'::text;
		END IF;

		IF num_bands IS TRUE THEN
			constraints := constraints || 'num_bands'::text;
		END IF;

		IF pixel_types IS TRUE THEN
			constraints := constraints || 'pixel_types'::text;
		END IF;

		IF nodata_values IS TRUE THEN
			constraints := constraints || 'nodata_values'::text;
		END IF;

		IF out_db IS TRUE THEN
			constraints := constraints || 'out_db'::text;
		END IF;

		IF extent IS TRUE THEN
			constraints := constraints || 'extent'::text;
		END IF;

		RETURN DropRasterConstraints($1, $2, $3, VARIADIC constraints);
	END;
	$function$
;

COMMENT ON FUNCTION public.droprasterconstraints(name, name, name, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool) IS 'args: rastschema, rasttable, rastcolumn, srid=true, scale_x=true, scale_y=true, blocksize_x=true, blocksize_y=true, same_alignment=true, regular_blocking=false, num_bands=true, pixel_types=true, nodata_values=true, out_db=true, extent=true - Drops PostGIS raster constraints that refer to a raster table column. Useful if you need to reload data or update your raster column data.';

-- DROP FUNCTION public.droprasterconstraints(name, name, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool);

CREATE OR REPLACE FUNCTION public.droprasterconstraints(rasttable name, rastcolumn name, srid boolean DEFAULT true, scale_x boolean DEFAULT true, scale_y boolean DEFAULT true, blocksize_x boolean DEFAULT true, blocksize_y boolean DEFAULT true, same_alignment boolean DEFAULT true, regular_blocking boolean DEFAULT true, num_bands boolean DEFAULT true, pixel_types boolean DEFAULT true, nodata_values boolean DEFAULT true, out_db boolean DEFAULT true, extent boolean DEFAULT true)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT DropRasterConstraints('', $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14) $function$
;

COMMENT ON FUNCTION public.droprasterconstraints(name, name, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool) IS 'args: rasttable, rastcolumn, srid, scale_x, scale_y, blocksize_x, blocksize_y, same_alignment, regular_blocking, num_bands=true, pixel_types=true, nodata_values=true, out_db=true, extent=true - Drops PostGIS raster constraints that refer to a raster table column. Useful if you need to reload data or update your raster column data.';

-- DROP FUNCTION public.enablelongtransactions();

CREATE OR REPLACE FUNCTION public.enablelongtransactions()
 RETURNS text
 LANGUAGE plpgsql
AS $function$
DECLARE
	"query" text;
	exists bool;
	rec RECORD;

BEGIN

	exists = 'f';
	FOR rec IN SELECT * FROM pg_class WHERE relname = 'authorization_table'
	LOOP
		exists = 't';
	END LOOP;

	IF NOT exists
	THEN
		"query" = 'CREATE TABLE authorization_table (
			toid oid, -- table oid
			rid text, -- row id
			expires timestamp,
			authid text
		)';
		EXECUTE "query";
	END IF;

	exists = 'f';
	FOR rec IN SELECT * FROM pg_class WHERE relname = 'authorized_tables'
	LOOP
		exists = 't';
	END LOOP;

	IF NOT exists THEN
		"query" = 'CREATE VIEW authorized_tables AS ' ||
			'SELECT ' ||
			'n.nspname as schema, ' ||
			'c.relname as table, trim(' ||
			quote_literal(chr(92) || '000') ||
			' from t.tgargs) as id_column ' ||
			'FROM pg_trigger t, pg_class c, pg_proc p ' ||
			', pg_namespace n ' ||
			'WHERE p.proname = ' || quote_literal('checkauthtrigger') ||
			' AND c.relnamespace = n.oid' ||
			' AND t.tgfoid = p.oid and t.tgrelid = c.oid';
		EXECUTE "query";
	END IF;

	RETURN 'Long transactions support enabled';
END;
$function$
;

COMMENT ON FUNCTION public.enablelongtransactions() IS 'Enables long transaction support.';

-- DROP FUNCTION public.encrypt(bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.encrypt(bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_encrypt$function$
;

-- DROP FUNCTION public.encrypt_iv(bytea, bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.encrypt_iv(bytea, bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_encrypt_iv$function$
;

-- DROP FUNCTION public."equals"(geometry, geometry);

CREATE OR REPLACE FUNCTION public.equals(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_Equals$function$
;

-- DROP FUNCTION public.find_srid(varchar, varchar, varchar);

CREATE OR REPLACE FUNCTION public.find_srid(character varying, character varying, character varying)
 RETURNS integer
 LANGUAGE plpgsql
 STABLE PARALLEL SAFE STRICT
AS $function$
DECLARE
	schem varchar =  $1;
	tabl varchar = $2;
	sr integer;
BEGIN
-- if the table contains a . and the schema is empty
-- split the table into a schema and a table
-- otherwise drop through to default behavior
	IF ( schem = '' and strpos(tabl,'.') > 0 ) THEN
	 schem = substr(tabl,1,strpos(tabl,'.')-1);
	 tabl = substr(tabl,length(schem)+2);
	END IF;

	select SRID into sr from public.geometry_columns where (f_table_schema = schem or schem = '') and f_table_name = tabl and f_geometry_column = $3;
	IF NOT FOUND THEN
	   RAISE EXCEPTION 'find_srid() - could not find the corresponding SRID - is the geometry registered in the GEOMETRY_COLUMNS table?  Is there an uppercase/lowercase mismatch?';
	END IF;
	return sr;
END;
$function$
;

COMMENT ON FUNCTION public.find_srid(varchar, varchar, varchar) IS 'args: a_schema_name, a_table_name, a_geomfield_name - Returns the SRID defined for a geometry column.';

-- DROP FUNCTION public.float4_dist(float4, float4);

CREATE OR REPLACE FUNCTION public.float4_dist(real, real)
 RETURNS real
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$float4_dist$function$
;

-- DROP FUNCTION public.float8_dist(float8, float8);

CREATE OR REPLACE FUNCTION public.float8_dist(double precision, double precision)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$float8_dist$function$
;

-- DROP FUNCTION public.gbt_bit_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_bit_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bit_compress$function$
;

-- DROP FUNCTION public.gbt_bit_consistent(internal, bit, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_bit_consistent(internal, bit, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bit_consistent$function$
;

-- DROP FUNCTION public.gbt_bit_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_bit_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bit_penalty$function$
;

-- DROP FUNCTION public.gbt_bit_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_bit_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bit_picksplit$function$
;

-- DROP FUNCTION public.gbt_bit_same(gbtreekey_var, gbtreekey_var, internal);

CREATE OR REPLACE FUNCTION public.gbt_bit_same(gbtreekey_var, gbtreekey_var, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bit_same$function$
;

-- DROP FUNCTION public.gbt_bit_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_bit_union(internal, internal)
 RETURNS gbtreekey_var
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bit_union$function$
;

-- DROP FUNCTION public.gbt_bpchar_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_bpchar_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bpchar_compress$function$
;

-- DROP FUNCTION public.gbt_bpchar_consistent(internal, bpchar, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_bpchar_consistent(internal, character, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bpchar_consistent$function$
;

-- DROP FUNCTION public.gbt_bytea_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_bytea_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bytea_compress$function$
;

-- DROP FUNCTION public.gbt_bytea_consistent(internal, bytea, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_bytea_consistent(internal, bytea, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bytea_consistent$function$
;

-- DROP FUNCTION public.gbt_bytea_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_bytea_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bytea_penalty$function$
;

-- DROP FUNCTION public.gbt_bytea_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_bytea_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bytea_picksplit$function$
;

-- DROP FUNCTION public.gbt_bytea_same(gbtreekey_var, gbtreekey_var, internal);

CREATE OR REPLACE FUNCTION public.gbt_bytea_same(gbtreekey_var, gbtreekey_var, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bytea_same$function$
;

-- DROP FUNCTION public.gbt_bytea_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_bytea_union(internal, internal)
 RETURNS gbtreekey_var
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_bytea_union$function$
;

-- DROP FUNCTION public.gbt_cash_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_cash_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_cash_compress$function$
;

-- DROP FUNCTION public.gbt_cash_consistent(internal, money, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_cash_consistent(internal, money, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_cash_consistent$function$
;

-- DROP FUNCTION public.gbt_cash_distance(internal, money, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_cash_distance(internal, money, smallint, oid, internal)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_cash_distance$function$
;

-- DROP FUNCTION public.gbt_cash_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_cash_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_cash_fetch$function$
;

-- DROP FUNCTION public.gbt_cash_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_cash_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_cash_penalty$function$
;

-- DROP FUNCTION public.gbt_cash_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_cash_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_cash_picksplit$function$
;

-- DROP FUNCTION public.gbt_cash_same(gbtreekey16, gbtreekey16, internal);

CREATE OR REPLACE FUNCTION public.gbt_cash_same(gbtreekey16, gbtreekey16, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_cash_same$function$
;

-- DROP FUNCTION public.gbt_cash_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_cash_union(internal, internal)
 RETURNS gbtreekey16
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_cash_union$function$
;

-- DROP FUNCTION public.gbt_date_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_date_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_date_compress$function$
;

-- DROP FUNCTION public.gbt_date_consistent(internal, date, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_date_consistent(internal, date, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_date_consistent$function$
;

-- DROP FUNCTION public.gbt_date_distance(internal, date, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_date_distance(internal, date, smallint, oid, internal)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_date_distance$function$
;

-- DROP FUNCTION public.gbt_date_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_date_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_date_fetch$function$
;

-- DROP FUNCTION public.gbt_date_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_date_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_date_penalty$function$
;

-- DROP FUNCTION public.gbt_date_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_date_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_date_picksplit$function$
;

-- DROP FUNCTION public.gbt_date_same(gbtreekey8, gbtreekey8, internal);

CREATE OR REPLACE FUNCTION public.gbt_date_same(gbtreekey8, gbtreekey8, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_date_same$function$
;

-- DROP FUNCTION public.gbt_date_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_date_union(internal, internal)
 RETURNS gbtreekey8
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_date_union$function$
;

-- DROP FUNCTION public.gbt_decompress(internal);

CREATE OR REPLACE FUNCTION public.gbt_decompress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_decompress$function$
;

-- DROP FUNCTION public.gbt_enum_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_enum_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_enum_compress$function$
;

-- DROP FUNCTION public.gbt_enum_consistent(internal, anyenum, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_enum_consistent(internal, anyenum, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_enum_consistent$function$
;

-- DROP FUNCTION public.gbt_enum_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_enum_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_enum_fetch$function$
;

-- DROP FUNCTION public.gbt_enum_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_enum_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_enum_penalty$function$
;

-- DROP FUNCTION public.gbt_enum_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_enum_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_enum_picksplit$function$
;

-- DROP FUNCTION public.gbt_enum_same(gbtreekey8, gbtreekey8, internal);

CREATE OR REPLACE FUNCTION public.gbt_enum_same(gbtreekey8, gbtreekey8, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_enum_same$function$
;

-- DROP FUNCTION public.gbt_enum_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_enum_union(internal, internal)
 RETURNS gbtreekey8
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_enum_union$function$
;

-- DROP FUNCTION public.gbt_float4_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_float4_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float4_compress$function$
;

-- DROP FUNCTION public.gbt_float4_consistent(internal, float4, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_float4_consistent(internal, real, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float4_consistent$function$
;

-- DROP FUNCTION public.gbt_float4_distance(internal, float4, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_float4_distance(internal, real, smallint, oid, internal)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float4_distance$function$
;

-- DROP FUNCTION public.gbt_float4_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_float4_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float4_fetch$function$
;

-- DROP FUNCTION public.gbt_float4_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_float4_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float4_penalty$function$
;

-- DROP FUNCTION public.gbt_float4_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_float4_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float4_picksplit$function$
;

-- DROP FUNCTION public.gbt_float4_same(gbtreekey8, gbtreekey8, internal);

CREATE OR REPLACE FUNCTION public.gbt_float4_same(gbtreekey8, gbtreekey8, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float4_same$function$
;

-- DROP FUNCTION public.gbt_float4_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_float4_union(internal, internal)
 RETURNS gbtreekey8
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float4_union$function$
;

-- DROP FUNCTION public.gbt_float8_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_float8_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float8_compress$function$
;

-- DROP FUNCTION public.gbt_float8_consistent(internal, float8, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_float8_consistent(internal, double precision, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float8_consistent$function$
;

-- DROP FUNCTION public.gbt_float8_distance(internal, float8, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_float8_distance(internal, double precision, smallint, oid, internal)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float8_distance$function$
;

-- DROP FUNCTION public.gbt_float8_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_float8_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float8_fetch$function$
;

-- DROP FUNCTION public.gbt_float8_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_float8_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float8_penalty$function$
;

-- DROP FUNCTION public.gbt_float8_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_float8_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float8_picksplit$function$
;

-- DROP FUNCTION public.gbt_float8_same(gbtreekey16, gbtreekey16, internal);

CREATE OR REPLACE FUNCTION public.gbt_float8_same(gbtreekey16, gbtreekey16, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float8_same$function$
;

-- DROP FUNCTION public.gbt_float8_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_float8_union(internal, internal)
 RETURNS gbtreekey16
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_float8_union$function$
;

-- DROP FUNCTION public.gbt_inet_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_inet_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_inet_compress$function$
;

-- DROP FUNCTION public.gbt_inet_consistent(internal, inet, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_inet_consistent(internal, inet, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_inet_consistent$function$
;

-- DROP FUNCTION public.gbt_inet_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_inet_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_inet_penalty$function$
;

-- DROP FUNCTION public.gbt_inet_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_inet_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_inet_picksplit$function$
;

-- DROP FUNCTION public.gbt_inet_same(gbtreekey16, gbtreekey16, internal);

CREATE OR REPLACE FUNCTION public.gbt_inet_same(gbtreekey16, gbtreekey16, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_inet_same$function$
;

-- DROP FUNCTION public.gbt_inet_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_inet_union(internal, internal)
 RETURNS gbtreekey16
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_inet_union$function$
;

-- DROP FUNCTION public.gbt_int2_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_int2_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int2_compress$function$
;

-- DROP FUNCTION public.gbt_int2_consistent(internal, int2, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_int2_consistent(internal, smallint, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int2_consistent$function$
;

-- DROP FUNCTION public.gbt_int2_distance(internal, int2, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_int2_distance(internal, smallint, smallint, oid, internal)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int2_distance$function$
;

-- DROP FUNCTION public.gbt_int2_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_int2_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int2_fetch$function$
;

-- DROP FUNCTION public.gbt_int2_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_int2_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int2_penalty$function$
;

-- DROP FUNCTION public.gbt_int2_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_int2_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int2_picksplit$function$
;

-- DROP FUNCTION public.gbt_int2_same(gbtreekey4, gbtreekey4, internal);

CREATE OR REPLACE FUNCTION public.gbt_int2_same(gbtreekey4, gbtreekey4, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int2_same$function$
;

-- DROP FUNCTION public.gbt_int2_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_int2_union(internal, internal)
 RETURNS gbtreekey4
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int2_union$function$
;

-- DROP FUNCTION public.gbt_int4_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_int4_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int4_compress$function$
;

-- DROP FUNCTION public.gbt_int4_consistent(internal, int4, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_int4_consistent(internal, integer, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int4_consistent$function$
;

-- DROP FUNCTION public.gbt_int4_distance(internal, int4, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_int4_distance(internal, integer, smallint, oid, internal)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int4_distance$function$
;

-- DROP FUNCTION public.gbt_int4_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_int4_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int4_fetch$function$
;

-- DROP FUNCTION public.gbt_int4_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_int4_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int4_penalty$function$
;

-- DROP FUNCTION public.gbt_int4_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_int4_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int4_picksplit$function$
;

-- DROP FUNCTION public.gbt_int4_same(gbtreekey8, gbtreekey8, internal);

CREATE OR REPLACE FUNCTION public.gbt_int4_same(gbtreekey8, gbtreekey8, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int4_same$function$
;

-- DROP FUNCTION public.gbt_int4_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_int4_union(internal, internal)
 RETURNS gbtreekey8
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int4_union$function$
;

-- DROP FUNCTION public.gbt_int8_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_int8_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int8_compress$function$
;

-- DROP FUNCTION public.gbt_int8_consistent(internal, int8, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_int8_consistent(internal, bigint, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int8_consistent$function$
;

-- DROP FUNCTION public.gbt_int8_distance(internal, int8, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_int8_distance(internal, bigint, smallint, oid, internal)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int8_distance$function$
;

-- DROP FUNCTION public.gbt_int8_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_int8_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int8_fetch$function$
;

-- DROP FUNCTION public.gbt_int8_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_int8_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int8_penalty$function$
;

-- DROP FUNCTION public.gbt_int8_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_int8_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int8_picksplit$function$
;

-- DROP FUNCTION public.gbt_int8_same(gbtreekey16, gbtreekey16, internal);

CREATE OR REPLACE FUNCTION public.gbt_int8_same(gbtreekey16, gbtreekey16, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int8_same$function$
;

-- DROP FUNCTION public.gbt_int8_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_int8_union(internal, internal)
 RETURNS gbtreekey16
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_int8_union$function$
;

-- DROP FUNCTION public.gbt_intv_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_intv_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_intv_compress$function$
;

-- DROP FUNCTION public.gbt_intv_consistent(internal, interval, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_intv_consistent(internal, interval, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_intv_consistent$function$
;

-- DROP FUNCTION public.gbt_intv_decompress(internal);

CREATE OR REPLACE FUNCTION public.gbt_intv_decompress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_intv_decompress$function$
;

-- DROP FUNCTION public.gbt_intv_distance(internal, interval, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_intv_distance(internal, interval, smallint, oid, internal)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_intv_distance$function$
;

-- DROP FUNCTION public.gbt_intv_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_intv_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_intv_fetch$function$
;

-- DROP FUNCTION public.gbt_intv_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_intv_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_intv_penalty$function$
;

-- DROP FUNCTION public.gbt_intv_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_intv_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_intv_picksplit$function$
;

-- DROP FUNCTION public.gbt_intv_same(gbtreekey32, gbtreekey32, internal);

CREATE OR REPLACE FUNCTION public.gbt_intv_same(gbtreekey32, gbtreekey32, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_intv_same$function$
;

-- DROP FUNCTION public.gbt_intv_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_intv_union(internal, internal)
 RETURNS gbtreekey32
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_intv_union$function$
;

-- DROP FUNCTION public.gbt_macad8_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_macad8_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad8_compress$function$
;

-- DROP FUNCTION public.gbt_macad8_consistent(internal, macaddr8, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_macad8_consistent(internal, macaddr8, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad8_consistent$function$
;

-- DROP FUNCTION public.gbt_macad8_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_macad8_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad8_fetch$function$
;

-- DROP FUNCTION public.gbt_macad8_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_macad8_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad8_penalty$function$
;

-- DROP FUNCTION public.gbt_macad8_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_macad8_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad8_picksplit$function$
;

-- DROP FUNCTION public.gbt_macad8_same(gbtreekey16, gbtreekey16, internal);

CREATE OR REPLACE FUNCTION public.gbt_macad8_same(gbtreekey16, gbtreekey16, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad8_same$function$
;

-- DROP FUNCTION public.gbt_macad8_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_macad8_union(internal, internal)
 RETURNS gbtreekey16
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad8_union$function$
;

-- DROP FUNCTION public.gbt_macad_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_macad_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad_compress$function$
;

-- DROP FUNCTION public.gbt_macad_consistent(internal, macaddr, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_macad_consistent(internal, macaddr, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad_consistent$function$
;

-- DROP FUNCTION public.gbt_macad_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_macad_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad_fetch$function$
;

-- DROP FUNCTION public.gbt_macad_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_macad_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad_penalty$function$
;

-- DROP FUNCTION public.gbt_macad_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_macad_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad_picksplit$function$
;

-- DROP FUNCTION public.gbt_macad_same(gbtreekey16, gbtreekey16, internal);

CREATE OR REPLACE FUNCTION public.gbt_macad_same(gbtreekey16, gbtreekey16, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad_same$function$
;

-- DROP FUNCTION public.gbt_macad_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_macad_union(internal, internal)
 RETURNS gbtreekey16
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_macad_union$function$
;

-- DROP FUNCTION public.gbt_numeric_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_numeric_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_numeric_compress$function$
;

-- DROP FUNCTION public.gbt_numeric_consistent(internal, numeric, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_numeric_consistent(internal, numeric, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_numeric_consistent$function$
;

-- DROP FUNCTION public.gbt_numeric_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_numeric_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_numeric_penalty$function$
;

-- DROP FUNCTION public.gbt_numeric_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_numeric_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_numeric_picksplit$function$
;

-- DROP FUNCTION public.gbt_numeric_same(gbtreekey_var, gbtreekey_var, internal);

CREATE OR REPLACE FUNCTION public.gbt_numeric_same(gbtreekey_var, gbtreekey_var, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_numeric_same$function$
;

-- DROP FUNCTION public.gbt_numeric_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_numeric_union(internal, internal)
 RETURNS gbtreekey_var
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_numeric_union$function$
;

-- DROP FUNCTION public.gbt_oid_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_oid_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_oid_compress$function$
;

-- DROP FUNCTION public.gbt_oid_consistent(internal, oid, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_oid_consistent(internal, oid, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_oid_consistent$function$
;

-- DROP FUNCTION public.gbt_oid_distance(internal, oid, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_oid_distance(internal, oid, smallint, oid, internal)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_oid_distance$function$
;

-- DROP FUNCTION public.gbt_oid_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_oid_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_oid_fetch$function$
;

-- DROP FUNCTION public.gbt_oid_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_oid_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_oid_penalty$function$
;

-- DROP FUNCTION public.gbt_oid_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_oid_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_oid_picksplit$function$
;

-- DROP FUNCTION public.gbt_oid_same(gbtreekey8, gbtreekey8, internal);

CREATE OR REPLACE FUNCTION public.gbt_oid_same(gbtreekey8, gbtreekey8, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_oid_same$function$
;

-- DROP FUNCTION public.gbt_oid_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_oid_union(internal, internal)
 RETURNS gbtreekey8
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_oid_union$function$
;

-- DROP FUNCTION public.gbt_text_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_text_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_text_compress$function$
;

-- DROP FUNCTION public.gbt_text_consistent(internal, text, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_text_consistent(internal, text, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_text_consistent$function$
;

-- DROP FUNCTION public.gbt_text_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_text_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_text_penalty$function$
;

-- DROP FUNCTION public.gbt_text_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_text_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_text_picksplit$function$
;

-- DROP FUNCTION public.gbt_text_same(gbtreekey_var, gbtreekey_var, internal);

CREATE OR REPLACE FUNCTION public.gbt_text_same(gbtreekey_var, gbtreekey_var, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_text_same$function$
;

-- DROP FUNCTION public.gbt_text_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_text_union(internal, internal)
 RETURNS gbtreekey_var
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_text_union$function$
;

-- DROP FUNCTION public.gbt_time_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_time_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_time_compress$function$
;

-- DROP FUNCTION public.gbt_time_consistent(internal, time, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_time_consistent(internal, time without time zone, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_time_consistent$function$
;

-- DROP FUNCTION public.gbt_time_distance(internal, time, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_time_distance(internal, time without time zone, smallint, oid, internal)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_time_distance$function$
;

-- DROP FUNCTION public.gbt_time_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_time_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_time_fetch$function$
;

-- DROP FUNCTION public.gbt_time_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_time_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_time_penalty$function$
;

-- DROP FUNCTION public.gbt_time_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_time_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_time_picksplit$function$
;

-- DROP FUNCTION public.gbt_time_same(gbtreekey16, gbtreekey16, internal);

CREATE OR REPLACE FUNCTION public.gbt_time_same(gbtreekey16, gbtreekey16, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_time_same$function$
;

-- DROP FUNCTION public.gbt_time_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_time_union(internal, internal)
 RETURNS gbtreekey16
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_time_union$function$
;

-- DROP FUNCTION public.gbt_timetz_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_timetz_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_timetz_compress$function$
;

-- DROP FUNCTION public.gbt_timetz_consistent(internal, timetz, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_timetz_consistent(internal, time with time zone, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_timetz_consistent$function$
;

-- DROP FUNCTION public.gbt_ts_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_ts_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_ts_compress$function$
;

-- DROP FUNCTION public.gbt_ts_consistent(internal, timestamp, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_ts_consistent(internal, timestamp without time zone, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_ts_consistent$function$
;

-- DROP FUNCTION public.gbt_ts_distance(internal, timestamp, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_ts_distance(internal, timestamp without time zone, smallint, oid, internal)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_ts_distance$function$
;

-- DROP FUNCTION public.gbt_ts_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_ts_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_ts_fetch$function$
;

-- DROP FUNCTION public.gbt_ts_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_ts_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_ts_penalty$function$
;

-- DROP FUNCTION public.gbt_ts_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_ts_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_ts_picksplit$function$
;

-- DROP FUNCTION public.gbt_ts_same(gbtreekey16, gbtreekey16, internal);

CREATE OR REPLACE FUNCTION public.gbt_ts_same(gbtreekey16, gbtreekey16, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_ts_same$function$
;

-- DROP FUNCTION public.gbt_ts_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_ts_union(internal, internal)
 RETURNS gbtreekey16
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_ts_union$function$
;

-- DROP FUNCTION public.gbt_tstz_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_tstz_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_tstz_compress$function$
;

-- DROP FUNCTION public.gbt_tstz_consistent(internal, timestamptz, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_tstz_consistent(internal, timestamp with time zone, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_tstz_consistent$function$
;

-- DROP FUNCTION public.gbt_tstz_distance(internal, timestamptz, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_tstz_distance(internal, timestamp with time zone, smallint, oid, internal)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_tstz_distance$function$
;

-- DROP FUNCTION public.gbt_uuid_compress(internal);

CREATE OR REPLACE FUNCTION public.gbt_uuid_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_uuid_compress$function$
;

-- DROP FUNCTION public.gbt_uuid_consistent(internal, uuid, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gbt_uuid_consistent(internal, uuid, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_uuid_consistent$function$
;

-- DROP FUNCTION public.gbt_uuid_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_uuid_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_uuid_fetch$function$
;

-- DROP FUNCTION public.gbt_uuid_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_uuid_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_uuid_penalty$function$
;

-- DROP FUNCTION public.gbt_uuid_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_uuid_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_uuid_picksplit$function$
;

-- DROP FUNCTION public.gbt_uuid_same(gbtreekey32, gbtreekey32, internal);

CREATE OR REPLACE FUNCTION public.gbt_uuid_same(gbtreekey32, gbtreekey32, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_uuid_same$function$
;

-- DROP FUNCTION public.gbt_uuid_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gbt_uuid_union(internal, internal)
 RETURNS gbtreekey32
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_uuid_union$function$
;

-- DROP FUNCTION public.gbt_var_decompress(internal);

CREATE OR REPLACE FUNCTION public.gbt_var_decompress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_var_decompress$function$
;

-- DROP FUNCTION public.gbt_var_fetch(internal);

CREATE OR REPLACE FUNCTION public.gbt_var_fetch(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbt_var_fetch$function$
;

-- DROP FUNCTION public.gbtreekey16_in(cstring);

CREATE OR REPLACE FUNCTION public.gbtreekey16_in(cstring)
 RETURNS gbtreekey16
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbtreekey_in$function$
;

-- DROP FUNCTION public.gbtreekey16_out(gbtreekey16);

CREATE OR REPLACE FUNCTION public.gbtreekey16_out(gbtreekey16)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbtreekey_out$function$
;

-- DROP FUNCTION public.gbtreekey32_in(cstring);

CREATE OR REPLACE FUNCTION public.gbtreekey32_in(cstring)
 RETURNS gbtreekey32
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbtreekey_in$function$
;

-- DROP FUNCTION public.gbtreekey32_out(gbtreekey32);

CREATE OR REPLACE FUNCTION public.gbtreekey32_out(gbtreekey32)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbtreekey_out$function$
;

-- DROP FUNCTION public.gbtreekey4_in(cstring);

CREATE OR REPLACE FUNCTION public.gbtreekey4_in(cstring)
 RETURNS gbtreekey4
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbtreekey_in$function$
;

-- DROP FUNCTION public.gbtreekey4_out(gbtreekey4);

CREATE OR REPLACE FUNCTION public.gbtreekey4_out(gbtreekey4)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbtreekey_out$function$
;

-- DROP FUNCTION public.gbtreekey8_in(cstring);

CREATE OR REPLACE FUNCTION public.gbtreekey8_in(cstring)
 RETURNS gbtreekey8
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbtreekey_in$function$
;

-- DROP FUNCTION public.gbtreekey8_out(gbtreekey8);

CREATE OR REPLACE FUNCTION public.gbtreekey8_out(gbtreekey8)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbtreekey_out$function$
;

-- DROP FUNCTION public.gbtreekey_var_in(cstring);

CREATE OR REPLACE FUNCTION public.gbtreekey_var_in(cstring)
 RETURNS gbtreekey_var
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbtreekey_in$function$
;

-- DROP FUNCTION public.gbtreekey_var_out(gbtreekey_var);

CREATE OR REPLACE FUNCTION public.gbtreekey_var_out(gbtreekey_var)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$gbtreekey_out$function$
;

-- DROP FUNCTION public.gen_random_bytes(int4);

CREATE OR REPLACE FUNCTION public.gen_random_bytes(integer)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_random_bytes$function$
;

-- DROP FUNCTION public.gen_random_uuid();

CREATE OR REPLACE FUNCTION public.gen_random_uuid()
 RETURNS uuid
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/pgcrypto', $function$pg_random_uuid$function$
;

-- DROP FUNCTION public.gen_salt(text);

CREATE OR REPLACE FUNCTION public.gen_salt(text)
 RETURNS text
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_gen_salt$function$
;

-- DROP FUNCTION public.gen_salt(text, int4);

CREATE OR REPLACE FUNCTION public.gen_salt(text, integer)
 RETURNS text
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_gen_salt_rounds$function$
;

-- DROP FUNCTION public.geog_brin_inclusion_add_value(internal, internal, internal, internal);

CREATE OR REPLACE FUNCTION public.geog_brin_inclusion_add_value(internal, internal, internal, internal)
 RETURNS boolean
 LANGUAGE c
AS '$libdir/postgis-3', $function$geog_brin_inclusion_add_value$function$
;

-- DROP FUNCTION public.geography(bytea);

CREATE OR REPLACE FUNCTION public.geography(bytea)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_from_binary$function$
;

-- DROP FUNCTION public.geography(geometry);

CREATE OR REPLACE FUNCTION public.geography(geometry)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_from_geometry$function$
;

-- DROP FUNCTION public.geography(geography, int4, bool);

CREATE OR REPLACE FUNCTION public.geography(geography, integer, boolean)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_enforce_typmod$function$
;

-- DROP FUNCTION public.geography_analyze(internal);

CREATE OR REPLACE FUNCTION public.geography_analyze(internal)
 RETURNS boolean
 LANGUAGE c
 STRICT
AS '$libdir/postgis-3', $function$gserialized_analyze_nd$function$
;

-- DROP FUNCTION public.geography_cmp(geography, geography);

CREATE OR REPLACE FUNCTION public.geography_cmp(geography, geography)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_cmp$function$
;

-- DROP FUNCTION public.geography_distance_knn(geography, geography);

CREATE OR REPLACE FUNCTION public.geography_distance_knn(geography, geography)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 100
AS '$libdir/postgis-3', $function$geography_distance_knn$function$
;

-- DROP FUNCTION public.geography_eq(geography, geography);

CREATE OR REPLACE FUNCTION public.geography_eq(geography, geography)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_eq$function$
;

-- DROP FUNCTION public.geography_ge(geography, geography);

CREATE OR REPLACE FUNCTION public.geography_ge(geography, geography)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_ge$function$
;

-- DROP FUNCTION public.geography_gist_compress(internal);

CREATE OR REPLACE FUNCTION public.geography_gist_compress(internal)
 RETURNS internal
 LANGUAGE c
AS '$libdir/postgis-3', $function$gserialized_gist_compress$function$
;

-- DROP FUNCTION public.geography_gist_consistent(internal, geography, int4);

CREATE OR REPLACE FUNCTION public.geography_gist_consistent(internal, geography, integer)
 RETURNS boolean
 LANGUAGE c
AS '$libdir/postgis-3', $function$gserialized_gist_consistent$function$
;

-- DROP FUNCTION public.geography_gist_decompress(internal);

CREATE OR REPLACE FUNCTION public.geography_gist_decompress(internal)
 RETURNS internal
 LANGUAGE c
AS '$libdir/postgis-3', $function$gserialized_gist_decompress$function$
;

-- DROP FUNCTION public.geography_gist_distance(internal, geography, int4);

CREATE OR REPLACE FUNCTION public.geography_gist_distance(internal, geography, integer)
 RETURNS double precision
 LANGUAGE c
AS '$libdir/postgis-3', $function$gserialized_gist_geog_distance$function$
;

-- DROP FUNCTION public.geography_gist_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.geography_gist_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
AS '$libdir/postgis-3', $function$gserialized_gist_penalty$function$
;

-- DROP FUNCTION public.geography_gist_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.geography_gist_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
AS '$libdir/postgis-3', $function$gserialized_gist_picksplit$function$
;

-- DROP FUNCTION public.geography_gist_same(box2d, box2d, internal);

CREATE OR REPLACE FUNCTION public.geography_gist_same(box2d, box2d, internal)
 RETURNS internal
 LANGUAGE c
AS '$libdir/postgis-3', $function$gserialized_gist_same$function$
;

-- DROP FUNCTION public.geography_gist_union(bytea, internal);

CREATE OR REPLACE FUNCTION public.geography_gist_union(bytea, internal)
 RETURNS internal
 LANGUAGE c
AS '$libdir/postgis-3', $function$gserialized_gist_union$function$
;

-- DROP FUNCTION public.geography_gt(geography, geography);

CREATE OR REPLACE FUNCTION public.geography_gt(geography, geography)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_gt$function$
;

-- DROP FUNCTION public.geography_in(cstring, oid, int4);

CREATE OR REPLACE FUNCTION public.geography_in(cstring, oid, integer)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_in$function$
;

-- DROP FUNCTION public.geography_le(geography, geography);

CREATE OR REPLACE FUNCTION public.geography_le(geography, geography)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_le$function$
;

-- DROP FUNCTION public.geography_lt(geography, geography);

CREATE OR REPLACE FUNCTION public.geography_lt(geography, geography)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_lt$function$
;

-- DROP FUNCTION public.geography_out(geography);

CREATE OR REPLACE FUNCTION public.geography_out(geography)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_out$function$
;

-- DROP FUNCTION public.geography_overlaps(geography, geography);

CREATE OR REPLACE FUNCTION public.geography_overlaps(geography, geography)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_overlaps$function$
;

-- DROP FUNCTION public.geography_recv(internal, oid, int4);

CREATE OR REPLACE FUNCTION public.geography_recv(internal, oid, integer)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_recv$function$
;

-- DROP FUNCTION public.geography_send(geography);

CREATE OR REPLACE FUNCTION public.geography_send(geography)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_send$function$
;

-- DROP FUNCTION public.geography_spgist_choose_nd(internal, internal);

CREATE OR REPLACE FUNCTION public.geography_spgist_choose_nd(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_choose_nd$function$
;

-- DROP FUNCTION public.geography_spgist_compress_nd(internal);

CREATE OR REPLACE FUNCTION public.geography_spgist_compress_nd(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_compress_nd$function$
;

-- DROP FUNCTION public.geography_spgist_config_nd(internal, internal);

CREATE OR REPLACE FUNCTION public.geography_spgist_config_nd(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_config_nd$function$
;

-- DROP FUNCTION public.geography_spgist_inner_consistent_nd(internal, internal);

CREATE OR REPLACE FUNCTION public.geography_spgist_inner_consistent_nd(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_inner_consistent_nd$function$
;

-- DROP FUNCTION public.geography_spgist_leaf_consistent_nd(internal, internal);

CREATE OR REPLACE FUNCTION public.geography_spgist_leaf_consistent_nd(internal, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_leaf_consistent_nd$function$
;

-- DROP FUNCTION public.geography_spgist_picksplit_nd(internal, internal);

CREATE OR REPLACE FUNCTION public.geography_spgist_picksplit_nd(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_picksplit_nd$function$
;

-- DROP FUNCTION public.geography_typmod_in(_cstring);

CREATE OR REPLACE FUNCTION public.geography_typmod_in(cstring[])
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geography_typmod_in$function$
;

-- DROP FUNCTION public.geography_typmod_out(int4);

CREATE OR REPLACE FUNCTION public.geography_typmod_out(integer)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$postgis_typmod_out$function$
;

-- DROP FUNCTION public.geom2d_brin_inclusion_add_value(internal, internal, internal, internal);

CREATE OR REPLACE FUNCTION public.geom2d_brin_inclusion_add_value(internal, internal, internal, internal)
 RETURNS boolean
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$geom2d_brin_inclusion_add_value$function$
;

-- DROP FUNCTION public.geom3d_brin_inclusion_add_value(internal, internal, internal, internal);

CREATE OR REPLACE FUNCTION public.geom3d_brin_inclusion_add_value(internal, internal, internal, internal)
 RETURNS boolean
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$geom3d_brin_inclusion_add_value$function$
;

-- DROP FUNCTION public.geom4d_brin_inclusion_add_value(internal, internal, internal, internal);

CREATE OR REPLACE FUNCTION public.geom4d_brin_inclusion_add_value(internal, internal, internal, internal)
 RETURNS boolean
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$geom4d_brin_inclusion_add_value$function$
;

-- DROP FUNCTION public.geometry(geography);

CREATE OR REPLACE FUNCTION public.geometry(geography)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geometry_from_geography$function$
;

-- DROP FUNCTION public.geometry(point);

CREATE OR REPLACE FUNCTION public.geometry(point)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$point_to_geometry$function$
;

-- DROP FUNCTION public.geometry(box3d);

CREATE OR REPLACE FUNCTION public.geometry(box3d)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$BOX3D_to_LWGEOM$function$
;

-- DROP FUNCTION public.geometry(geometry, int4, bool);

CREATE OR REPLACE FUNCTION public.geometry(geometry, integer, boolean)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geometry_enforce_typmod$function$
;

-- DROP FUNCTION public.geometry(box2d);

CREATE OR REPLACE FUNCTION public.geometry(box2d)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$BOX2D_to_LWGEOM$function$
;

-- DROP FUNCTION public.geometry(path);

CREATE OR REPLACE FUNCTION public.geometry(path)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$path_to_geometry$function$
;

-- DROP FUNCTION public.geometry(text);

CREATE OR REPLACE FUNCTION public.geometry(text)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$parse_WKT_lwgeom$function$
;

-- DROP FUNCTION public.geometry(polygon);

CREATE OR REPLACE FUNCTION public.geometry(polygon)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$polygon_to_geometry$function$
;

-- DROP FUNCTION public.geometry(bytea);

CREATE OR REPLACE FUNCTION public.geometry(bytea)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_from_bytea$function$
;

-- DROP FUNCTION public.geometry_above(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_above(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_above_2d$function$
;

-- DROP FUNCTION public.geometry_analyze(internal);

CREATE OR REPLACE FUNCTION public.geometry_analyze(internal)
 RETURNS boolean
 LANGUAGE c
 STRICT
AS '$libdir/postgis-3', $function$gserialized_analyze_nd$function$
;

-- DROP FUNCTION public.geometry_below(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_below(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_below_2d$function$
;

-- DROP FUNCTION public.geometry_cmp(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_cmp(geom1 geometry, geom2 geometry)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$lwgeom_cmp$function$
;

-- DROP FUNCTION public.geometry_contained_3d(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_contained_3d(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_contained_3d$function$
;

-- DROP FUNCTION public.geometry_contained_by_raster(geometry, raster);

CREATE OR REPLACE FUNCTION public.geometry_contained_by_raster(geometry, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1 OPERATOR(public.@) $2::public.geometry$function$
;

-- DROP FUNCTION public.geometry_contains(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_contains(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_contains_2d$function$
;

-- DROP FUNCTION public.geometry_contains_3d(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_contains_3d(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_contains_3d$function$
;

-- DROP FUNCTION public.geometry_contains_nd(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_contains_nd(geometry, geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_contains$function$
;

-- DROP FUNCTION public.geometry_distance_box(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_distance_box(geom1 geometry, geom2 geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_distance_box_2d$function$
;

-- DROP FUNCTION public.geometry_distance_centroid(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_distance_centroid(geom1 geometry, geom2 geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_Distance$function$
;

-- DROP FUNCTION public.geometry_distance_centroid_nd(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_distance_centroid_nd(geometry, geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_distance_nd$function$
;

-- DROP FUNCTION public.geometry_distance_cpa(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_distance_cpa(geometry, geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_DistanceCPA$function$
;

-- DROP FUNCTION public.geometry_eq(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_eq(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$lwgeom_eq$function$
;

-- DROP FUNCTION public.geometry_ge(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_ge(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$lwgeom_ge$function$
;

-- DROP FUNCTION public.geometry_gist_compress_2d(internal);

CREATE OR REPLACE FUNCTION public.geometry_gist_compress_2d(internal)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_compress_2d$function$
;

-- DROP FUNCTION public.geometry_gist_compress_nd(internal);

CREATE OR REPLACE FUNCTION public.geometry_gist_compress_nd(internal)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_compress$function$
;

-- DROP FUNCTION public.geometry_gist_consistent_2d(internal, geometry, int4);

CREATE OR REPLACE FUNCTION public.geometry_gist_consistent_2d(internal, geometry, integer)
 RETURNS boolean
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_consistent_2d$function$
;

-- DROP FUNCTION public.geometry_gist_consistent_nd(internal, geometry, int4);

CREATE OR REPLACE FUNCTION public.geometry_gist_consistent_nd(internal, geometry, integer)
 RETURNS boolean
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_consistent$function$
;

-- DROP FUNCTION public.geometry_gist_decompress_2d(internal);

CREATE OR REPLACE FUNCTION public.geometry_gist_decompress_2d(internal)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_decompress_2d$function$
;

-- DROP FUNCTION public.geometry_gist_decompress_nd(internal);

CREATE OR REPLACE FUNCTION public.geometry_gist_decompress_nd(internal)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_decompress$function$
;

-- DROP FUNCTION public.geometry_gist_distance_2d(internal, geometry, int4);

CREATE OR REPLACE FUNCTION public.geometry_gist_distance_2d(internal, geometry, integer)
 RETURNS double precision
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_distance_2d$function$
;

-- DROP FUNCTION public.geometry_gist_distance_nd(internal, geometry, int4);

CREATE OR REPLACE FUNCTION public.geometry_gist_distance_nd(internal, geometry, integer)
 RETURNS double precision
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_distance$function$
;

-- DROP FUNCTION public.geometry_gist_penalty_2d(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_gist_penalty_2d(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_penalty_2d$function$
;

-- DROP FUNCTION public.geometry_gist_penalty_nd(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_gist_penalty_nd(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_penalty$function$
;

-- DROP FUNCTION public.geometry_gist_picksplit_2d(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_gist_picksplit_2d(internal, internal)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_picksplit_2d$function$
;

-- DROP FUNCTION public.geometry_gist_picksplit_nd(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_gist_picksplit_nd(internal, internal)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_picksplit$function$
;

-- DROP FUNCTION public.geometry_gist_same_2d(geometry, geometry, internal);

CREATE OR REPLACE FUNCTION public.geometry_gist_same_2d(geom1 geometry, geom2 geometry, internal)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_same_2d$function$
;

-- DROP FUNCTION public.geometry_gist_same_nd(geometry, geometry, internal);

CREATE OR REPLACE FUNCTION public.geometry_gist_same_nd(geometry, geometry, internal)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_same$function$
;

-- DROP FUNCTION public.geometry_gist_union_2d(bytea, internal);

CREATE OR REPLACE FUNCTION public.geometry_gist_union_2d(bytea, internal)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_union_2d$function$
;

-- DROP FUNCTION public.geometry_gist_union_nd(bytea, internal);

CREATE OR REPLACE FUNCTION public.geometry_gist_union_nd(bytea, internal)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_union$function$
;

-- DROP FUNCTION public.geometry_gt(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_gt(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$lwgeom_gt$function$
;

-- DROP FUNCTION public.geometry_hash(geometry);

CREATE OR REPLACE FUNCTION public.geometry_hash(geometry)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$lwgeom_hash$function$
;

-- DROP FUNCTION public.geometry_in(cstring);

CREATE OR REPLACE FUNCTION public.geometry_in(cstring)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_in$function$
;

-- DROP FUNCTION public.geometry_le(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_le(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$lwgeom_le$function$
;

-- DROP FUNCTION public.geometry_left(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_left(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_left_2d$function$
;

-- DROP FUNCTION public.geometry_lt(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_lt(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$lwgeom_lt$function$
;

-- DROP FUNCTION public.geometry_out(geometry);

CREATE OR REPLACE FUNCTION public.geometry_out(geometry)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_out$function$
;

-- DROP FUNCTION public.geometry_overabove(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_overabove(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_overabove_2d$function$
;

-- DROP FUNCTION public.geometry_overbelow(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_overbelow(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_overbelow_2d$function$
;

-- DROP FUNCTION public.geometry_overlaps(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_overlaps(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_overlaps_2d$function$
;

-- DROP FUNCTION public.geometry_overlaps_3d(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_overlaps_3d(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_overlaps_3d$function$
;

-- DROP FUNCTION public.geometry_overlaps_nd(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_overlaps_nd(geometry, geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_overlaps$function$
;

-- DROP FUNCTION public.geometry_overleft(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_overleft(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_overleft_2d$function$
;

-- DROP FUNCTION public.geometry_overright(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_overright(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_overright_2d$function$
;

-- DROP FUNCTION public.geometry_raster_contain(geometry, raster);

CREATE OR REPLACE FUNCTION public.geometry_raster_contain(geometry, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1 OPERATOR(public.~) $2::public.geometry$function$
;

-- DROP FUNCTION public.geometry_raster_overlap(geometry, raster);

CREATE OR REPLACE FUNCTION public.geometry_raster_overlap(geometry, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1 OPERATOR(public.&&) $2::public.geometry$function$
;

-- DROP FUNCTION public.geometry_recv(internal);

CREATE OR REPLACE FUNCTION public.geometry_recv(internal)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_recv$function$
;

-- DROP FUNCTION public.geometry_right(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_right(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_right_2d$function$
;

-- DROP FUNCTION public.geometry_same(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_same(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_same_2d$function$
;

-- DROP FUNCTION public.geometry_same_3d(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_same_3d(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_same_3d$function$
;

-- DROP FUNCTION public.geometry_same_nd(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_same_nd(geometry, geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_same$function$
;

-- DROP FUNCTION public.geometry_send(geometry);

CREATE OR REPLACE FUNCTION public.geometry_send(geometry)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_send$function$
;

-- DROP FUNCTION public.geometry_sortsupport(internal);

CREATE OR REPLACE FUNCTION public.geometry_sortsupport(internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$lwgeom_sortsupport$function$
;

-- DROP FUNCTION public.geometry_spgist_choose_2d(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_choose_2d(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_choose_2d$function$
;

-- DROP FUNCTION public.geometry_spgist_choose_3d(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_choose_3d(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_choose_3d$function$
;

-- DROP FUNCTION public.geometry_spgist_choose_nd(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_choose_nd(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_choose_nd$function$
;

-- DROP FUNCTION public.geometry_spgist_compress_2d(internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_compress_2d(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_compress_2d$function$
;

-- DROP FUNCTION public.geometry_spgist_compress_3d(internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_compress_3d(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_compress_3d$function$
;

-- DROP FUNCTION public.geometry_spgist_compress_nd(internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_compress_nd(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_compress_nd$function$
;

-- DROP FUNCTION public.geometry_spgist_config_2d(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_config_2d(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_config_2d$function$
;

-- DROP FUNCTION public.geometry_spgist_config_3d(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_config_3d(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_config_3d$function$
;

-- DROP FUNCTION public.geometry_spgist_config_nd(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_config_nd(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_config_nd$function$
;

-- DROP FUNCTION public.geometry_spgist_inner_consistent_2d(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_inner_consistent_2d(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_inner_consistent_2d$function$
;

-- DROP FUNCTION public.geometry_spgist_inner_consistent_3d(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_inner_consistent_3d(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_inner_consistent_3d$function$
;

-- DROP FUNCTION public.geometry_spgist_inner_consistent_nd(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_inner_consistent_nd(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_inner_consistent_nd$function$
;

-- DROP FUNCTION public.geometry_spgist_leaf_consistent_2d(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_leaf_consistent_2d(internal, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_leaf_consistent_2d$function$
;

-- DROP FUNCTION public.geometry_spgist_leaf_consistent_3d(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_leaf_consistent_3d(internal, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_leaf_consistent_3d$function$
;

-- DROP FUNCTION public.geometry_spgist_leaf_consistent_nd(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_leaf_consistent_nd(internal, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_leaf_consistent_nd$function$
;

-- DROP FUNCTION public.geometry_spgist_picksplit_2d(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_picksplit_2d(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_picksplit_2d$function$
;

-- DROP FUNCTION public.geometry_spgist_picksplit_3d(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_picksplit_3d(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_picksplit_3d$function$
;

-- DROP FUNCTION public.geometry_spgist_picksplit_nd(internal, internal);

CREATE OR REPLACE FUNCTION public.geometry_spgist_picksplit_nd(internal, internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_spgist_picksplit_nd$function$
;

-- DROP FUNCTION public.geometry_typmod_in(_cstring);

CREATE OR REPLACE FUNCTION public.geometry_typmod_in(cstring[])
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geometry_typmod_in$function$
;

-- DROP FUNCTION public.geometry_typmod_out(int4);

CREATE OR REPLACE FUNCTION public.geometry_typmod_out(integer)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$postgis_typmod_out$function$
;

-- DROP FUNCTION public.geometry_within(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_within(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_within_2d$function$
;

-- DROP FUNCTION public.geometry_within_nd(geometry, geometry);

CREATE OR REPLACE FUNCTION public.geometry_within_nd(geometry, geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_within$function$
;

-- DROP FUNCTION public.geometrytype(geometry);

CREATE OR REPLACE FUNCTION public.geometrytype(geometry)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_getTYPE$function$
;

COMMENT ON FUNCTION public.geometrytype(geometry) IS 'args: geomA - Returns the type of a geometry as text.';

-- DROP FUNCTION public.geometrytype(geography);

CREATE OR REPLACE FUNCTION public.geometrytype(geography)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_getTYPE$function$
;

-- DROP FUNCTION public.geomfromewkb(bytea);

CREATE OR REPLACE FUNCTION public.geomfromewkb(bytea)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOMFromEWKB$function$
;

-- DROP FUNCTION public.geomfromewkt(text);

CREATE OR REPLACE FUNCTION public.geomfromewkt(text)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$parse_WKT_lwgeom$function$
;

-- DROP FUNCTION public.get_proj4_from_srid(int4);

CREATE OR REPLACE FUNCTION public.get_proj4_from_srid(integer)
 RETURNS text
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	BEGIN
	RETURN proj4text::text FROM public.spatial_ref_sys WHERE srid= $1;
	END;
	$function$
;

-- DROP FUNCTION public.gettransactionid();

CREATE OR REPLACE FUNCTION public.gettransactionid()
 RETURNS xid
 LANGUAGE c
AS '$libdir/postgis-3', $function$getTransactionID$function$
;

-- DROP FUNCTION public.gidx_in(cstring);

CREATE OR REPLACE FUNCTION public.gidx_in(cstring)
 RETURNS gidx
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gidx_in$function$
;

-- DROP FUNCTION public.gidx_out(gidx);

CREATE OR REPLACE FUNCTION public.gidx_out(gidx)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gidx_out$function$
;

-- DROP FUNCTION public.gin_extract_query_trgm(text, internal, int2, internal, internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gin_extract_query_trgm(text, internal, smallint, internal, internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gin_extract_query_trgm$function$
;

-- DROP FUNCTION public.gin_extract_value_trgm(text, internal);

CREATE OR REPLACE FUNCTION public.gin_extract_value_trgm(text, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gin_extract_value_trgm$function$
;

-- DROP FUNCTION public.gin_trgm_consistent(internal, int2, text, int4, internal, internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gin_trgm_consistent(internal, smallint, text, integer, internal, internal, internal, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gin_trgm_consistent$function$
;

-- DROP FUNCTION public.gin_trgm_triconsistent(internal, int2, text, int4, internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gin_trgm_triconsistent(internal, smallint, text, integer, internal, internal, internal)
 RETURNS "char"
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gin_trgm_triconsistent$function$
;

-- DROP FUNCTION public.gserialized_gist_joinsel_2d(internal, oid, internal, int2);

CREATE OR REPLACE FUNCTION public.gserialized_gist_joinsel_2d(internal, oid, internal, smallint)
 RETURNS double precision
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_joinsel_2d$function$
;

-- DROP FUNCTION public.gserialized_gist_joinsel_nd(internal, oid, internal, int2);

CREATE OR REPLACE FUNCTION public.gserialized_gist_joinsel_nd(internal, oid, internal, smallint)
 RETURNS double precision
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_joinsel_nd$function$
;

-- DROP FUNCTION public.gserialized_gist_sel_2d(internal, oid, internal, int4);

CREATE OR REPLACE FUNCTION public.gserialized_gist_sel_2d(internal, oid, internal, integer)
 RETURNS double precision
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_sel_2d$function$
;

-- DROP FUNCTION public.gserialized_gist_sel_nd(internal, oid, internal, int4);

CREATE OR REPLACE FUNCTION public.gserialized_gist_sel_nd(internal, oid, internal, integer)
 RETURNS double precision
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/postgis-3', $function$gserialized_gist_sel_nd$function$
;

-- DROP FUNCTION public.gtrgm_compress(internal);

CREATE OR REPLACE FUNCTION public.gtrgm_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gtrgm_compress$function$
;

-- DROP FUNCTION public.gtrgm_consistent(internal, text, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gtrgm_consistent(internal, text, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gtrgm_consistent$function$
;

-- DROP FUNCTION public.gtrgm_decompress(internal);

CREATE OR REPLACE FUNCTION public.gtrgm_decompress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gtrgm_decompress$function$
;

-- DROP FUNCTION public.gtrgm_distance(internal, text, int2, oid, internal);

CREATE OR REPLACE FUNCTION public.gtrgm_distance(internal, text, smallint, oid, internal)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gtrgm_distance$function$
;

-- DROP FUNCTION public.gtrgm_in(cstring);

CREATE OR REPLACE FUNCTION public.gtrgm_in(cstring)
 RETURNS gtrgm
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gtrgm_in$function$
;

-- DROP FUNCTION public.gtrgm_options(internal);

CREATE OR REPLACE FUNCTION public.gtrgm_options(internal)
 RETURNS void
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/pg_trgm', $function$gtrgm_options$function$
;

-- DROP FUNCTION public.gtrgm_out(gtrgm);

CREATE OR REPLACE FUNCTION public.gtrgm_out(gtrgm)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gtrgm_out$function$
;

-- DROP FUNCTION public.gtrgm_penalty(internal, internal, internal);

CREATE OR REPLACE FUNCTION public.gtrgm_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gtrgm_penalty$function$
;

-- DROP FUNCTION public.gtrgm_picksplit(internal, internal);

CREATE OR REPLACE FUNCTION public.gtrgm_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gtrgm_picksplit$function$
;

-- DROP FUNCTION public.gtrgm_same(gtrgm, gtrgm, internal);

CREATE OR REPLACE FUNCTION public.gtrgm_same(gtrgm, gtrgm, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gtrgm_same$function$
;

-- DROP FUNCTION public.gtrgm_union(internal, internal);

CREATE OR REPLACE FUNCTION public.gtrgm_union(internal, internal)
 RETURNS gtrgm
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$gtrgm_union$function$
;

-- DROP FUNCTION public.hmac(bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.hmac(bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_hmac$function$
;

-- DROP FUNCTION public.hmac(text, text, text);

CREATE OR REPLACE FUNCTION public.hmac(text, text, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_hmac$function$
;

-- DROP FUNCTION public.int2_dist(int2, int2);

CREATE OR REPLACE FUNCTION public.int2_dist(smallint, smallint)
 RETURNS smallint
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$int2_dist$function$
;

-- DROP FUNCTION public.int4_dist(int4, int4);

CREATE OR REPLACE FUNCTION public.int4_dist(integer, integer)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$int4_dist$function$
;

-- DROP FUNCTION public.int8_dist(int8, int8);

CREATE OR REPLACE FUNCTION public.int8_dist(bigint, bigint)
 RETURNS bigint
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$int8_dist$function$
;

-- DROP FUNCTION public.interval_dist(interval, interval);

CREATE OR REPLACE FUNCTION public.interval_dist(interval, interval)
 RETURNS interval
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$interval_dist$function$
;

-- DROP FUNCTION public.is_contained_2d(box2df, geometry);

CREATE OR REPLACE FUNCTION public.is_contained_2d(box2df, geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_within_box2df_geom_2d$function$
;

-- DROP FUNCTION public.is_contained_2d(geometry, box2df);

CREATE OR REPLACE FUNCTION public.is_contained_2d(geometry, box2df)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 1
AS $function$SELECT $2 OPERATOR(public.~) $1;$function$
;

-- DROP FUNCTION public.is_contained_2d(box2df, box2df);

CREATE OR REPLACE FUNCTION public.is_contained_2d(box2df, box2df)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_contains_box2df_box2df_2d$function$
;

-- DROP FUNCTION public."json"(geometry);

CREATE OR REPLACE FUNCTION public.json(geometry)
 RETURNS json
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geometry_to_json$function$
;

-- DROP FUNCTION public."jsonb"(geometry);

CREATE OR REPLACE FUNCTION public.jsonb(geometry)
 RETURNS jsonb
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geometry_to_jsonb$function$
;

-- DROP FUNCTION public.levenshtein(text, text, int4, int4, int4);

CREATE OR REPLACE FUNCTION public.levenshtein(text, text, integer, integer, integer)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/fuzzystrmatch', $function$levenshtein_with_costs$function$
;

-- DROP FUNCTION public.levenshtein(text, text);

CREATE OR REPLACE FUNCTION public.levenshtein(text, text)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/fuzzystrmatch', $function$levenshtein$function$
;

-- DROP FUNCTION public.levenshtein_less_equal(text, text, int4, int4, int4, int4);

CREATE OR REPLACE FUNCTION public.levenshtein_less_equal(text, text, integer, integer, integer, integer)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/fuzzystrmatch', $function$levenshtein_less_equal_with_costs$function$
;

-- DROP FUNCTION public.levenshtein_less_equal(text, text, int4);

CREATE OR REPLACE FUNCTION public.levenshtein_less_equal(text, text, integer)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/fuzzystrmatch', $function$levenshtein_less_equal$function$
;

-- DROP FUNCTION public.lockrow(text, text, text);

CREATE OR REPLACE FUNCTION public.lockrow(text, text, text)
 RETURNS integer
 LANGUAGE sql
 STRICT
AS $function$ SELECT LockRow(current_schema(), $1, $2, $3, now()::timestamp+'1:00'); $function$
;

COMMENT ON FUNCTION public.lockrow(text, text, text) IS 'args: a_table_name, a_row_key, an_auth_token - Sets lock/authorization for a row in a table.';

-- DROP FUNCTION public.lockrow(text, text, text, text);

CREATE OR REPLACE FUNCTION public.lockrow(text, text, text, text)
 RETURNS integer
 LANGUAGE sql
 STRICT
AS $function$ SELECT LockRow($1, $2, $3, $4, now()::timestamp+'1:00'); $function$
;

-- DROP FUNCTION public.lockrow(text, text, text, text, timestamp);

CREATE OR REPLACE FUNCTION public.lockrow(text, text, text, text, timestamp without time zone)
 RETURNS integer
 LANGUAGE plpgsql
 STRICT
AS $function$
DECLARE
	myschema alias for $1;
	mytable alias for $2;
	myrid   alias for $3;
	authid alias for $4;
	expires alias for $5;
	ret int;
	mytoid oid;
	myrec RECORD;

BEGIN

	IF NOT LongTransactionsEnabled() THEN
		RAISE EXCEPTION 'Long transaction support disabled, use EnableLongTransaction() to enable.';
	END IF;

	EXECUTE 'DELETE FROM authorization_table WHERE expires < now()';

	SELECT c.oid INTO mytoid FROM pg_class c, pg_namespace n
		WHERE c.relname = mytable
		AND c.relnamespace = n.oid
		AND n.nspname = myschema;

	-- RAISE NOTICE 'toid: %', mytoid;

	FOR myrec IN SELECT * FROM authorization_table WHERE
		toid = mytoid AND rid = myrid
	LOOP
		IF myrec.authid != authid THEN
			RETURN 0;
		ELSE
			RETURN 1;
		END IF;
	END LOOP;

	EXECUTE 'INSERT INTO authorization_table VALUES ('||
		quote_literal(mytoid::text)||','||quote_literal(myrid)||
		','||quote_literal(expires::text)||
		','||quote_literal(authid) ||')';

	GET DIAGNOSTICS ret = ROW_COUNT;

	RETURN ret;
END;
$function$
;

COMMENT ON FUNCTION public.lockrow(text, text, text, text, timestamp) IS 'args: a_schema_name, a_table_name, a_row_key, an_auth_token, expire_dt - Sets lock/authorization for a row in a table.';

-- DROP FUNCTION public.lockrow(text, text, text, timestamp);

CREATE OR REPLACE FUNCTION public.lockrow(text, text, text, timestamp without time zone)
 RETURNS integer
 LANGUAGE sql
 STRICT
AS $function$ SELECT LockRow(current_schema(), $1, $2, $3, $4); $function$
;

COMMENT ON FUNCTION public.lockrow(text, text, text, timestamp) IS 'args: a_table_name, a_row_key, an_auth_token, expire_dt - Sets lock/authorization for a row in a table.';

-- DROP FUNCTION public.longtransactionsenabled();

CREATE OR REPLACE FUNCTION public.longtransactionsenabled()
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$
DECLARE
	rec RECORD;
BEGIN
	FOR rec IN SELECT oid FROM pg_class WHERE relname = 'authorized_tables'
	LOOP
		return 't';
	END LOOP;
	return 'f';
END;
$function$
;

-- DROP FUNCTION public.metaphone(text, int4);

CREATE OR REPLACE FUNCTION public.metaphone(text, integer)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/fuzzystrmatch', $function$metaphone$function$
;

-- DROP FUNCTION public.oid_dist(oid, oid);

CREATE OR REPLACE FUNCTION public.oid_dist(oid, oid)
 RETURNS oid
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$oid_dist$function$
;

-- DROP FUNCTION public.overlaps_2d(geometry, box2df);

CREATE OR REPLACE FUNCTION public.overlaps_2d(geometry, box2df)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 1
AS $function$SELECT $2 OPERATOR(public.&&) $1;$function$
;

-- DROP FUNCTION public.overlaps_2d(box2df, box2df);

CREATE OR REPLACE FUNCTION public.overlaps_2d(box2df, box2df)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_contains_box2df_box2df_2d$function$
;

-- DROP FUNCTION public.overlaps_2d(box2df, geometry);

CREATE OR REPLACE FUNCTION public.overlaps_2d(box2df, geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_overlaps_box2df_geom_2d$function$
;

-- DROP FUNCTION public.overlaps_geog(gidx, gidx);

CREATE OR REPLACE FUNCTION public.overlaps_geog(gidx, gidx)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/postgis-3', $function$gserialized_gidx_gidx_overlaps$function$
;

-- DROP FUNCTION public.overlaps_geog(gidx, geography);

CREATE OR REPLACE FUNCTION public.overlaps_geog(gidx, geography)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/postgis-3', $function$gserialized_gidx_geog_overlaps$function$
;

-- DROP FUNCTION public.overlaps_geog(geography, gidx);

CREATE OR REPLACE FUNCTION public.overlaps_geog(geography, gidx)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE STRICT
AS $function$SELECT $2 OPERATOR(public.&&) $1;$function$
;

-- DROP FUNCTION public.overlaps_nd(gidx, gidx);

CREATE OR REPLACE FUNCTION public.overlaps_nd(gidx, gidx)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_gidx_gidx_overlaps$function$
;

-- DROP FUNCTION public.overlaps_nd(geometry, gidx);

CREATE OR REPLACE FUNCTION public.overlaps_nd(geometry, gidx)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 1
AS $function$SELECT $2 OPERATOR(public.&&&) $1;$function$
;

-- DROP FUNCTION public.overlaps_nd(gidx, geometry);

CREATE OR REPLACE FUNCTION public.overlaps_nd(gidx, geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$gserialized_gidx_geom_overlaps$function$
;

-- DROP FUNCTION public.parse_address(in text, out text, out text, out text, out text, out text, out text, out text, out text, out text);

CREATE OR REPLACE FUNCTION public.parse_address(text, OUT num text, OUT street text, OUT street2 text, OUT address1 text, OUT city text, OUT state text, OUT zip text, OUT zipplus text, OUT country text)
 RETURNS record
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/address_standardizer-3', $function$parse_address$function$
;

-- DROP FUNCTION public."path"(geometry);

CREATE OR REPLACE FUNCTION public.path(geometry)
 RETURNS path
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geometry_to_path$function$
;

-- DROP FUNCTION public.pgis_asgeobuf_finalfn(internal);

CREATE OR REPLACE FUNCTION public.pgis_asgeobuf_finalfn(internal)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_asgeobuf_finalfn$function$
;

-- DROP FUNCTION public.pgis_asgeobuf_transfn(internal, anyelement);

CREATE OR REPLACE FUNCTION public.pgis_asgeobuf_transfn(internal, anyelement)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$pgis_asgeobuf_transfn$function$
;

-- DROP FUNCTION public.pgis_asgeobuf_transfn(internal, anyelement, text);

CREATE OR REPLACE FUNCTION public.pgis_asgeobuf_transfn(internal, anyelement, text)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$pgis_asgeobuf_transfn$function$
;

-- DROP FUNCTION public.pgis_asmvt_combinefn(internal, internal);

CREATE OR REPLACE FUNCTION public.pgis_asmvt_combinefn(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_asmvt_combinefn$function$
;

-- DROP FUNCTION public.pgis_asmvt_deserialfn(bytea, internal);

CREATE OR REPLACE FUNCTION public.pgis_asmvt_deserialfn(bytea, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_asmvt_deserialfn$function$
;

-- DROP FUNCTION public.pgis_asmvt_finalfn(internal);

CREATE OR REPLACE FUNCTION public.pgis_asmvt_finalfn(internal)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_asmvt_finalfn$function$
;

-- DROP FUNCTION public.pgis_asmvt_serialfn(internal);

CREATE OR REPLACE FUNCTION public.pgis_asmvt_serialfn(internal)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_asmvt_serialfn$function$
;

-- DROP FUNCTION public.pgis_asmvt_transfn(internal, anyelement, text, int4, text);

CREATE OR REPLACE FUNCTION public.pgis_asmvt_transfn(internal, anyelement, text, integer, text)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_asmvt_transfn$function$
;

-- DROP FUNCTION public.pgis_asmvt_transfn(internal, anyelement, text, int4);

CREATE OR REPLACE FUNCTION public.pgis_asmvt_transfn(internal, anyelement, text, integer)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_asmvt_transfn$function$
;

-- DROP FUNCTION public.pgis_asmvt_transfn(internal, anyelement, text, int4, text, text);

CREATE OR REPLACE FUNCTION public.pgis_asmvt_transfn(internal, anyelement, text, integer, text, text)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_asmvt_transfn$function$
;

-- DROP FUNCTION public.pgis_asmvt_transfn(internal, anyelement, text);

CREATE OR REPLACE FUNCTION public.pgis_asmvt_transfn(internal, anyelement, text)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_asmvt_transfn$function$
;

-- DROP FUNCTION public.pgis_asmvt_transfn(internal, anyelement);

CREATE OR REPLACE FUNCTION public.pgis_asmvt_transfn(internal, anyelement)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_asmvt_transfn$function$
;

-- DROP FUNCTION public.pgis_geometry_accum_transfn(internal, geometry, float8);

CREATE OR REPLACE FUNCTION public.pgis_geometry_accum_transfn(internal, geometry, double precision)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$pgis_geometry_accum_transfn$function$
;

-- DROP FUNCTION public.pgis_geometry_accum_transfn(internal, geometry, float8, int4);

CREATE OR REPLACE FUNCTION public.pgis_geometry_accum_transfn(internal, geometry, double precision, integer)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$pgis_geometry_accum_transfn$function$
;

-- DROP FUNCTION public.pgis_geometry_accum_transfn(internal, geometry);

CREATE OR REPLACE FUNCTION public.pgis_geometry_accum_transfn(internal, geometry)
 RETURNS internal
 LANGUAGE c
 PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$pgis_geometry_accum_transfn$function$
;

-- DROP FUNCTION public.pgis_geometry_clusterintersecting_finalfn(internal);

CREATE OR REPLACE FUNCTION public.pgis_geometry_clusterintersecting_finalfn(internal)
 RETURNS geometry[]
 LANGUAGE c
 PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_geometry_clusterintersecting_finalfn$function$
;

-- DROP FUNCTION public.pgis_geometry_clusterwithin_finalfn(internal);

CREATE OR REPLACE FUNCTION public.pgis_geometry_clusterwithin_finalfn(internal)
 RETURNS geometry[]
 LANGUAGE c
 PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_geometry_clusterwithin_finalfn$function$
;

-- DROP FUNCTION public.pgis_geometry_collect_finalfn(internal);

CREATE OR REPLACE FUNCTION public.pgis_geometry_collect_finalfn(internal)
 RETURNS geometry
 LANGUAGE c
 PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_geometry_collect_finalfn$function$
;

-- DROP FUNCTION public.pgis_geometry_makeline_finalfn(internal);

CREATE OR REPLACE FUNCTION public.pgis_geometry_makeline_finalfn(internal)
 RETURNS geometry
 LANGUAGE c
 PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_geometry_makeline_finalfn$function$
;

-- DROP FUNCTION public.pgis_geometry_polygonize_finalfn(internal);

CREATE OR REPLACE FUNCTION public.pgis_geometry_polygonize_finalfn(internal)
 RETURNS geometry
 LANGUAGE c
 PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$pgis_geometry_polygonize_finalfn$function$
;

-- DROP FUNCTION public.pgis_geometry_union_finalfn(internal);

CREATE OR REPLACE FUNCTION public.pgis_geometry_union_finalfn(internal)
 RETURNS geometry
 LANGUAGE c
 PARALLEL SAFE COST 10000
AS '$libdir/postgis-3', $function$pgis_geometry_union_finalfn$function$
;

-- DROP FUNCTION public.pgp_armor_headers(in text, out text, out text);

CREATE OR REPLACE FUNCTION public.pgp_armor_headers(text, OUT key text, OUT value text)
 RETURNS SETOF record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_armor_headers$function$
;

-- DROP FUNCTION public.pgp_key_id(bytea);

CREATE OR REPLACE FUNCTION public.pgp_key_id(bytea)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_key_id_w$function$
;

-- DROP FUNCTION public.pgp_pub_decrypt(bytea, bytea);

CREATE OR REPLACE FUNCTION public.pgp_pub_decrypt(bytea, bytea)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_decrypt_text$function$
;

-- DROP FUNCTION public.pgp_pub_decrypt(bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_pub_decrypt(bytea, bytea, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_decrypt_text$function$
;

-- DROP FUNCTION public.pgp_pub_decrypt(bytea, bytea, text, text);

CREATE OR REPLACE FUNCTION public.pgp_pub_decrypt(bytea, bytea, text, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_decrypt_text$function$
;

-- DROP FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea, text, text);

CREATE OR REPLACE FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea, text, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_decrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_decrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea);

CREATE OR REPLACE FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_decrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_pub_encrypt(text, bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_pub_encrypt(text, bytea, text)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_encrypt_text$function$
;

-- DROP FUNCTION public.pgp_pub_encrypt(text, bytea);

CREATE OR REPLACE FUNCTION public.pgp_pub_encrypt(text, bytea)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_encrypt_text$function$
;

-- DROP FUNCTION public.pgp_pub_encrypt_bytea(bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_pub_encrypt_bytea(bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_encrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_pub_encrypt_bytea(bytea, bytea);

CREATE OR REPLACE FUNCTION public.pgp_pub_encrypt_bytea(bytea, bytea)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_encrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_sym_decrypt(bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_decrypt(bytea, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_decrypt_text$function$
;

-- DROP FUNCTION public.pgp_sym_decrypt(bytea, text, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_decrypt(bytea, text, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_decrypt_text$function$
;

-- DROP FUNCTION public.pgp_sym_decrypt_bytea(bytea, text, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_decrypt_bytea(bytea, text, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_decrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_sym_decrypt_bytea(bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_decrypt_bytea(bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_decrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_sym_encrypt(text, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_encrypt(text, text)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_encrypt_text$function$
;

-- DROP FUNCTION public.pgp_sym_encrypt(text, text, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_encrypt(text, text, text)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_encrypt_text$function$
;

-- DROP FUNCTION public.pgp_sym_encrypt_bytea(bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_encrypt_bytea(bytea, text)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_encrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_sym_encrypt_bytea(bytea, text, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_encrypt_bytea(bytea, text, text)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_encrypt_bytea$function$
;

-- DROP FUNCTION public.point(geometry);

CREATE OR REPLACE FUNCTION public.point(geometry)
 RETURNS point
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geometry_to_point$function$
;

-- DROP FUNCTION public.polygon(geometry);

CREATE OR REPLACE FUNCTION public.polygon(geometry)
 RETURNS polygon
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geometry_to_polygon$function$
;

-- DROP FUNCTION public.populate_geometry_columns(oid, bool);

CREATE OR REPLACE FUNCTION public.populate_geometry_columns(tbl_oid oid, use_typmod boolean DEFAULT true)
 RETURNS integer
 LANGUAGE plpgsql
AS $function$
DECLARE
	gcs		 RECORD;
	gc		  RECORD;
	gc_old	  RECORD;
	gsrid	   integer;
	gndims	  integer;
	gtype	   text;
	query	   text;
	gc_is_valid boolean;
	inserted	integer;
	constraint_successful boolean := false;

BEGIN
	inserted := 0;

	-- Iterate through all geometry columns in this table
	FOR gcs IN
	SELECT n.nspname, c.relname, a.attname, c.relkind
		FROM pg_class c,
			 pg_attribute a,
			 pg_type t,
			 pg_catalog.pg_namespace n
		WHERE c.relkind IN('r', 'f', 'p')
		AND t.typname = 'geometry'
		AND a.attisdropped = false
		AND a.atttypid = t.oid
		AND a.attrelid = c.oid
		AND c.relnamespace = n.oid
		AND n.nspname NOT ILIKE 'pg_temp%'
		AND c.oid = tbl_oid
	LOOP

        RAISE DEBUG 'Processing column %.%.%', gcs.nspname, gcs.relname, gcs.attname;

        gc_is_valid := true;
        -- Find the srid, coord_dimension, and type of current geometry
        -- in geometry_columns -- which is now a view

        SELECT type, srid, coord_dimension, gcs.relkind INTO gc_old
            FROM geometry_columns
            WHERE f_table_schema = gcs.nspname AND f_table_name = gcs.relname AND f_geometry_column = gcs.attname;

        IF upper(gc_old.type) = 'GEOMETRY' THEN
        -- This is an unconstrained geometry we need to do something
        -- We need to figure out what to set the type by inspecting the data
            EXECUTE 'SELECT public.ST_srid(' || quote_ident(gcs.attname) || ') As srid, public.GeometryType(' || quote_ident(gcs.attname) || ') As type, public.ST_NDims(' || quote_ident(gcs.attname) || ') As dims ' ||
                     ' FROM ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) ||
                     ' WHERE ' || quote_ident(gcs.attname) || ' IS NOT NULL LIMIT 1;'
                INTO gc;
            IF gc IS NULL THEN -- there is no data so we can not determine geometry type
            	RAISE WARNING 'No data in table %.%, so no information to determine geometry type and srid', gcs.nspname, gcs.relname;
            	RETURN 0;
            END IF;
            gsrid := gc.srid; gtype := gc.type; gndims := gc.dims;

            IF use_typmod THEN
                BEGIN
                    EXECUTE 'ALTER TABLE ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || ' ALTER COLUMN ' || quote_ident(gcs.attname) ||
                        ' TYPE geometry(' || postgis_type_name(gtype, gndims, true) || ', ' || gsrid::text  || ') ';
                    inserted := inserted + 1;
                EXCEPTION
                        WHEN invalid_parameter_value OR feature_not_supported THEN
                        RAISE WARNING 'Could not convert ''%'' in ''%.%'' to use typmod with srid %, type %: %', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname), gsrid, postgis_type_name(gtype, gndims, true), SQLERRM;
                            gc_is_valid := false;
                END;

            ELSE
                -- Try to apply srid check to column
            	constraint_successful = false;
                IF (gsrid > 0 AND postgis_constraint_srid(gcs.nspname, gcs.relname,gcs.attname) IS NULL ) THEN
                    BEGIN
                        EXECUTE 'ALTER TABLE ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) ||
                                 ' ADD CONSTRAINT ' || quote_ident('enforce_srid_' || gcs.attname) ||
                                 ' CHECK (ST_srid(' || quote_ident(gcs.attname) || ') = ' || gsrid || ')';
                        constraint_successful := true;
                    EXCEPTION
                        WHEN check_violation THEN
                            RAISE WARNING 'Not inserting ''%'' in ''%.%'' into geometry_columns: could not apply constraint CHECK (st_srid(%) = %)', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname), quote_ident(gcs.attname), gsrid;
                            gc_is_valid := false;
                    END;
                END IF;

                -- Try to apply ndims check to column
                IF (gndims IS NOT NULL AND postgis_constraint_dims(gcs.nspname, gcs.relname,gcs.attname) IS NULL ) THEN
                    BEGIN
                        EXECUTE 'ALTER TABLE ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || '
                                 ADD CONSTRAINT ' || quote_ident('enforce_dims_' || gcs.attname) || '
                                 CHECK (st_ndims(' || quote_ident(gcs.attname) || ') = '||gndims||')';
                        constraint_successful := true;
                    EXCEPTION
                        WHEN check_violation THEN
                            RAISE WARNING 'Not inserting ''%'' in ''%.%'' into geometry_columns: could not apply constraint CHECK (st_ndims(%) = %)', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname), quote_ident(gcs.attname), gndims;
                            gc_is_valid := false;
                    END;
                END IF;

                -- Try to apply geometrytype check to column
                IF (gtype IS NOT NULL AND postgis_constraint_type(gcs.nspname, gcs.relname,gcs.attname) IS NULL ) THEN
                    BEGIN
                        EXECUTE 'ALTER TABLE ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || '
                        ADD CONSTRAINT ' || quote_ident('enforce_geotype_' || gcs.attname) || '
                        CHECK (geometrytype(' || quote_ident(gcs.attname) || ') = ' || quote_literal(gtype) || ')';
                        constraint_successful := true;
                    EXCEPTION
                        WHEN check_violation THEN
                            -- No geometry check can be applied. This column contains a number of geometry types.
                            RAISE WARNING 'Could not add geometry type check (%) to table column: %.%.%', gtype, quote_ident(gcs.nspname),quote_ident(gcs.relname),quote_ident(gcs.attname);
                    END;
                END IF;
                 --only count if we were successful in applying at least one constraint
                IF constraint_successful THEN
                	inserted := inserted + 1;
                END IF;
            END IF;
	    END IF;

	END LOOP;

	RETURN inserted;
END

$function$
;

COMMENT ON FUNCTION public.populate_geometry_columns(oid, bool) IS 'args: relation_oid, use_typmod=true - Ensures geometry columns are defined with type modifiers or have appropriate spatial constraints.';

-- DROP FUNCTION public.populate_geometry_columns(bool);

CREATE OR REPLACE FUNCTION public.populate_geometry_columns(use_typmod boolean DEFAULT true)
 RETURNS text
 LANGUAGE plpgsql
AS $function$
DECLARE
	inserted	integer;
	oldcount	integer;
	probed	  integer;
	stale	   integer;
	gcs		 RECORD;
	gc		  RECORD;
	gsrid	   integer;
	gndims	  integer;
	gtype	   text;
	query	   text;
	gc_is_valid boolean;

BEGIN
	SELECT count(*) INTO oldcount FROM public.geometry_columns;
	inserted := 0;

	-- Count the number of geometry columns in all tables and views
	SELECT count(DISTINCT c.oid) INTO probed
	FROM pg_class c,
		 pg_attribute a,
		 pg_type t,
		 pg_catalog.pg_namespace n
	WHERE c.relkind IN('r','v','f', 'p')
		AND t.typname = 'geometry'
		AND a.attisdropped = false
		AND a.atttypid = t.oid
		AND a.attrelid = c.oid
		AND c.relnamespace = n.oid
		AND n.nspname NOT ILIKE 'pg_temp%' AND c.relname != 'raster_columns' ;

	-- Iterate through all non-dropped geometry columns
	RAISE DEBUG 'Processing Tables.....';

	FOR gcs IN
	SELECT DISTINCT ON (c.oid) c.oid, n.nspname, c.relname
		FROM pg_class c,
			 pg_attribute a,
			 pg_type t,
			 pg_catalog.pg_namespace n
		WHERE c.relkind IN( 'r', 'f', 'p')
		AND t.typname = 'geometry'
		AND a.attisdropped = false
		AND a.atttypid = t.oid
		AND a.attrelid = c.oid
		AND c.relnamespace = n.oid
		AND n.nspname NOT ILIKE 'pg_temp%' AND c.relname != 'raster_columns'
	LOOP

		inserted := inserted + public.populate_geometry_columns(gcs.oid, use_typmod);
	END LOOP;

	IF oldcount > inserted THEN
		stale = oldcount-inserted;
	ELSE
		stale = 0;
	END IF;

	RETURN 'probed:' ||probed|| ' inserted:'||inserted;
END

$function$
;

COMMENT ON FUNCTION public.populate_geometry_columns(bool) IS 'args: use_typmod=true - Ensures geometry columns are defined with type modifiers or have appropriate spatial constraints.';

-- DROP FUNCTION public.postgis_addbbox(geometry);

CREATE OR REPLACE FUNCTION public.postgis_addbbox(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_addBBOX$function$
;

COMMENT ON FUNCTION public.postgis_addbbox(geometry) IS 'args: geomA - Add bounding box to the geometry.';

-- DROP FUNCTION public.postgis_cache_bbox();

CREATE OR REPLACE FUNCTION public.postgis_cache_bbox()
 RETURNS trigger
 LANGUAGE c
AS '$libdir/postgis-3', $function$cache_bbox$function$
;

-- DROP FUNCTION public.postgis_constraint_dims(text, text, text);

CREATE OR REPLACE FUNCTION public.postgis_constraint_dims(geomschema text, geomtable text, geomcolumn text)
 RETURNS integer
 LANGUAGE sql
 STABLE PARALLEL SAFE STRICT COST 500
AS $function$
SELECT  replace(pg_catalog.split_part(s.consrc, ' = ', 2), ')', '')::integer
		 FROM pg_class c, pg_namespace n, pg_attribute a
		 , (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
			FROM pg_constraint) AS s
		 WHERE n.nspname = $1
		 AND c.relname = $2
		 AND a.attname = $3
		 AND a.attrelid = c.oid
		 AND s.connamespace = n.oid
		 AND s.conrelid = c.oid
		 AND a.attnum = ANY (s.conkey)
		 AND s.consrc LIKE '%ndims(% = %';
$function$
;

-- DROP FUNCTION public.postgis_constraint_srid(text, text, text);

CREATE OR REPLACE FUNCTION public.postgis_constraint_srid(geomschema text, geomtable text, geomcolumn text)
 RETURNS integer
 LANGUAGE sql
 STABLE PARALLEL SAFE STRICT COST 500
AS $function$
SELECT replace(replace(split_part(s.consrc, ' = ', 2), ')', ''), '(', '')::integer
		 FROM pg_class c, pg_namespace n, pg_attribute a
		 , (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
			FROM pg_constraint) AS s
		 WHERE n.nspname = $1
		 AND c.relname = $2
		 AND a.attname = $3
		 AND a.attrelid = c.oid
		 AND s.connamespace = n.oid
		 AND s.conrelid = c.oid
		 AND a.attnum = ANY (s.conkey)
		 AND s.consrc LIKE '%srid(% = %';
$function$
;

-- DROP FUNCTION public.postgis_constraint_type(text, text, text);

CREATE OR REPLACE FUNCTION public.postgis_constraint_type(geomschema text, geomtable text, geomcolumn text)
 RETURNS character varying
 LANGUAGE sql
 STABLE PARALLEL SAFE STRICT COST 500
AS $function$
SELECT  replace(pg_catalog.split_part(s.consrc, '''', 2), ')', '')::varchar
		 FROM pg_class c, pg_namespace n, pg_attribute a
		 , (SELECT connamespace, conrelid, conkey, pg_get_constraintdef(oid) As consrc
			FROM pg_constraint) AS s
		 WHERE n.nspname = $1
		 AND c.relname = $2
		 AND a.attname = $3
		 AND a.attrelid = c.oid
		 AND s.connamespace = n.oid
		 AND s.conrelid = c.oid
		 AND a.attnum = ANY (s.conkey)
		 AND s.consrc LIKE '%geometrytype(% = %';
$function$
;

-- DROP FUNCTION public.postgis_dropbbox(geometry);

CREATE OR REPLACE FUNCTION public.postgis_dropbbox(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_dropBBOX$function$
;

COMMENT ON FUNCTION public.postgis_dropbbox(geometry) IS 'args: geomA - Drop the bounding box cache from the geometry.';

-- DROP FUNCTION public.postgis_extensions_upgrade();

CREATE OR REPLACE FUNCTION public.postgis_extensions_upgrade()
 RETURNS text
 LANGUAGE plpgsql
AS $function$
DECLARE
	rec pg_catalog.record;
	sql pg_catalog.text;
	var_schema pg_catalog.text;
BEGIN

	FOR rec IN
		SELECT name, default_version, installed_version
		FROM pg_catalog.pg_available_extensions
		WHERE name IN (
			'postgis',
			'postgis_raster',
			'postgis_sfcgal',
			'postgis_topology',
			'postgis_tiger_geocoder'
		)
		ORDER BY length(name) -- this is to make sure 'postgis' is first !
	LOOP --{
		IF rec.installed_version IS NULL THEN
			-- If the support installed by available extension
			-- is found unpackaged, we package it
			IF
				 -- PostGIS is always available (this function is part of it)
				 rec.name = 'postgis'

				 -- PostGIS raster is available if type 'raster' exists
				 OR ( rec.name = 'postgis_raster' AND EXISTS (
							SELECT 1 FROM pg_catalog.pg_type
							WHERE typname = 'raster' ) )

				 -- PostGIS SFCGAL is availble if
				 -- 'postgis_sfcgal_version' function exists
				 OR ( rec.name = 'postgis_sfcgal' AND EXISTS (
							SELECT 1 FROM pg_catalog.pg_proc
							WHERE proname = 'postgis_sfcgal_version' ) )

				 -- PostGIS Topology is available if
				 -- 'topology.topology' table exists
				 -- NOTE: watch out for https://trac.osgeo.org/postgis/ticket/2503
				 OR ( rec.name = 'postgis_topology' AND EXISTS (
							SELECT 1 FROM pg_catalog.pg_class c
							JOIN pg_catalog.pg_namespace n ON (c.relnamespace = n.oid )
							WHERE n.nspname = 'topology' AND c.relname = 'topology') )

				 OR ( rec.name = 'postgis_tiger_geocoder' AND EXISTS (
							SELECT 1 FROM pg_catalog.pg_class c
							JOIN pg_catalog.pg_namespace n ON (c.relnamespace = n.oid )
							WHERE n.nspname = 'tiger' AND c.relname = 'geocode_settings') )
			THEN
				-- Force install in same schema as postgis
				SELECT INTO var_schema n.nspname
				  FROM pg_catalog.pg_namespace n, pg_catalog.pg_proc p
				  WHERE p.proname = 'postgis_full_version'
				    AND n.oid = p.pronamespace
				  LIMIT 1;
				IF rec.name NOT IN('postgis_topology', 'postgis_tiger_geocoder')
				THEN
					sql := pg_catalog.format(
					          'CREATE EXTENSION %1$I SCHEMA %2$I VERSION unpackaged;'
					          'ALTER EXTENSION %1$I UPDATE TO %3$I',
					          rec.name, var_schema, rec.default_version);
				ELSE
					sql := pg_catalog.format(
					         'CREATE EXTENSION %1$I VERSION unpackaged;'
					         'ALTER EXTENSION %1$I UPDATE TO %2$I',
					         rec.name, rec.default_version);
				END IF;
				RAISE NOTICE 'Packaging extension %', rec.name;
				RAISE DEBUG '%', sql;
				EXECUTE sql;
			ELSE
				RAISE NOTICE 'Extension % is not available or not packagable for some reason', rec.name;
			END IF;
		ELSIF rec.default_version != rec.installed_version
		THEN
			sql = 'ALTER EXTENSION ' || rec.name || ' UPDATE TO ' ||
						pg_catalog.quote_ident(rec.default_version)   || ';';
			RAISE NOTICE 'Updating extension % from % to %',
				rec.name, rec.installed_version, rec.default_version;
			RAISE DEBUG '%', sql;
			EXECUTE sql;
		ELSIF (rec.default_version = rec.installed_version AND rec.installed_version ILIKE '%dev') OR
			(public._postgis_pgsql_version() != public._postgis_scripts_pgsql_version())
		THEN
			-- we need to upgrade to next and back
			RAISE NOTICE 'Updating extension % %',
				rec.name, rec.installed_version;
			sql = 'ALTER EXTENSION ' || rec.name || ' UPDATE TO ' ||
						pg_catalog.quote_ident(rec.default_version || 'next')   || ';';
			RAISE DEBUG '%', sql;
			EXECUTE sql;
			sql = 'ALTER EXTENSION ' || rec.name || ' UPDATE TO ' ||
						pg_catalog.quote_ident(rec.default_version)   || ';';
			RAISE DEBUG '%', sql;
			EXECUTE sql;
		END IF;

	END LOOP; --}

	RETURN 'Upgrade completed, run SELECT postgis_full_version(); for details';

END
$function$
;

COMMENT ON FUNCTION public.postgis_extensions_upgrade() IS 'Packages and upgrades postgis extensions (e.g. postgis_raster,postgis_topology, postgis_sfcgal) to latest available version.';

-- DROP FUNCTION public.postgis_full_version();

CREATE OR REPLACE FUNCTION public.postgis_full_version()
 RETURNS text
 LANGUAGE plpgsql
 IMMUTABLE
AS $function$
DECLARE
	libver pg_catalog.text;
	librev pg_catalog.text;
	projver pg_catalog.text;
	geosver pg_catalog.text;
	sfcgalver pg_catalog.text;
	gdalver pg_catalog.text := NULL;
	libxmlver pg_catalog.text;
	liblwgeomver pg_catalog.text;
	dbproc pg_catalog.text;
	relproc pg_catalog.text;
	fullver pg_catalog.text;
	rast_lib_ver pg_catalog.text := NULL;
	rast_scr_ver pg_catalog.text := NULL;
	topo_scr_ver pg_catalog.text := NULL;
	json_lib_ver pg_catalog.text;
	protobuf_lib_ver pg_catalog.text;
	wagyu_lib_ver pg_catalog.text;
	sfcgal_lib_ver pg_catalog.text;
	sfcgal_scr_ver pg_catalog.text;
	pgsql_scr_ver pg_catalog.text;
	pgsql_ver pg_catalog.text;
	core_is_extension pg_catalog.bool;
BEGIN
	SELECT public.postgis_lib_version() INTO libver;
	SELECT public.postgis_proj_version() INTO projver;
	SELECT public.postgis_geos_version() INTO geosver;
	SELECT public.postgis_libjson_version() INTO json_lib_ver;
	SELECT public.postgis_libprotobuf_version() INTO protobuf_lib_ver;
	SELECT public.postgis_wagyu_version() INTO wagyu_lib_ver;
	SELECT public._postgis_scripts_pgsql_version() INTO pgsql_scr_ver;
	SELECT public._postgis_pgsql_version() INTO pgsql_ver;
	BEGIN
		SELECT public.postgis_gdal_version() INTO gdalver;
	EXCEPTION
		WHEN undefined_function THEN
			RAISE DEBUG 'Function postgis_gdal_version() not found.  Is raster support enabled and rtpostgis.sql installed?';
	END;
	BEGIN
		SELECT public.postgis_sfcgal_version() INTO sfcgalver;
		BEGIN
			SELECT public.postgis_sfcgal_scripts_installed() INTO sfcgal_scr_ver;
		EXCEPTION
			WHEN undefined_function THEN
				sfcgal_scr_ver := 'missing';
		END;
	EXCEPTION
		WHEN undefined_function THEN
			RAISE DEBUG 'Function postgis_sfcgal_scripts_installed() not found. Is sfcgal support enabled and sfcgal.sql installed?';
	END;
	SELECT public.postgis_liblwgeom_version() INTO liblwgeomver;
	SELECT public.postgis_libxml_version() INTO libxmlver;
	SELECT public.postgis_scripts_installed() INTO dbproc;
	SELECT public.postgis_scripts_released() INTO relproc;
	SELECT public.postgis_lib_revision() INTO librev;
	BEGIN
		SELECT topology.postgis_topology_scripts_installed() INTO topo_scr_ver;
	EXCEPTION
		WHEN undefined_function OR invalid_schema_name THEN
			RAISE DEBUG 'Function postgis_topology_scripts_installed() not found. Is topology support enabled and topology.sql installed?';
		WHEN insufficient_privilege THEN
			RAISE NOTICE 'Topology support cannot be inspected. Is current user granted USAGE on schema "topology" ?';
		WHEN OTHERS THEN
			RAISE NOTICE 'Function postgis_topology_scripts_installed() could not be called: % (%)', SQLERRM, SQLSTATE;
	END;

	BEGIN
		SELECT public.postgis_raster_scripts_installed() INTO rast_scr_ver;
	EXCEPTION
		WHEN undefined_function THEN
			RAISE DEBUG 'Function postgis_raster_scripts_installed() not found. Is raster support enabled and rtpostgis.sql installed?';
		WHEN OTHERS THEN
			RAISE NOTICE 'Function postgis_raster_scripts_installed() could not be called: % (%)', SQLERRM, SQLSTATE;
	END;

	BEGIN
		SELECT public.postgis_raster_lib_version() INTO rast_lib_ver;
	EXCEPTION
		WHEN undefined_function THEN
			RAISE DEBUG 'Function postgis_raster_lib_version() not found. Is raster support enabled and rtpostgis.sql installed?';
		WHEN OTHERS THEN
			RAISE NOTICE 'Function postgis_raster_lib_version() could not be called: % (%)', SQLERRM, SQLSTATE;
	END;

	fullver = 'POSTGIS="' || libver;

	IF  librev IS NOT NULL THEN
		fullver = fullver || ' ' || librev;
	END IF;

	fullver = fullver || '"';

	IF EXISTS (
		SELECT * FROM pg_catalog.pg_extension
		WHERE extname = 'postgis')
	THEN
			fullver = fullver || ' [EXTENSION]';
			core_is_extension := true;
	ELSE
			core_is_extension := false;
	END IF;

	IF liblwgeomver != relproc THEN
		fullver = fullver || ' (liblwgeom version mismatch: "' || liblwgeomver || '")';
	END IF;

	fullver = fullver || ' PGSQL="' || pgsql_scr_ver || '"';
	IF pgsql_scr_ver != pgsql_ver THEN
		fullver = fullver || ' (procs need upgrade for use with PostgreSQL "' || pgsql_ver || '")';
	END IF;

	IF  geosver IS NOT NULL THEN
		fullver = fullver || ' GEOS="' || geosver || '"';
	END IF;

	IF  sfcgalver IS NOT NULL THEN
		fullver = fullver || ' SFCGAL="' || sfcgalver || '"';
	END IF;

	IF  projver IS NOT NULL THEN
		fullver = fullver || ' PROJ="' || projver || '"';
	END IF;

	IF  gdalver IS NOT NULL THEN
		fullver = fullver || ' GDAL="' || gdalver || '"';
	END IF;

	IF  libxmlver IS NOT NULL THEN
		fullver = fullver || ' LIBXML="' || libxmlver || '"';
	END IF;

	IF json_lib_ver IS NOT NULL THEN
		fullver = fullver || ' LIBJSON="' || json_lib_ver || '"';
	END IF;

	IF protobuf_lib_ver IS NOT NULL THEN
		fullver = fullver || ' LIBPROTOBUF="' || protobuf_lib_ver || '"';
	END IF;

	IF wagyu_lib_ver IS NOT NULL THEN
		fullver = fullver || ' WAGYU="' || wagyu_lib_ver || '"';
	END IF;

	IF dbproc != relproc THEN
		fullver = fullver || ' (core procs from "' || dbproc || '" need upgrade)';
	END IF;

	IF topo_scr_ver IS NOT NULL THEN
		fullver = fullver || ' TOPOLOGY';
		IF topo_scr_ver != relproc THEN
			fullver = fullver || ' (topology procs from "' || topo_scr_ver || '" need upgrade)';
		END IF;
		IF core_is_extension AND NOT EXISTS (
			SELECT * FROM pg_catalog.pg_extension
			WHERE extname = 'postgis_topology')
		THEN
				fullver = fullver || ' [UNPACKAGED!]';
		END IF;
	END IF;

	IF rast_lib_ver IS NOT NULL THEN
		fullver = fullver || ' RASTER';
		IF rast_lib_ver != relproc THEN
			fullver = fullver || ' (raster lib from "' || rast_lib_ver || '" need upgrade)';
		END IF;
		IF core_is_extension AND NOT EXISTS (
			SELECT * FROM pg_catalog.pg_extension
			WHERE extname = 'postgis_raster')
		THEN
				fullver = fullver || ' [UNPACKAGED!]';
		END IF;
	END IF;

	IF rast_scr_ver IS NOT NULL AND rast_scr_ver != relproc THEN
		fullver = fullver || ' (raster procs from "' || rast_scr_ver || '" need upgrade)';
	END IF;

	IF sfcgal_scr_ver IS NOT NULL AND sfcgal_scr_ver != relproc THEN
		fullver = fullver || ' (sfcgal procs from "' || sfcgal_scr_ver || '" need upgrade)';
	END IF;

	-- Check for the presence of deprecated functions
	IF EXISTS ( SELECT oid FROM pg_catalog.pg_proc WHERE proname LIKE '%_deprecated_by_postgis_%' )
	THEN
		fullver = fullver || ' (deprecated functions exist, upgrade is not complete)';
	END IF;

	RETURN fullver;
END
$function$
;

COMMENT ON FUNCTION public.postgis_full_version() IS 'Reports full postgis version and build configuration infos.';

-- DROP FUNCTION public.postgis_gdal_version();

CREATE OR REPLACE FUNCTION public.postgis_gdal_version()
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_gdal_version$function$
;

COMMENT ON FUNCTION public.postgis_gdal_version() IS 'Reports the version of the GDAL library in use by PostGIS.';

-- DROP FUNCTION public.postgis_geos_noop(geometry);

CREATE OR REPLACE FUNCTION public.postgis_geos_noop(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$GEOSnoop$function$
;

-- DROP FUNCTION public.postgis_geos_version();

CREATE OR REPLACE FUNCTION public.postgis_geos_version()
 RETURNS text
 LANGUAGE c
 IMMUTABLE
AS '$libdir/postgis-3', $function$postgis_geos_version$function$
;

COMMENT ON FUNCTION public.postgis_geos_version() IS 'Returns the version number of the GEOS library.';

-- DROP FUNCTION public.postgis_getbbox(geometry);

CREATE OR REPLACE FUNCTION public.postgis_getbbox(geometry)
 RETURNS box2d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_to_BOX2DF$function$
;

-- DROP FUNCTION public.postgis_hasbbox(geometry);

CREATE OR REPLACE FUNCTION public.postgis_hasbbox(geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_hasBBOX$function$
;

COMMENT ON FUNCTION public.postgis_hasbbox(geometry) IS 'args: geomA - Returns TRUE if the bbox of this geometry is cached, FALSE otherwise.';

-- DROP FUNCTION public.postgis_index_supportfn(internal);

CREATE OR REPLACE FUNCTION public.postgis_index_supportfn(internal)
 RETURNS internal
 LANGUAGE c
AS '$libdir/postgis-3', $function$postgis_index_supportfn$function$
;

-- DROP FUNCTION public.postgis_lib_build_date();

CREATE OR REPLACE FUNCTION public.postgis_lib_build_date()
 RETURNS text
 LANGUAGE c
 IMMUTABLE
AS '$libdir/postgis-3', $function$postgis_lib_build_date$function$
;

COMMENT ON FUNCTION public.postgis_lib_build_date() IS 'Returns build date of the PostGIS library.';

-- DROP FUNCTION public.postgis_lib_revision();

CREATE OR REPLACE FUNCTION public.postgis_lib_revision()
 RETURNS text
 LANGUAGE c
 IMMUTABLE
AS '$libdir/postgis-3', $function$postgis_lib_revision$function$
;

-- DROP FUNCTION public.postgis_lib_version();

CREATE OR REPLACE FUNCTION public.postgis_lib_version()
 RETURNS text
 LANGUAGE c
 IMMUTABLE
AS '$libdir/postgis-3', $function$postgis_lib_version$function$
;

COMMENT ON FUNCTION public.postgis_lib_version() IS 'Returns the version number of the PostGIS library.';

-- DROP FUNCTION public.postgis_libjson_version();

CREATE OR REPLACE FUNCTION public.postgis_libjson_version()
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$postgis_libjson_version$function$
;

-- DROP FUNCTION public.postgis_liblwgeom_version();

CREATE OR REPLACE FUNCTION public.postgis_liblwgeom_version()
 RETURNS text
 LANGUAGE c
 IMMUTABLE
AS '$libdir/postgis-3', $function$postgis_liblwgeom_version$function$
;

COMMENT ON FUNCTION public.postgis_liblwgeom_version() IS 'Returns the version number of the liblwgeom library. This should match the version of PostGIS.';

-- DROP FUNCTION public.postgis_libprotobuf_version();

CREATE OR REPLACE FUNCTION public.postgis_libprotobuf_version()
 RETURNS text
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/postgis-3', $function$postgis_libprotobuf_version$function$
;

-- DROP FUNCTION public.postgis_libxml_version();

CREATE OR REPLACE FUNCTION public.postgis_libxml_version()
 RETURNS text
 LANGUAGE c
 IMMUTABLE
AS '$libdir/postgis-3', $function$postgis_libxml_version$function$
;

COMMENT ON FUNCTION public.postgis_libxml_version() IS 'Returns the version number of the libxml2 library.';

-- DROP FUNCTION public.postgis_noop(raster);

CREATE OR REPLACE FUNCTION public.postgis_noop(raster)
 RETURNS geometry
 LANGUAGE c
 STABLE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_noop$function$
;

-- DROP FUNCTION public.postgis_noop(geometry);

CREATE OR REPLACE FUNCTION public.postgis_noop(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_noop$function$
;

-- DROP FUNCTION public.postgis_proj_version();

CREATE OR REPLACE FUNCTION public.postgis_proj_version()
 RETURNS text
 LANGUAGE c
 IMMUTABLE
AS '$libdir/postgis-3', $function$postgis_proj_version$function$
;

COMMENT ON FUNCTION public.postgis_proj_version() IS 'Returns the version number of the PROJ4 library.';

-- DROP FUNCTION public.postgis_raster_lib_build_date();

CREATE OR REPLACE FUNCTION public.postgis_raster_lib_build_date()
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_lib_build_date$function$
;

COMMENT ON FUNCTION public.postgis_raster_lib_build_date() IS 'Reports full raster library build date.';

-- DROP FUNCTION public.postgis_raster_lib_version();

CREATE OR REPLACE FUNCTION public.postgis_raster_lib_version()
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_lib_version$function$
;

COMMENT ON FUNCTION public.postgis_raster_lib_version() IS 'Reports full raster version and build configuration infos.';

-- DROP FUNCTION public.postgis_raster_scripts_installed();

CREATE OR REPLACE FUNCTION public.postgis_raster_scripts_installed()
 RETURNS text
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT trim('3.1.7'::text || $rev$ aafe1ff $rev$) AS version $function$
;

-- DROP FUNCTION public.postgis_scripts_build_date();

CREATE OR REPLACE FUNCTION public.postgis_scripts_build_date()
 RETURNS text
 LANGUAGE sql
 IMMUTABLE
AS $function$SELECT '2022-12-19 20:00:48'::text AS version$function$
;

COMMENT ON FUNCTION public.postgis_scripts_build_date() IS 'Returns build date of the PostGIS scripts.';

-- DROP FUNCTION public.postgis_scripts_installed();

CREATE OR REPLACE FUNCTION public.postgis_scripts_installed()
 RETURNS text
 LANGUAGE sql
 IMMUTABLE
AS $function$ SELECT trim('3.1.7'::text || $rev$ aafe1ff $rev$) AS version $function$
;

COMMENT ON FUNCTION public.postgis_scripts_installed() IS 'Returns version of the postgis scripts installed in this database.';

-- DROP FUNCTION public.postgis_scripts_released();

CREATE OR REPLACE FUNCTION public.postgis_scripts_released()
 RETURNS text
 LANGUAGE c
 IMMUTABLE
AS '$libdir/postgis-3', $function$postgis_scripts_released$function$
;

COMMENT ON FUNCTION public.postgis_scripts_released() IS 'Returns the version number of the postgis.sql script released with the installed postgis lib.';

-- DROP FUNCTION public.postgis_svn_version();

CREATE OR REPLACE FUNCTION public.postgis_svn_version()
 RETURNS text
 LANGUAGE sql
 IMMUTABLE
AS $function$
	SELECT public._postgis_deprecate(
		'postgis_svn_version', 'postgis_lib_revision', '3.1.0');
	SELECT public.postgis_lib_revision();
$function$
;

-- DROP FUNCTION public.postgis_transform_geometry(geometry, text, text, int4);

CREATE OR REPLACE FUNCTION public.postgis_transform_geometry(geom geometry, text, text, integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$transform_geom$function$
;

-- DROP FUNCTION public.postgis_type_name(varchar, int4, bool);

CREATE OR REPLACE FUNCTION public.postgis_type_name(geomname character varying, coord_dimension integer, use_new_name boolean DEFAULT true)
 RETURNS character varying
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS $function$
	SELECT CASE WHEN $3 THEN new_name ELSE old_name END As geomname
	FROM
	( VALUES
			('GEOMETRY', 'Geometry', 2),
			('GEOMETRY', 'GeometryZ', 3),
			('GEOMETRYM', 'GeometryM', 3),
			('GEOMETRY', 'GeometryZM', 4),

			('GEOMETRYCOLLECTION', 'GeometryCollection', 2),
			('GEOMETRYCOLLECTION', 'GeometryCollectionZ', 3),
			('GEOMETRYCOLLECTIONM', 'GeometryCollectionM', 3),
			('GEOMETRYCOLLECTION', 'GeometryCollectionZM', 4),

			('POINT', 'Point', 2),
			('POINT', 'PointZ', 3),
			('POINTM','PointM', 3),
			('POINT', 'PointZM', 4),

			('MULTIPOINT','MultiPoint', 2),
			('MULTIPOINT','MultiPointZ', 3),
			('MULTIPOINTM','MultiPointM', 3),
			('MULTIPOINT','MultiPointZM', 4),

			('POLYGON', 'Polygon', 2),
			('POLYGON', 'PolygonZ', 3),
			('POLYGONM', 'PolygonM', 3),
			('POLYGON', 'PolygonZM', 4),

			('MULTIPOLYGON', 'MultiPolygon', 2),
			('MULTIPOLYGON', 'MultiPolygonZ', 3),
			('MULTIPOLYGONM', 'MultiPolygonM', 3),
			('MULTIPOLYGON', 'MultiPolygonZM', 4),

			('MULTILINESTRING', 'MultiLineString', 2),
			('MULTILINESTRING', 'MultiLineStringZ', 3),
			('MULTILINESTRINGM', 'MultiLineStringM', 3),
			('MULTILINESTRING', 'MultiLineStringZM', 4),

			('LINESTRING', 'LineString', 2),
			('LINESTRING', 'LineStringZ', 3),
			('LINESTRINGM', 'LineStringM', 3),
			('LINESTRING', 'LineStringZM', 4),

			('CIRCULARSTRING', 'CircularString', 2),
			('CIRCULARSTRING', 'CircularStringZ', 3),
			('CIRCULARSTRINGM', 'CircularStringM' ,3),
			('CIRCULARSTRING', 'CircularStringZM', 4),

			('COMPOUNDCURVE', 'CompoundCurve', 2),
			('COMPOUNDCURVE', 'CompoundCurveZ', 3),
			('COMPOUNDCURVEM', 'CompoundCurveM', 3),
			('COMPOUNDCURVE', 'CompoundCurveZM', 4),

			('CURVEPOLYGON', 'CurvePolygon', 2),
			('CURVEPOLYGON', 'CurvePolygonZ', 3),
			('CURVEPOLYGONM', 'CurvePolygonM', 3),
			('CURVEPOLYGON', 'CurvePolygonZM', 4),

			('MULTICURVE', 'MultiCurve', 2),
			('MULTICURVE', 'MultiCurveZ', 3),
			('MULTICURVEM', 'MultiCurveM', 3),
			('MULTICURVE', 'MultiCurveZM', 4),

			('MULTISURFACE', 'MultiSurface', 2),
			('MULTISURFACE', 'MultiSurfaceZ', 3),
			('MULTISURFACEM', 'MultiSurfaceM', 3),
			('MULTISURFACE', 'MultiSurfaceZM', 4),

			('POLYHEDRALSURFACE', 'PolyhedralSurface', 2),
			('POLYHEDRALSURFACE', 'PolyhedralSurfaceZ', 3),
			('POLYHEDRALSURFACEM', 'PolyhedralSurfaceM', 3),
			('POLYHEDRALSURFACE', 'PolyhedralSurfaceZM', 4),

			('TRIANGLE', 'Triangle', 2),
			('TRIANGLE', 'TriangleZ', 3),
			('TRIANGLEM', 'TriangleM', 3),
			('TRIANGLE', 'TriangleZM', 4),

			('TIN', 'Tin', 2),
			('TIN', 'TinZ', 3),
			('TINM', 'TinM', 3),
			('TIN', 'TinZM', 4) )
			 As g(old_name, new_name, coord_dimension)
	WHERE (upper(old_name) = upper($1) OR upper(new_name) = upper($1))
		AND coord_dimension = $2;
$function$
;

-- DROP FUNCTION public.postgis_typmod_dims(int4);

CREATE OR REPLACE FUNCTION public.postgis_typmod_dims(integer)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$postgis_typmod_dims$function$
;

-- DROP FUNCTION public.postgis_typmod_srid(int4);

CREATE OR REPLACE FUNCTION public.postgis_typmod_srid(integer)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$postgis_typmod_srid$function$
;

-- DROP FUNCTION public.postgis_typmod_type(int4);

CREATE OR REPLACE FUNCTION public.postgis_typmod_type(integer)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$postgis_typmod_type$function$
;

-- DROP FUNCTION public.postgis_version();

CREATE OR REPLACE FUNCTION public.postgis_version()
 RETURNS text
 LANGUAGE c
 IMMUTABLE
AS '$libdir/postgis-3', $function$postgis_version$function$
;

COMMENT ON FUNCTION public.postgis_version() IS 'Returns PostGIS version number and compile-time options.';

-- DROP FUNCTION public.postgis_wagyu_version();

CREATE OR REPLACE FUNCTION public.postgis_wagyu_version()
 RETURNS text
 LANGUAGE c
 IMMUTABLE
AS '$libdir/postgis-3', $function$postgis_wagyu_version$function$
;

COMMENT ON FUNCTION public.postgis_wagyu_version() IS 'Returns the version number of the internal Wagyu library.';

-- DROP FUNCTION public.raster_above(raster, raster);

CREATE OR REPLACE FUNCTION public.raster_above(raster, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry |>> $2::public.geometry$function$
;

-- DROP FUNCTION public.raster_below(raster, raster);

CREATE OR REPLACE FUNCTION public.raster_below(raster, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry <<| $2::public.geometry$function$
;

-- DROP FUNCTION public.raster_contain(raster, raster);

CREATE OR REPLACE FUNCTION public.raster_contain(raster, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry ~ $2::public.geometry$function$
;

-- DROP FUNCTION public.raster_contained(raster, raster);

CREATE OR REPLACE FUNCTION public.raster_contained(raster, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry OPERATOR(public.@) $2::public.geometry$function$
;

-- DROP FUNCTION public.raster_contained_by_geometry(raster, geometry);

CREATE OR REPLACE FUNCTION public.raster_contained_by_geometry(raster, geometry)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry OPERATOR(public.@) $2$function$
;

-- DROP FUNCTION public.raster_eq(raster, raster);

CREATE OR REPLACE FUNCTION public.raster_eq(raster, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.raster_hash($1) = public.raster_hash($2) $function$
;

-- DROP FUNCTION public.raster_geometry_contain(raster, geometry);

CREATE OR REPLACE FUNCTION public.raster_geometry_contain(raster, geometry)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry ~ $2$function$
;

-- DROP FUNCTION public.raster_geometry_overlap(raster, geometry);

CREATE OR REPLACE FUNCTION public.raster_geometry_overlap(raster, geometry)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry OPERATOR(public.&&) $2$function$
;

-- DROP FUNCTION public.raster_hash(raster);

CREATE OR REPLACE FUNCTION public.raster_hash(raster)
 RETURNS integer
 LANGUAGE internal
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$hashvarlena$function$
;

-- DROP FUNCTION public.raster_in(cstring);

CREATE OR REPLACE FUNCTION public.raster_in(cstring)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_in$function$
;

-- DROP FUNCTION public.raster_left(raster, raster);

CREATE OR REPLACE FUNCTION public.raster_left(raster, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry << $2::public.geometry$function$
;

-- DROP FUNCTION public.raster_out(raster);

CREATE OR REPLACE FUNCTION public.raster_out(raster)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_out$function$
;

-- DROP FUNCTION public.raster_overabove(raster, raster);

CREATE OR REPLACE FUNCTION public.raster_overabove(raster, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry |&> $2::public.geometry$function$
;

-- DROP FUNCTION public.raster_overbelow(raster, raster);

CREATE OR REPLACE FUNCTION public.raster_overbelow(raster, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry &<| $2::public.geometry$function$
;

-- DROP FUNCTION public.raster_overlap(raster, raster);

CREATE OR REPLACE FUNCTION public.raster_overlap(raster, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry OPERATOR(public.&&) $2::public.geometry$function$
;

-- DROP FUNCTION public.raster_overleft(raster, raster);

CREATE OR REPLACE FUNCTION public.raster_overleft(raster, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry &< $2::public.geometry$function$
;

-- DROP FUNCTION public.raster_overright(raster, raster);

CREATE OR REPLACE FUNCTION public.raster_overright(raster, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry &> $2::public.geometry$function$
;

-- DROP FUNCTION public.raster_right(raster, raster);

CREATE OR REPLACE FUNCTION public.raster_right(raster, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry >> $2::public.geometry$function$
;

-- DROP FUNCTION public.raster_same(raster, raster);

CREATE OR REPLACE FUNCTION public.raster_same(raster, raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select $1::public.geometry ~= $2::public.geometry$function$
;

-- DROP FUNCTION public.set_limit(float4);

CREATE OR REPLACE FUNCTION public.set_limit(real)
 RETURNS real
 LANGUAGE c
 STRICT
AS '$libdir/pg_trgm', $function$set_limit$function$
;

-- DROP FUNCTION public.show_limit();

CREATE OR REPLACE FUNCTION public.show_limit()
 RETURNS real
 LANGUAGE c
 STABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$show_limit$function$
;

-- DROP FUNCTION public.show_trgm(text);

CREATE OR REPLACE FUNCTION public.show_trgm(text)
 RETURNS text[]
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$show_trgm$function$
;

-- DROP FUNCTION public.similarity(text, text);

CREATE OR REPLACE FUNCTION public.similarity(text, text)
 RETURNS real
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$similarity$function$
;

-- DROP FUNCTION public.similarity_dist(text, text);

CREATE OR REPLACE FUNCTION public.similarity_dist(text, text)
 RETURNS real
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$similarity_dist$function$
;

-- DROP FUNCTION public.similarity_op(text, text);

CREATE OR REPLACE FUNCTION public.similarity_op(text, text)
 RETURNS boolean
 LANGUAGE c
 STABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$similarity_op$function$
;

-- DROP FUNCTION public.soundex(text);

CREATE OR REPLACE FUNCTION public.soundex(text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/fuzzystrmatch', $function$soundex$function$
;

-- DROP FUNCTION public.spheroid_in(cstring);

CREATE OR REPLACE FUNCTION public.spheroid_in(cstring)
 RETURNS spheroid
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$ellipsoid_in$function$
;

-- DROP FUNCTION public.spheroid_out(spheroid);

CREATE OR REPLACE FUNCTION public.spheroid_out(spheroid)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$ellipsoid_out$function$
;

-- DROP FUNCTION public.st_3dclosestpoint(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_3dclosestpoint(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_closestpoint3d$function$
;

COMMENT ON FUNCTION public.st_3dclosestpoint(geometry, geometry) IS 'args: g1, g2 - Returns the 3D point on g1 that is closest to g2. This is the first point of the 3D shortest line.';

-- DROP FUNCTION public.st_3ddfullywithin(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_3ddfullywithin(geom1 geometry, geom2 geometry, double precision)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$LWGEOM_dfullywithin3d$function$
;

-- DROP FUNCTION public.st_3ddistance(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_3ddistance(geom1 geometry, geom2 geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_3DDistance$function$
;

COMMENT ON FUNCTION public.st_3ddistance(geometry, geometry) IS 'args: g1, g2 - Returns the 3D cartesian minimum distance (based on spatial ref) between two geometries in projected units.';

-- DROP FUNCTION public.st_3ddwithin(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_3ddwithin(geom1 geometry, geom2 geometry, double precision)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$LWGEOM_dwithin3d$function$
;

-- DROP AGGREGATE public.st_3dextent(geometry);

CREATE OR REPLACE AGGREGATE public.st_3dextent(public.geometry) (
	SFUNC = public.st_combinebbox,
	STYPE = box3d
);

COMMENT ON AGGREGATE public.st_3dextent(geometry) IS 'args: geomfield - an aggregate function that returns the 3D bounding box that bounds rows of geometries.';

-- DROP FUNCTION public.st_3dintersects(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_3dintersects(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$ST_3DIntersects$function$
;

-- DROP FUNCTION public.st_3dlength(geometry);

CREATE OR REPLACE FUNCTION public.st_3dlength(geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_length_linestring$function$
;

COMMENT ON FUNCTION public.st_3dlength(geometry) IS 'args: a_3dlinestring - Returns the 3D length of a linear geometry.';

-- DROP FUNCTION public.st_3dlineinterpolatepoint(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_3dlineinterpolatepoint(geometry, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_3DLineInterpolatePoint$function$
;

COMMENT ON FUNCTION public.st_3dlineinterpolatepoint(geometry, float8) IS 'args: a_linestring, a_fraction - Returns a point interpolated along a line in 3D. Second argument is a float8 between 0 and 1 representing fraction of total length of linestring the point has to be located.';

-- DROP FUNCTION public.st_3dlongestline(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_3dlongestline(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_longestline3d$function$
;

COMMENT ON FUNCTION public.st_3dlongestline(geometry, geometry) IS 'args: g1, g2 - Returns the 3D longest line between two geometries';

-- DROP FUNCTION public.st_3dmakebox(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_3dmakebox(geom1 geometry, geom2 geometry)
 RETURNS box3d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$BOX3D_construct$function$
;

COMMENT ON FUNCTION public.st_3dmakebox(geometry, geometry) IS 'args: point3DLowLeftBottom, point3DUpRightTop - Creates a BOX3D defined by two 3D point geometries.';

-- DROP FUNCTION public.st_3dmaxdistance(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_3dmaxdistance(geom1 geometry, geom2 geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_maxdistance3d$function$
;

COMMENT ON FUNCTION public.st_3dmaxdistance(geometry, geometry) IS 'args: g1, g2 - Returns the 3D cartesian maximum distance (based on spatial ref) between two geometries in projected units.';

-- DROP FUNCTION public.st_3dperimeter(geometry);

CREATE OR REPLACE FUNCTION public.st_3dperimeter(geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_perimeter_poly$function$
;

COMMENT ON FUNCTION public.st_3dperimeter(geometry) IS 'args: geomA - Returns the 3D perimeter of a polygonal geometry.';

-- DROP FUNCTION public.st_3dshortestline(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_3dshortestline(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_shortestline3d$function$
;

COMMENT ON FUNCTION public.st_3dshortestline(geometry, geometry) IS 'args: g1, g2 - Returns the 3D shortest line between two geometries';

-- DROP FUNCTION public.st_addband(raster, _addbandarg);

CREATE OR REPLACE FUNCTION public.st_addband(rast raster, addbandargset addbandarg[])
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_addBand$function$
;

COMMENT ON FUNCTION public.st_addband(raster, _addbandarg) IS 'args: rast, addbandargset - Returns a raster with the new band(s) of given type added with given initial value in the given index location. If no index is specified, the band is added to the end.';

-- DROP FUNCTION public.st_addband(raster, int4, text, float8, float8);

CREATE OR REPLACE FUNCTION public.st_addband(rast raster, index integer, pixeltype text, initialvalue double precision DEFAULT '0'::numeric, nodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT  public.ST_addband($1, ARRAY[ROW($2, $3, $4, $5)]::addbandarg[]) $function$
;

COMMENT ON FUNCTION public.st_addband(raster, int4, text, float8, float8) IS 'args: rast, index, pixeltype, initialvalue=0, nodataval=NULL - Returns a raster with the new band(s) of given type added with given initial value in the given index location. If no index is specified, the band is added to the end.';

-- DROP FUNCTION public.st_addband(raster, text, _int4, int4, float8);

CREATE OR REPLACE FUNCTION public.st_addband(rast raster, outdbfile text, outdbindex integer[], index integer DEFAULT NULL::integer, nodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_AddBand($1, $4, $2, $3, $5) $function$
;

COMMENT ON FUNCTION public.st_addband(raster, text, _int4, int4, float8) IS 'args: rast, outdbfile, outdbindex, index=at_end, nodataval=NULL - Returns a raster with the new band(s) of given type added with given initial value in the given index location. If no index is specified, the band is added to the end.';

-- DROP FUNCTION public.st_addband(raster, int4, text, _int4, float8);

CREATE OR REPLACE FUNCTION public.st_addband(rast raster, index integer, outdbfile text, outdbindex integer[], nodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_addBandOutDB$function$
;

COMMENT ON FUNCTION public.st_addband(raster, int4, text, _int4, float8) IS 'args: rast, index, outdbfile, outdbindex, nodataval=NULL - Returns a raster with the new band(s) of given type added with given initial value in the given index location. If no index is specified, the band is added to the end.';

-- DROP FUNCTION public.st_addband(raster, _raster, int4, int4);

CREATE OR REPLACE FUNCTION public.st_addband(torast raster, fromrasts raster[], fromband integer DEFAULT 1, torastindex integer DEFAULT NULL::integer)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_addBandRasterArray$function$
;

COMMENT ON FUNCTION public.st_addband(raster, _raster, int4, int4) IS 'args: torast, fromrasts, fromband=1, torastindex=at_end - Returns a raster with the new band(s) of given type added with given initial value in the given index location. If no index is specified, the band is added to the end.';

-- DROP FUNCTION public.st_addband(raster, raster, int4, int4);

CREATE OR REPLACE FUNCTION public.st_addband(torast raster, fromrast raster, fromband integer DEFAULT 1, torastindex integer DEFAULT NULL::integer)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_copyBand$function$
;

COMMENT ON FUNCTION public.st_addband(raster, raster, int4, int4) IS 'args: torast, fromrast, fromband=1, torastindex=at_end - Returns a raster with the new band(s) of given type added with given initial value in the given index location. If no index is specified, the band is added to the end.';

-- DROP FUNCTION public.st_addband(raster, text, float8, float8);

CREATE OR REPLACE FUNCTION public.st_addband(rast raster, pixeltype text, initialvalue double precision DEFAULT '0'::numeric, nodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT  public.ST_addband($1, ARRAY[ROW(NULL, $2, $3, $4)]::addbandarg[]) $function$
;

COMMENT ON FUNCTION public.st_addband(raster, text, float8, float8) IS 'args: rast, pixeltype, initialvalue=0, nodataval=NULL - Returns a raster with the new band(s) of given type added with given initial value in the given index location. If no index is specified, the band is added to the end.';

-- DROP FUNCTION public.st_addmeasure(geometry, float8, float8);

CREATE OR REPLACE FUNCTION public.st_addmeasure(geometry, double precision, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_AddMeasure$function$
;

COMMENT ON FUNCTION public.st_addmeasure(geometry, float8, float8) IS 'args: geom_mline, measure_start, measure_end - Return a derived geometry with measure elements linearly interpolated between the start and end points.';

-- DROP FUNCTION public.st_addpoint(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_addpoint(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_addpoint$function$
;

COMMENT ON FUNCTION public.st_addpoint(geometry, geometry) IS 'args: linestring, point - Add a point to a LineString.';

-- DROP FUNCTION public.st_addpoint(geometry, geometry, int4);

CREATE OR REPLACE FUNCTION public.st_addpoint(geom1 geometry, geom2 geometry, integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_addpoint$function$
;

COMMENT ON FUNCTION public.st_addpoint(geometry, geometry, int4) IS 'args: linestring, point, position - Add a point to a LineString.';

-- DROP FUNCTION public.st_affine(geometry, float8, float8, float8, float8, float8, float8, float8, float8, float8, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_affine$function$
;

COMMENT ON FUNCTION public.st_affine(geometry, float8, float8, float8, float8, float8, float8, float8, float8, float8, float8, float8, float8) IS 'args: geomA, a, b, c, d, e, f, g, h, i, xoff, yoff, zoff - Apply a 3D affine transformation to a geometry.';

-- DROP FUNCTION public.st_affine(geometry, float8, float8, float8, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_Affine($1,  $2, $3, 0,  $4, $5, 0,  0, 0, 1,  $6, $7, 0)$function$
;

COMMENT ON FUNCTION public.st_affine(geometry, float8, float8, float8, float8, float8, float8) IS 'args: geomA, a, b, d, e, xoff, yoff - Apply a 3D affine transformation to a geometry.';

-- DROP FUNCTION public.st_angle(geometry, geometry, geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_angle(pt1 geometry, pt2 geometry, pt3 geometry, pt4 geometry DEFAULT '0101000000000000000000F87F000000000000F87F'::geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_angle$function$
;

COMMENT ON FUNCTION public.st_angle(geometry, geometry, geometry, geometry) IS 'args: point1, point2, point3, point4 - Returns the angle between 3 points, or between 2 vectors (4 points or 2 lines).';

-- DROP FUNCTION public.st_angle(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_angle(line1 geometry, line2 geometry)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT ST_Angle(St_StartPoint($1), ST_EndPoint($1), St_StartPoint($2), ST_EndPoint($2))$function$
;

COMMENT ON FUNCTION public.st_angle(geometry, geometry) IS 'args: line1, line2 - Returns the angle between 3 points, or between 2 vectors (4 points or 2 lines).';

-- DROP FUNCTION public.st_approxcount(raster, bool, float8);

CREATE OR REPLACE FUNCTION public.st_approxcount(rast raster, exclude_nodata_value boolean, sample_percent double precision DEFAULT 0.1)
 RETURNS bigint
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_count($1, 1, $2, $3) $function$
;

-- DROP FUNCTION public.st_approxcount(raster, int4, bool, float8);

CREATE OR REPLACE FUNCTION public.st_approxcount(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, sample_percent double precision DEFAULT 0.1)
 RETURNS bigint
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_count($1, $2, $3, $4) $function$
;

-- DROP FUNCTION public.st_approxcount(raster, int4, float8);

CREATE OR REPLACE FUNCTION public.st_approxcount(rast raster, nband integer, sample_percent double precision)
 RETURNS bigint
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_count($1, $2, TRUE, $3) $function$
;

-- DROP FUNCTION public.st_approxcount(raster, float8);

CREATE OR REPLACE FUNCTION public.st_approxcount(rast raster, sample_percent double precision)
 RETURNS bigint
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_count($1, 1, TRUE, $2) $function$
;

-- DROP FUNCTION public.st_approxhistogram(in raster, in int4, in bool, in float8, in int4, in bool, out float8, out float8, out int8, out float8);

CREATE OR REPLACE FUNCTION public.st_approxhistogram(rast raster, nband integer, exclude_nodata_value boolean, sample_percent double precision, bins integer, "right" boolean, OUT min double precision, OUT max double precision, OUT count bigint, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT min, max, count, percent FROM public._ST_histogram($1, $2, $3, $4, $5, NULL, $6) $function$
;

-- DROP FUNCTION public.st_approxhistogram(in raster, in int4, in bool, in float8, in int4, in _float8, in bool, out float8, out float8, out int8, out float8);

CREATE OR REPLACE FUNCTION public.st_approxhistogram(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, sample_percent double precision DEFAULT 0.1, bins integer DEFAULT 0, width double precision[] DEFAULT NULL::double precision[], "right" boolean DEFAULT false, OUT min double precision, OUT max double precision, OUT count bigint, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT min, max, count, percent FROM public._ST_histogram($1, $2, $3, $4, $5, $6, $7) $function$
;

-- DROP FUNCTION public.st_approxhistogram(in raster, in int4, in float8, in int4, in _float8, in bool, out float8, out float8, out int8, out float8);

CREATE OR REPLACE FUNCTION public.st_approxhistogram(rast raster, nband integer, sample_percent double precision, bins integer, width double precision[] DEFAULT NULL::double precision[], "right" boolean DEFAULT false, OUT min double precision, OUT max double precision, OUT count bigint, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT min, max, count, percent FROM public._ST_histogram($1, $2, TRUE, $3, $4, $5, $6) $function$
;

-- DROP FUNCTION public.st_approxhistogram(in raster, in int4, in float8, in int4, in bool, out float8, out float8, out int8, out float8);

CREATE OR REPLACE FUNCTION public.st_approxhistogram(rast raster, nband integer, sample_percent double precision, bins integer, "right" boolean, OUT min double precision, OUT max double precision, OUT count bigint, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT min, max, count, percent FROM public._ST_histogram($1, $2, TRUE, $3, $4, NULL, $5) $function$
;

-- DROP FUNCTION public.st_approxhistogram(in raster, in float8, out float8, out float8, out int8, out float8);

CREATE OR REPLACE FUNCTION public.st_approxhistogram(rast raster, sample_percent double precision, OUT min double precision, OUT max double precision, OUT count bigint, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT min, max, count, percent FROM public._ST_histogram($1, 1, TRUE, $2, 0, NULL, FALSE) $function$
;

-- DROP FUNCTION public.st_approxhistogram(in raster, in int4, in float8, out float8, out float8, out int8, out float8);

CREATE OR REPLACE FUNCTION public.st_approxhistogram(rast raster, nband integer, sample_percent double precision, OUT min double precision, OUT max double precision, OUT count bigint, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT min, max, count, percent FROM public._ST_histogram($1, $2, TRUE, $3, 0, NULL, FALSE) $function$
;

-- DROP FUNCTION public.st_approxquantile(raster, bool, float8);

CREATE OR REPLACE FUNCTION public.st_approxquantile(rast raster, exclude_nodata_value boolean, quantile double precision DEFAULT NULL::double precision)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT ( public._ST_quantile($1, 1, $2, 0.1, ARRAY[$3]::double precision[])).value $function$
;

-- DROP FUNCTION public.st_approxquantile(in raster, in float8, in _float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_approxquantile(rast raster, sample_percent double precision, quantiles double precision[] DEFAULT NULL::double precision[], OUT quantile double precision, OUT value double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_quantile($1, 1, TRUE, $2, $3) $function$
;

-- DROP FUNCTION public.st_approxquantile(raster, int4, bool, float8, float8);

CREATE OR REPLACE FUNCTION public.st_approxquantile(rast raster, nband integer, exclude_nodata_value boolean, sample_percent double precision, quantile double precision)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT ( public._ST_quantile($1, $2, $3, $4, ARRAY[$5]::double precision[])).value $function$
;

-- DROP FUNCTION public.st_approxquantile(raster, int4, float8, float8);

CREATE OR REPLACE FUNCTION public.st_approxquantile(rast raster, nband integer, sample_percent double precision, quantile double precision)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT ( public._ST_quantile($1, $2, TRUE, $3, ARRAY[$4]::double precision[])).value $function$
;

-- DROP FUNCTION public.st_approxquantile(in raster, in int4, in float8, in _float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_approxquantile(rast raster, nband integer, sample_percent double precision, quantiles double precision[] DEFAULT NULL::double precision[], OUT quantile double precision, OUT value double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_quantile($1, $2, TRUE, $3, $4) $function$
;

-- DROP FUNCTION public.st_approxquantile(raster, float8);

CREATE OR REPLACE FUNCTION public.st_approxquantile(rast raster, quantile double precision)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT ( public._ST_quantile($1, 1, TRUE, 0.1, ARRAY[$2]::double precision[])).value $function$
;

-- DROP FUNCTION public.st_approxquantile(in raster, in int4, in bool, in float8, in _float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_approxquantile(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, sample_percent double precision DEFAULT 0.1, quantiles double precision[] DEFAULT NULL::double precision[], OUT quantile double precision, OUT value double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_quantile($1, $2, $3, $4, $5) $function$
;

-- DROP FUNCTION public.st_approxquantile(raster, float8, float8);

CREATE OR REPLACE FUNCTION public.st_approxquantile(rast raster, sample_percent double precision, quantile double precision)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT ( public._ST_quantile($1, 1, TRUE, $2, ARRAY[$3]::double precision[])).value $function$
;

-- DROP FUNCTION public.st_approxquantile(in raster, in _float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_approxquantile(rast raster, quantiles double precision[], OUT quantile double precision, OUT value double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_quantile($1, 1, TRUE, 0.1, $2) $function$
;

-- DROP FUNCTION public.st_approxsummarystats(raster, bool, float8);

CREATE OR REPLACE FUNCTION public.st_approxsummarystats(rast raster, exclude_nodata_value boolean, sample_percent double precision DEFAULT 0.1)
 RETURNS summarystats
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_summarystats($1, 1, $2, $3) $function$
;

-- DROP FUNCTION public.st_approxsummarystats(raster, int4, float8);

CREATE OR REPLACE FUNCTION public.st_approxsummarystats(rast raster, nband integer, sample_percent double precision)
 RETURNS summarystats
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_summarystats($1, $2, TRUE, $3) $function$
;

-- DROP FUNCTION public.st_approxsummarystats(raster, float8);

CREATE OR REPLACE FUNCTION public.st_approxsummarystats(rast raster, sample_percent double precision)
 RETURNS summarystats
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_summarystats($1, 1, TRUE, $2) $function$
;

-- DROP FUNCTION public.st_approxsummarystats(raster, int4, bool, float8);

CREATE OR REPLACE FUNCTION public.st_approxsummarystats(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, sample_percent double precision DEFAULT 0.1)
 RETURNS summarystats
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_summarystats($1, $2, $3, $4) $function$
;

-- DROP FUNCTION public.st_area(text);

CREATE OR REPLACE FUNCTION public.st_area(text)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_Area($1::public.geometry);  $function$
;

-- DROP FUNCTION public.st_area(geometry);

CREATE OR REPLACE FUNCTION public.st_area(geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_Area$function$
;

COMMENT ON FUNCTION public.st_area(geometry) IS 'args: g1 - Returns the area of a polygonal geometry.';

-- DROP FUNCTION public.st_area(geography, bool);

CREATE OR REPLACE FUNCTION public.st_area(geog geography, use_spheroid boolean DEFAULT true)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$geography_area$function$
;

COMMENT ON FUNCTION public.st_area(geography, bool) IS 'args: geog, use_spheroid=true - Returns the area of a polygonal geometry.';

-- DROP FUNCTION public.st_area2d(geometry);

CREATE OR REPLACE FUNCTION public.st_area2d(geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_Area$function$
;

-- DROP FUNCTION public.st_asbinary(geometry, text);

CREATE OR REPLACE FUNCTION public.st_asbinary(geometry, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_asBinary$function$
;

-- DROP FUNCTION public.st_asbinary(geometry);

CREATE OR REPLACE FUNCTION public.st_asbinary(geometry)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_asBinary$function$
;

-- DROP FUNCTION public.st_asbinary(raster, bool);

CREATE OR REPLACE FUNCTION public.st_asbinary(raster, outasin boolean DEFAULT false)
 RETURNS bytea
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_AsWKB($1, $2) $function$
;

COMMENT ON FUNCTION public.st_asbinary(raster, bool) IS 'args: rast, outasin=FALSE - Return the Well-Known Binary (WKB) representation of the raster.';

-- DROP FUNCTION public.st_asbinary(geography, text);

CREATE OR REPLACE FUNCTION public.st_asbinary(geography, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$LWGEOM_asBinary$function$
;

-- DROP FUNCTION public.st_asbinary(geography);

CREATE OR REPLACE FUNCTION public.st_asbinary(geography)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_asBinary$function$
;

-- DROP FUNCTION public.st_asencodedpolyline(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_asencodedpolyline(geom geometry, nprecision integer DEFAULT 5)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asEncodedPolyline$function$
;

-- DROP FUNCTION public.st_asewkb(geometry);

CREATE OR REPLACE FUNCTION public.st_asewkb(geometry)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$WKBFromLWGEOM$function$
;

-- DROP FUNCTION public.st_asewkb(geometry, text);

CREATE OR REPLACE FUNCTION public.st_asewkb(geometry, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$WKBFromLWGEOM$function$
;

-- DROP FUNCTION public.st_asewkt(text);

CREATE OR REPLACE FUNCTION public.st_asewkt(text)
 RETURNS text
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$ SELECT public.ST_AsEWKT($1::public.geometry);  $function$
;

-- DROP FUNCTION public.st_asewkt(geometry);

CREATE OR REPLACE FUNCTION public.st_asewkt(geometry)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asEWKT$function$
;

-- DROP FUNCTION public.st_asewkt(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_asewkt(geometry, integer)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asEWKT$function$
;

-- DROP FUNCTION public.st_asewkt(geography);

CREATE OR REPLACE FUNCTION public.st_asewkt(geography)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asEWKT$function$
;

-- DROP FUNCTION public.st_asewkt(geography, int4);

CREATE OR REPLACE FUNCTION public.st_asewkt(geography, integer)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asEWKT$function$
;

-- DROP FUNCTION public.st_asgdalraster(raster, text, _text, int4);

CREATE OR REPLACE FUNCTION public.st_asgdalraster(rast raster, format text, options text[] DEFAULT NULL::text[], srid integer DEFAULT NULL::integer)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_asGDALRaster$function$
;

COMMENT ON FUNCTION public.st_asgdalraster(raster, text, _text, int4) IS 'args: rast, format, options=NULL, srid=sameassource - Return the raster tile in the designated GDAL Raster format. Raster formats are one of those supported by your compiled library. Use ST_GDALDrivers() to get a list of formats supported by your library.';

-- DROP AGGREGATE public.st_asgeobuf(anyelement);

-- Aggregate function public.st_asgeobuf(anyelement)
-- ERROR: more than one function named "public.st_asgeobuf";

-- DROP AGGREGATE public.st_asgeobuf(anyelement, text);

-- Aggregate function public.st_asgeobuf(anyelement, text)
-- ERROR: more than one function named "public.st_asgeobuf";

-- DROP FUNCTION public.st_asgeojson(record, text, int4, bool);

CREATE OR REPLACE FUNCTION public.st_asgeojson(r record, geom_column text DEFAULT ''::text, maxdecimaldigits integer DEFAULT 9, pretty_bool boolean DEFAULT false)
 RETURNS text
 LANGUAGE c
 STABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_AsGeoJsonRow$function$
;

-- DROP FUNCTION public.st_asgeojson(geometry, int4, int4);

CREATE OR REPLACE FUNCTION public.st_asgeojson(geom geometry, maxdecimaldigits integer DEFAULT 9, options integer DEFAULT 8)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asGeoJson$function$
;

-- DROP FUNCTION public.st_asgeojson(text);

CREATE OR REPLACE FUNCTION public.st_asgeojson(text)
 RETURNS text
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$ SELECT public.ST_AsGeoJson($1::public.geometry, 9, 0);  $function$
;

-- DROP FUNCTION public.st_asgeojson(geography, int4, int4);

CREATE OR REPLACE FUNCTION public.st_asgeojson(geog geography, maxdecimaldigits integer DEFAULT 9, options integer DEFAULT 0)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geography_as_geojson$function$
;

-- DROP FUNCTION public.st_asgml(int4, geometry, int4, int4, text, text);

CREATE OR REPLACE FUNCTION public.st_asgml(version integer, geom geometry, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0, nprefix text DEFAULT NULL::text, id text DEFAULT NULL::text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asGML$function$
;

-- DROP FUNCTION public.st_asgml(text);

CREATE OR REPLACE FUNCTION public.st_asgml(text)
 RETURNS text
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$ SELECT public._ST_AsGML(2,$1::public.geometry,15,0, NULL, NULL);  $function$
;

-- DROP FUNCTION public.st_asgml(geography, int4, int4, text, text);

CREATE OR REPLACE FUNCTION public.st_asgml(geog geography, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0, nprefix text DEFAULT 'gml'::text, id text DEFAULT ''::text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geography_as_gml$function$
;

-- DROP FUNCTION public.st_asgml(geometry, int4, int4);

CREATE OR REPLACE FUNCTION public.st_asgml(geom geometry, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asGML$function$
;

-- DROP FUNCTION public.st_asgml(int4, geography, int4, int4, text, text);

CREATE OR REPLACE FUNCTION public.st_asgml(version integer, geog geography, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0, nprefix text DEFAULT 'gml'::text, id text DEFAULT ''::text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geography_as_gml$function$
;

-- DROP FUNCTION public.st_ashexewkb(geometry, text);

CREATE OR REPLACE FUNCTION public.st_ashexewkb(geometry, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_asHEXEWKB$function$
;

-- DROP FUNCTION public.st_ashexewkb(geometry);

CREATE OR REPLACE FUNCTION public.st_ashexewkb(geometry)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_asHEXEWKB$function$
;

-- DROP FUNCTION public.st_ashexwkb(raster, bool);

CREATE OR REPLACE FUNCTION public.st_ashexwkb(raster, outasin boolean DEFAULT false)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_asHexWKB$function$
;

COMMENT ON FUNCTION public.st_ashexwkb(raster, bool) IS 'args: rast, outasin=FALSE - Return the Well-Known Binary (WKB) in Hex representation of the raster.';

-- DROP FUNCTION public.st_asjpeg(raster, _int4, _text);

CREATE OR REPLACE FUNCTION public.st_asjpeg(rast raster, nbands integer[], options text[] DEFAULT NULL::text[])
 RETURNS bytea
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT st_asjpeg(st_band($1, $2), $3) $function$
;

COMMENT ON FUNCTION public.st_asjpeg(raster, _int4, _text) IS 'args: rast, nbands, options=NULL - Return the raster tile selected bands as a single Joint Photographic Exports Group (JPEG) image (byte array). If no band is specified and 1 or more than 3 bands, then only the first band is used. If only 3 bands then all 3 bands are used and mapped to RGB.';

-- DROP FUNCTION public.st_asjpeg(raster, _text);

CREATE OR REPLACE FUNCTION public.st_asjpeg(rast raster, options text[] DEFAULT NULL::text[])
 RETURNS bytea
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		rast2 public.raster;
		num_bands int;
		i int;
	BEGIN
		IF rast IS NULL THEN
			RETURN NULL;
		END IF;

		num_bands := st_numbands($1);

		-- JPEG allows 1 or 3 bands
		IF num_bands <> 1 AND num_bands <> 3 THEN
			RAISE NOTICE 'The JPEG format only permits one or three bands.  The first band will be used.';
			rast2 := st_band(rast, ARRAY[1]);
			num_bands := st_numbands(rast);
		ELSE
			rast2 := rast;
		END IF;

		-- JPEG only supports 8BUI pixeltype
		FOR i IN 1..num_bands LOOP
			IF public.ST_BandPixelType(rast, i) != '8BUI' THEN
				RAISE EXCEPTION 'The pixel type of band % in the raster is not 8BUI.  The JPEG format can only be used with the 8BUI pixel type.', i;
			END IF;
		END LOOP;

		RETURN st_asgdalraster(rast2, 'JPEG', $2, NULL);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_asjpeg(raster, _text) IS 'args: rast, options=NULL - Return the raster tile selected bands as a single Joint Photographic Exports Group (JPEG) image (byte array). If no band is specified and 1 or more than 3 bands, then only the first band is used. If only 3 bands then all 3 bands are used and mapped to RGB.';

-- DROP FUNCTION public.st_asjpeg(raster, int4, int4);

CREATE OR REPLACE FUNCTION public.st_asjpeg(rast raster, nband integer, quality integer)
 RETURNS bytea
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.st_asjpeg($1, ARRAY[$2], $3) $function$
;

COMMENT ON FUNCTION public.st_asjpeg(raster, int4, int4) IS 'args: rast, nband, quality - Return the raster tile selected bands as a single Joint Photographic Exports Group (JPEG) image (byte array). If no band is specified and 1 or more than 3 bands, then only the first band is used. If only 3 bands then all 3 bands are used and mapped to RGB.';

-- DROP FUNCTION public.st_asjpeg(raster, int4, _text);

CREATE OR REPLACE FUNCTION public.st_asjpeg(rast raster, nband integer, options text[] DEFAULT NULL::text[])
 RETURNS bytea
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.st_asjpeg(st_band($1, $2), $3) $function$
;

COMMENT ON FUNCTION public.st_asjpeg(raster, int4, _text) IS 'args: rast, nband, options=NULL - Return the raster tile selected bands as a single Joint Photographic Exports Group (JPEG) image (byte array). If no band is specified and 1 or more than 3 bands, then only the first band is used. If only 3 bands then all 3 bands are used and mapped to RGB.';

-- DROP FUNCTION public.st_asjpeg(raster, _int4, int4);

CREATE OR REPLACE FUNCTION public.st_asjpeg(rast raster, nbands integer[], quality integer)
 RETURNS bytea
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		quality2 int;
		options text[];
	BEGIN
		IF quality IS NOT NULL THEN
			IF quality > 100 THEN
				quality2 := 100;
			ELSEIF quality < 10 THEN
				quality2 := 10;
			ELSE
				quality2 := quality;
			END IF;

			options := array_append(options, 'QUALITY=' || quality2);
		END IF;

		RETURN public.st_asjpeg(st_band($1, $2), options);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_asjpeg(raster, _int4, int4) IS 'args: rast, nbands, quality - Return the raster tile selected bands as a single Joint Photographic Exports Group (JPEG) image (byte array). If no band is specified and 1 or more than 3 bands, then only the first band is used. If only 3 bands then all 3 bands are used and mapped to RGB.';

-- DROP FUNCTION public.st_askml(geometry, int4, text);

CREATE OR REPLACE FUNCTION public.st_askml(geom geometry, maxdecimaldigits integer DEFAULT 15, nprefix text DEFAULT ''::text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asKML$function$
;

-- DROP FUNCTION public.st_askml(text);

CREATE OR REPLACE FUNCTION public.st_askml(text)
 RETURNS text
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$ SELECT public.ST_AsKML($1::public.geometry, 15);  $function$
;

-- DROP FUNCTION public.st_askml(geography, int4, text);

CREATE OR REPLACE FUNCTION public.st_askml(geog geography, maxdecimaldigits integer DEFAULT 15, nprefix text DEFAULT ''::text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geography_as_kml$function$
;

-- DROP FUNCTION public.st_aslatlontext(geometry, text);

CREATE OR REPLACE FUNCTION public.st_aslatlontext(geom geometry, tmpl text DEFAULT ''::text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_to_latlon$function$
;

-- DROP AGGREGATE public.st_asmvt(anyelement, text, int4, text);

-- Aggregate function public.st_asmvt(anyelement, text, int4, text)
-- ERROR: more than one function named "public.st_asmvt";

-- DROP AGGREGATE public.st_asmvt(anyelement, text, int4);

-- Aggregate function public.st_asmvt(anyelement, text, int4)
-- ERROR: more than one function named "public.st_asmvt";

-- DROP AGGREGATE public.st_asmvt(anyelement, text);

-- Aggregate function public.st_asmvt(anyelement, text)
-- ERROR: more than one function named "public.st_asmvt";

-- DROP AGGREGATE public.st_asmvt(anyelement);

-- Aggregate function public.st_asmvt(anyelement)
-- ERROR: more than one function named "public.st_asmvt";

-- DROP AGGREGATE public.st_asmvt(anyelement, text, int4, text, text);

-- Aggregate function public.st_asmvt(anyelement, text, int4, text, text)
-- ERROR: more than one function named "public.st_asmvt";

-- DROP FUNCTION public.st_asmvtgeom(geometry, box2d, int4, int4, bool);

CREATE OR REPLACE FUNCTION public.st_asmvtgeom(geom geometry, bounds box2d, extent integer DEFAULT 4096, buffer integer DEFAULT 256, clip_geom boolean DEFAULT true)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$ST_AsMVTGeom$function$
;

-- DROP FUNCTION public.st_aspect(raster, int4, raster, text, text, bool);

CREATE OR REPLACE FUNCTION public.st_aspect(rast raster, nband integer, customextent raster, pixeltype text DEFAULT '32BF'::text, units text DEFAULT 'DEGREES'::text, interpolate_nodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_rast public.raster;
		_nband integer;
		_pixtype text;
		_width integer;
		_height integer;
		_customextent public.raster;
		_extenttype text;
	BEGIN
		_customextent := customextent;
		IF _customextent IS NULL THEN
			_extenttype := 'FIRST';
		ELSE
			_extenttype := 'CUSTOM';
		END IF;

		IF interpolate_nodata IS TRUE THEN
			_rast := public.ST_MapAlgebra(
				ARRAY[ROW(rast, nband)]::rastbandarg[],
				'public.st_invdistweight4ma(double precision[][][], integer[][], text[])'::regprocedure,
				pixeltype,
				'FIRST', NULL,
				1, 1
			);
			_nband := 1;
			_pixtype := NULL;
		ELSE
			_rast := rast;
			_nband := nband;
			_pixtype := pixeltype;
		END IF;

		-- get properties
		SELECT width, height INTO _width, _height FROM public.ST_Metadata(_rast);

		RETURN public.ST_MapAlgebra(
			ARRAY[ROW(_rast, _nband)]::rastbandarg[],
			' public._ST_aspect4ma(double precision[][][], integer[][], text[])'::regprocedure,
			_pixtype,
			_extenttype, _customextent,
			1, 1,
			_width::text, _height::text,
			units::text
		);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_aspect(raster, int4, raster, text, text, bool) IS 'args: rast, band, customextent, pixeltype=32BF, units=DEGREES, interpolate_nodata=FALSE - Returns the aspect (in degrees by default) of an elevation raster band. Useful for analyzing terrain.';

-- DROP FUNCTION public.st_aspect(raster, int4, text, text, bool);

CREATE OR REPLACE FUNCTION public.st_aspect(rast raster, nband integer DEFAULT 1, pixeltype text DEFAULT '32BF'::text, units text DEFAULT 'DEGREES'::text, interpolate_nodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_aspect($1, $2, NULL::public.raster, $3, $4, $5) $function$
;

COMMENT ON FUNCTION public.st_aspect(raster, int4, text, text, bool) IS 'args: rast, band=1, pixeltype=32BF, units=DEGREES, interpolate_nodata=FALSE - Returns the aspect (in degrees by default) of an elevation raster band. Useful for analyzing terrain.';

-- DROP FUNCTION public.st_aspng(raster, _text);

CREATE OR REPLACE FUNCTION public.st_aspng(rast raster, options text[] DEFAULT NULL::text[])
 RETURNS bytea
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		rast2 public.raster;
		num_bands int;
		i int;
		pt text;
	BEGIN
		IF rast IS NULL THEN
			RETURN NULL;
		END IF;

		num_bands := st_numbands($1);

		-- PNG allows 1, 3 or 4 bands
		IF num_bands <> 1 AND num_bands <> 3 AND num_bands <> 4 THEN
			RAISE NOTICE 'The PNG format only permits one, three or four bands.  The first band will be used.';
			rast2 := public.st_band($1, ARRAY[1]);
			num_bands := public.st_numbands(rast2);
		ELSE
			rast2 := rast;
		END IF;

		-- PNG only supports 8BUI and 16BUI pixeltype
		FOR i IN 1..num_bands LOOP
			pt = public.ST_BandPixelType(rast, i);
			IF pt != '8BUI' AND pt != '16BUI' THEN
				RAISE EXCEPTION 'The pixel type of band % in the raster is not 8BUI or 16BUI.  The PNG format can only be used with 8BUI and 16BUI pixel types.', i;
			END IF;
		END LOOP;

		RETURN public.st_asgdalraster(rast2, 'PNG', $2, NULL);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_aspng(raster, _text) IS 'args: rast, options=NULL - Return the raster tile selected bands as a single portable network graphics (PNG) image (byte array). If 1, 3, or 4 bands in raster and no bands are specified, then all bands are used. If more 2 or more than 4 bands and no bands specified, then only band 1 is used. Bands are mapped to RGB or RGBA space.';

-- DROP FUNCTION public.st_aspng(raster, _int4, _text);

CREATE OR REPLACE FUNCTION public.st_aspng(rast raster, nbands integer[], options text[] DEFAULT NULL::text[])
 RETURNS bytea
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.st_aspng(st_band($1, $2), $3) $function$
;

COMMENT ON FUNCTION public.st_aspng(raster, _int4, _text) IS 'args: rast, nbands, options=NULL - Return the raster tile selected bands as a single portable network graphics (PNG) image (byte array). If 1, 3, or 4 bands in raster and no bands are specified, then all bands are used. If more 2 or more than 4 bands and no bands specified, then only band 1 is used. Bands are mapped to RGB or RGBA space.';

-- DROP FUNCTION public.st_aspng(raster, int4, _text);

CREATE OR REPLACE FUNCTION public.st_aspng(rast raster, nband integer, options text[] DEFAULT NULL::text[])
 RETURNS bytea
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.st_aspng(st_band($1, $2), $3) $function$
;

COMMENT ON FUNCTION public.st_aspng(raster, int4, _text) IS 'args: rast, nband, options=NULL - Return the raster tile selected bands as a single portable network graphics (PNG) image (byte array). If 1, 3, or 4 bands in raster and no bands are specified, then all bands are used. If more 2 or more than 4 bands and no bands specified, then only band 1 is used. Bands are mapped to RGB or RGBA space.';

-- DROP FUNCTION public.st_aspng(raster, int4, int4);

CREATE OR REPLACE FUNCTION public.st_aspng(rast raster, nband integer, compression integer)
 RETURNS bytea
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.st_aspng($1, ARRAY[$2], $3) $function$
;

COMMENT ON FUNCTION public.st_aspng(raster, int4, int4) IS 'args: rast, nband, compression - Return the raster tile selected bands as a single portable network graphics (PNG) image (byte array). If 1, 3, or 4 bands in raster and no bands are specified, then all bands are used. If more 2 or more than 4 bands and no bands specified, then only band 1 is used. Bands are mapped to RGB or RGBA space.';

-- DROP FUNCTION public.st_aspng(raster, _int4, int4);

CREATE OR REPLACE FUNCTION public.st_aspng(rast raster, nbands integer[], compression integer)
 RETURNS bytea
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		compression2 int;
		options text[];
	BEGIN
		IF compression IS NOT NULL THEN
			IF compression > 9 THEN
				compression2 := 9;
			ELSEIF compression < 1 THEN
				compression2 := 1;
			ELSE
				compression2 := compression;
			END IF;

			options := array_append(options, 'ZLEVEL=' || compression2);
		END IF;

		RETURN public.st_aspng(st_band($1, $2), options);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_aspng(raster, _int4, int4) IS 'args: rast, nbands, compression - Return the raster tile selected bands as a single portable network graphics (PNG) image (byte array). If 1, 3, or 4 bands in raster and no bands are specified, then all bands are used. If more 2 or more than 4 bands and no bands specified, then only band 1 is used. Bands are mapped to RGB or RGBA space.';

-- DROP FUNCTION public.st_asraster(geometry, float8, float8, _text, _float8, _float8, float8, float8, float8, float8, bool);

CREATE OR REPLACE FUNCTION public.st_asraster(geom geometry, scalex double precision, scaley double precision, pixeltype text[], value double precision[] DEFAULT ARRAY[(1)::double precision], nodataval double precision[] DEFAULT ARRAY[(0)::double precision], upperleftx double precision DEFAULT NULL::double precision, upperlefty double precision DEFAULT NULL::double precision, skewx double precision DEFAULT 0, skewy double precision DEFAULT 0, touched boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_asraster($1, $2, $3, NULL, NULL, $4, $5, $6, $7, $8, NULL, NULL,	$9, $10, $11) $function$
;

COMMENT ON FUNCTION public.st_asraster(geometry, float8, float8, _text, _float8, _float8, float8, float8, float8, float8, bool) IS 'args: geom, scalex, scaley, pixeltype, value=ARRAY[1], nodataval=ARRAY[0], upperleftx=NULL, upperlefty=NULL, skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';

-- DROP FUNCTION public.st_asraster(geometry, raster, text, float8, float8, bool);

CREATE OR REPLACE FUNCTION public.st_asraster(geom geometry, ref raster, pixeltype text, value double precision DEFAULT 1, nodataval double precision DEFAULT 0, touched boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT  public.ST_AsRaster($1, $2, ARRAY[$3]::text[], ARRAY[$4]::double precision[], ARRAY[$5]::double precision[], $6) $function$
;

COMMENT ON FUNCTION public.st_asraster(geometry, raster, text, float8, float8, bool) IS 'args: geom, ref, pixeltype, value=1, nodataval=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';

-- DROP FUNCTION public.st_asraster(geometry, raster, _text, _float8, _float8, bool);

CREATE OR REPLACE FUNCTION public.st_asraster(geom geometry, ref raster, pixeltype text[] DEFAULT ARRAY['8BUI'::text], value double precision[] DEFAULT ARRAY[(1)::double precision], nodataval double precision[] DEFAULT ARRAY[(0)::double precision], touched boolean DEFAULT false)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		g public.geometry;
		g_srid integer;

		ul_x double precision;
		ul_y double precision;
		scale_x double precision;
		scale_y double precision;
		skew_x double precision;
		skew_y double precision;
		sr_id integer;
	BEGIN
		SELECT upperleftx, upperlefty, scalex, scaley, skewx, skewy, srid INTO ul_x, ul_y, scale_x, scale_y, skew_x, skew_y, sr_id FROM public.ST_Metadata(ref);
		--RAISE NOTICE '%, %, %, %, %, %, %', ul_x, ul_y, scale_x, scale_y, skew_x, skew_y, sr_id;

		-- geometry and raster has different SRID
		g_srid := public.ST_SRID(geom);
		IF g_srid != sr_id THEN
			RAISE NOTICE 'The geometry''s SRID (%) is not the same as the raster''s SRID (%).  The geometry will be transformed to the raster''s projection', g_srid, sr_id;
			g := public.ST_Transform(geom, sr_id);
		ELSE
			g := geom;
		END IF;

		RETURN public._ST_asraster(g, scale_x, scale_y, NULL, NULL, $3, $4, $5, NULL, NULL, ul_x, ul_y, skew_x, skew_y, $6);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_asraster(geometry, raster, _text, _float8, _float8, bool) IS 'args: geom, ref, pixeltype=ARRAY[''8BUI''], value=ARRAY[1], nodataval=ARRAY[0], touched=false - Converts a PostGIS geometry to a PostGIS raster.';

-- DROP FUNCTION public.st_asraster(geometry, float8, float8, float8, float8, text, float8, float8, float8, float8, bool);

CREATE OR REPLACE FUNCTION public.st_asraster(geom geometry, scalex double precision, scaley double precision, gridx double precision, gridy double precision, pixeltype text, value double precision DEFAULT 1, nodataval double precision DEFAULT 0, skewx double precision DEFAULT 0, skewy double precision DEFAULT 0, touched boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_asraster($1, $2, $3, NULL, NULL, ARRAY[$6]::text[], ARRAY[$7]::double precision[], ARRAY[$8]::double precision[], NULL, NULL, $4, $5, $9, $10, $11) $function$
;

COMMENT ON FUNCTION public.st_asraster(geometry, float8, float8, float8, float8, text, float8, float8, float8, float8, bool) IS 'args: geom, scalex, scaley, gridx, gridy, pixeltype, value=1, nodataval=0, skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';

-- DROP FUNCTION public.st_asraster(geometry, float8, float8, float8, float8, _text, _float8, _float8, float8, float8, bool);

CREATE OR REPLACE FUNCTION public.st_asraster(geom geometry, scalex double precision, scaley double precision, gridx double precision DEFAULT NULL::double precision, gridy double precision DEFAULT NULL::double precision, pixeltype text[] DEFAULT ARRAY['8BUI'::text], value double precision[] DEFAULT ARRAY[(1)::double precision], nodataval double precision[] DEFAULT ARRAY[(0)::double precision], skewx double precision DEFAULT 0, skewy double precision DEFAULT 0, touched boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_asraster($1, $2, $3, NULL, NULL, $6, $7, $8, NULL, NULL, $4, $5, $9, $10, $11) $function$
;

COMMENT ON FUNCTION public.st_asraster(geometry, float8, float8, float8, float8, _text, _float8, _float8, float8, float8, bool) IS 'args: geom, scalex, scaley, gridx=NULL, gridy=NULL, pixeltype=ARRAY[''8BUI''], value=ARRAY[1], nodataval=ARRAY[0], skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';

-- DROP FUNCTION public.st_asraster(geometry, float8, float8, text, float8, float8, float8, float8, float8, float8, bool);

CREATE OR REPLACE FUNCTION public.st_asraster(geom geometry, scalex double precision, scaley double precision, pixeltype text, value double precision DEFAULT 1, nodataval double precision DEFAULT 0, upperleftx double precision DEFAULT NULL::double precision, upperlefty double precision DEFAULT NULL::double precision, skewx double precision DEFAULT 0, skewy double precision DEFAULT 0, touched boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_asraster($1, $2, $3, NULL, NULL, ARRAY[$4]::text[], ARRAY[$5]::double precision[], ARRAY[$6]::double precision[], $7, $8, NULL, NULL, $9, $10, $11) $function$
;

COMMENT ON FUNCTION public.st_asraster(geometry, float8, float8, text, float8, float8, float8, float8, float8, float8, bool) IS 'args: geom, scalex, scaley, pixeltype, value=1, nodataval=0, upperleftx=NULL, upperlefty=NULL, skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';

-- DROP FUNCTION public.st_asraster(geometry, int4, int4, float8, float8, text, float8, float8, float8, float8, bool);

CREATE OR REPLACE FUNCTION public.st_asraster(geom geometry, width integer, height integer, gridx double precision, gridy double precision, pixeltype text, value double precision DEFAULT 1, nodataval double precision DEFAULT 0, skewx double precision DEFAULT 0, skewy double precision DEFAULT 0, touched boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_asraster($1, NULL, NULL, $2, $3, ARRAY[$6]::text[], ARRAY[$7]::double precision[], ARRAY[$8]::double precision[], NULL, NULL, $4, $5, $9, $10, $11) $function$
;

COMMENT ON FUNCTION public.st_asraster(geometry, int4, int4, float8, float8, text, float8, float8, float8, float8, bool) IS 'args: geom, width, height, gridx, gridy, pixeltype, value=1, nodataval=0, skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';

-- DROP FUNCTION public.st_asraster(geometry, int4, int4, float8, float8, _text, _float8, _float8, float8, float8, bool);

CREATE OR REPLACE FUNCTION public.st_asraster(geom geometry, width integer, height integer, gridx double precision DEFAULT NULL::double precision, gridy double precision DEFAULT NULL::double precision, pixeltype text[] DEFAULT ARRAY['8BUI'::text], value double precision[] DEFAULT ARRAY[(1)::double precision], nodataval double precision[] DEFAULT ARRAY[(0)::double precision], skewx double precision DEFAULT 0, skewy double precision DEFAULT 0, touched boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_asraster($1, NULL, NULL, $2, $3, $6, $7, $8, NULL, NULL, $4, $5, $9, $10, $11) $function$
;

COMMENT ON FUNCTION public.st_asraster(geometry, int4, int4, float8, float8, _text, _float8, _float8, float8, float8, bool) IS 'args: geom, width, height, gridx=NULL, gridy=NULL, pixeltype=ARRAY[''8BUI''], value=ARRAY[1], nodataval=ARRAY[0], skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';

-- DROP FUNCTION public.st_asraster(geometry, int4, int4, text, float8, float8, float8, float8, float8, float8, bool);

CREATE OR REPLACE FUNCTION public.st_asraster(geom geometry, width integer, height integer, pixeltype text, value double precision DEFAULT 1, nodataval double precision DEFAULT 0, upperleftx double precision DEFAULT NULL::double precision, upperlefty double precision DEFAULT NULL::double precision, skewx double precision DEFAULT 0, skewy double precision DEFAULT 0, touched boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_asraster($1, NULL, NULL, $2, $3, ARRAY[$4]::text[], ARRAY[$5]::double precision[], ARRAY[$6]::double precision[], $7, $8, NULL, NULL,$9, $10, $11) $function$
;

COMMENT ON FUNCTION public.st_asraster(geometry, int4, int4, text, float8, float8, float8, float8, float8, float8, bool) IS 'args: geom, width, height, pixeltype, value=1, nodataval=0, upperleftx=NULL, upperlefty=NULL, skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';

-- DROP FUNCTION public.st_asraster(geometry, int4, int4, _text, _float8, _float8, float8, float8, float8, float8, bool);

CREATE OR REPLACE FUNCTION public.st_asraster(geom geometry, width integer, height integer, pixeltype text[], value double precision[] DEFAULT ARRAY[(1)::double precision], nodataval double precision[] DEFAULT ARRAY[(0)::double precision], upperleftx double precision DEFAULT NULL::double precision, upperlefty double precision DEFAULT NULL::double precision, skewx double precision DEFAULT 0, skewy double precision DEFAULT 0, touched boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_asraster($1, NULL, NULL, $2, $3, $4, $5, $6, $7, $8, NULL, NULL,	$9, $10, $11) $function$
;

COMMENT ON FUNCTION public.st_asraster(geometry, int4, int4, _text, _float8, _float8, float8, float8, float8, float8, bool) IS 'args: geom, width, height, pixeltype, value=ARRAY[1], nodataval=ARRAY[0], upperleftx=NULL, upperlefty=NULL, skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';

-- DROP FUNCTION public.st_assvg(geometry, int4, int4);

CREATE OR REPLACE FUNCTION public.st_assvg(geom geometry, rel integer DEFAULT 0, maxdecimaldigits integer DEFAULT 15)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asSVG$function$
;

-- DROP FUNCTION public.st_assvg(text);

CREATE OR REPLACE FUNCTION public.st_assvg(text)
 RETURNS text
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$ SELECT public.ST_AsSVG($1::public.geometry,0,15);  $function$
;

-- DROP FUNCTION public.st_assvg(geography, int4, int4);

CREATE OR REPLACE FUNCTION public.st_assvg(geog geography, rel integer DEFAULT 0, maxdecimaldigits integer DEFAULT 15)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geography_as_svg$function$
;

-- DROP FUNCTION public.st_astext(geography, int4);

CREATE OR REPLACE FUNCTION public.st_astext(geography, integer)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asText$function$
;

-- DROP FUNCTION public.st_astext(geography);

CREATE OR REPLACE FUNCTION public.st_astext(geography)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asText$function$
;

-- DROP FUNCTION public.st_astext(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_astext(geometry, integer)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asText$function$
;

-- DROP FUNCTION public.st_astext(geometry);

CREATE OR REPLACE FUNCTION public.st_astext(geometry)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_asText$function$
;

-- DROP FUNCTION public.st_astext(text);

CREATE OR REPLACE FUNCTION public.st_astext(text)
 RETURNS text
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$ SELECT public.ST_AsText($1::public.geometry);  $function$
;

-- DROP FUNCTION public.st_astiff(raster, text, int4);

CREATE OR REPLACE FUNCTION public.st_astiff(rast raster, compression text, srid integer DEFAULT NULL::integer)
 RETURNS bytea
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		compression2 text;
		c_type text;
		c_level int;
		i int;
		num_bands int;
		options text[];
	BEGIN
		IF rast IS NULL THEN
			RETURN NULL;
		END IF;

		compression2 := trim(both from upper(compression));

		IF length(compression2) > 0 THEN
			-- JPEG
			IF position('JPEG' in compression2) != 0 THEN
				c_type := 'JPEG';
				c_level := substring(compression2 from '[0-9]+$');

				IF c_level IS NOT NULL THEN
					IF c_level > 100 THEN
						c_level := 100;
					ELSEIF c_level < 1 THEN
						c_level := 1;
					END IF;

					options := array_append(options, 'JPEG_QUALITY=' || c_level);
				END IF;

				-- per band pixel type check
				num_bands := st_numbands($1);
				FOR i IN 1..num_bands LOOP
					IF public.ST_BandPixelType($1, i) != '8BUI' THEN
						RAISE EXCEPTION 'The pixel type of band % in the raster is not 8BUI.  JPEG compression can only be used with the 8BUI pixel type.', i;
					END IF;
				END LOOP;

			-- DEFLATE
			ELSEIF position('DEFLATE' in compression2) != 0 THEN
				c_type := 'DEFLATE';
				c_level := substring(compression2 from '[0-9]+$');

				IF c_level IS NOT NULL THEN
					IF c_level > 9 THEN
						c_level := 9;
					ELSEIF c_level < 1 THEN
						c_level := 1;
					END IF;

					options := array_append(options, 'ZLEVEL=' || c_level);
				END IF;

			ELSE
				c_type := compression2;

				-- CCITT
				IF position('CCITT' in compression2) THEN
					-- per band pixel type check
					num_bands := st_numbands($1);
					FOR i IN 1..num_bands LOOP
						IF public.ST_BandPixelType($1, i) != '1BB' THEN
							RAISE EXCEPTION 'The pixel type of band % in the raster is not 1BB.  CCITT compression can only be used with the 1BB pixel type.', i;
						END IF;
					END LOOP;
				END IF;

			END IF;

			-- compression type check
			IF ARRAY[c_type] <@ ARRAY['JPEG', 'LZW', 'PACKBITS', 'DEFLATE', 'CCITTRLE', 'CCITTFAX3', 'CCITTFAX4', 'NONE'] THEN
				options := array_append(options, 'COMPRESS=' || c_type);
			ELSE
				RAISE NOTICE 'Unknown compression type: %.  The outputted TIFF will not be COMPRESSED.', c_type;
			END IF;
		END IF;

		RETURN st_astiff($1, options, $3);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_astiff(raster, text, int4) IS 'args: rast, compression='', srid=sameassource - Return the raster selected bands as a single TIFF image (byte array). If no band is specified or any of specified bands does not exist in the raster, then will try to use all bands.';

-- DROP FUNCTION public.st_astiff(raster, _int4, text, int4);

CREATE OR REPLACE FUNCTION public.st_astiff(rast raster, nbands integer[], compression text, srid integer DEFAULT NULL::integer)
 RETURNS bytea
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT st_astiff(st_band($1, $2), $3, $4) $function$
;

COMMENT ON FUNCTION public.st_astiff(raster, _int4, text, int4) IS 'args: rast, nbands, compression='', srid=sameassource - Return the raster selected bands as a single TIFF image (byte array). If no band is specified or any of specified bands does not exist in the raster, then will try to use all bands.';

-- DROP FUNCTION public.st_astiff(raster, _text, int4);

CREATE OR REPLACE FUNCTION public.st_astiff(rast raster, options text[] DEFAULT NULL::text[], srid integer DEFAULT NULL::integer)
 RETURNS bytea
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		i int;
		num_bands int;
		nodata double precision;
		last_nodata double precision;
	BEGIN
		IF rast IS NULL THEN
			RETURN NULL;
		END IF;

		num_bands := st_numbands($1);

		-- TIFF only allows one NODATA value for ALL bands
		FOR i IN 1..num_bands LOOP
			nodata := st_bandnodatavalue($1, i);
			IF last_nodata IS NULL THEN
				last_nodata := nodata;
			ELSEIF nodata != last_nodata THEN
				RAISE NOTICE 'The TIFF format only permits one NODATA value for all bands.  The value used will be the last band with a NODATA value.';
			END IF;
		END LOOP;

		RETURN st_asgdalraster($1, 'GTiff', $2, $3);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_astiff(raster, _text, int4) IS 'args: rast, options='', srid=sameassource - Return the raster selected bands as a single TIFF image (byte array). If no band is specified or any of specified bands does not exist in the raster, then will try to use all bands.';

-- DROP FUNCTION public.st_astiff(raster, _int4, _text, int4);

CREATE OR REPLACE FUNCTION public.st_astiff(rast raster, nbands integer[], options text[] DEFAULT NULL::text[], srid integer DEFAULT NULL::integer)
 RETURNS bytea
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT st_astiff(st_band($1, $2), $3, $4) $function$
;

COMMENT ON FUNCTION public.st_astiff(raster, _int4, _text, int4) IS 'args: rast, nbands, options, srid=sameassource - Return the raster selected bands as a single TIFF image (byte array). If no band is specified or any of specified bands does not exist in the raster, then will try to use all bands.';

-- DROP FUNCTION public.st_astwkb(_geometry, _int8, int4, int4, int4, bool, bool);

CREATE OR REPLACE FUNCTION public.st_astwkb(geom geometry[], ids bigint[], prec integer DEFAULT NULL::integer, prec_z integer DEFAULT NULL::integer, prec_m integer DEFAULT NULL::integer, with_sizes boolean DEFAULT NULL::boolean, with_boxes boolean DEFAULT NULL::boolean)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$TWKBFromLWGEOMArray$function$
;

-- DROP FUNCTION public.st_astwkb(geometry, int4, int4, int4, bool, bool);

CREATE OR REPLACE FUNCTION public.st_astwkb(geom geometry, prec integer DEFAULT NULL::integer, prec_z integer DEFAULT NULL::integer, prec_m integer DEFAULT NULL::integer, with_sizes boolean DEFAULT NULL::boolean, with_boxes boolean DEFAULT NULL::boolean)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$TWKBFromLWGEOM$function$
;

-- DROP FUNCTION public.st_aswkb(raster, bool);

CREATE OR REPLACE FUNCTION public.st_aswkb(raster, outasin boolean DEFAULT false)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_asWKB$function$
;

COMMENT ON FUNCTION public.st_aswkb(raster, bool) IS 'args: rast, outasin=FALSE - Return the Well-Known Binary (WKB) representation of the raster.';

-- DROP FUNCTION public.st_asx3d(geometry, int4, int4);

CREATE OR REPLACE FUNCTION public.st_asx3d(geom geometry, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0)
 RETURNS text
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 500
AS $function$SELECT public._ST_AsX3D(3,$1,$2,$3,'');$function$
;

-- DROP FUNCTION public.st_azimuth(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_azimuth(geom1 geometry, geom2 geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_azimuth$function$
;

COMMENT ON FUNCTION public.st_azimuth(geometry, geometry) IS 'args: pointA, pointB - Returns the north-based azimuth as the angle in radians measured clockwise from the vertical on pointA to pointB.';

-- DROP FUNCTION public.st_azimuth(geography, geography);

CREATE OR REPLACE FUNCTION public.st_azimuth(geog1 geography, geog2 geography)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geography_azimuth$function$
;

COMMENT ON FUNCTION public.st_azimuth(geography, geography) IS 'args: pointA, pointB - Returns the north-based azimuth as the angle in radians measured clockwise from the vertical on pointA to pointB.';

-- DROP FUNCTION public.st_band(raster, _int4);

CREATE OR REPLACE FUNCTION public.st_band(rast raster, nbands integer[] DEFAULT ARRAY[1])
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_band$function$
;

COMMENT ON FUNCTION public.st_band(raster, _int4) IS 'args: rast, nbands = ARRAY[1] - Returns one or more bands of an existing raster as a new raster. Useful for building new rasters from existing rasters.';

-- DROP FUNCTION public.st_band(raster, text, bpchar);

CREATE OR REPLACE FUNCTION public.st_band(rast raster, nbands text, delimiter character DEFAULT ','::bpchar)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT  public.ST_band($1, regexp_split_to_array(regexp_replace($2, '[[:space:]]', '', 'g'), E'\\' || array_to_string(regexp_split_to_array($3, ''), E'\\'))::int[]) $function$
;

COMMENT ON FUNCTION public.st_band(raster, text, bpchar) IS 'args: rast, nbands, delimiter=, - Returns one or more bands of an existing raster as a new raster. Useful for building new rasters from existing rasters.';

-- DROP FUNCTION public.st_band(raster, int4);

CREATE OR REPLACE FUNCTION public.st_band(rast raster, nband integer)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT  public.ST_band($1, ARRAY[$2]) $function$
;

COMMENT ON FUNCTION public.st_band(raster, int4) IS 'args: rast, nband - Returns one or more bands of an existing raster as a new raster. Useful for building new rasters from existing rasters.';

-- DROP FUNCTION public.st_bandfilesize(raster, int4);

CREATE OR REPLACE FUNCTION public.st_bandfilesize(rast raster, band integer DEFAULT 1)
 RETURNS bigint
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getBandFileSize$function$
;

COMMENT ON FUNCTION public.st_bandfilesize(raster, int4) IS 'args: rast, bandnum=1 - Returns the file size of a band stored in file system. If no bandnum specified, 1 is assumed.';

-- DROP FUNCTION public.st_bandfiletimestamp(raster, int4);

CREATE OR REPLACE FUNCTION public.st_bandfiletimestamp(rast raster, band integer DEFAULT 1)
 RETURNS bigint
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getBandFileTimestamp$function$
;

COMMENT ON FUNCTION public.st_bandfiletimestamp(raster, int4) IS 'args: rast, bandnum=1 - Returns the file timestamp of a band stored in file system. If no bandnum specified, 1 is assumed.';

-- DROP FUNCTION public.st_bandisnodata(raster, int4, bool);

CREATE OR REPLACE FUNCTION public.st_bandisnodata(rast raster, band integer DEFAULT 1, forcechecking boolean DEFAULT false)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_bandIsNoData$function$
;

COMMENT ON FUNCTION public.st_bandisnodata(raster, int4, bool) IS 'args: rast, band, forceChecking=true - Returns true if the band is filled with only nodata values.';

-- DROP FUNCTION public.st_bandisnodata(raster, bool);

CREATE OR REPLACE FUNCTION public.st_bandisnodata(rast raster, forcechecking boolean)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_bandisnodata($1, 1, $2) $function$
;

COMMENT ON FUNCTION public.st_bandisnodata(raster, bool) IS 'args: rast, forceChecking=true - Returns true if the band is filled with only nodata values.';

-- DROP FUNCTION public.st_bandmetadata(raster, int4);

CREATE OR REPLACE FUNCTION public.st_bandmetadata(rast raster, band integer DEFAULT 1)
 RETURNS TABLE(pixeltype text, nodatavalue double precision, isoutdb boolean, path text, outdbbandnum integer, filesize bigint, filetimestamp bigint)
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT pixeltype, nodatavalue, isoutdb, path, outdbbandnum, filesize, filetimestamp FROM public.ST_BandMetaData($1, ARRAY[$2]::int[]) LIMIT 1 $function$
;

COMMENT ON FUNCTION public.st_bandmetadata(raster, int4) IS 'args: rast, band=1 - Returns basic meta data for a specific raster band. band num 1 is assumed if none-specified.';

-- DROP FUNCTION public.st_bandmetadata(raster, _int4);

CREATE OR REPLACE FUNCTION public.st_bandmetadata(rast raster, band integer[])
 RETURNS TABLE(bandnum integer, pixeltype text, nodatavalue double precision, isoutdb boolean, path text, outdbbandnum integer, filesize bigint, filetimestamp bigint)
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_bandmetadata$function$
;

COMMENT ON FUNCTION public.st_bandmetadata(raster, _int4) IS 'args: rast, band - Returns basic meta data for a specific raster band. band num 1 is assumed if none-specified.';

-- DROP FUNCTION public.st_bandnodatavalue(raster, int4);

CREATE OR REPLACE FUNCTION public.st_bandnodatavalue(rast raster, band integer DEFAULT 1)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getBandNoDataValue$function$
;

COMMENT ON FUNCTION public.st_bandnodatavalue(raster, int4) IS 'args: rast, bandnum=1 - Returns the value in a given band that represents no data. If no band num 1 is assumed.';

-- DROP FUNCTION public.st_bandpath(raster, int4);

CREATE OR REPLACE FUNCTION public.st_bandpath(rast raster, band integer DEFAULT 1)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getBandPath$function$
;

COMMENT ON FUNCTION public.st_bandpath(raster, int4) IS 'args: rast, bandnum=1 - Returns system file path to a band stored in file system. If no bandnum specified, 1 is assumed.';

-- DROP FUNCTION public.st_bandpixeltype(raster, int4);

CREATE OR REPLACE FUNCTION public.st_bandpixeltype(rast raster, band integer DEFAULT 1)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getBandPixelTypeName$function$
;

COMMENT ON FUNCTION public.st_bandpixeltype(raster, int4) IS 'args: rast, bandnum=1 - Returns the type of pixel for given band. If no bandnum specified, 1 is assumed.';

-- DROP FUNCTION public.st_bdmpolyfromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_bdmpolyfromtext(text, integer)
 RETURNS geometry
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
DECLARE
	geomtext alias for $1;
	srid alias for $2;
	mline public.geometry;
	geom public.geometry;
BEGIN
	mline := public.ST_MultiLineStringFromText(geomtext, srid);

	IF mline IS NULL
	THEN
		RAISE EXCEPTION 'Input is not a MultiLinestring';
	END IF;

	geom := public.ST_Multi(public.ST_BuildArea(mline));

	RETURN geom;
END;
$function$
;

-- DROP FUNCTION public.st_bdpolyfromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_bdpolyfromtext(text, integer)
 RETURNS geometry
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
DECLARE
	geomtext alias for $1;
	srid alias for $2;
	mline public.geometry;
	geom public.geometry;
BEGIN
	mline := public.ST_MultiLineStringFromText(geomtext, srid);

	IF mline IS NULL
	THEN
		RAISE EXCEPTION 'Input is not a MultiLinestring';
	END IF;

	geom := public.ST_BuildArea(mline);

	IF public.GeometryType(geom) != 'POLYGON'
	THEN
		RAISE EXCEPTION 'Input returns more then a single polygon, try using BdMPolyFromText instead';
	END IF;

	RETURN geom;
END;
$function$
;

-- DROP FUNCTION public.st_boundary(geometry);

CREATE OR REPLACE FUNCTION public.st_boundary(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$boundary$function$
;

COMMENT ON FUNCTION public.st_boundary(geometry) IS 'args: geomA - Returns the boundary of a geometry.';

-- DROP FUNCTION public.st_boundingdiagonal(geometry, bool);

CREATE OR REPLACE FUNCTION public.st_boundingdiagonal(geom geometry, fits boolean DEFAULT false)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$ST_BoundingDiagonal$function$
;

COMMENT ON FUNCTION public.st_boundingdiagonal(geometry, bool) IS 'args: geom, fits=false - Returns the diagonal of a geometrys bounding box.';

-- DROP FUNCTION public.st_box2dfromgeohash(text, int4);

CREATE OR REPLACE FUNCTION public.st_box2dfromgeohash(text, integer DEFAULT NULL::integer)
 RETURNS box2d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$box2d_from_geohash$function$
;

-- DROP FUNCTION public.st_buffer(geometry, float8, int4);

CREATE OR REPLACE FUNCTION public.st_buffer(geom geometry, radius double precision, quadsegs integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS $function$ SELECT public.ST_Buffer($1, $2, CAST('quad_segs='||CAST($3 AS text) as text)) $function$
;

COMMENT ON FUNCTION public.st_buffer(geometry, float8, int4) IS 'args: g1, radius_of_buffer, num_seg_quarter_circle - Returns a geometry covering all points within a given distance from a geometry.';

-- DROP FUNCTION public.st_buffer(geography, float8);

CREATE OR REPLACE FUNCTION public.st_buffer(geography, double precision)
 RETURNS geography
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$SELECT public.geography(public.ST_Transform(public.ST_Buffer(public.ST_Transform(public.geometry($1), public._ST_BestSRID($1)), $2), 4326))$function$
;

-- DROP FUNCTION public.st_buffer(geometry, float8, text);

CREATE OR REPLACE FUNCTION public.st_buffer(geom geometry, radius double precision, options text DEFAULT ''::text)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$buffer$function$
;

COMMENT ON FUNCTION public.st_buffer(geometry, float8, text) IS 'args: g1, radius_of_buffer, buffer_style_parameters = '' - Returns a geometry covering all points within a given distance from a geometry.';

-- DROP FUNCTION public.st_buffer(text, float8);

CREATE OR REPLACE FUNCTION public.st_buffer(text, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_Buffer($1::public.geometry, $2);  $function$
;

-- DROP FUNCTION public.st_buffer(text, float8, int4);

CREATE OR REPLACE FUNCTION public.st_buffer(text, double precision, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_Buffer($1::public.geometry, $2, $3);  $function$
;

-- DROP FUNCTION public.st_buffer(text, float8, text);

CREATE OR REPLACE FUNCTION public.st_buffer(text, double precision, text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_Buffer($1::public.geometry, $2, $3);  $function$
;

-- DROP FUNCTION public.st_buffer(geography, float8, int4);

CREATE OR REPLACE FUNCTION public.st_buffer(geography, double precision, integer)
 RETURNS geography
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$SELECT public.geography(public.ST_Transform(public.ST_Buffer(public.ST_Transform(public.geometry($1), public._ST_BestSRID($1)), $2, $3), 4326))$function$
;

COMMENT ON FUNCTION public.st_buffer(geography, float8, int4) IS 'args: g1, radius_of_buffer, num_seg_quarter_circle - Returns a geometry covering all points within a given distance from a geometry.';

-- DROP FUNCTION public.st_buffer(geography, float8, text);

CREATE OR REPLACE FUNCTION public.st_buffer(geography, double precision, text)
 RETURNS geography
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$SELECT public.geography(public.ST_Transform(public.ST_Buffer(public.ST_Transform(public.geometry($1), public._ST_BestSRID($1)), $2, $3), 4326))$function$
;

COMMENT ON FUNCTION public.st_buffer(geography, float8, text) IS 'args: g1, radius_of_buffer, buffer_style_parameters - Returns a geometry covering all points within a given distance from a geometry.';

-- DROP FUNCTION public.st_buildarea(geometry);

CREATE OR REPLACE FUNCTION public.st_buildarea(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_BuildArea$function$
;

COMMENT ON FUNCTION public.st_buildarea(geometry) IS 'args: geom - Creates a polygonal geometry formed by the linework of a geometry.';

-- DROP FUNCTION public.st_centroid(geometry);

CREATE OR REPLACE FUNCTION public.st_centroid(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$centroid$function$
;

COMMENT ON FUNCTION public.st_centroid(geometry) IS 'args: g1 - Returns the geometric center of a geometry.';

-- DROP FUNCTION public.st_centroid(text);

CREATE OR REPLACE FUNCTION public.st_centroid(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_Centroid($1::public.geometry);  $function$
;

-- DROP FUNCTION public.st_centroid(geography, bool);

CREATE OR REPLACE FUNCTION public.st_centroid(geography, use_spheroid boolean DEFAULT true)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geography_centroid$function$
;

COMMENT ON FUNCTION public.st_centroid(geography, bool) IS 'args: g1, use_spheroid=true - Returns the geometric center of a geometry.';

-- DROP FUNCTION public.st_chaikinsmoothing(geometry, int4, bool);

CREATE OR REPLACE FUNCTION public.st_chaikinsmoothing(geometry, integer DEFAULT 1, boolean DEFAULT false)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_ChaikinSmoothing$function$
;

COMMENT ON FUNCTION public.st_chaikinsmoothing(geometry, int4, bool) IS 'args: geom, nIterations = 1, preserveEndPoints = false - Returns a smoothed version of a geometry, using the Chaikin algorithm';

-- DROP FUNCTION public.st_cleangeometry(geometry);

CREATE OR REPLACE FUNCTION public.st_cleangeometry(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_CleanGeometry$function$
;

-- DROP FUNCTION public.st_clip(raster, geometry, _float8, bool);

CREATE OR REPLACE FUNCTION public.st_clip(rast raster, geom geometry, nodataval double precision[] DEFAULT NULL::double precision[], crop boolean DEFAULT true)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_Clip($1, NULL, $2, $3, $4) $function$
;

COMMENT ON FUNCTION public.st_clip(raster, geometry, _float8, bool) IS 'args: rast, geom, nodataval=NULL, crop=TRUE - Returns the raster clipped by the input geometry. If band number not is specified, all bands are processed. If crop is not specified or TRUE, the output raster is cropped.';

-- DROP FUNCTION public.st_clip(raster, geometry, float8, bool);

CREATE OR REPLACE FUNCTION public.st_clip(rast raster, geom geometry, nodataval double precision, crop boolean DEFAULT true)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_Clip($1, NULL, $2, ARRAY[$3]::double precision[], $4) $function$
;

COMMENT ON FUNCTION public.st_clip(raster, geometry, float8, bool) IS 'args: rast, geom, nodataval, crop=TRUE - Returns the raster clipped by the input geometry. If band number not is specified, all bands are processed. If crop is not specified or TRUE, the output raster is cropped.';

-- DROP FUNCTION public.st_clip(raster, geometry, bool);

CREATE OR REPLACE FUNCTION public.st_clip(rast raster, geom geometry, crop boolean)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_Clip($1, NULL, $2, null::double precision[], $3) $function$
;

COMMENT ON FUNCTION public.st_clip(raster, geometry, bool) IS 'args: rast, geom, crop - Returns the raster clipped by the input geometry. If band number not is specified, all bands are processed. If crop is not specified or TRUE, the output raster is cropped.';

-- DROP FUNCTION public.st_clip(raster, _int4, geometry, _float8, bool);

CREATE OR REPLACE FUNCTION public.st_clip(rast raster, nband integer[], geom geometry, nodataval double precision[] DEFAULT NULL::double precision[], crop boolean DEFAULT true)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	BEGIN
		-- short-cut if geometry's extent fully contains raster's extent
		IF (nodataval IS NULL OR array_length(nodataval, 1) < 1) AND public.ST_Contains(geom, public.ST_Envelope(rast)) THEN
			RETURN rast;
		END IF;

		RETURN public._ST_Clip($1, $2, $3, $4, $5);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_clip(raster, _int4, geometry, _float8, bool) IS 'args: rast, nband, geom, nodataval=NULL, crop=TRUE - Returns the raster clipped by the input geometry. If band number not is specified, all bands are processed. If crop is not specified or TRUE, the output raster is cropped.';

-- DROP FUNCTION public.st_clip(raster, int4, geometry, bool);

CREATE OR REPLACE FUNCTION public.st_clip(rast raster, nband integer, geom geometry, crop boolean)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_Clip($1, ARRAY[$2]::integer[], $3, null::double precision[], $4) $function$
;

COMMENT ON FUNCTION public.st_clip(raster, int4, geometry, bool) IS 'args: rast, nband, geom, crop - Returns the raster clipped by the input geometry. If band number not is specified, all bands are processed. If crop is not specified or TRUE, the output raster is cropped.';

-- DROP FUNCTION public.st_clip(raster, int4, geometry, float8, bool);

CREATE OR REPLACE FUNCTION public.st_clip(rast raster, nband integer, geom geometry, nodataval double precision, crop boolean DEFAULT true)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_Clip($1, ARRAY[$2]::integer[], $3, ARRAY[$4]::double precision[], $5) $function$
;

COMMENT ON FUNCTION public.st_clip(raster, int4, geometry, float8, bool) IS 'args: rast, nband, geom, nodataval, crop=TRUE - Returns the raster clipped by the input geometry. If band number not is specified, all bands are processed. If crop is not specified or TRUE, the output raster is cropped.';

-- DROP FUNCTION public.st_clipbybox2d(geometry, box2d);

CREATE OR REPLACE FUNCTION public.st_clipbybox2d(geom geometry, box box2d)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_ClipByBox2d$function$
;

COMMENT ON FUNCTION public.st_clipbybox2d(geometry, box2d) IS 'args: geom, box - Returns the portion of a geometry falling within a rectangle.';

-- DROP FUNCTION public.st_closestpoint(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_closestpoint(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_closestpoint$function$
;

COMMENT ON FUNCTION public.st_closestpoint(geometry, geometry) IS 'args: g1, g2 - Returns the 2D point on g1 that is closest to g2. This is the first point of the shortest line.';

-- DROP FUNCTION public.st_closestpointofapproach(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_closestpointofapproach(geometry, geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_ClosestPointOfApproach$function$
;

COMMENT ON FUNCTION public.st_closestpointofapproach(geometry, geometry) IS 'args: track1, track2 - Returns the measure at which points interpolated along two trajectories are closest.';

-- DROP WINDOW public.st_clusterdbscan(geometry, float8, int4);

CREATE OR REPLACE FUNCTION public.st_clusterdbscan(geometry, eps double precision, minpoints integer)
 RETURNS integer
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_ClusterDBSCAN$function$
;

COMMENT ON WINDOW public.st_clusterdbscan(geometry, float8, int4) IS 'args: geom, eps, minpoints - Window function that returns a cluster id for each input geometry using the DBSCAN algorithm.';

-- DROP FUNCTION public.st_clusterintersecting(_geometry);

CREATE OR REPLACE FUNCTION public.st_clusterintersecting(geometry[])
 RETURNS geometry[]
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$clusterintersecting_garray$function$
;

-- DROP AGGREGATE public.st_clusterintersecting(geometry);

-- Aggregate function public.st_clusterintersecting(geometry)
-- ERROR: more than one function named "public.st_clusterintersecting";

COMMENT ON AGGREGATE public.st_clusterintersecting(geometry) IS 'args: g - Aggregate function that clusters the input geometries into connected sets.';

-- DROP WINDOW public.st_clusterkmeans(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_clusterkmeans(geom geometry, k integer)
 RETURNS integer
 LANGUAGE c
 WINDOW STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_ClusterKMeans$function$
;

COMMENT ON WINDOW public.st_clusterkmeans(geometry, int4) IS 'args: geom, number_of_clusters - Window function that returns a cluster id for each input geometry using the K-means algorithm.';

-- DROP AGGREGATE public.st_clusterwithin(geometry, float8);

-- Aggregate function public.st_clusterwithin(geometry, float8)
-- ERROR: more than one function named "public.st_clusterwithin";

COMMENT ON AGGREGATE public.st_clusterwithin(geometry, float8) IS 'args: g, distance - Aggregate function that clusters the input geometries by separation distance.';

-- DROP FUNCTION public.st_clusterwithin(_geometry, float8);

CREATE OR REPLACE FUNCTION public.st_clusterwithin(geometry[], double precision)
 RETURNS geometry[]
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$cluster_within_distance_garray$function$
;

-- DROP FUNCTION public.st_collect(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_collect(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$LWGEOM_collect$function$
;

COMMENT ON FUNCTION public.st_collect(geometry, geometry) IS 'args: g1, g2 - Creates a GeometryCollection or Multi* geometry from a set of geometries.';

-- DROP AGGREGATE public.st_collect(geometry);

-- Aggregate function public.st_collect(geometry)
-- ERROR: more than one function named "public.st_collect";

COMMENT ON AGGREGATE public.st_collect(geometry) IS 'args: g1field - Creates a GeometryCollection or Multi* geometry from a set of geometries.';

-- DROP FUNCTION public.st_collect(_geometry);

CREATE OR REPLACE FUNCTION public.st_collect(geometry[])
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_collect_garray$function$
;

COMMENT ON FUNCTION public.st_collect(_geometry) IS 'args: g1_array - Creates a GeometryCollection or Multi* geometry from a set of geometries.';

-- DROP FUNCTION public.st_collectionextract(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_collectionextract(geometry, integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_CollectionExtract$function$
;

COMMENT ON FUNCTION public.st_collectionextract(geometry, int4) IS 'args: collection, type - Given a (multi)geometry, return a (multi)geometry consisting only of elements of the specified type.';

-- DROP FUNCTION public.st_collectionextract(geometry);

CREATE OR REPLACE FUNCTION public.st_collectionextract(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_CollectionExtract$function$
;

COMMENT ON FUNCTION public.st_collectionextract(geometry) IS 'args: collection - Given a (multi)geometry, return a (multi)geometry consisting only of elements of the specified type.';

-- DROP FUNCTION public.st_collectionhomogenize(geometry);

CREATE OR REPLACE FUNCTION public.st_collectionhomogenize(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_CollectionHomogenize$function$
;

COMMENT ON FUNCTION public.st_collectionhomogenize(geometry) IS 'args: collection - Given a geometry collection, return the "simplest" representation of the contents.';

-- DROP FUNCTION public.st_colormap(raster, int4, text, text);

CREATE OR REPLACE FUNCTION public.st_colormap(rast raster, nband integer DEFAULT 1, colormap text DEFAULT 'grayscale'::text, method text DEFAULT 'INTERPOLATE'::text)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		_ismap boolean;
		_colormap text;
		_element text[];
	BEGIN
		_ismap := TRUE;

		-- clean colormap to see what it is
		_colormap := split_part(colormap, E'\n', 1);
		_colormap := regexp_replace(_colormap, E':+', ' ', 'g');
		_colormap := regexp_replace(_colormap, E',+', ' ', 'g');
		_colormap := regexp_replace(_colormap, E'\\t+', ' ', 'g');
		_colormap := regexp_replace(_colormap, E' +', ' ', 'g');
		_element := regexp_split_to_array(_colormap, ' ');

		-- treat as colormap
		IF (array_length(_element, 1) > 1) THEN
			_colormap := colormap;
		-- treat as keyword
		ELSE
			method := 'INTERPOLATE';
			CASE lower(trim(both from _colormap))
				WHEN 'grayscale', 'greyscale' THEN
					_colormap := '
100%   0
  0% 254
  nv 255
					';
				WHEN 'pseudocolor' THEN
					_colormap := '
100% 255   0   0 255
 50%   0 255   0 255
  0%   0   0 255 255
  nv   0   0   0   0
					';
				WHEN 'fire' THEN
					_colormap := '
  100% 243 255 221 255
93.75% 242 255 178 255
 87.5% 255 255 135 255
81.25% 255 228  96 255
   75% 255 187  53 255
68.75% 255 131   7 255
 62.5% 255  84   0 255
56.25% 255  42   0 255
   50% 255   0   0 255
43.75% 255  42   0 255
 37.5% 224  74   0 255
31.25% 183  91   0 255
   25% 140  93   0 255
18.75%  99  82   0 255
 12.5%  58  58   1 255
 6.25%  12  15   0 255
    0%   0   0   0 255
    nv   0   0   0   0
					';
				WHEN 'bluered' THEN
					_colormap := '
100.00% 165   0  33 255
 94.12% 216  21  47 255
 88.24% 247  39  53 255
 82.35% 255  61  61 255
 76.47% 255 120  86 255
 70.59% 255 172 117 255
 64.71% 255 214 153 255
 58.82% 255 241 188 255
 52.94% 255 255 234 255
 47.06% 234 255 255 255
 41.18% 188 249 255 255
 35.29% 153 234 255 255
 29.41% 117 211 255 255
 23.53%  86 176 255 255
 17.65%  61 135 255 255
 11.76%  40  87 255 255
  5.88%  24  28 247 255
  0.00%  36   0 216 255
     nv   0   0   0   0
					';
				ELSE
					RAISE EXCEPTION 'Unknown colormap keyword: %', colormap;
			END CASE;
		END IF;

		RETURN public._ST_colormap($1, $2, _colormap, $4);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_colormap(raster, int4, text, text) IS 'args: rast, nband=1, colormap=grayscale, method=INTERPOLATE - Creates a new raster of up to four 8BUI bands (grayscale, RGB, RGBA) from the source raster and a specified band. Band 1 is assumed if not specified.';

-- DROP FUNCTION public.st_colormap(raster, text, text);

CREATE OR REPLACE FUNCTION public.st_colormap(rast raster, colormap text, method text DEFAULT 'INTERPOLATE'::text)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_ColorMap($1, 1, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_colormap(raster, text, text) IS 'args: rast, colormap, method=INTERPOLATE - Creates a new raster of up to four 8BUI bands (grayscale, RGB, RGBA) from the source raster and a specified band. Band 1 is assumed if not specified.';

-- DROP FUNCTION public.st_combinebbox(box3d, geometry);

CREATE OR REPLACE FUNCTION public.st_combinebbox(box3d, geometry)
 RETURNS box3d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$BOX3D_combine$function$
;

-- DROP FUNCTION public.st_combinebbox(box3d, box3d);

CREATE OR REPLACE FUNCTION public.st_combinebbox(box3d, box3d)
 RETURNS box3d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$BOX3D_combine_BOX3D$function$
;

-- DROP FUNCTION public.st_combinebbox(box2d, geometry);

CREATE OR REPLACE FUNCTION public.st_combinebbox(box2d, geometry)
 RETURNS box2d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis-3', $function$BOX2D_combine$function$
;

-- DROP FUNCTION public.st_concavehull(geometry, float8, bool);

CREATE OR REPLACE FUNCTION public.st_concavehull(param_geom geometry, param_pctconvex double precision, param_allow_holes boolean DEFAULT false)
 RETURNS geometry
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS $function$
	DECLARE
		var_convhull public.geometry := public.ST_ForceSFS(public.ST_ConvexHull(param_geom));
		var_param_geom public.geometry := public.ST_ForceSFS(param_geom);
		var_initarea float := public.ST_Area(var_convhull);
		var_newarea float := var_initarea;
		var_div integer := 6; 
		var_tempgeom public.geometry;
		var_tempgeom2 public.geometry;
		var_cent public.geometry;
		var_geoms public.geometry[4]; 
		var_enline public.geometry;
		var_resultgeom public.geometry;
		var_atempgeoms public.geometry[];
		var_buf float := 1; 
	BEGIN
		-- We start with convex hull as our base
		var_resultgeom := var_convhull;

		IF param_pctconvex = 1 THEN
			-- this is the same as asking for the convex hull
			return var_resultgeom;
		ELSIF public.ST_GeometryType(var_param_geom) = 'ST_Polygon' THEN -- it is as concave as it is going to get
			IF param_allow_holes THEN -- leave the holes
				RETURN var_param_geom;
			ELSE -- remove the holes
				var_resultgeom := public.ST_MakePolygon(public.ST_ExteriorRing(var_param_geom));
				RETURN var_resultgeom;
			END IF;
		END IF;
		IF public.ST_Dimension(var_resultgeom) > 1 AND param_pctconvex BETWEEN 0 and 0.99 THEN
		-- get linestring that forms envelope of geometry
			var_enline := public.ST_Boundary(public.ST_Envelope(var_param_geom));
			var_buf := public.ST_Length(var_enline)/1000.0;
			IF public.ST_GeometryType(var_param_geom) = 'ST_MultiPoint' AND public.ST_NumGeometries(var_param_geom) BETWEEN 4 and 200 THEN
			-- we make polygons out of points since they are easier to cave in.
			-- Note we limit to between 4 and 200 points because this process is slow and gets quadratically slow
				var_buf := sqrt(public.ST_Area(var_convhull)*0.8/(public.ST_NumGeometries(var_param_geom)*public.ST_NumGeometries(var_param_geom)));
				var_atempgeoms := ARRAY(SELECT geom FROM public.ST_DumpPoints(var_param_geom));
				-- 5 and 10 and just fudge factors
				var_tempgeom := public.ST_Union(ARRAY(SELECT geom
						FROM (
						-- fuse near neighbors together
						SELECT DISTINCT ON (i) i,  public.ST_Distance(var_atempgeoms[i],var_atempgeoms[j]), public.ST_Buffer(public.ST_MakeLine(var_atempgeoms[i], var_atempgeoms[j]) , var_buf*5, 'quad_segs=3') As geom
								FROM generate_series(1,array_upper(var_atempgeoms, 1)) As i
									INNER JOIN generate_series(1,array_upper(var_atempgeoms, 1)) As j
										ON (
								 NOT public.ST_Intersects(var_atempgeoms[i],var_atempgeoms[j])
									AND public.ST_DWithin(var_atempgeoms[i],var_atempgeoms[j], var_buf*10)
									)
								UNION ALL
						-- catch the ones with no near neighbors
								SELECT i, 0, public.ST_Buffer(var_atempgeoms[i] , var_buf*10, 'quad_segs=3') As geom
								FROM generate_series(1,array_upper(var_atempgeoms, 1)) As i
									LEFT JOIN generate_series(ceiling(array_upper(var_atempgeoms,1)/2)::integer,array_upper(var_atempgeoms, 1)) As j
										ON (
								 NOT public.ST_Intersects(var_atempgeoms[i],var_atempgeoms[j])
									AND public.ST_DWithin(var_atempgeoms[i],var_atempgeoms[j], var_buf*10)
									)
									WHERE j IS NULL
								ORDER BY 1, 2
							) As foo	) );
				IF public.ST_IsValid(var_tempgeom) AND public.ST_GeometryType(var_tempgeom) = 'ST_Polygon' THEN
					var_tempgeom := public.ST_ForceSFS(public.ST_Intersection(var_tempgeom, var_convhull));
					IF param_allow_holes THEN
						var_param_geom := var_tempgeom;
					ELSIF public.ST_GeometryType(var_tempgeom) = 'ST_Polygon' THEN
						var_param_geom := public.ST_ForceSFS(public.ST_MakePolygon(public.ST_ExteriorRing(var_tempgeom)));
					ELSE
						var_param_geom := public.ST_ForceSFS(public.ST_ConvexHull(var_param_geom));
					END IF;
					-- make sure result covers original (#3638)
					var_param_geom := public.ST_Union(param_geom, var_param_geom);
					return var_param_geom;
				ELSIF public.ST_IsValid(var_tempgeom) THEN
					var_param_geom := public.ST_ForceSFS(public.ST_Intersection(var_tempgeom, var_convhull));
				END IF;
			END IF;

			IF public.ST_GeometryType(var_param_geom) = 'ST_Polygon' THEN
				IF NOT param_allow_holes THEN
					var_param_geom := public.ST_ForceSFS(public.ST_MakePolygon(public.ST_ExteriorRing(var_param_geom)));
				END IF;
				-- make sure result covers original (#3638)
				--var_param_geom := public.ST_Union(param_geom, var_param_geom);
				return var_param_geom;
			END IF;
            var_cent := public.ST_Centroid(var_param_geom);
            IF (public.ST_XMax(var_enline) - public.ST_XMin(var_enline) ) > var_buf AND (public.ST_YMax(var_enline) - public.ST_YMin(var_enline) ) > var_buf THEN
                    IF public.ST_Dwithin(public.ST_Centroid(var_convhull) , public.ST_Centroid(public.ST_Envelope(var_param_geom)), var_buf/2) THEN
                -- If the geometric dimension is > 1 and the object is symettric (cutting at centroid will not work -- offset a bit)
                        var_cent := public.ST_Translate(var_cent, (public.ST_XMax(var_enline) - public.ST_XMin(var_enline))/1000,  (public.ST_YMAX(var_enline) - public.ST_YMin(var_enline))/1000);
                    ELSE
                        -- uses closest point on geometry to centroid. I can't explain why we are doing this
                        var_cent := public.ST_ClosestPoint(var_param_geom,var_cent);
                    END IF;
                    IF public.ST_DWithin(var_cent, var_enline,var_buf) THEN
                        var_cent := public.ST_centroid(public.ST_Envelope(var_param_geom));
                    END IF;
                    -- break envelope into 4 triangles about the centroid of the geometry and returned the clipped geometry in each quadrant
                    FOR i in 1 .. 4 LOOP
                       var_geoms[i] := public.ST_MakePolygon(public.ST_MakeLine(ARRAY[public.ST_PointN(var_enline,i), public.ST_PointN(var_enline,i+1), var_cent, public.ST_PointN(var_enline,i)]));
                       var_geoms[i] := public.ST_ForceSFS(public.ST_Intersection(var_param_geom, public.ST_Buffer(var_geoms[i],var_buf)));
                       IF public.ST_IsValid(var_geoms[i]) THEN

                       ELSE
                            var_geoms[i] := public.ST_BuildArea(public.ST_MakeLine(ARRAY[public.ST_PointN(var_enline,i), public.ST_PointN(var_enline,i+1), var_cent, public.ST_PointN(var_enline,i)]));
                       END IF;
                    END LOOP;
                    var_tempgeom := public.ST_Union(ARRAY[public.ST_ConvexHull(var_geoms[1]), public.ST_ConvexHull(var_geoms[2]) , public.ST_ConvexHull(var_geoms[3]), public.ST_ConvexHull(var_geoms[4])]);
                    --RAISE NOTICE 'Curr vex % ', public.ST_AsText(var_tempgeom);
                    IF public.ST_Area(var_tempgeom) <= var_newarea AND public.ST_IsValid(var_tempgeom)  THEN --AND public.ST_GeometryType(var_tempgeom) ILIKE '%Polygon'

                        var_tempgeom := public.ST_Buffer(public.ST_ConcaveHull(var_geoms[1],least(param_pctconvex + param_pctconvex/var_div),true),var_buf, 'quad_segs=2');
                        FOR i IN 1 .. 4 LOOP
                            var_geoms[i] := public.ST_Buffer(public.ST_ConcaveHull(var_geoms[i],least(param_pctconvex + param_pctconvex/var_div),true), var_buf, 'quad_segs=2');
                            IF public.ST_IsValid(var_geoms[i]) Then
                                var_tempgeom := public.ST_Union(var_tempgeom, var_geoms[i]);
                            ELSE
                                RAISE NOTICE 'Not valid % %', i, public.ST_AsText(var_tempgeom);
                                var_tempgeom := public.ST_Union(var_tempgeom, public.ST_ConvexHull(var_geoms[i]));
                            END IF;
                        END LOOP;

                        --RAISE NOTICE 'Curr concave % ', public.ST_AsText(var_tempgeom);
                        IF public.ST_IsValid(var_tempgeom) THEN
                            var_resultgeom := var_tempgeom;
                        END IF;
                        var_newarea := public.ST_Area(var_resultgeom);
                    ELSIF public.ST_IsValid(var_tempgeom) THEN
                        var_resultgeom := var_tempgeom;
                    END IF;

                    IF public.ST_NumGeometries(var_resultgeom) > 1  THEN
                        var_tempgeom := public._ST_ConcaveHull(var_resultgeom);
                        IF public.ST_IsValid(var_tempgeom) AND public.ST_GeometryType(var_tempgeom) ILIKE 'ST_Polygon' THEN
                            var_resultgeom := var_tempgeom;
                        ELSE
                            var_resultgeom := public.ST_Buffer(var_tempgeom,var_buf, 'quad_segs=2');
                        END IF;
                    END IF;
                    IF param_allow_holes = false THEN
                    -- only keep exterior ring since we do not want holes
                        var_resultgeom := public.ST_MakePolygon(public.ST_ExteriorRing(var_resultgeom));
                    END IF;
                ELSE
                    var_resultgeom := public.ST_Buffer(var_resultgeom,var_buf);
                END IF;
                var_resultgeom := public.ST_ForceSFS(public.ST_Intersection(var_resultgeom, public.ST_ConvexHull(var_param_geom)));
            ELSE
                -- dimensions are too small to cut
                var_resultgeom := public._ST_ConcaveHull(var_param_geom);
            END IF;

            RETURN var_resultgeom;
	END;
$function$
;

COMMENT ON FUNCTION public.st_concavehull(geometry, float8, bool) IS 'args: geom, target_percent, allow_holes = false - Computes a possibly concave geometry that encloses all input geometry vertices';

-- DROP FUNCTION public.st_contains(raster, raster);

CREATE OR REPLACE FUNCTION public.st_contains(rast1 raster, rast2 raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT public.st_contains($1, NULL::integer, $2, NULL::integer) $function$
;

COMMENT ON FUNCTION public.st_contains(raster, raster) IS 'args: rastA, rastB - Return true if no points of raster rastB lie in the exterior of raster rastA and at least one point of the interior of rastB lies in the interior of rastA.';

-- DROP FUNCTION public.st_contains(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_contains(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$contains$function$
;

-- DROP FUNCTION public.st_contains(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public.st_contains(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT $1 OPERATOR(public.&&) $3 AND CASE WHEN $2 IS NULL OR $4 IS NULL THEN public._st_contains(public.st_convexhull($1), public.st_convexhull($3)) ELSE public._st_contains($1, $2, $3, $4) END $function$
;

COMMENT ON FUNCTION public.st_contains(raster, int4, raster, int4) IS 'args: rastA, nbandA, rastB, nbandB - Return true if no points of raster rastB lie in the exterior of raster rastA and at least one point of the interior of rastB lies in the interior of rastA.';

-- DROP FUNCTION public.st_containsproperly(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public.st_containsproperly(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT $1 OPERATOR(public.&&) $3 AND CASE WHEN $2 IS NULL OR $4 IS NULL THEN public._st_containsproperly(public.st_convexhull($1), public.st_convexhull($3)) ELSE public._st_containsproperly($1, $2, $3, $4) END $function$
;

COMMENT ON FUNCTION public.st_containsproperly(raster, int4, raster, int4) IS 'args: rastA, nbandA, rastB, nbandB - Return true if rastB intersects the interior of rastA but not the boundary or exterior of rastA.';

-- DROP FUNCTION public.st_containsproperly(raster, raster);

CREATE OR REPLACE FUNCTION public.st_containsproperly(rast1 raster, rast2 raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT public.st_containsproperly($1, NULL::integer, $2, NULL::integer) $function$
;

COMMENT ON FUNCTION public.st_containsproperly(raster, raster) IS 'args: rastA, rastB - Return true if rastB intersects the interior of rastA but not the boundary or exterior of rastA.';

-- DROP FUNCTION public.st_containsproperly(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_containsproperly(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$containsproperly$function$
;

-- DROP FUNCTION public.st_convexhull(raster);

CREATE OR REPLACE FUNCTION public.st_convexhull(raster)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE STRICT COST 300
AS '$libdir/postgis_raster-3', $function$RASTER_convex_hull$function$
;

COMMENT ON FUNCTION public.st_convexhull(raster) IS 'args: rast - Return the convex hull geometry of the raster including pixel values equal to BandNoDataValue. For regular shaped and non-skewed rasters, this gives the same result as ST_Envelope so only useful for irregularly shaped or skewed rasters.';

-- DROP FUNCTION public.st_convexhull(geometry);

CREATE OR REPLACE FUNCTION public.st_convexhull(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$convexhull$function$
;

COMMENT ON FUNCTION public.st_convexhull(geometry) IS 'args: geomA - Computes the convex hull of a geometry.';

-- DROP FUNCTION public.st_coorddim(geometry);

CREATE OR REPLACE FUNCTION public.st_coorddim(geometry geometry)
 RETURNS smallint
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_ndims$function$
;

COMMENT ON FUNCTION public.st_coorddim(geometry) IS 'args: geomA - Return the coordinate dimension of a geometry.';

-- DROP FUNCTION public.st_count(raster, bool);

CREATE OR REPLACE FUNCTION public.st_count(rast raster, exclude_nodata_value boolean)
 RETURNS bigint
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_count($1, 1, $2, 1) $function$
;

COMMENT ON FUNCTION public.st_count(raster, bool) IS 'args: rast, exclude_nodata_value - Returns the number of pixels in a given band of a raster or raster coverage. If no band is specified defaults to band 1. If exclude_nodata_value is set to true, will only count pixels that are not equal to the nodata value.';

-- DROP FUNCTION public.st_count(raster, int4, bool);

CREATE OR REPLACE FUNCTION public.st_count(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true)
 RETURNS bigint
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_count($1, $2, $3, 1) $function$
;

COMMENT ON FUNCTION public.st_count(raster, int4, bool) IS 'args: rast, nband=1, exclude_nodata_value=true - Returns the number of pixels in a given band of a raster or raster coverage. If no band is specified defaults to band 1. If exclude_nodata_value is set to true, will only count pixels that are not equal to the nodata value.';

-- DROP AGGREGATE public.st_countagg(raster, bool);

-- Aggregate function public.st_countagg(raster, bool)
-- ERROR: more than one function named "public.st_countagg";

COMMENT ON AGGREGATE public.st_countagg(raster, bool) IS 'args: rast, exclude_nodata_value - Aggregate. Returns the number of pixels in a given band of a set of rasters. If no band is specified defaults to band 1. If exclude_nodata_value is set to true, will only count pixels that are not equal to the NODATA value.';

-- DROP AGGREGATE public.st_countagg(raster, int4, bool);

-- Aggregate function public.st_countagg(raster, int4, bool)
-- ERROR: more than one function named "public.st_countagg";

COMMENT ON AGGREGATE public.st_countagg(raster, int4, bool) IS 'args: rast, nband, exclude_nodata_value - Aggregate. Returns the number of pixels in a given band of a set of rasters. If no band is specified defaults to band 1. If exclude_nodata_value is set to true, will only count pixels that are not equal to the NODATA value.';

-- DROP AGGREGATE public.st_countagg(raster, int4, bool, float8);

-- Aggregate function public.st_countagg(raster, int4, bool, float8)
-- ERROR: more than one function named "public.st_countagg";

COMMENT ON AGGREGATE public.st_countagg(raster, int4, bool, float8) IS 'args: rast, nband, exclude_nodata_value, sample_percent - Aggregate. Returns the number of pixels in a given band of a set of rasters. If no band is specified defaults to band 1. If exclude_nodata_value is set to true, will only count pixels that are not equal to the NODATA value.';

-- DROP FUNCTION public.st_coveredby(geography, geography);

CREATE OR REPLACE FUNCTION public.st_coveredby(geog1 geography, geog2 geography)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$geography_coveredby$function$
;

-- DROP FUNCTION public.st_coveredby(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_coveredby(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$coveredby$function$
;

-- DROP FUNCTION public.st_coveredby(raster, raster);

CREATE OR REPLACE FUNCTION public.st_coveredby(rast1 raster, rast2 raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT public.st_coveredby($1, NULL::integer, $2, NULL::integer) $function$
;

COMMENT ON FUNCTION public.st_coveredby(raster, raster) IS 'args: rastA, rastB - Return true if no points of raster rastA lie outside raster rastB.';

-- DROP FUNCTION public.st_coveredby(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public.st_coveredby(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT $1 OPERATOR(public.&&) $3 AND CASE WHEN $2 IS NULL OR $4 IS NULL THEN public._st_coveredby(public.st_convexhull($1), public.st_convexhull($3)) ELSE public._st_coveredby($1, $2, $3, $4) END $function$
;

COMMENT ON FUNCTION public.st_coveredby(raster, int4, raster, int4) IS 'args: rastA, nbandA, rastB, nbandB - Return true if no points of raster rastA lie outside raster rastB.';

-- DROP FUNCTION public.st_coveredby(text, text);

CREATE OR REPLACE FUNCTION public.st_coveredby(text, text)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_CoveredBy($1::public.geometry, $2::public.geometry);  $function$
;

-- DROP FUNCTION public.st_covers(text, text);

CREATE OR REPLACE FUNCTION public.st_covers(text, text)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_Covers($1::public.geometry, $2::public.geometry);  $function$
;

-- DROP FUNCTION public.st_covers(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_covers(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$covers$function$
;

-- DROP FUNCTION public.st_covers(raster, raster);

CREATE OR REPLACE FUNCTION public.st_covers(rast1 raster, rast2 raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT public.st_covers($1, NULL::integer, $2, NULL::integer) $function$
;

COMMENT ON FUNCTION public.st_covers(raster, raster) IS 'args: rastA, rastB - Return true if no points of raster rastB lie outside raster rastA.';

-- DROP FUNCTION public.st_covers(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public.st_covers(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT $1 OPERATOR(public.&&) $3 AND CASE WHEN $2 IS NULL OR $4 IS NULL THEN public._st_covers(public.st_convexhull($1), public.st_convexhull($3)) ELSE public._st_covers($1, $2, $3, $4) END $function$
;

COMMENT ON FUNCTION public.st_covers(raster, int4, raster, int4) IS 'args: rastA, nbandA, rastB, nbandB - Return true if no points of raster rastB lie outside raster rastA.';

-- DROP FUNCTION public.st_covers(geography, geography);

CREATE OR REPLACE FUNCTION public.st_covers(geog1 geography, geog2 geography)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$geography_covers$function$
;

-- DROP FUNCTION public.st_cpawithin(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_cpawithin(geometry, geometry, double precision)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_CPAWithin$function$
;

COMMENT ON FUNCTION public.st_cpawithin(geometry, geometry, float8) IS 'args: track1, track2, maxdist - Returns true if the closest point of approach of two trajectoriesis within the specified distance.';

-- DROP FUNCTION public.st_createoverview(regclass, name, int4, text);

CREATE OR REPLACE FUNCTION public.st_createoverview(tab regclass, col name, factor integer, algo text DEFAULT 'NearestNeighbour'::text)
 RETURNS regclass
 LANGUAGE plpgsql
 STRICT
AS $function$
DECLARE
  sinfo RECORD; -- source info
  sql TEXT;
  ttab TEXT;
BEGIN

  -- 0. Check arguments, we need to ensure:
  --    a. Source table has a raster column with given name
  --    b. Source table has a fixed scale (or "factor" would have no meaning)
  --    c. Source table has a known extent ? (we could actually compute it)
  --    d. Source table has a fixed tile size (or "factor" would have no meaning?)
  -- # all of the above can be checked with a query to raster_columns
  sql := 'SELECT r.r_table_schema sch, r.r_table_name tab, '
      || 'r.scale_x sfx, r.scale_y sfy, r.blocksize_x tw, '
      || 'r.blocksize_y th, r.extent ext, r.srid FROM public.raster_columns r, '
      || 'pg_class c, pg_namespace n WHERE r.r_table_schema = n.nspname '
      || 'AND r.r_table_name = c.relname AND r_raster_column = $2 AND '
      || ' c.relnamespace = n.oid AND c.oid = $1'
  ;
  EXECUTE sql INTO sinfo USING tab, col;
  IF sinfo IS NULL THEN
      RAISE EXCEPTION '%.% raster column does not exist', tab::text, col;
  END IF;
  IF sinfo.sfx IS NULL or sinfo.sfy IS NULL THEN
    RAISE EXCEPTION 'cannot create overview without scale constraint, try select AddRasterConstraints(''%'', ''%'');', tab::text, col;
  END IF;
  IF sinfo.tw IS NULL or sinfo.tw IS NULL THEN
    RAISE EXCEPTION 'cannot create overview without tilesize constraint, try select AddRasterConstraints(''%'', ''%'');', tab::text, col;
  END IF;
  IF sinfo.ext IS NULL THEN
    RAISE EXCEPTION 'cannot create overview without extent constraint, try select AddRasterConstraints(''%'', ''%'');', tab::text, col;
  END IF;

  -- TODO: lookup in raster_overviews to see if there's any
  --       lower-resolution table to start from

  ttab := 'o_' || factor || '_' || sinfo.tab;
  sql := 'CREATE TABLE ' || quote_ident(sinfo.sch)
      || '.' || quote_ident(ttab)
      || ' AS SELECT ST_Retile($1, $2, $3, $4, $5, $6, $7) '
      || quote_ident(col);
  EXECUTE sql USING tab, col, sinfo.ext,
                    sinfo.sfx * factor, sinfo.sfy * factor,
                    sinfo.tw, sinfo.th, algo;

  -- TODO: optimize this using knowledge we have about
  --       the characteristics of the target column ?
  PERFORM public.AddRasterConstraints(sinfo.sch, ttab, col);

  PERFORM  public.AddOverviewConstraints(sinfo.sch, ttab, col,
                                 sinfo.sch, sinfo.tab, col, factor);

    -- return the schema as well as the table
  RETURN sinfo.sch||'.'||ttab;
END;
$function$
;

COMMENT ON FUNCTION public.st_createoverview(regclass, name, int4, text) IS 'args: tab, col, factor, algo=''NearestNeighbor'' - Create an reduced resolution version of a given raster coverage.';

-- DROP FUNCTION public.st_crosses(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_crosses(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$crosses$function$
;

-- DROP FUNCTION public.st_curvetoline(geometry, float8, int4, int4);

CREATE OR REPLACE FUNCTION public.st_curvetoline(geom geometry, tol double precision DEFAULT 32, toltype integer DEFAULT 0, flags integer DEFAULT 0)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_CurveToLine$function$
;

COMMENT ON FUNCTION public.st_curvetoline(geometry, float8, int4, int4) IS 'args: curveGeom, tolerance, tolerance_type, flags - Converts a geometry containing curves to a linear geometry.';

-- DROP FUNCTION public.st_delaunaytriangles(geometry, float8, int4);

CREATE OR REPLACE FUNCTION public.st_delaunaytriangles(g1 geometry, tolerance double precision DEFAULT 0.0, flags integer DEFAULT 0)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_DelaunayTriangles$function$
;

COMMENT ON FUNCTION public.st_delaunaytriangles(geometry, float8, int4) IS 'args: g1, tolerance, flags - Returns the Delaunay triangulation of the vertices of a geometry.';

-- DROP FUNCTION public.st_dfullywithin(raster, int4, raster, int4, float8);

CREATE OR REPLACE FUNCTION public.st_dfullywithin(rast1 raster, nband1 integer, rast2 raster, nband2 integer, distance double precision)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT $1::public.geometry OPERATOR(public.&&) public.ST_Expand(public.ST_ConvexHull($3), $5) AND $3::geometry OPERATOR(public.&&) public.ST_Expand(public.ST_ConvexHull($1), $5) AND CASE WHEN $2 IS NULL OR $4 IS NULL THEN public._ST_DFullyWithin(public.ST_ConvexHull($1), public.ST_Convexhull($3), $5) ELSE public._ST_DFullyWithin($1, $2, $3, $4, $5) END $function$
;

COMMENT ON FUNCTION public.st_dfullywithin(raster, int4, raster, int4, float8) IS 'args: rastA, nbandA, rastB, nbandB, distance_of_srid - Return true if rasters rastA and rastB are fully within the specified distance of each other.';

-- DROP FUNCTION public.st_dfullywithin(raster, raster, float8);

CREATE OR REPLACE FUNCTION public.st_dfullywithin(rast1 raster, rast2 raster, distance double precision)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT public.ST_DFullyWithin($1, NULL::integer, $2, NULL::integer, $3) $function$
;

COMMENT ON FUNCTION public.st_dfullywithin(raster, raster, float8) IS 'args: rastA, rastB, distance_of_srid - Return true if rasters rastA and rastB are fully within the specified distance of each other.';

-- DROP FUNCTION public.st_dfullywithin(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_dfullywithin(geom1 geometry, geom2 geometry, double precision)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$LWGEOM_dfullywithin$function$
;

-- DROP FUNCTION public.st_difference(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_difference(geom1 geometry, geom2 geometry, gridsize double precision DEFAULT '-1.0'::numeric)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_Difference$function$
;

COMMENT ON FUNCTION public.st_difference(geometry, geometry, float8) IS 'args: geomA, geomB, gridSize = -1 - Returns a geometry representing the part of geometry A that does not intersect geometry B.';

-- DROP FUNCTION public.st_dimension(geometry);

CREATE OR REPLACE FUNCTION public.st_dimension(geometry)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_dimension$function$
;

COMMENT ON FUNCTION public.st_dimension(geometry) IS 'args: g - Returns the topological dimension of a geometry.';

-- DROP FUNCTION public.st_disjoint(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public.st_disjoint(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT CASE WHEN $2 IS NULL OR $4 IS NULL THEN public.ST_Disjoint(public.ST_ConvexHull($1), public.ST_ConvexHull($3)) ELSE NOT public._ST_intersects($1, $2, $3, $4) END $function$
;

COMMENT ON FUNCTION public.st_disjoint(raster, int4, raster, int4) IS 'args: rastA, nbandA, rastB, nbandB - Return true if raster rastA does not spatially intersect rastB.';

-- DROP FUNCTION public.st_disjoint(raster, raster);

CREATE OR REPLACE FUNCTION public.st_disjoint(rast1 raster, rast2 raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT public.ST_Disjoint($1, NULL::integer, $2, NULL::integer) $function$
;

COMMENT ON FUNCTION public.st_disjoint(raster, raster) IS 'args: rastA, rastB - Return true if raster rastA does not spatially intersect rastB.';

-- DROP FUNCTION public.st_disjoint(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_disjoint(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$disjoint$function$
;

-- DROP FUNCTION public.st_distance(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_distance(geom1 geometry, geom2 geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_Distance$function$
;

COMMENT ON FUNCTION public.st_distance(geometry, geometry) IS 'args: g1, g2 - Returns the distance between two geometry or geography values.';

-- DROP FUNCTION public.st_distance(text, text);

CREATE OR REPLACE FUNCTION public.st_distance(text, text)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_Distance($1::public.geometry, $2::public.geometry);  $function$
;

-- DROP FUNCTION public.st_distance(geography, geography, bool);

CREATE OR REPLACE FUNCTION public.st_distance(geog1 geography, geog2 geography, use_spheroid boolean DEFAULT true)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$geography_distance$function$
;

COMMENT ON FUNCTION public.st_distance(geography, geography, bool) IS 'args: geog1, geog2, use_spheroid=true - Returns the distance between two geometry or geography values.';

-- DROP FUNCTION public.st_distancecpa(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_distancecpa(geometry, geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_DistanceCPA$function$
;

COMMENT ON FUNCTION public.st_distancecpa(geometry, geometry) IS 'args: track1, track2 - Returns the distance between the closest point of approach of two trajectories.';

-- DROP FUNCTION public.st_distancesphere(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_distancesphere(geom1 geometry, geom2 geometry)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$select public.ST_distance( public.geography($1), public.geography($2),false)$function$
;

COMMENT ON FUNCTION public.st_distancesphere(geometry, geometry) IS 'args: geomlonlatA, geomlonlatB - Returns minimum distance in meters between two lon/lat geometries using a spherical earth model.';

-- DROP FUNCTION public.st_distancespheroid(geometry, geometry, spheroid);

CREATE OR REPLACE FUNCTION public.st_distancespheroid(geom1 geometry, geom2 geometry, spheroid)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_distance_ellipsoid$function$
;

COMMENT ON FUNCTION public.st_distancespheroid(geometry, geometry, spheroid) IS 'args: geomlonlatA, geomlonlatB, measurement_spheroid - Returns the minimum distance between two lon/lat geometries using a spheroidal earth model.';

-- DROP FUNCTION public.st_distinct4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public.st_distinct4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT COUNT(DISTINCT unnest)::double precision FROM unnest($1) $function$
;

COMMENT ON FUNCTION public.st_distinct4ma(in _float8, in _int4, variadic _text) IS 'args: value, pos, VARIADIC userargs - Raster processing function that calculates the number of unique pixel values in a neighborhood.';

-- DROP FUNCTION public.st_distinct4ma(in _float8, in text, variadic _text);

CREATE OR REPLACE FUNCTION public.st_distinct4ma(matrix double precision[], nodatamode text, VARIADIC args text[])
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT COUNT(DISTINCT unnest)::float FROM unnest($1) $function$
;

COMMENT ON FUNCTION public.st_distinct4ma(in _float8, in text, variadic _text) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the number of unique pixel values in a neighborhood.';

-- DROP FUNCTION public.st_dump(geometry);

CREATE OR REPLACE FUNCTION public.st_dump(geometry)
 RETURNS SETOF geometry_dump
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_dump$function$
;

COMMENT ON FUNCTION public.st_dump(geometry) IS 'args: g1 - Returns a set of geometry_dump rows for the components of a geometry.';

-- DROP FUNCTION public.st_dumpaspolygons(raster, int4, bool);

CREATE OR REPLACE FUNCTION public.st_dumpaspolygons(rast raster, band integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true)
 RETURNS SETOF geomval
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_dumpAsPolygons$function$
;

COMMENT ON FUNCTION public.st_dumpaspolygons(raster, int4, bool) IS 'args: rast, band_num=1, exclude_nodata_value=TRUE - Returns a set of geomval (geom,val) rows, from a given raster band. If no band number is specified, band num defaults to 1.';

-- DROP FUNCTION public.st_dumppoints(geometry);

CREATE OR REPLACE FUNCTION public.st_dumppoints(geometry)
 RETURNS SETOF geometry_dump
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$LWGEOM_dumppoints$function$
;

COMMENT ON FUNCTION public.st_dumppoints(geometry) IS 'args: geom - Returns a set of geometry_dump rows for the points in a geometry.';

-- DROP FUNCTION public.st_dumprings(geometry);

CREATE OR REPLACE FUNCTION public.st_dumprings(geometry)
 RETURNS SETOF geometry_dump
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_dump_rings$function$
;

COMMENT ON FUNCTION public.st_dumprings(geometry) IS 'args: a_polygon - Returns a set of geometry_dump rows for the exterior and interior rings of a Polygon.';

-- DROP FUNCTION public.st_dumpvalues(raster, int4, bool);

CREATE OR REPLACE FUNCTION public.st_dumpvalues(rast raster, nband integer, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision[]
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT valarray FROM public.ST_dumpvalues($1, ARRAY[$2]::integer[], $3) $function$
;

COMMENT ON FUNCTION public.st_dumpvalues(raster, int4, bool) IS 'args: rast, nband, exclude_nodata_value=true - Get the values of the specified band as a 2-dimension array.';

-- DROP FUNCTION public.st_dumpvalues(raster, _int4, bool);

CREATE OR REPLACE FUNCTION public.st_dumpvalues(rast raster, nband integer[] DEFAULT NULL::integer[], exclude_nodata_value boolean DEFAULT true)
 RETURNS TABLE(nband integer, valarray double precision[])
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_dumpValues$function$
;

COMMENT ON FUNCTION public.st_dumpvalues(raster, _int4, bool) IS 'args: rast, nband=NULL, exclude_nodata_value=true - Get the values of the specified band as a 2-dimension array.';

-- DROP FUNCTION public.st_dwithin(text, text, float8);

CREATE OR REPLACE FUNCTION public.st_dwithin(text, text, double precision)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_DWithin($1::public.geometry, $2::public.geometry, $3);  $function$
;

-- DROP FUNCTION public.st_dwithin(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_dwithin(geom1 geometry, geom2 geometry, double precision)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$LWGEOM_dwithin$function$
;

-- DROP FUNCTION public.st_dwithin(raster, raster, float8);

CREATE OR REPLACE FUNCTION public.st_dwithin(rast1 raster, rast2 raster, distance double precision)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT public.st_dwithin($1, NULL::integer, $2, NULL::integer, $3) $function$
;

COMMENT ON FUNCTION public.st_dwithin(raster, raster, float8) IS 'args: rastA, rastB, distance_of_srid - Return true if rasters rastA and rastB are within the specified distance of each other.';

-- DROP FUNCTION public.st_dwithin(raster, int4, raster, int4, float8);

CREATE OR REPLACE FUNCTION public.st_dwithin(rast1 raster, nband1 integer, rast2 raster, nband2 integer, distance double precision)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT $1::public.geometry OPERATOR(public.&&) ST_Expand(ST_ConvexHull($3), $5) AND $3::geometry OPERATOR(public.&&) ST_Expand(ST_ConvexHull($1), $5) AND CASE WHEN $2 IS NULL OR $4 IS NULL THEN public._ST_dwithin(st_convexhull($1), st_convexhull($3), $5) ELSE public._ST_dwithin($1, $2, $3, $4, $5) END $function$
;

COMMENT ON FUNCTION public.st_dwithin(raster, int4, raster, int4, float8) IS 'args: rastA, nbandA, rastB, nbandB, distance_of_srid - Return true if rasters rastA and rastB are within the specified distance of each other.';

-- DROP FUNCTION public.st_dwithin(geography, geography, float8, bool);

CREATE OR REPLACE FUNCTION public.st_dwithin(geog1 geography, geog2 geography, tolerance double precision, use_spheroid boolean DEFAULT true)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$geography_dwithin$function$
;

-- DROP FUNCTION public.st_endpoint(geometry);

CREATE OR REPLACE FUNCTION public.st_endpoint(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_endpoint_linestring$function$
;

COMMENT ON FUNCTION public.st_endpoint(geometry) IS 'args: g - Returns the last point of a LineString or CircularLineString.';

-- DROP FUNCTION public.st_envelope(raster);

CREATE OR REPLACE FUNCTION public.st_envelope(raster)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_envelope$function$
;

COMMENT ON FUNCTION public.st_envelope(raster) IS 'args: rast - Returns the polygon representation of the extent of the raster.';

-- DROP FUNCTION public.st_envelope(geometry);

CREATE OR REPLACE FUNCTION public.st_envelope(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_envelope$function$
;

COMMENT ON FUNCTION public.st_envelope(geometry) IS 'args: g1 - Returns a geometry representing the bounding box of a geometry.';

-- DROP FUNCTION public.st_equals(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_equals(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$ST_Equals$function$
;

-- DROP FUNCTION public.st_estimatedextent(text, text, text);

CREATE OR REPLACE FUNCTION public.st_estimatedextent(text, text, text)
 RETURNS box2d
 LANGUAGE c
 STABLE STRICT SECURITY DEFINER
AS '$libdir/postgis-3', $function$gserialized_estimated_extent$function$
;

COMMENT ON FUNCTION public.st_estimatedextent(text, text, text) IS 'args: schema_name, table_name, geocolumn_name - Return the estimated extent of a spatial table.';

-- DROP FUNCTION public.st_estimatedextent(text, text);

CREATE OR REPLACE FUNCTION public.st_estimatedextent(text, text)
 RETURNS box2d
 LANGUAGE c
 STABLE STRICT SECURITY DEFINER
AS '$libdir/postgis-3', $function$gserialized_estimated_extent$function$
;

COMMENT ON FUNCTION public.st_estimatedextent(text, text) IS 'args: table_name, geocolumn_name - Return the estimated extent of a spatial table.';

-- DROP FUNCTION public.st_estimatedextent(text, text, text, bool);

CREATE OR REPLACE FUNCTION public.st_estimatedextent(text, text, text, boolean)
 RETURNS box2d
 LANGUAGE c
 STABLE STRICT SECURITY DEFINER
AS '$libdir/postgis-3', $function$gserialized_estimated_extent$function$
;

COMMENT ON FUNCTION public.st_estimatedextent(text, text, text, bool) IS 'args: schema_name, table_name, geocolumn_name, parent_only - Return the estimated extent of a spatial table.';

-- DROP FUNCTION public.st_expand(box3d, float8);

CREATE OR REPLACE FUNCTION public.st_expand(box3d, double precision)
 RETURNS box3d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$BOX3D_expand$function$
;

COMMENT ON FUNCTION public.st_expand(box3d, float8) IS 'args: box, units_to_expand - Returns a bounding box expanded from another bounding box or a geometry.';

-- DROP FUNCTION public.st_expand(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_expand(geometry, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_expand$function$
;

COMMENT ON FUNCTION public.st_expand(geometry, float8) IS 'args: geom, units_to_expand - Returns a bounding box expanded from another bounding box or a geometry.';

-- DROP FUNCTION public.st_expand(box3d, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_expand(box box3d, dx double precision, dy double precision, dz double precision DEFAULT 0)
 RETURNS box3d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$BOX3D_expand$function$
;

COMMENT ON FUNCTION public.st_expand(box3d, float8, float8, float8) IS 'args: box, dx, dy, dz=0 - Returns a bounding box expanded from another bounding box or a geometry.';

-- DROP FUNCTION public.st_expand(box2d, float8, float8);

CREATE OR REPLACE FUNCTION public.st_expand(box box2d, dx double precision, dy double precision)
 RETURNS box2d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$BOX2D_expand$function$
;

COMMENT ON FUNCTION public.st_expand(box2d, float8, float8) IS 'args: box, dx, dy - Returns a bounding box expanded from another bounding box or a geometry.';

-- DROP FUNCTION public.st_expand(box2d, float8);

CREATE OR REPLACE FUNCTION public.st_expand(box2d, double precision)
 RETURNS box2d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$BOX2D_expand$function$
;

COMMENT ON FUNCTION public.st_expand(box2d, float8) IS 'args: box, units_to_expand - Returns a bounding box expanded from another bounding box or a geometry.';

-- DROP FUNCTION public.st_expand(geometry, float8, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_expand(geom geometry, dx double precision, dy double precision, dz double precision DEFAULT 0, dm double precision DEFAULT 0)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_expand$function$
;

COMMENT ON FUNCTION public.st_expand(geometry, float8, float8, float8, float8) IS 'args: geom, dx, dy, dz=0, dm=0 - Returns a bounding box expanded from another bounding box or a geometry.';

-- DROP AGGREGATE public.st_extent(geometry);

CREATE OR REPLACE AGGREGATE public.st_extent(public.geometry) (
	SFUNC = public.st_combinebbox,
	STYPE = box3d,
	FINALFUNC = public.box2d,
	FINALFUNC_MODIFY = READ_ONLY
);

COMMENT ON AGGREGATE public.st_extent(geometry) IS 'args: geomfield - an aggregate function that returns the bounding box that bounds rows of geometries.';

-- DROP FUNCTION public.st_exteriorring(geometry);

CREATE OR REPLACE FUNCTION public.st_exteriorring(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_exteriorring_polygon$function$
;

COMMENT ON FUNCTION public.st_exteriorring(geometry) IS 'args: a_polygon - Returns a LineString representing the exterior ring of a Polygon.';

-- DROP FUNCTION public.st_filterbym(geometry, float8, float8, bool);

CREATE OR REPLACE FUNCTION public.st_filterbym(geometry, double precision, double precision DEFAULT NULL::double precision, boolean DEFAULT false)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$LWGEOM_FilterByM$function$
;

COMMENT ON FUNCTION public.st_filterbym(geometry, float8, float8, bool) IS 'args: geom, min, max = null, returnM = false - Removes vertices based on their M value';

-- DROP FUNCTION public.st_findextent(text, text);

CREATE OR REPLACE FUNCTION public.st_findextent(text, text)
 RETURNS box2d
 LANGUAGE plpgsql
 STABLE PARALLEL SAFE STRICT
AS $function$
DECLARE
	tablename alias for $1;
	columnname alias for $2;
	myrec RECORD;

BEGIN
	FOR myrec IN EXECUTE 'SELECT public.ST_Extent("' || columnname || '") As extent FROM "' || tablename || '"' LOOP
		return myrec.extent;
	END LOOP;
END;
$function$
;

-- DROP FUNCTION public.st_findextent(text, text, text);

CREATE OR REPLACE FUNCTION public.st_findextent(text, text, text)
 RETURNS box2d
 LANGUAGE plpgsql
 STABLE PARALLEL SAFE STRICT
AS $function$
DECLARE
	schemaname alias for $1;
	tablename alias for $2;
	columnname alias for $3;
	myrec RECORD;
BEGIN
	FOR myrec IN EXECUTE 'SELECT public.ST_Extent("' || columnname || '") As extent FROM "' || schemaname || '"."' || tablename || '"' LOOP
		return myrec.extent;
	END LOOP;
END;
$function$
;

-- DROP FUNCTION public.st_flipcoordinates(geometry);

CREATE OR REPLACE FUNCTION public.st_flipcoordinates(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_FlipCoordinates$function$
;

COMMENT ON FUNCTION public.st_flipcoordinates(geometry) IS 'args: geom - Returns a version of a geometry with X and Y axis flipped.';

-- DROP FUNCTION public.st_force2d(geometry);

CREATE OR REPLACE FUNCTION public.st_force2d(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_force_2d$function$
;

COMMENT ON FUNCTION public.st_force2d(geometry) IS 'args: geomA - Force the geometries into a "2-dimensional mode".';

-- DROP FUNCTION public.st_force3d(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_force3d(geom geometry, zvalue double precision DEFAULT 0.0)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_Force3DZ($1, $2)$function$
;

COMMENT ON FUNCTION public.st_force3d(geometry, float8) IS 'args: geomA, Zvalue = 0.0 - Force the geometries into XYZ mode. This is an alias for ST_Force3DZ.';

-- DROP FUNCTION public.st_force3dm(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_force3dm(geom geometry, mvalue double precision DEFAULT 0.0)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_force_3dm$function$
;

COMMENT ON FUNCTION public.st_force3dm(geometry, float8) IS 'args: geomA, Mvalue = 0.0 - Force the geometries into XYM mode.';

-- DROP FUNCTION public.st_force3dz(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_force3dz(geom geometry, zvalue double precision DEFAULT 0.0)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_force_3dz$function$
;

COMMENT ON FUNCTION public.st_force3dz(geometry, float8) IS 'args: geomA, Zvalue = 0.0 - Force the geometries into XYZ mode.';

-- DROP FUNCTION public.st_force4d(geometry, float8, float8);

CREATE OR REPLACE FUNCTION public.st_force4d(geom geometry, zvalue double precision DEFAULT 0.0, mvalue double precision DEFAULT 0.0)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_force_4d$function$
;

COMMENT ON FUNCTION public.st_force4d(geometry, float8, float8) IS 'args: geomA, Zvalue = 0.0, Mvalue = 0.0 - Force the geometries into XYZM mode.';

-- DROP FUNCTION public.st_forcecollection(geometry);

CREATE OR REPLACE FUNCTION public.st_forcecollection(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_force_collection$function$
;

COMMENT ON FUNCTION public.st_forcecollection(geometry) IS 'args: geomA - Convert the geometry into a GEOMETRYCOLLECTION.';

-- DROP FUNCTION public.st_forcecurve(geometry);

CREATE OR REPLACE FUNCTION public.st_forcecurve(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_force_curve$function$
;

COMMENT ON FUNCTION public.st_forcecurve(geometry) IS 'args: g - Upcast a geometry into its curved type, if applicable.';

-- DROP FUNCTION public.st_forcepolygonccw(geometry);

CREATE OR REPLACE FUNCTION public.st_forcepolygonccw(geometry)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$ SELECT public.ST_Reverse(public.ST_ForcePolygonCW($1)) $function$
;

COMMENT ON FUNCTION public.st_forcepolygonccw(geometry) IS 'args: geom - Orients all exterior rings counter-clockwise and all interior rings clockwise.';

-- DROP FUNCTION public.st_forcepolygoncw(geometry);

CREATE OR REPLACE FUNCTION public.st_forcepolygoncw(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_force_clockwise_poly$function$
;

COMMENT ON FUNCTION public.st_forcepolygoncw(geometry) IS 'args: geom - Orients all exterior rings clockwise and all interior rings counter-clockwise.';

-- DROP FUNCTION public.st_forcerhr(geometry);

CREATE OR REPLACE FUNCTION public.st_forcerhr(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_force_clockwise_poly$function$
;

COMMENT ON FUNCTION public.st_forcerhr(geometry) IS 'args: g - Force the orientation of the vertices in a polygon to follow the Right-Hand-Rule.';

-- DROP FUNCTION public.st_forcesfs(geometry, text);

CREATE OR REPLACE FUNCTION public.st_forcesfs(geometry, version text)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_force_sfs$function$
;

COMMENT ON FUNCTION public.st_forcesfs(geometry, text) IS 'args: geomA, version - Force the geometries to use SFS 1.1 geometry types only.';

-- DROP FUNCTION public.st_forcesfs(geometry);

CREATE OR REPLACE FUNCTION public.st_forcesfs(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_force_sfs$function$
;

COMMENT ON FUNCTION public.st_forcesfs(geometry) IS 'args: geomA - Force the geometries to use SFS 1.1 geometry types only.';

-- DROP FUNCTION public.st_frechetdistance(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_frechetdistance(geom1 geometry, geom2 geometry, double precision DEFAULT '-1'::integer)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_FrechetDistance$function$
;

COMMENT ON FUNCTION public.st_frechetdistance(geometry, geometry, float8) IS 'args: g1, g2, densifyFrac = -1 - Returns the Fréchet distance between two geometries.';

-- DROP FUNCTION public.st_fromgdalraster(bytea, int4);

CREATE OR REPLACE FUNCTION public.st_fromgdalraster(gdaldata bytea, srid integer DEFAULT NULL::integer)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_fromGDALRaster$function$
;

COMMENT ON FUNCTION public.st_fromgdalraster(bytea, int4) IS 'args: gdaldata, srid=NULL - Returns a raster from a supported GDAL raster file.';

-- DROP FUNCTION public.st_gdaldrivers(out int4, out text, out text, out bool, out bool, out text);

CREATE OR REPLACE FUNCTION public.st_gdaldrivers(OUT idx integer, OUT short_name text, OUT long_name text, OUT can_read boolean, OUT can_write boolean, OUT create_options text)
 RETURNS SETOF record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getGDALDrivers$function$
;

COMMENT ON FUNCTION public.st_gdaldrivers(out int4, out text, out text, out bool, out bool, out text) IS 'args: OUT idx, OUT short_name, OUT long_name, OUT can_read, OUT can_write, OUT create_options - Returns a list of raster formats supported by PostGIS through GDAL. Only those formats with can_write=True can be used by ST_AsGDALRaster';

-- DROP FUNCTION public.st_generatepoints(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_generatepoints(area geometry, npoints integer)
 RETURNS geometry
 LANGUAGE c
 PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_GeneratePoints$function$
;

COMMENT ON FUNCTION public.st_generatepoints(geometry, int4) IS 'args: g, npoints - Generates random points contained in a Polygon or MultiPolygon.';

-- DROP FUNCTION public.st_generatepoints(geometry, int4, int4);

CREATE OR REPLACE FUNCTION public.st_generatepoints(area geometry, npoints integer, seed integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_GeneratePoints$function$
;

COMMENT ON FUNCTION public.st_generatepoints(geometry, int4, int4) IS 'args: g, npoints, seed - Generates random points contained in a Polygon or MultiPolygon.';

-- DROP FUNCTION public.st_geogfromtext(text);

CREATE OR REPLACE FUNCTION public.st_geogfromtext(text)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geography_from_text$function$
;

-- DROP FUNCTION public.st_geogfromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_geogfromwkb(bytea)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$geography_from_binary$function$
;

-- DROP FUNCTION public.st_geographyfromtext(text);

CREATE OR REPLACE FUNCTION public.st_geographyfromtext(text)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geography_from_text$function$
;

-- DROP FUNCTION public.st_geohash(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_geohash(geom geometry, maxchars integer DEFAULT 0)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_GeoHash$function$
;

-- DROP FUNCTION public.st_geohash(geography, int4);

CREATE OR REPLACE FUNCTION public.st_geohash(geog geography, maxchars integer DEFAULT 0)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_GeoHash$function$
;

-- DROP FUNCTION public.st_geomcollfromtext(text);

CREATE OR REPLACE FUNCTION public.st_geomcollfromtext(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE
	WHEN public.geometrytype(public.ST_GeomFromText($1)) = 'GEOMETRYCOLLECTION'
	THEN public.ST_GeomFromText($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_geomcollfromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_geomcollfromtext(text, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE
	WHEN public.geometrytype(public.ST_GeomFromText($1, $2)) = 'GEOMETRYCOLLECTION'
	THEN public.ST_GeomFromText($1,$2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_geomcollfromwkb(bytea, int4);

CREATE OR REPLACE FUNCTION public.st_geomcollfromwkb(bytea, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE
	WHEN public.geometrytype(public.ST_GeomFromWKB($1, $2)) = 'GEOMETRYCOLLECTION'
	THEN public.ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_geomcollfromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_geomcollfromwkb(bytea)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE
	WHEN public.geometrytype(public.ST_GeomFromWKB($1)) = 'GEOMETRYCOLLECTION'
	THEN public.ST_GeomFromWKB($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_geometricmedian(geometry, float8, int4, bool);

CREATE OR REPLACE FUNCTION public.st_geometricmedian(g geometry, tolerance double precision DEFAULT NULL::double precision, max_iter integer DEFAULT 10000, fail_if_not_converged boolean DEFAULT false)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 10000
AS '$libdir/postgis-3', $function$ST_GeometricMedian$function$
;

COMMENT ON FUNCTION public.st_geometricmedian(geometry, float8, int4, bool) IS 'args: geom, tolerance = NULL, max_iter = 10000, fail_if_not_converged = false - Returns the geometric median of a MultiPoint.';

-- DROP FUNCTION public.st_geometryfromtext(text);

CREATE OR REPLACE FUNCTION public.st_geometryfromtext(text)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_from_text$function$
;

-- DROP FUNCTION public.st_geometryfromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_geometryfromtext(text, integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_from_text$function$
;

-- DROP FUNCTION public.st_geometryn(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_geometryn(geometry, integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_geometryn_collection$function$
;

COMMENT ON FUNCTION public.st_geometryn(geometry, int4) IS 'args: geomA, n - Return the Nth geometry element of a geometry collection.';

-- DROP FUNCTION public.st_geometrytype(geometry);

CREATE OR REPLACE FUNCTION public.st_geometrytype(geometry)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$geometry_geometrytype$function$
;

COMMENT ON FUNCTION public.st_geometrytype(geometry) IS 'args: g1 - Returns the SQL-MM type of a geometry as text.';

-- DROP FUNCTION public.st_geomfromewkb(bytea);

CREATE OR REPLACE FUNCTION public.st_geomfromewkb(bytea)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOMFromEWKB$function$
;

-- DROP FUNCTION public.st_geomfromewkt(text);

CREATE OR REPLACE FUNCTION public.st_geomfromewkt(text)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$parse_WKT_lwgeom$function$
;

-- DROP FUNCTION public.st_geomfromgeohash(text, int4);

CREATE OR REPLACE FUNCTION public.st_geomfromgeohash(text, integer DEFAULT NULL::integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 50
AS $function$ SELECT CAST(public.ST_Box2dFromGeoHash($1, $2) AS geometry); $function$
;

-- DROP FUNCTION public.st_geomfromgeojson(json);

CREATE OR REPLACE FUNCTION public.st_geomfromgeojson(json)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$SELECT public.ST_GeomFromGeoJson($1::text)$function$
;

-- DROP FUNCTION public.st_geomfromgeojson(jsonb);

CREATE OR REPLACE FUNCTION public.st_geomfromgeojson(jsonb)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$SELECT public.ST_GeomFromGeoJson($1::text)$function$
;

-- DROP FUNCTION public.st_geomfromgeojson(text);

CREATE OR REPLACE FUNCTION public.st_geomfromgeojson(text)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geom_from_geojson$function$
;

-- DROP FUNCTION public.st_geomfromgml(text);

CREATE OR REPLACE FUNCTION public.st_geomfromgml(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$SELECT public._ST_GeomFromGML($1, 0)$function$
;

-- DROP FUNCTION public.st_geomfromgml(text, int4);

CREATE OR REPLACE FUNCTION public.st_geomfromgml(text, integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geom_from_gml$function$
;

-- DROP FUNCTION public.st_geomfromkml(text);

CREATE OR REPLACE FUNCTION public.st_geomfromkml(text)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geom_from_kml$function$
;

-- DROP FUNCTION public.st_geomfromtext(text);

CREATE OR REPLACE FUNCTION public.st_geomfromtext(text)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_from_text$function$
;

-- DROP FUNCTION public.st_geomfromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_geomfromtext(text, integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_from_text$function$
;

-- DROP FUNCTION public.st_geomfromtwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_geomfromtwkb(bytea)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOMFromTWKB$function$
;

-- DROP FUNCTION public.st_geomfromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_geomfromwkb(bytea)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_from_WKB$function$
;

-- DROP FUNCTION public.st_geomfromwkb(bytea, int4);

CREATE OR REPLACE FUNCTION public.st_geomfromwkb(bytea, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_SetSRID(public.ST_GeomFromWKB($1), $2)$function$
;

-- DROP FUNCTION public.st_georeference(raster, text);

CREATE OR REPLACE FUNCTION public.st_georeference(rast raster, format text DEFAULT 'GDAL'::text)
 RETURNS text
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
    DECLARE
				scale_x numeric;
				scale_y numeric;
				skew_x numeric;
				skew_y numeric;
				ul_x numeric;
				ul_y numeric;

        result text;
    BEGIN
			SELECT scalex::numeric, scaley::numeric, skewx::numeric, skewy::numeric, upperleftx::numeric, upperlefty::numeric
				INTO scale_x, scale_y, skew_x, skew_y, ul_x, ul_y FROM public.ST_Metadata(rast);

						-- scale x
            result := trunc(scale_x, 10) || E'\n';

						-- skew y
            result := result || trunc(skew_y, 10) || E'\n';

						-- skew x
            result := result || trunc(skew_x, 10) || E'\n';

						-- scale y
            result := result || trunc(scale_y, 10) || E'\n';

        IF format = 'ESRI' THEN
						-- upper left x
            result := result || trunc((ul_x + scale_x * 0.5), 10) || E'\n';

						-- upper left y
            result = result || trunc((ul_y + scale_y * 0.5), 10) || E'\n';
        ELSE -- IF format = 'GDAL' THEN
						-- upper left x
            result := result || trunc(ul_x, 10) || E'\n';

						-- upper left y
            result := result || trunc(ul_y, 10) || E'\n';
        END IF;

        RETURN result;
    END;
    $function$
;

COMMENT ON FUNCTION public.st_georeference(raster, text) IS 'args: rast, format=GDAL - Returns the georeference meta data in GDAL or ESRI format as commonly seen in a world file. Default is GDAL.';

-- DROP FUNCTION public.st_geotransform(in raster, out float8, out float8, out float8, out float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_geotransform(raster, OUT imag double precision, OUT jmag double precision, OUT theta_i double precision, OUT theta_ij double precision, OUT xoffset double precision, OUT yoffset double precision)
 RETURNS record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_getGeotransform$function$
;

-- DROP FUNCTION public.st_gmltosql(text);

CREATE OR REPLACE FUNCTION public.st_gmltosql(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$SELECT public._ST_GeomFromGML($1, 0)$function$
;

-- DROP FUNCTION public.st_gmltosql(text, int4);

CREATE OR REPLACE FUNCTION public.st_gmltosql(text, integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geom_from_gml$function$
;

-- DROP FUNCTION public.st_grayscale(raster, int4, int4, int4, text);

CREATE OR REPLACE FUNCTION public.st_grayscale(rast raster, redband integer DEFAULT 1, greenband integer DEFAULT 2, blueband integer DEFAULT 3, extenttype text DEFAULT 'INTERSECTION'::text)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
	BEGIN

		RETURN public.ST_Grayscale(
			ARRAY[
				ROW(rast, redband)::rastbandarg,
				ROW(rast, greenband)::rastbandarg,
				ROW(rast, blueband)::rastbandarg
			]::rastbandarg[],
			extenttype
		);

	END;
	$function$
;

COMMENT ON FUNCTION public.st_grayscale(raster, int4, int4, int4, text) IS 'args: rast, redband=1, greenband=2, blueband=3, extenttype=INTERSECTION - Creates a new one-8BUI band raster from the source raster and specified bands representing Red, Green and Blue';

-- DROP FUNCTION public.st_grayscale(_rastbandarg, text);

CREATE OR REPLACE FUNCTION public.st_grayscale(rastbandargset rastbandarg[], extenttype text DEFAULT 'INTERSECTION'::text)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE

		_NBANDS integer DEFAULT 3;
		_NODATA integer DEFAULT 255;
		_PIXTYPE text DEFAULT '8BUI';

		_set rastbandarg[];

		nrast integer;
		idx integer;
		rast public.raster;
		nband integer;

		stats summarystats;
		nodata double precision;
		nodataval integer;
		reclassexpr text;

	BEGIN

		-- check for three rastbandarg
		nrast := array_length(rastbandargset, 1);
		IF nrast < _NBANDS THEN
			RAISE EXCEPTION '''rastbandargset'' must have three bands for red, green and blue';
		ELSIF nrast > _NBANDS THEN
			RAISE WARNING 'Only the first three elements of ''rastbandargset'' will be used';
			_set := rastbandargset[1:3];
		ELSE
			_set := rastbandargset;
		END IF;

		FOR idx IN 1.._NBANDS LOOP

			rast := _set[idx].rast;
			nband := _set[idx].nband;

			-- check that each raster has the specified band
			IF public.ST_HasNoBand(rast, nband) THEN

				RAISE EXCEPTION 'Band at index ''%'' not found for raster ''%''', nband, idx;

			-- check that each band is 8BUI. if not, reclassify to 8BUI
			ELSIF public.ST_BandPixelType(rast, nband) != _PIXTYPE THEN

				stats := public.ST_SummaryStats(rast, nband);
				nodata := public.ST_BandNoDataValue(rast, nband);

				IF nodata IS NOT NULL THEN
					nodataval := _NODATA;
					reclassexpr := concat(
						concat('[', nodata , '-', nodata, ']:', _NODATA, '-', _NODATA, ','),
						concat('[', stats.min , '-', stats.max , ']:0-', _NODATA - 1)
					);
				ELSE
					nodataval := NULL;
					reclassexpr := concat('[', stats.min , '-', stats.max , ']:0-', _NODATA);
				END IF;

				_set[idx] := ROW(
					public.ST_Reclass(
						rast,
						ROW(nband, reclassexpr, _PIXTYPE, nodataval)::reclassarg
					),
					nband
				)::rastbandarg;

			END IF;

		END LOOP;

		-- call map algebra with _st_grayscale4ma
		RETURN public.ST_MapAlgebra(
			_set,
			'public._ST_Grayscale4MA(double precision[][][], integer[][], text[])'::regprocedure,
			'8BUI',
			extenttype
		);

	END;
	$function$
;

COMMENT ON FUNCTION public.st_grayscale(_rastbandarg, text) IS 'args: rastbandargset, extenttype=INTERSECTION - Creates a new one-8BUI band raster from the source raster and specified bands representing Red, Green and Blue';

-- DROP FUNCTION public.st_hasarc(geometry);

CREATE OR REPLACE FUNCTION public.st_hasarc(geometry geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_has_arc$function$
;

COMMENT ON FUNCTION public.st_hasarc(geometry) IS 'args: geomA - Tests if a geometry contains a circular arc';

-- DROP FUNCTION public.st_hasnoband(raster, int4);

CREATE OR REPLACE FUNCTION public.st_hasnoband(rast raster, nband integer DEFAULT 1)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_hasNoBand$function$
;

COMMENT ON FUNCTION public.st_hasnoband(raster, int4) IS 'args: rast, bandnum=1 - Returns true if there is no band with given band number. If no band number is specified, then band number 1 is assumed.';

-- DROP FUNCTION public.st_hausdorffdistance(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_hausdorffdistance(geom1 geometry, geom2 geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$hausdorffdistance$function$
;

COMMENT ON FUNCTION public.st_hausdorffdistance(geometry, geometry) IS 'args: g1, g2 - Returns the Hausdorff distance between two geometries.';

-- DROP FUNCTION public.st_hausdorffdistance(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_hausdorffdistance(geom1 geometry, geom2 geometry, double precision)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$hausdorffdistancedensify$function$
;

COMMENT ON FUNCTION public.st_hausdorffdistance(geometry, geometry, float8) IS 'args: g1, g2, densifyFrac - Returns the Hausdorff distance between two geometries.';

-- DROP FUNCTION public.st_height(raster);

CREATE OR REPLACE FUNCTION public.st_height(raster)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getHeight$function$
;

COMMENT ON FUNCTION public.st_height(raster) IS 'args: rast - Returns the height of the raster in pixels.';

-- DROP FUNCTION public.st_hexagon(float8, int4, int4, geometry);

CREATE OR REPLACE FUNCTION public.st_hexagon(size double precision, cell_i integer, cell_j integer, origin geometry DEFAULT '010100000000000000000000000000000000000000'::geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_Hexagon$function$
;

COMMENT ON FUNCTION public.st_hexagon(float8, int4, int4, geometry) IS 'args: size, cell_i, cell_j, origin - Returns a single hexagon, using the provided edge size and cell coordinate within the hexagon grid space.';

-- DROP FUNCTION public.st_hexagongrid(in float8, in geometry, out geometry, out int4, out int4);

CREATE OR REPLACE FUNCTION public.st_hexagongrid(size double precision, bounds geometry, OUT geom geometry, OUT i integer, OUT j integer)
 RETURNS SETOF record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_ShapeGrid$function$
;

COMMENT ON FUNCTION public.st_hexagongrid(in float8, in geometry, out geometry, out int4, out int4) IS 'args: size, bounds - Returns a set of hexagons and cell indices that completely cover the bounds of the geometry argument.';

-- DROP FUNCTION public.st_hillshade(raster, int4, raster, text, float8, float8, float8, float8, bool);

CREATE OR REPLACE FUNCTION public.st_hillshade(rast raster, nband integer, customextent raster, pixeltype text DEFAULT '32BF'::text, azimuth double precision DEFAULT 315.0, altitude double precision DEFAULT 45.0, max_bright double precision DEFAULT 255.0, scale double precision DEFAULT 1.0, interpolate_nodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_rast public.raster;
		_nband integer;
		_pixtype text;
		_pixwidth double precision;
		_pixheight double precision;
		_width integer;
		_height integer;
		_customextent public.raster;
		_extenttype text;
	BEGIN
		_customextent := customextent;
		IF _customextent IS NULL THEN
			_extenttype := 'FIRST';
		ELSE
			_extenttype := 'CUSTOM';
		END IF;

		IF interpolate_nodata IS TRUE THEN
			_rast := public.ST_MapAlgebra(
				ARRAY[ROW(rast, nband)]::rastbandarg[],
				'public.st_invdistweight4ma(double precision[][][], integer[][], text[])'::regprocedure,
				pixeltype,
				'FIRST', NULL,
				1, 1
			);
			_nband := 1;
			_pixtype := NULL;
		ELSE
			_rast := rast;
			_nband := nband;
			_pixtype := pixeltype;
		END IF;

		-- get properties
		_pixwidth := public.ST_PixelWidth(_rast);
		_pixheight := public.ST_PixelHeight(_rast);
		SELECT width, height, scalex INTO _width, _height FROM public.ST_Metadata(_rast);

		RETURN public.ST_MapAlgebra(
			ARRAY[ROW(_rast, _nband)]::rastbandarg[],
			' public._ST_hillshade4ma(double precision[][][], integer[][], text[])'::regprocedure,
			_pixtype,
			_extenttype, _customextent,
			1, 1,
			_pixwidth::text, _pixheight::text,
			_width::text, _height::text,
			$5::text, $6::text,
			$7::text, $8::text
		);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_hillshade(raster, int4, raster, text, float8, float8, float8, float8, bool) IS 'args: rast, band, customextent, pixeltype=32BF, azimuth=315, altitude=45, max_bright=255, scale=1.0, interpolate_nodata=FALSE - Returns the hypothetical illumination of an elevation raster band using provided azimuth, altitude, brightness and scale inputs.';

-- DROP FUNCTION public.st_hillshade(raster, int4, text, float8, float8, float8, float8, bool);

CREATE OR REPLACE FUNCTION public.st_hillshade(rast raster, nband integer DEFAULT 1, pixeltype text DEFAULT '32BF'::text, azimuth double precision DEFAULT 315.0, altitude double precision DEFAULT 45.0, max_bright double precision DEFAULT 255.0, scale double precision DEFAULT 1.0, interpolate_nodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_hillshade($1, $2, NULL::public.raster, $3, $4, $5, $6, $7, $8) $function$
;

COMMENT ON FUNCTION public.st_hillshade(raster, int4, text, float8, float8, float8, float8, bool) IS 'args: rast, band=1, pixeltype=32BF, azimuth=315, altitude=45, max_bright=255, scale=1.0, interpolate_nodata=FALSE - Returns the hypothetical illumination of an elevation raster band using provided azimuth, altitude, brightness and scale inputs.';

-- DROP FUNCTION public.st_histogram(in raster, in int4, in bool, in int4, in _float8, in bool, out float8, out float8, out int8, out float8);

CREATE OR REPLACE FUNCTION public.st_histogram(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, bins integer DEFAULT 0, width double precision[] DEFAULT NULL::double precision[], "right" boolean DEFAULT false, OUT min double precision, OUT max double precision, OUT count bigint, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT min, max, count, percent FROM public._ST_histogram($1, $2, $3, 1, $4, $5, $6) $function$
;

COMMENT ON FUNCTION public.st_histogram(in raster, in int4, in bool, in int4, in _float8, in bool, out float8, out float8, out int8, out float8) IS 'args: rast, nband=1, exclude_nodata_value=true, bins=autocomputed, width=NULL, right=false - Returns a set of record summarizing a raster or raster coverage data distribution separate bin ranges. Number of bins are autocomputed if not specified.';

-- DROP FUNCTION public.st_histogram(in raster, in int4, in int4, in _float8, in bool, out float8, out float8, out int8, out float8);

CREATE OR REPLACE FUNCTION public.st_histogram(rast raster, nband integer, bins integer, width double precision[] DEFAULT NULL::double precision[], "right" boolean DEFAULT false, OUT min double precision, OUT max double precision, OUT count bigint, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT min, max, count, percent FROM public._ST_histogram($1, $2, TRUE, 1, $3, $4, $5) $function$
;

COMMENT ON FUNCTION public.st_histogram(in raster, in int4, in int4, in _float8, in bool, out float8, out float8, out int8, out float8) IS 'args: rast, nband, bins, width=NULL, right=false - Returns a set of record summarizing a raster or raster coverage data distribution separate bin ranges. Number of bins are autocomputed if not specified.';

-- DROP FUNCTION public.st_histogram(in raster, in int4, in bool, in int4, in bool, out float8, out float8, out int8, out float8);

CREATE OR REPLACE FUNCTION public.st_histogram(rast raster, nband integer, exclude_nodata_value boolean, bins integer, "right" boolean, OUT min double precision, OUT max double precision, OUT count bigint, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT min, max, count, percent FROM public._ST_histogram($1, $2, $3, 1, $4, NULL, $5) $function$
;

COMMENT ON FUNCTION public.st_histogram(in raster, in int4, in bool, in int4, in bool, out float8, out float8, out int8, out float8) IS 'args: rast, nband, exclude_nodata_value, bins, right - Returns a set of record summarizing a raster or raster coverage data distribution separate bin ranges. Number of bins are autocomputed if not specified.';

-- DROP FUNCTION public.st_histogram(in raster, in int4, in int4, in bool, out float8, out float8, out int8, out float8);

CREATE OR REPLACE FUNCTION public.st_histogram(rast raster, nband integer, bins integer, "right" boolean, OUT min double precision, OUT max double precision, OUT count bigint, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT min, max, count, percent FROM public._ST_histogram($1, $2, TRUE, 1, $3, NULL, $4) $function$
;

COMMENT ON FUNCTION public.st_histogram(in raster, in int4, in int4, in bool, out float8, out float8, out int8, out float8) IS 'args: rast, nband, bins, right - Returns a set of record summarizing a raster or raster coverage data distribution separate bin ranges. Number of bins are autocomputed if not specified.';

-- DROP FUNCTION public.st_interiorringn(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_interiorringn(geometry, integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_interiorringn_polygon$function$
;

COMMENT ON FUNCTION public.st_interiorringn(geometry, int4) IS 'args: a_polygon, n - Returns the Nth interior ring (hole) of a Polygon.';

-- DROP FUNCTION public.st_interpolatepoint(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_interpolatepoint(line geometry, point geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_InterpolatePoint$function$
;

COMMENT ON FUNCTION public.st_interpolatepoint(geometry, geometry) IS 'args: line, point - Return the value of the measure dimension of a geometry at the point closed to the provided point.';

-- DROP FUNCTION public.st_intersection(geography, geography);

CREATE OR REPLACE FUNCTION public.st_intersection(geography, geography)
 RETURNS geography
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$SELECT public.geography(public.ST_Transform(public.ST_Intersection(public.ST_Transform(public.geometry($1), public._ST_BestSRID($1, $2)), public.ST_Transform(public.geometry($2), public._ST_BestSRID($1, $2))), 4326))$function$
;

COMMENT ON FUNCTION public.st_intersection(geography, geography) IS 'args: geogA, geogB - Returns a geometry representing the shared portion of geometries A and B.';

-- DROP FUNCTION public.st_intersection(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_intersection(geom1 geometry, geom2 geometry, gridsize double precision DEFAULT '-1'::integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_Intersection$function$
;

COMMENT ON FUNCTION public.st_intersection(geometry, geometry, float8) IS 'args: geomA, geomB, gridSize = -1 - Returns a geometry representing the shared portion of geometries A and B.';

-- DROP FUNCTION public.st_intersection(raster, int4, raster, int4, text, float8);

CREATE OR REPLACE FUNCTION public.st_intersection(rast1 raster, band1 integer, rast2 raster, band2 integer, returnband text, nodataval double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT st_intersection($1, $2, $3, $4, $5, ARRAY[$6, $6]) $function$
;

-- DROP FUNCTION public.st_intersection(geometry, raster, int4);

CREATE OR REPLACE FUNCTION public.st_intersection(geomin geometry, rast raster, band integer DEFAULT 1)
 RETURNS SETOF geomval
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		intersects boolean := FALSE; same_srid boolean := FALSE;
	BEGIN
		same_srid :=  (public.ST_SRID(geomin) = public.ST_SRID(rast));
		IF NOT same_srid THEN
			RAISE EXCEPTION 'SRIDS of geometry: % and raster: % are not the same',
				public.ST_SRID(geomin), public.ST_SRID(rast)
				USING HINT = 'Verify using ST_SRID function';
		END IF;
		intersects :=  public.ST_Intersects(geomin, rast, band);
		IF intersects THEN
			-- Return the intersections of the geometry with the vectorized parts of
			-- the raster and the values associated with those parts, if really their
			-- intersection is not empty.
			RETURN QUERY
				SELECT
					intgeom,
					val
				FROM (
					SELECT
						public.ST_Intersection((gv).geom, geomin) AS intgeom,
						(gv).val
					FROM public.ST_DumpAsPolygons(rast, band) gv
					WHERE public.ST_Intersects((gv).geom, geomin)
				) foo
				WHERE NOT public.ST_IsEmpty(intgeom);
		ELSE
			-- If the geometry does not intersect with the raster, return an empty
			-- geometry and a null value
			RETURN QUERY
				SELECT
					emptygeom,
					NULL::float8
				FROM ST_GeomCollFromText('GEOMETRYCOLLECTION EMPTY', ST_SRID($1)) emptygeom;
		END IF;
	END;
	$function$
;

COMMENT ON FUNCTION public.st_intersection(geometry, raster, int4) IS 'args: geom, rast, band_num=1 - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';

-- DROP FUNCTION public.st_intersection(raster, geometry);

CREATE OR REPLACE FUNCTION public.st_intersection(rast raster, geomin geometry)
 RETURNS SETOF geomval
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_Intersection($2, $1, 1) $function$
;

COMMENT ON FUNCTION public.st_intersection(raster, geometry) IS 'args: rast, geom - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';

-- DROP FUNCTION public.st_intersection(raster, int4, raster, int4, float8);

CREATE OR REPLACE FUNCTION public.st_intersection(rast1 raster, band1 integer, rast2 raster, band2 integer, nodataval double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT st_intersection($1, $2, $3, $4, 'BOTH', ARRAY[$5, $5]) $function$
;

-- DROP FUNCTION public.st_intersection(raster, int4, geometry);

CREATE OR REPLACE FUNCTION public.st_intersection(rast raster, band integer, geomin geometry)
 RETURNS SETOF geomval
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_Intersection($3, $1, $2) $function$
;

COMMENT ON FUNCTION public.st_intersection(raster, int4, geometry) IS 'args: rast, band, geomin - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';

-- DROP FUNCTION public.st_intersection(text, text);

CREATE OR REPLACE FUNCTION public.st_intersection(text, text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS $function$ SELECT public.ST_Intersection($1::public.geometry, $2::public.geometry);  $function$
;

-- DROP FUNCTION public.st_intersection(raster, raster, _float8);

CREATE OR REPLACE FUNCTION public.st_intersection(rast1 raster, rast2 raster, nodataval double precision[])
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT st_intersection($1, 1, $2, 1, 'BOTH', $3) $function$
;

COMMENT ON FUNCTION public.st_intersection(raster, raster, _float8) IS 'args: rast1, rast2, nodataval - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';

-- DROP FUNCTION public.st_intersection(raster, int4, raster, int4, _float8);

CREATE OR REPLACE FUNCTION public.st_intersection(rast1 raster, band1 integer, rast2 raster, band2 integer, nodataval double precision[])
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT st_intersection($1, $2, $3, $4, 'BOTH', $5) $function$
;

COMMENT ON FUNCTION public.st_intersection(raster, int4, raster, int4, _float8) IS 'args: rast1, band1, rast2, band2, nodataval - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';

-- DROP FUNCTION public.st_intersection(raster, raster, float8);

CREATE OR REPLACE FUNCTION public.st_intersection(rast1 raster, rast2 raster, nodataval double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT st_intersection($1, 1, $2, 1, 'BOTH', ARRAY[$3, $3]) $function$
;

-- DROP FUNCTION public.st_intersection(raster, raster, text, _float8);

CREATE OR REPLACE FUNCTION public.st_intersection(rast1 raster, rast2 raster, returnband text DEFAULT 'BOTH'::text, nodataval double precision[] DEFAULT NULL::double precision[])
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT st_intersection($1, 1, $2, 1, $3, $4) $function$
;

COMMENT ON FUNCTION public.st_intersection(raster, raster, text, _float8) IS 'args: rast1, rast2, returnband, nodataval - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';

-- DROP FUNCTION public.st_intersection(raster, int4, raster, int4, text, _float8);

CREATE OR REPLACE FUNCTION public.st_intersection(rast1 raster, band1 integer, rast2 raster, band2 integer, returnband text DEFAULT 'BOTH'::text, nodataval double precision[] DEFAULT NULL::double precision[])
 RETURNS raster
 LANGUAGE plpgsql
 STABLE PARALLEL SAFE
AS $function$
	DECLARE
		rtn public.raster;
		_returnband text;
		newnodata1 float8;
		newnodata2 float8;
	BEGIN
		IF ST_SRID(rast1) != ST_SRID(rast2) THEN
			RAISE EXCEPTION 'The two rasters do not have the same SRID';
		END IF;

		newnodata1 := coalesce(nodataval[1], ST_BandNodataValue(rast1, band1), ST_MinPossibleValue(public.ST_BandPixelType(rast1, band1)));
		newnodata2 := coalesce(nodataval[2], ST_BandNodataValue(rast2, band2), ST_MinPossibleValue(public.ST_BandPixelType(rast2, band2)));

		_returnband := upper(returnband);

		rtn := NULL;
		CASE
			WHEN _returnband = 'BAND1' THEN
				rtn := public.ST_MapAlgebraExpr(rast1, band1, rast2, band2, '[rast1.val]', public.ST_BandPixelType(rast1, band1), 'INTERSECTION', newnodata1::text, newnodata1::text, newnodata1);
				rtn := public.ST_SetBandNodataValue(rtn, 1, newnodata1);
			WHEN _returnband = 'BAND2' THEN
				rtn := public.ST_MapAlgebraExpr(rast1, band1, rast2, band2, '[rast2.val]', public.ST_BandPixelType(rast2, band2), 'INTERSECTION', newnodata2::text, newnodata2::text, newnodata2);
				rtn := public.ST_SetBandNodataValue(rtn, 1, newnodata2);
			WHEN _returnband = 'BOTH' THEN
				rtn := public.ST_MapAlgebraExpr(rast1, band1, rast2, band2, '[rast1.val]', public.ST_BandPixelType(rast1, band1), 'INTERSECTION', newnodata1::text, newnodata1::text, newnodata1);
				rtn := ST_SetBandNodataValue(rtn, 1, newnodata1);
				rtn := ST_AddBand(rtn, ST_MapAlgebraExpr(rast1, band1, rast2, band2, '[rast2.val]', public.ST_BandPixelType(rast2, band2), 'INTERSECTION', newnodata2::text, newnodata2::text, newnodata2));
				rtn := ST_SetBandNodataValue(rtn, 2, newnodata2);
			ELSE
				RAISE EXCEPTION 'Unknown value provided for returnband: %', returnband;
				RETURN NULL;
		END CASE;

		RETURN rtn;
	END;
	$function$
;

COMMENT ON FUNCTION public.st_intersection(raster, int4, raster, int4, text, _float8) IS 'args: rast1, band1, rast2, band2, returnband, nodataval - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';

-- DROP FUNCTION public.st_intersection(raster, raster, text, float8);

CREATE OR REPLACE FUNCTION public.st_intersection(rast1 raster, rast2 raster, returnband text, nodataval double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT st_intersection($1, 1, $2, 1, $3, ARRAY[$4, $4]) $function$
;

-- DROP FUNCTION public.st_intersects(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public.st_intersects(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT $1 OPERATOR(public.&&) $3 AND CASE WHEN $2 IS NULL OR $4 IS NULL THEN public._st_intersects(public.st_convexhull($1), public.st_convexhull($3)) ELSE public._st_intersects($1, $2, $3, $4) END $function$
;

COMMENT ON FUNCTION public.st_intersects(raster, int4, raster, int4) IS 'args: rastA, nbandA, rastB, nbandB - Return true if raster rastA spatially intersects raster rastB.';

-- DROP FUNCTION public.st_intersects(raster, int4, geometry);

CREATE OR REPLACE FUNCTION public.st_intersects(rast raster, nband integer, geom geometry)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT $1::public.geometry OPERATOR(public.&&) $3 AND public._st_intersects($3, $1, $2) $function$
;

COMMENT ON FUNCTION public.st_intersects(raster, int4, geometry) IS 'args: rast, nband, geommin - Return true if raster rastA spatially intersects raster rastB.';

-- DROP FUNCTION public.st_intersects(raster, geometry, int4);

CREATE OR REPLACE FUNCTION public.st_intersects(rast raster, geom geometry, nband integer DEFAULT NULL::integer)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT $1::public.geometry OPERATOR(public.&&) $2 AND public._st_intersects($2, $1, $3) $function$
;

COMMENT ON FUNCTION public.st_intersects(raster, geometry, int4) IS 'args: rast, geommin, nband=NULL - Return true if raster rastA spatially intersects raster rastB.';

-- DROP FUNCTION public.st_intersects(geometry, raster, int4);

CREATE OR REPLACE FUNCTION public.st_intersects(geom geometry, rast raster, nband integer DEFAULT NULL::integer)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT $1 OPERATOR(public.&&) $2::public.geometry AND public._st_intersects($1, $2, $3); $function$
;

COMMENT ON FUNCTION public.st_intersects(geometry, raster, int4) IS 'args: geommin, rast, nband=NULL - Return true if raster rastA spatially intersects raster rastB.';

-- DROP FUNCTION public.st_intersects(geography, geography);

CREATE OR REPLACE FUNCTION public.st_intersects(geog1 geography, geog2 geography)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$geography_intersects$function$
;

-- DROP FUNCTION public.st_intersects(text, text);

CREATE OR REPLACE FUNCTION public.st_intersects(text, text)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_Intersects($1::public.geometry, $2::public.geometry);  $function$
;

-- DROP FUNCTION public.st_intersects(raster, raster);

CREATE OR REPLACE FUNCTION public.st_intersects(rast1 raster, rast2 raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT public.st_intersects($1, NULL::integer, $2, NULL::integer) $function$
;

COMMENT ON FUNCTION public.st_intersects(raster, raster) IS 'args: rastA, rastB - Return true if raster rastA spatially intersects raster rastB.';

-- DROP FUNCTION public.st_intersects(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_intersects(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$ST_Intersects$function$
;

-- DROP FUNCTION public.st_invdistweight4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public.st_invdistweight4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_value double precision[][][];
		ndims int;

		k double precision DEFAULT 1.;
		_k double precision DEFAULT 1.;
		z double precision[];
		d double precision[];
		_d double precision;
		z0 double precision;

		_z integer;
		x integer;
		y integer;

		cx integer;
		cy integer;
		cv double precision;
		cw double precision DEFAULT NULL;

		w integer;
		h integer;
		max_dx double precision;
		max_dy double precision;
	BEGIN
--		RAISE NOTICE 'value = %', value;
--		RAISE NOTICE 'userargs = %', userargs;

		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		-- only use the first raster passed to this function
		IF array_length(_value, 1) > 1 THEN
			RAISE NOTICE 'Only using the values from the first raster';
		END IF;
		_z := array_lower(_value, 1);

		-- width and height (0-based)
		h := array_upper(_value, 2) - array_lower(_value, 2);
		w := array_upper(_value, 3) - array_lower(_value, 3);

		-- max distance from center pixel
		max_dx := w / 2;
		max_dy := h / 2;
--		RAISE NOTICE 'max_dx, max_dy = %, %', max_dx, max_dy;

		-- correct width and height (1-based)
		w := w + 1;
		h := h + 1;
--		RAISE NOTICE 'w, h = %, %', w, h;

		-- width and height should be odd numbers
		IF w % 2. != 1 THEN
			RAISE EXCEPTION 'Width of neighborhood array does not permit for a center pixel';
		END IF;
		IF h % 2. != 1 THEN
			RAISE EXCEPTION 'Height of neighborhood array does not permit for a center pixel';
		END IF;

		-- center pixel's coordinates
		cy := max_dy + array_lower(_value, 2);
		cx := max_dx + array_lower(_value, 3);
--		RAISE NOTICE 'cx, cy = %, %', cx, cy;

		-- if userargs provided, only use the first two args
		IF userargs IS NOT NULL AND array_ndims(userargs) = 1 THEN
			-- first arg is power factor
			k := userargs[array_lower(userargs, 1)]::double precision;
			IF k IS NULL THEN
				k := _k;
			ELSEIF k < 0. THEN
				RAISE NOTICE 'Power factor (< 0) must be between 0 and 1.  Defaulting to 0';
				k := 0.;
			ELSEIF k > 1. THEN
				RAISE NOTICE 'Power factor (> 1) must be between 0 and 1.  Defaulting to 1';
				k := 1.;
			END IF;

			-- second arg is what to do if center pixel has a value
			-- this will be a weight to apply for the center pixel
			IF array_length(userargs, 1) > 1 THEN
				cw := abs(userargs[array_lower(userargs, 1) + 1]::double precision);
				IF cw IS NOT NULL THEN
					IF cw < 0. THEN
						RAISE NOTICE 'Weight (< 0) of center pixel value must be between 0 and 1.  Defaulting to 0';
						cw := 0.;
					ELSEIF cw > 1 THEN
						RAISE NOTICE 'Weight (> 1) of center pixel value must be between 0 and 1.  Defaulting to 1';
						cw := 1.;
					END IF;
				END IF;
			END IF;
		END IF;
--		RAISE NOTICE 'k = %', k;
		k = abs(k) * -1;

		-- center pixel value
		cv := _value[_z][cy][cx];

		-- check to see if center pixel has value
--		RAISE NOTICE 'cw = %', cw;
		IF cw IS NULL AND cv IS NOT NULL THEN
			RETURN cv;
		END IF;

		FOR y IN array_lower(_value, 2)..array_upper(_value, 2) LOOP
			FOR x IN array_lower(_value, 3)..array_upper(_value, 3) LOOP
--				RAISE NOTICE 'value[%][%][%] = %', _z, y, x, _value[_z][y][x];

				-- skip NODATA values and center pixel
				IF _value[_z][y][x] IS NULL OR (x = cx AND y = cy) THEN
					CONTINUE;
				END IF;

				z := z || _value[_z][y][x];

				-- use pythagorean theorem
				_d := sqrt(power(cx - x, 2) + power(cy - y, 2));
--				RAISE NOTICE 'distance = %', _d;

				d := d || _d;
			END LOOP;
		END LOOP;
--		RAISE NOTICE 'z = %', z;
--		RAISE NOTICE 'd = %', d;

		-- neighborhood is NODATA
		IF z IS NULL OR array_length(z, 1) < 1 THEN
			-- center pixel has value
			IF cv IS NOT NULL THEN
				RETURN cv;
			ELSE
				RETURN NULL;
			END IF;
		END IF;

		z0 := 0;
		_d := 0;
		FOR x IN array_lower(z, 1)..array_upper(z, 1) LOOP
			d[x] := power(d[x], k);
			z[x] := z[x] * d[x];
			_d := _d + d[x];
			z0 := z0 + z[x];
		END LOOP;
		z0 := z0 / _d;
--		RAISE NOTICE 'z0 = %', z0;

		-- apply weight for center pixel if center pixel has value
		IF cv IS NOT NULL THEN
			z0 := (cw * cv) + ((1 - cw) * z0);
--			RAISE NOTICE '*z0 = %', z0;
		END IF;

		RETURN z0;
	END;
	$function$
;

COMMENT ON FUNCTION public.st_invdistweight4ma(in _float8, in _int4, variadic _text) IS 'args: value, pos, VARIADIC userargs - Raster processing function that interpolates a pixels value from the pixels neighborhood.';

-- DROP FUNCTION public.st_isclosed(geometry);

CREATE OR REPLACE FUNCTION public.st_isclosed(geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_isclosed$function$
;

COMMENT ON FUNCTION public.st_isclosed(geometry) IS 'args: g - Tests if a LineStringss start and end points are coincident. For a PolyhedralSurface tests if it is closed (volumetric).';

-- DROP FUNCTION public.st_iscollection(geometry);

CREATE OR REPLACE FUNCTION public.st_iscollection(geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$ST_IsCollection$function$
;

COMMENT ON FUNCTION public.st_iscollection(geometry) IS 'args: g - Tests if a geometry is a geometry collection type.';

-- DROP FUNCTION public.st_iscoveragetile(raster, raster, int4, int4);

CREATE OR REPLACE FUNCTION public.st_iscoveragetile(rast raster, coverage raster, tilewidth integer, tileheight integer)
 RETURNS boolean
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		_rastmeta record;
		_covmeta record;
		cr record;
		max integer[];
		tile integer[];
		edge integer[];
	BEGIN
		IF NOT ST_SameAlignment(rast, coverage) THEN
			RAISE NOTICE 'Raster and coverage are not aligned';
			RETURN FALSE;
		END IF;

		_rastmeta := ST_Metadata(rast);
		_covmeta := ST_Metadata(coverage);

		-- get coverage grid coordinates of upper-left of rast
		cr := ST_WorldToRasterCoord(coverage, _rastmeta.upperleftx, _rastmeta.upperlefty);

		-- rast is not part of coverage
		IF
			(cr.columnx < 1 OR cr.columnx > _covmeta.width) OR
			(cr.rowy < 1 OR cr.rowy > _covmeta.height)
		THEN
			RAISE NOTICE 'Raster is not in the coverage';
			RETURN FALSE;
		END IF;

		-- rast isn't on the coverage's grid
		IF
			((cr.columnx - 1) % tilewidth != 0) OR
			((cr.rowy - 1) % tileheight != 0)
		THEN
			RAISE NOTICE 'Raster is not aligned to tile grid of coverage';
			RETURN FALSE;
		END IF;

		-- max # of tiles on X and Y for coverage
		max[0] := ceil(_covmeta.width::double precision / tilewidth::double precision)::integer;
		max[1] := ceil(_covmeta.height::double precision / tileheight::double precision)::integer;

		-- tile # of rast in coverge
		tile[0] := (cr.columnx / tilewidth) + 1;
		tile[1] := (cr.rowy / tileheight) + 1;

		-- inner tile
		IF tile[0] < max[0] AND tile[1] < max[1] THEN
			IF
				(_rastmeta.width != tilewidth) OR
				(_rastmeta.height != tileheight)
			THEN
				RAISE NOTICE 'Raster width/height is invalid for interior tile of coverage';
				RETURN FALSE;
			ELSE
				RETURN TRUE;
			END IF;
		END IF;

		-- edge tile

		-- edge tile may have same size as inner tile
		IF
			(_rastmeta.width = tilewidth) AND
			(_rastmeta.height = tileheight)
		THEN
			RETURN TRUE;
		END IF;

		-- get edge tile width and height
		edge[0] := _covmeta.width - ((max[0] - 1) * tilewidth);
		edge[1] := _covmeta.height - ((max[1] - 1) * tileheight);

		-- edge tile not of expected tile size
		-- right and bottom
		IF tile[0] = max[0] AND tile[1] = max[1] THEN
			IF
				_rastmeta.width != edge[0] OR
				_rastmeta.height != edge[1]
			THEN
				RAISE NOTICE 'Raster width/height is invalid for right-most AND bottom-most tile of coverage';
				RETURN FALSE;
			END IF;
		ELSEIF tile[0] = max[0] THEN
			IF
				_rastmeta.width != edge[0] OR
				_rastmeta.height != tileheight
			THEN
				RAISE NOTICE 'Raster width/height is invalid for right-most tile of coverage';
				RETURN FALSE;
			END IF;
		ELSE
			IF
				_rastmeta.width != tilewidth OR
				_rastmeta.height != edge[1]
			THEN
				RAISE NOTICE 'Raster width/height is invalid for bottom-most tile of coverage';
				RETURN FALSE;
			END IF;
		END IF;

		RETURN TRUE;
	END;
	$function$
;

-- DROP FUNCTION public.st_isempty(raster);

CREATE OR REPLACE FUNCTION public.st_isempty(rast raster)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_isEmpty$function$
;

COMMENT ON FUNCTION public.st_isempty(raster) IS 'args: rast - Returns true if the raster is empty (width = 0 and height = 0). Otherwise, returns false.';

-- DROP FUNCTION public.st_isempty(geometry);

CREATE OR REPLACE FUNCTION public.st_isempty(geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_isempty$function$
;

COMMENT ON FUNCTION public.st_isempty(geometry) IS 'args: geomA - Tests if a geometry is empty.';

-- DROP FUNCTION public.st_ispolygonccw(geometry);

CREATE OR REPLACE FUNCTION public.st_ispolygonccw(geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_IsPolygonCCW$function$
;

COMMENT ON FUNCTION public.st_ispolygonccw(geometry) IS 'args: geom - Tests if Polygons have exterior rings oriented counter-clockwise and interior rings oriented clockwise.';

-- DROP FUNCTION public.st_ispolygoncw(geometry);

CREATE OR REPLACE FUNCTION public.st_ispolygoncw(geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_IsPolygonCW$function$
;

COMMENT ON FUNCTION public.st_ispolygoncw(geometry) IS 'args: geom - Tests if Polygons have exterior rings oriented clockwise and interior rings oriented counter-clockwise.';

-- DROP FUNCTION public.st_isring(geometry);

CREATE OR REPLACE FUNCTION public.st_isring(geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$isring$function$
;

COMMENT ON FUNCTION public.st_isring(geometry) IS 'args: g - Tests if a LineString is closed and simple.';

-- DROP FUNCTION public.st_issimple(geometry);

CREATE OR REPLACE FUNCTION public.st_issimple(geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$issimple$function$
;

COMMENT ON FUNCTION public.st_issimple(geometry) IS 'args: geomA - Tests if a geometry has no points of self-intersection or self-tangency.';

-- DROP FUNCTION public.st_isvalid(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_isvalid(geometry, integer)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS $function$SELECT (public.ST_isValidDetail($1, $2)).valid$function$
;

COMMENT ON FUNCTION public.st_isvalid(geometry, int4) IS 'args: g, flags - Tests if a geometry is well-formed in 2D.';

-- DROP FUNCTION public.st_isvalid(geometry);

CREATE OR REPLACE FUNCTION public.st_isvalid(geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$isvalid$function$
;

COMMENT ON FUNCTION public.st_isvalid(geometry) IS 'args: g - Tests if a geometry is well-formed in 2D.';

-- DROP FUNCTION public.st_isvaliddetail(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_isvaliddetail(geom geometry, flags integer DEFAULT 0)
 RETURNS valid_detail
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$isvaliddetail$function$
;

COMMENT ON FUNCTION public.st_isvaliddetail(geometry, int4) IS 'args: geom, flags - Returns a valid_detail row stating if a geometry is valid, and if not a reason why and a location.';

-- DROP FUNCTION public.st_isvalidreason(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_isvalidreason(geometry, integer)
 RETURNS text
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS $function$
	SELECT CASE WHEN valid THEN 'Valid Geometry' ELSE reason END FROM (
		SELECT (public.ST_isValidDetail($1, $2)).*
	) foo
	$function$
;

COMMENT ON FUNCTION public.st_isvalidreason(geometry, int4) IS 'args: geomA, flags - Returns text stating if a geometry is valid, or a reason for invalidity.';

-- DROP FUNCTION public.st_isvalidreason(geometry);

CREATE OR REPLACE FUNCTION public.st_isvalidreason(geometry)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$isvalidreason$function$
;

COMMENT ON FUNCTION public.st_isvalidreason(geometry) IS 'args: geomA - Returns text stating if a geometry is valid, or a reason for invalidity.';

-- DROP FUNCTION public.st_isvalidtrajectory(geometry);

CREATE OR REPLACE FUNCTION public.st_isvalidtrajectory(geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_IsValidTrajectory$function$
;

COMMENT ON FUNCTION public.st_isvalidtrajectory(geometry) IS 'args: line - Returns true if the geometry is a valid trajectory.';

-- DROP FUNCTION public.st_length(geography, bool);

CREATE OR REPLACE FUNCTION public.st_length(geog geography, use_spheroid boolean DEFAULT true)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geography_length$function$
;

COMMENT ON FUNCTION public.st_length(geography, bool) IS 'args: geog, use_spheroid=true - Returns the 2D length of a linear geometry.';

-- DROP FUNCTION public.st_length(text);

CREATE OR REPLACE FUNCTION public.st_length(text)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_Length($1::public.geometry);  $function$
;

-- DROP FUNCTION public.st_length(geometry);

CREATE OR REPLACE FUNCTION public.st_length(geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_length2d_linestring$function$
;

COMMENT ON FUNCTION public.st_length(geometry) IS 'args: a_2dlinestring - Returns the 2D length of a linear geometry.';

-- DROP FUNCTION public.st_length2d(geometry);

CREATE OR REPLACE FUNCTION public.st_length2d(geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_length2d_linestring$function$
;

COMMENT ON FUNCTION public.st_length2d(geometry) IS 'args: a_2dlinestring - Returns the 2D length of a linear geometry. Alias for ST_Length';

-- DROP FUNCTION public.st_length2dspheroid(geometry, spheroid);

CREATE OR REPLACE FUNCTION public.st_length2dspheroid(geometry, spheroid)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_length2d_ellipsoid$function$
;

-- DROP FUNCTION public.st_lengthspheroid(geometry, spheroid);

CREATE OR REPLACE FUNCTION public.st_lengthspheroid(geometry, spheroid)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_length_ellipsoid_linestring$function$
;

COMMENT ON FUNCTION public.st_lengthspheroid(geometry, spheroid) IS 'args: a_geometry, a_spheroid - Returns the 2D or 3D length/perimeter of a lon/lat geometry on a spheroid.';

-- DROP FUNCTION public.st_linecrossingdirection(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_linecrossingdirection(line1 geometry, line2 geometry)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$ST_LineCrossingDirection$function$
;

-- DROP FUNCTION public.st_linefromencodedpolyline(text, int4);

CREATE OR REPLACE FUNCTION public.st_linefromencodedpolyline(txtin text, nprecision integer DEFAULT 5)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$line_from_encoded_polyline$function$
;

-- DROP FUNCTION public.st_linefrommultipoint(geometry);

CREATE OR REPLACE FUNCTION public.st_linefrommultipoint(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_line_from_mpoint$function$
;

COMMENT ON FUNCTION public.st_linefrommultipoint(geometry) IS 'args: aMultiPoint - Creates a LineString from a MultiPoint geometry.';

-- DROP FUNCTION public.st_linefromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_linefromtext(text, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromText($1, $2)) = 'LINESTRING'
	THEN public.ST_GeomFromText($1,$2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_linefromtext(text);

CREATE OR REPLACE FUNCTION public.st_linefromtext(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromText($1)) = 'LINESTRING'
	THEN public.ST_GeomFromText($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_linefromwkb(bytea, int4);

CREATE OR REPLACE FUNCTION public.st_linefromwkb(bytea, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1, $2)) = 'LINESTRING'
	THEN public.ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_linefromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_linefromwkb(bytea)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1)) = 'LINESTRING'
	THEN public.ST_GeomFromWKB($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_lineinterpolatepoint(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_lineinterpolatepoint(geometry, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_line_interpolate_point$function$
;

COMMENT ON FUNCTION public.st_lineinterpolatepoint(geometry, float8) IS 'args: a_linestring, a_fraction - Returns a point interpolated along a line. Second argument is a float8 between 0 and 1 representing fraction of total length of linestring the point has to be located.';

-- DROP FUNCTION public.st_lineinterpolatepoints(geometry, float8, bool);

CREATE OR REPLACE FUNCTION public.st_lineinterpolatepoints(geometry, double precision, repeat boolean DEFAULT true)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_line_interpolate_point$function$
;

COMMENT ON FUNCTION public.st_lineinterpolatepoints(geometry, float8, bool) IS 'args: a_linestring, a_fraction, repeat - Returns one or more points interpolated along a line.';

-- DROP FUNCTION public.st_linelocatepoint(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_linelocatepoint(geom1 geometry, geom2 geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_line_locate_point$function$
;

COMMENT ON FUNCTION public.st_linelocatepoint(geometry, geometry) IS 'args: a_linestring, a_point - Returns a float between 0 and 1 representing the location of the closest point on LineString to the given Point, as a fraction of total 2d line length.';

-- DROP FUNCTION public.st_linemerge(geometry);

CREATE OR REPLACE FUNCTION public.st_linemerge(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$linemerge$function$
;

COMMENT ON FUNCTION public.st_linemerge(geometry) IS 'args: amultilinestring - Return a (set of) LineString(s) formed by sewing together a MULTILINESTRING.';

-- DROP FUNCTION public.st_linestringfromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_linestringfromwkb(bytea)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1)) = 'LINESTRING'
	THEN public.ST_GeomFromWKB($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_linestringfromwkb(bytea, int4);

CREATE OR REPLACE FUNCTION public.st_linestringfromwkb(bytea, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1, $2)) = 'LINESTRING'
	THEN public.ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_linesubstring(geometry, float8, float8);

CREATE OR REPLACE FUNCTION public.st_linesubstring(geometry, double precision, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_line_substring$function$
;

COMMENT ON FUNCTION public.st_linesubstring(geometry, float8, float8) IS 'args: a_linestring, startfraction, endfraction - Return a linestring being a substring of the input one starting and ending at the given fractions of total 2d length. Second and third arguments are float8 values between 0 and 1.';

-- DROP FUNCTION public.st_linetocurve(geometry);

CREATE OR REPLACE FUNCTION public.st_linetocurve(geometry geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$LWGEOM_line_desegmentize$function$
;

COMMENT ON FUNCTION public.st_linetocurve(geometry) IS 'args: geomANoncircular - Converts a linear geometry to a curved geometry.';

-- DROP FUNCTION public.st_locatealong(geometry, float8, float8);

CREATE OR REPLACE FUNCTION public.st_locatealong(geometry geometry, measure double precision, leftrightoffset double precision DEFAULT 0.0)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_LocateAlong$function$
;

COMMENT ON FUNCTION public.st_locatealong(geometry, float8, float8) IS 'args: ageom_with_measure, a_measure, offset - Return a derived geometry collection value with elements that match the specified measure. Polygonal elements are not supported.';

-- DROP FUNCTION public.st_locatebetween(geometry, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_locatebetween(geometry geometry, frommeasure double precision, tomeasure double precision, leftrightoffset double precision DEFAULT 0.0)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_LocateBetween$function$
;

COMMENT ON FUNCTION public.st_locatebetween(geometry, float8, float8, float8) IS 'args: geom, measure_start, measure_end, offset - Return a derived geometry collection value with elements that match the specified range of measures inclusively.';

-- DROP FUNCTION public.st_locatebetweenelevations(geometry, float8, float8);

CREATE OR REPLACE FUNCTION public.st_locatebetweenelevations(geometry geometry, fromelevation double precision, toelevation double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_LocateBetweenElevations$function$
;

COMMENT ON FUNCTION public.st_locatebetweenelevations(geometry, float8, float8) IS 'args: geom, elevation_start, elevation_end - Return a derived geometry (collection) value with elements that intersect the specified range of elevations inclusively.';

-- DROP FUNCTION public.st_longestline(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_longestline(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS $function$SELECT public._ST_LongestLine(public.ST_ConvexHull($1), public.ST_ConvexHull($2))$function$
;

COMMENT ON FUNCTION public.st_longestline(geometry, geometry) IS 'args: g1, g2 - Returns the 2D longest line between two geometries.';

-- DROP FUNCTION public.st_m(geometry);

CREATE OR REPLACE FUNCTION public.st_m(geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_m_point$function$
;

COMMENT ON FUNCTION public.st_m(geometry) IS 'args: a_point - Returns the M coordinate of a Point.';

-- DROP FUNCTION public.st_makebox2d(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_makebox2d(geom1 geometry, geom2 geometry)
 RETURNS box2d
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$BOX2D_construct$function$
;

COMMENT ON FUNCTION public.st_makebox2d(geometry, geometry) IS 'args: pointLowLeft, pointUpRight - Creates a BOX2D defined by two 2D point geometries.';

-- DROP FUNCTION public.st_makeemptycoverage(int4, int4, int4, int4, float8, float8, float8, float8, float8, float8, int4);

CREATE OR REPLACE FUNCTION public.st_makeemptycoverage(tilewidth integer, tileheight integer, width integer, height integer, upperleftx double precision, upperlefty double precision, scalex double precision, scaley double precision, skewx double precision, skewy double precision, srid integer DEFAULT 0)
 RETURNS SETOF raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
    DECLARE
        ulx double precision;  -- upper left x of raster
        uly double precision;  -- upper left y of raster
        rw int;                -- raster width (may change at edges)
        rh int;                -- raster height (may change at edges)
        x int;                 -- x index of coverage
        y int;                 -- y index of coverage
        template public.raster;       -- an empty template raster, where each cell
                               -- represents a tile in the coverage
        minY double precision;
        maxX double precision;
    BEGIN
        template := public.ST_MakeEmptyRaster(
            ceil(width::float8/tilewidth)::int,
            ceil(height::float8/tileheight)::int,
            upperleftx,
            upperlefty,
            tilewidth * scalex,
            tileheight * scaley,
            tileheight * skewx,
            tilewidth * skewy,
            srid
        );

        FOR y IN 1..st_height(template) LOOP
            maxX := public.ST_RasterToWorldCoordX(template, 1, y) + width * scalex;
            FOR x IN 1..st_width(template) LOOP
                minY := public.ST_RasterToWorldCoordY(template, x, 1) + height * scaley;
                uly := public.ST_RasterToWorldCoordY(template, x, y);
                IF uly + (tileheight * scaley) < minY THEN
                    --raise notice 'uly, minY: %, %', uly, minY;
                    rh := ceil((minY - uly)/scaleY)::int;
                ELSE
                    rh := tileheight;
                END IF;

                ulx := public.ST_RasterToWorldCoordX(template, x, y);
                IF ulx + (tilewidth * scalex) > maxX THEN
                    --raise notice 'ulx, maxX: %, %', ulx, maxX;
                    rw := ceil((maxX - ulx)/scaleX)::int;
                ELSE
                    rw := tilewidth;
                END IF;

                RETURN NEXT public.ST_MakeEmptyRaster(rw, rh, ulx, uly, scalex, scaley, skewx, skewy, srid);
            END LOOP;
        END LOOP;
    END;
    $function$
;

COMMENT ON FUNCTION public.st_makeemptycoverage(int4, int4, int4, int4, float8, float8, float8, float8, float8, float8, int4) IS 'args: tilewidth, tileheight, width, height, upperleftx, upperlefty, scalex, scaley, skewx, skewy, srid=unknown - Cover georeferenced area with a grid of empty raster tiles.';

-- DROP FUNCTION public.st_makeemptyraster(int4, int4, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_makeemptyraster(width integer, height integer, upperleftx double precision, upperlefty double precision, pixelsize double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT  public.ST_makeemptyraster($1, $2, $3, $4, $5, -($5), 0, 0, public.ST_SRID('POINT(0 0)'::geometry)) $function$
;

COMMENT ON FUNCTION public.st_makeemptyraster(int4, int4, float8, float8, float8) IS 'args: width, height, upperleftx, upperlefty, pixelsize - Returns an empty raster (having no bands) of given dimensions (width & height), upperleft X and Y, pixel size and rotation (scalex, scaley, skewx & skewy) and reference system (srid). If a raster is passed in, returns a new raster with the same size, alignment and SRID. If srid is left out, the spatial ref is set to unknown (0).';

-- DROP FUNCTION public.st_makeemptyraster(int4, int4, float8, float8, float8, float8, float8, float8, int4);

CREATE OR REPLACE FUNCTION public.st_makeemptyraster(width integer, height integer, upperleftx double precision, upperlefty double precision, scalex double precision, scaley double precision, skewx double precision, skewy double precision, srid integer DEFAULT 0)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_makeEmpty$function$
;

COMMENT ON FUNCTION public.st_makeemptyraster(int4, int4, float8, float8, float8, float8, float8, float8, int4) IS 'args: width, height, upperleftx, upperlefty, scalex, scaley, skewx, skewy, srid=unknown - Returns an empty raster (having no bands) of given dimensions (width & height), upperleft X and Y, pixel size and rotation (scalex, scaley, skewx & skewy) and reference system (srid). If a raster is passed in, returns a new raster with the same size, alignment and SRID. If srid is left out, the spatial ref is set to unknown (0).';

-- DROP FUNCTION public.st_makeemptyraster(raster);

CREATE OR REPLACE FUNCTION public.st_makeemptyraster(rast raster)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
		DECLARE
			w int;
			h int;
			ul_x double precision;
			ul_y double precision;
			scale_x double precision;
			scale_y double precision;
			skew_x double precision;
			skew_y double precision;
			sr_id int;
		BEGIN
			SELECT width, height, upperleftx, upperlefty, scalex, scaley, skewx, skewy, srid INTO w, h, ul_x, ul_y, scale_x, scale_y, skew_x, skew_y, sr_id FROM public.ST_Metadata(rast);
			RETURN  public.ST_makeemptyraster(w, h, ul_x, ul_y, scale_x, scale_y, skew_x, skew_y, sr_id);
		END;
    $function$
;

COMMENT ON FUNCTION public.st_makeemptyraster(raster) IS 'args: rast - Returns an empty raster (having no bands) of given dimensions (width & height), upperleft X and Y, pixel size and rotation (scalex, scaley, skewx & skewy) and reference system (srid). If a raster is passed in, returns a new raster with the same size, alignment and SRID. If srid is left out, the spatial ref is set to unknown (0).';

-- DROP FUNCTION public.st_makeenvelope(float8, float8, float8, float8, int4);

CREATE OR REPLACE FUNCTION public.st_makeenvelope(double precision, double precision, double precision, double precision, integer DEFAULT 0)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_MakeEnvelope$function$
;

COMMENT ON FUNCTION public.st_makeenvelope(float8, float8, float8, float8, int4) IS 'args: xmin, ymin, xmax, ymax, srid=unknown - Creates a rectangular Polygon from minimum and maximum coordinates.';

-- DROP FUNCTION public.st_makeline(_geometry);

CREATE OR REPLACE FUNCTION public.st_makeline(geometry[])
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_makeline_garray$function$
;

COMMENT ON FUNCTION public.st_makeline(_geometry) IS 'args: geoms_array - Creates a Linestring from Point, MultiPoint, or LineString geometries.';

-- DROP FUNCTION public.st_makeline(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_makeline(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_makeline$function$
;

COMMENT ON FUNCTION public.st_makeline(geometry, geometry) IS 'args: geom1, geom2 - Creates a Linestring from Point, MultiPoint, or LineString geometries.';

-- DROP AGGREGATE public.st_makeline(geometry);

-- Aggregate function public.st_makeline(geometry)
-- ERROR: more than one function named "public.st_makeline";

COMMENT ON AGGREGATE public.st_makeline(geometry) IS 'args: geoms - Creates a Linestring from Point, MultiPoint, or LineString geometries.';

-- DROP FUNCTION public.st_makepoint(float8, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_makepoint(double precision, double precision, double precision, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_makepoint$function$
;

COMMENT ON FUNCTION public.st_makepoint(float8, float8, float8, float8) IS 'args: x, y, z, m - Creates a 2D, 3DZ or 4D Point.';

-- DROP FUNCTION public.st_makepoint(float8, float8);

CREATE OR REPLACE FUNCTION public.st_makepoint(double precision, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_makepoint$function$
;

COMMENT ON FUNCTION public.st_makepoint(float8, float8) IS 'args: x, y - Creates a 2D, 3DZ or 4D Point.';

-- DROP FUNCTION public.st_makepoint(float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_makepoint(double precision, double precision, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_makepoint$function$
;

COMMENT ON FUNCTION public.st_makepoint(float8, float8, float8) IS 'args: x, y, z - Creates a 2D, 3DZ or 4D Point.';

-- DROP FUNCTION public.st_makepointm(float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_makepointm(double precision, double precision, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_makepoint3dm$function$
;

COMMENT ON FUNCTION public.st_makepointm(float8, float8, float8) IS 'args: x, y, m - Creates a Point from X, Y and M values.';

-- DROP FUNCTION public.st_makepolygon(geometry, _geometry);

CREATE OR REPLACE FUNCTION public.st_makepolygon(geometry, geometry[])
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_makepoly$function$
;

COMMENT ON FUNCTION public.st_makepolygon(geometry, _geometry) IS 'args: outerlinestring, interiorlinestrings - Creates a Polygon from a shell and optional list of holes.';

-- DROP FUNCTION public.st_makepolygon(geometry);

CREATE OR REPLACE FUNCTION public.st_makepolygon(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_makepoly$function$
;

COMMENT ON FUNCTION public.st_makepolygon(geometry) IS 'args: linestring - Creates a Polygon from a shell and optional list of holes.';

-- DROP FUNCTION public.st_makevalid(geometry);

CREATE OR REPLACE FUNCTION public.st_makevalid(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_MakeValid$function$
;

COMMENT ON FUNCTION public.st_makevalid(geometry) IS 'args: input - Attempts to make an invalid geometry valid without losing vertices.';

-- DROP FUNCTION public.st_mapalgebra(raster, int4, text, text, float8);

CREATE OR REPLACE FUNCTION public.st_mapalgebra(rast raster, nband integer, pixeltype text, expression text, nodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_mapalgebra(ARRAY[ROW($1, $2)]::rastbandarg[], $4, $3, 'FIRST', $5::text) $function$
;

COMMENT ON FUNCTION public.st_mapalgebra(raster, int4, text, text, float8) IS 'args: rast, nband, pixeltype, expression, nodataval=NULL - Expression version - Returns a one-band raster given one or two input rasters, band indexes and one or more user-specified SQL expressions.';

-- DROP FUNCTION public.st_mapalgebra(in raster, in int4, in regprocedure, in text, in text, in raster, in int4, in int4, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mapalgebra(rast raster, nband integer, callbackfunc regprocedure, pixeltype text DEFAULT NULL::text, extenttype text DEFAULT 'FIRST'::text, customextent raster DEFAULT NULL::raster, distancex integer DEFAULT 0, distancey integer DEFAULT 0, VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_MapAlgebra(ARRAY[ROW($1, $2)]::rastbandarg[], $3, $4, $7, $8, $5, $6,NULL::double precision [],NULL::boolean, VARIADIC $9) $function$
;

COMMENT ON FUNCTION public.st_mapalgebra(in raster, in int4, in regprocedure, in text, in text, in raster, in int4, in int4, variadic _text) IS 'args: rast, nband, callbackfunc, pixeltype=NULL, extenttype=FIRST, customextent=NULL, distancex=0, distancey=0, VARIADIC userargs=NULL - Callback function version - Returns a one-band raster given one or more input rasters, band indexes and one user-specified callback function.';

-- DROP FUNCTION public.st_mapalgebra(in raster, in int4, in raster, in int4, in regprocedure, in text, in text, in raster, in int4, in int4, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mapalgebra(rast1 raster, nband1 integer, rast2 raster, nband2 integer, callbackfunc regprocedure, pixeltype text DEFAULT NULL::text, extenttype text DEFAULT 'INTERSECTION'::text, customextent raster DEFAULT NULL::raster, distancex integer DEFAULT 0, distancey integer DEFAULT 0, VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_MapAlgebra(ARRAY[ROW($1, $2), ROW($3, $4)]::rastbandarg[], $5, $6, $9, $10, $7, $8,NULL::double precision [],NULL::boolean, VARIADIC $11) $function$
;

COMMENT ON FUNCTION public.st_mapalgebra(in raster, in int4, in raster, in int4, in regprocedure, in text, in text, in raster, in int4, in int4, variadic _text) IS 'args: rast1, nband1, rast2, nband2, callbackfunc, pixeltype=NULL, extenttype=INTERSECTION, customextent=NULL, distancex=0, distancey=0, VARIADIC userargs=NULL - Callback function version - Returns a one-band raster given one or more input rasters, band indexes and one user-specified callback function.';

-- DROP FUNCTION public.st_mapalgebra(in raster, in int4, in regprocedure, in _float8, in bool, in text, in text, in raster, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mapalgebra(rast raster, nband integer, callbackfunc regprocedure, mask double precision[], weighted boolean, pixeltype text DEFAULT NULL::text, extenttype text DEFAULT 'INTERSECTION'::text, customextent raster DEFAULT NULL::raster, VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$
	select public._ST_mapalgebra(ARRAY[ROW($1,$2)]::rastbandarg[],$3,$6,NULL::integer,NULL::integer,$7,$8,$4,$5,VARIADIC $9)
	$function$
;

COMMENT ON FUNCTION public.st_mapalgebra(in raster, in int4, in regprocedure, in _float8, in bool, in text, in text, in raster, variadic _text) IS 'args: rast, nband, callbackfunc, mask, weighted, pixeltype=NULL, extenttype=INTERSECTION, customextent=NULL, VARIADIC userargs=NULL - Callback function version - Returns a one-band raster given one or more input rasters, band indexes and one user-specified callback function.';

-- DROP FUNCTION public.st_mapalgebra(raster, text, text, float8);

CREATE OR REPLACE FUNCTION public.st_mapalgebra(rast raster, pixeltype text, expression text, nodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_mapalgebra($1, 1, $2, $3, $4) $function$
;

COMMENT ON FUNCTION public.st_mapalgebra(raster, text, text, float8) IS 'args: rast, pixeltype, expression, nodataval=NULL - Expression version - Returns a one-band raster given one or two input rasters, band indexes and one or more user-specified SQL expressions.';

-- DROP FUNCTION public.st_mapalgebra(raster, raster, text, text, text, text, text, float8);

CREATE OR REPLACE FUNCTION public.st_mapalgebra(rast1 raster, rast2 raster, expression text, pixeltype text DEFAULT NULL::text, extenttype text DEFAULT 'INTERSECTION'::text, nodata1expr text DEFAULT NULL::text, nodata2expr text DEFAULT NULL::text, nodatanodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_mapalgebra($1, 1, $2, 1, $3, $4, $5, $6, $7, $8) $function$
;

COMMENT ON FUNCTION public.st_mapalgebra(raster, raster, text, text, text, text, text, float8) IS 'args: rast1, rast2, expression, pixeltype=NULL, extenttype=INTERSECTION, nodata1expr=NULL, nodata2expr=NULL, nodatanodataval=NULL - Expression version - Returns a one-band raster given one or two input rasters, band indexes and one or more user-specified SQL expressions.';

-- DROP FUNCTION public.st_mapalgebra(in _rastbandarg, in regprocedure, in text, in text, in raster, in int4, in int4, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mapalgebra(rastbandargset rastbandarg[], callbackfunc regprocedure, pixeltype text DEFAULT NULL::text, extenttype text DEFAULT 'INTERSECTION'::text, customextent raster DEFAULT NULL::raster, distancex integer DEFAULT 0, distancey integer DEFAULT 0, VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_MapAlgebra($1, $2, $3, $6, $7, $4, $5,NULL::double precision [],NULL::boolean, VARIADIC $8) $function$
;

COMMENT ON FUNCTION public.st_mapalgebra(in _rastbandarg, in regprocedure, in text, in text, in raster, in int4, in int4, variadic _text) IS 'args: rastbandargset, callbackfunc, pixeltype=NULL, extenttype=INTERSECTION, customextent=NULL, distancex=0, distancey=0, VARIADIC userargs=NULL - Callback function version - Returns a one-band raster given one or more input rasters, band indexes and one user-specified callback function.';

-- DROP FUNCTION public.st_mapalgebra(raster, int4, raster, int4, text, text, text, text, text, float8);

CREATE OR REPLACE FUNCTION public.st_mapalgebra(rast1 raster, band1 integer, rast2 raster, band2 integer, expression text, pixeltype text DEFAULT NULL::text, extenttype text DEFAULT 'INTERSECTION'::text, nodata1expr text DEFAULT NULL::text, nodata2expr text DEFAULT NULL::text, nodatanodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_mapalgebra(ARRAY[ROW($1, $2), ROW($3, $4)]::rastbandarg[], $5, $6, $7, $8, $9, $10) $function$
;

COMMENT ON FUNCTION public.st_mapalgebra(raster, int4, raster, int4, text, text, text, text, text, float8) IS 'args: rast1, nband1, rast2, nband2, expression, pixeltype=NULL, extenttype=INTERSECTION, nodata1expr=NULL, nodata2expr=NULL, nodatanodataval=NULL - Expression version - Returns a one-band raster given one or two input rasters, band indexes and one or more user-specified SQL expressions.';

-- DROP FUNCTION public.st_mapalgebra(in raster, in _int4, in regprocedure, in text, in text, in raster, in int4, in int4, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mapalgebra(rast raster, nband integer[], callbackfunc regprocedure, pixeltype text DEFAULT NULL::text, extenttype text DEFAULT 'FIRST'::text, customextent raster DEFAULT NULL::raster, distancex integer DEFAULT 0, distancey integer DEFAULT 0, VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		x int;
		argset rastbandarg[];
	BEGIN
		IF $2 IS NULL OR array_ndims($2) < 1 OR array_length($2, 1) < 1 THEN
			RAISE EXCEPTION 'Populated 1D array must be provided for nband';
			RETURN NULL;
		END IF;

		FOR x IN array_lower($2, 1)..array_upper($2, 1) LOOP
			IF $2[x] IS NULL THEN
				CONTINUE;
			END IF;

			argset := argset || ROW($1, $2[x])::rastbandarg;
		END LOOP;

		IF array_length(argset, 1) < 1 THEN
			RAISE EXCEPTION 'Populated 1D array must be provided for nband';
			RETURN NULL;
		END IF;

		RETURN public._ST_MapAlgebra(argset, $3, $4, $7, $8, $5, $6,NULL::double precision [],NULL::boolean, VARIADIC $9);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_mapalgebra(in raster, in _int4, in regprocedure, in text, in text, in raster, in int4, in int4, variadic _text) IS 'args: rast, nband, callbackfunc, pixeltype=NULL, extenttype=FIRST, customextent=NULL, distancex=0, distancey=0, VARIADIC userargs=NULL - Callback function version - Returns a one-band raster given one or more input rasters, band indexes and one user-specified callback function.';

-- DROP FUNCTION public.st_mapalgebraexpr(raster, int4, raster, int4, text, text, text, text, text, float8);

CREATE OR REPLACE FUNCTION public.st_mapalgebraexpr(rast1 raster, band1 integer, rast2 raster, band2 integer, expression text, pixeltype text DEFAULT NULL::text, extenttype text DEFAULT 'INTERSECTION'::text, nodata1expr text DEFAULT NULL::text, nodata2expr text DEFAULT NULL::text, nodatanodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_mapAlgebra2$function$
;

COMMENT ON FUNCTION public.st_mapalgebraexpr(raster, int4, raster, int4, text, text, text, text, text, float8) IS 'args: rast1, band1, rast2, band2, expression, pixeltype=same_as_rast1_band, extenttype=INTERSECTION, nodata1expr=NULL, nodata2expr=NULL, nodatanodataval=NULL - 2 raster band version: Creates a new one band raster formed by applying a valid PostgreSQL algebraic operation on the two input raster bands and of pixeltype provided. band 1 of each raster is assumed if no band numbers are specified. The resulting raster will be aligned (scale, skew and pixel corners) on the grid defined by the first raster and have its extent defined by the "extenttype" parameter. Values for "extenttype" can be: INTERSECTION, UNION, FIRST, SECOND.';

-- DROP FUNCTION public.st_mapalgebraexpr(raster, raster, text, text, text, text, text, float8);

CREATE OR REPLACE FUNCTION public.st_mapalgebraexpr(rast1 raster, rast2 raster, expression text, pixeltype text DEFAULT NULL::text, extenttype text DEFAULT 'INTERSECTION'::text, nodata1expr text DEFAULT NULL::text, nodata2expr text DEFAULT NULL::text, nodatanodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_mapalgebraexpr($1, 1, $2, 1, $3, $4, $5, $6, $7, $8) $function$
;

COMMENT ON FUNCTION public.st_mapalgebraexpr(raster, raster, text, text, text, text, text, float8) IS 'args: rast1, rast2, expression, pixeltype=same_as_rast1_band, extenttype=INTERSECTION, nodata1expr=NULL, nodata2expr=NULL, nodatanodataval=NULL - 2 raster band version: Creates a new one band raster formed by applying a valid PostgreSQL algebraic operation on the two input raster bands and of pixeltype provided. band 1 of each raster is assumed if no band numbers are specified. The resulting raster will be aligned (scale, skew and pixel corners) on the grid defined by the first raster and have its extent defined by the "extenttype" parameter. Values for "extenttype" can be: INTERSECTION, UNION, FIRST, SECOND.';

-- DROP FUNCTION public.st_mapalgebraexpr(raster, text, text, float8);

CREATE OR REPLACE FUNCTION public.st_mapalgebraexpr(rast raster, pixeltype text, expression text, nodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_mapalgebraexpr($1, 1, $2, $3, $4) $function$
;

COMMENT ON FUNCTION public.st_mapalgebraexpr(raster, text, text, float8) IS 'args: rast, pixeltype, expression, nodataval=NULL - 1 raster band version: Creates a new one band raster formed by applying a valid PostgreSQL algebraic operation on the input raster band and of pixeltype provided. Band 1 is assumed if no band is specified.';

-- DROP FUNCTION public.st_mapalgebraexpr(raster, int4, text, text, float8);

CREATE OR REPLACE FUNCTION public.st_mapalgebraexpr(rast raster, band integer, pixeltype text, expression text, nodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_mapAlgebraExpr$function$
;

COMMENT ON FUNCTION public.st_mapalgebraexpr(raster, int4, text, text, float8) IS 'args: rast, band, pixeltype, expression, nodataval=NULL - 1 raster band version: Creates a new one band raster formed by applying a valid PostgreSQL algebraic operation on the input raster band and of pixeltype provided. Band 1 is assumed if no band is specified.';

-- DROP FUNCTION public.st_mapalgebrafct(in raster, in text, in regprocedure, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mapalgebrafct(rast raster, pixeltype text, onerastuserfunc regprocedure, VARIADIC args text[])
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_mapalgebrafct($1, 1, $2, $3, VARIADIC $4) $function$
;

COMMENT ON FUNCTION public.st_mapalgebrafct(in raster, in text, in regprocedure, variadic _text) IS 'args: rast, pixeltype, onerasteruserfunc, VARIADIC args - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';

-- DROP FUNCTION public.st_mapalgebrafct(in raster, in int4, in raster, in int4, in regprocedure, in text, in text, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mapalgebrafct(rast1 raster, band1 integer, rast2 raster, band2 integer, tworastuserfunc regprocedure, pixeltype text DEFAULT NULL::text, extenttype text DEFAULT 'INTERSECTION'::text, VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_mapAlgebra2$function$
;

COMMENT ON FUNCTION public.st_mapalgebrafct(in raster, in int4, in raster, in int4, in regprocedure, in text, in text, variadic _text) IS 'args: rast1, band1, rast2, band2, tworastuserfunc, pixeltype=same_as_rast1, extenttype=INTERSECTION, VARIADIC userargs - 2 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the 2 input raster bands and of pixeltype prodived. Band 1 is assumed if no band is specified. Extent type defaults to INTERSECTION if not specified.';

-- DROP FUNCTION public.st_mapalgebrafct(in raster, in raster, in regprocedure, in text, in text, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mapalgebrafct(rast1 raster, rast2 raster, tworastuserfunc regprocedure, pixeltype text DEFAULT NULL::text, extenttype text DEFAULT 'INTERSECTION'::text, VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_mapalgebrafct($1, 1, $2, 1, $3, $4, $5, VARIADIC $6) $function$
;

COMMENT ON FUNCTION public.st_mapalgebrafct(in raster, in raster, in regprocedure, in text, in text, variadic _text) IS 'args: rast1, rast2, tworastuserfunc, pixeltype=same_as_rast1, extenttype=INTERSECTION, VARIADIC userargs - 2 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the 2 input raster bands and of pixeltype prodived. Band 1 is assumed if no band is specified. Extent type defaults to INTERSECTION if not specified.';

-- DROP FUNCTION public.st_mapalgebrafct(in raster, in int4, in text, in regprocedure, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mapalgebrafct(rast raster, band integer, pixeltype text, onerastuserfunc regprocedure, VARIADIC args text[])
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_mapAlgebraFct$function$
;

COMMENT ON FUNCTION public.st_mapalgebrafct(in raster, in int4, in text, in regprocedure, variadic _text) IS 'args: rast, band, pixeltype, onerasteruserfunc, VARIADIC args - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';

-- DROP FUNCTION public.st_mapalgebrafct(raster, int4, text, regprocedure);

CREATE OR REPLACE FUNCTION public.st_mapalgebrafct(rast raster, band integer, pixeltype text, onerastuserfunc regprocedure)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_mapalgebrafct($1, $2, $3, $4, NULL) $function$
;

COMMENT ON FUNCTION public.st_mapalgebrafct(raster, int4, text, regprocedure) IS 'args: rast, band, pixeltype, onerasteruserfunc - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';

-- DROP FUNCTION public.st_mapalgebrafct(in raster, in int4, in regprocedure, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mapalgebrafct(rast raster, band integer, onerastuserfunc regprocedure, VARIADIC args text[])
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_mapalgebrafct($1, $2, NULL, $3, VARIADIC $4) $function$
;

COMMENT ON FUNCTION public.st_mapalgebrafct(in raster, in int4, in regprocedure, variadic _text) IS 'args: rast, band, onerasteruserfunc, VARIADIC args - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';

-- DROP FUNCTION public.st_mapalgebrafct(raster, int4, regprocedure);

CREATE OR REPLACE FUNCTION public.st_mapalgebrafct(rast raster, band integer, onerastuserfunc regprocedure)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_mapalgebrafct($1, $2, NULL, $3, NULL) $function$
;

COMMENT ON FUNCTION public.st_mapalgebrafct(raster, int4, regprocedure) IS 'args: rast, band, onerasteruserfunc - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';

-- DROP FUNCTION public.st_mapalgebrafct(raster, text, regprocedure);

CREATE OR REPLACE FUNCTION public.st_mapalgebrafct(rast raster, pixeltype text, onerastuserfunc regprocedure)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_mapalgebrafct($1, 1, $2, $3, NULL) $function$
;

COMMENT ON FUNCTION public.st_mapalgebrafct(raster, text, regprocedure) IS 'args: rast, pixeltype, onerasteruserfunc - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';

-- DROP FUNCTION public.st_mapalgebrafct(in raster, in regprocedure, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mapalgebrafct(rast raster, onerastuserfunc regprocedure, VARIADIC args text[])
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_mapalgebrafct($1, 1, NULL, $2, VARIADIC $3) $function$
;

COMMENT ON FUNCTION public.st_mapalgebrafct(in raster, in regprocedure, variadic _text) IS 'args: rast, onerasteruserfunc, VARIADIC args - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';

-- DROP FUNCTION public.st_mapalgebrafct(raster, regprocedure);

CREATE OR REPLACE FUNCTION public.st_mapalgebrafct(rast raster, onerastuserfunc regprocedure)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_mapalgebrafct($1, 1, NULL, $2, NULL) $function$
;

COMMENT ON FUNCTION public.st_mapalgebrafct(raster, regprocedure) IS 'args: rast, onerasteruserfunc - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';

-- DROP FUNCTION public.st_mapalgebrafctngb(in raster, in int4, in text, in int4, in int4, in regprocedure, in text, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mapalgebrafctngb(rast raster, band integer, pixeltype text, ngbwidth integer, ngbheight integer, onerastngbuserfunc regprocedure, nodatamode text, VARIADIC args text[])
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_mapAlgebraFctNgb$function$
;

COMMENT ON FUNCTION public.st_mapalgebrafctngb(in raster, in int4, in text, in int4, in int4, in regprocedure, in text, variadic _text) IS 'args: rast, band, pixeltype, ngbwidth, ngbheight, onerastngbuserfunc, nodatamode, VARIADIC args - 1-band version: Map Algebra Nearest Neighbor using user-defined PostgreSQL function. Return a raster which values are the result of a PLPGSQL user function involving a neighborhood of values from the input raster band.';

-- DROP FUNCTION public.st_max4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public.st_max4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_value double precision[][][];
		max double precision;
		x int;
		y int;
		z int;
		ndims int;
	BEGIN
		max := '-Infinity'::double precision;

		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		-- raster
		FOR z IN array_lower(_value, 1)..array_upper(_value, 1) LOOP
			-- row
			FOR y IN array_lower(_value, 2)..array_upper(_value, 2) LOOP
				-- column
				FOR x IN array_lower(_value, 3)..array_upper(_value, 3) LOOP
					IF _value[z][y][x] IS NULL THEN
						IF array_length(userargs, 1) > 0 THEN
							_value[z][y][x] = userargs[array_lower(userargs, 1)]::double precision;
						ELSE
							CONTINUE;
						END IF;
					END IF;

					IF _value[z][y][x] > max THEN
						max := _value[z][y][x];
					END IF;
				END LOOP;
			END LOOP;
		END LOOP;

		IF max = '-Infinity'::double precision THEN
			RETURN NULL;
		END IF;

		RETURN max;
	END;
	$function$
;

COMMENT ON FUNCTION public.st_max4ma(in _float8, in _int4, variadic _text) IS 'args: value, pos, VARIADIC userargs - Raster processing function that calculates the maximum pixel value in a neighborhood.';

-- DROP FUNCTION public.st_max4ma(in _float8, in text, variadic _text);

CREATE OR REPLACE FUNCTION public.st_max4ma(matrix double precision[], nodatamode text, VARIADIC args text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
    DECLARE
        _matrix float[][];
        max float;
    BEGIN
        _matrix := matrix;
        max := '-Infinity'::float;
        FOR x in array_lower(_matrix, 1)..array_upper(_matrix, 1) LOOP
            FOR y in array_lower(_matrix, 2)..array_upper(_matrix, 2) LOOP
                IF _matrix[x][y] IS NULL THEN
                    IF NOT nodatamode = 'ignore' THEN
                        _matrix[x][y] := nodatamode::float;
                    END IF;
                END IF;
                IF max < _matrix[x][y] THEN
                    max := _matrix[x][y];
                END IF;
            END LOOP;
        END LOOP;
        RETURN max;
    END;
    $function$
;

COMMENT ON FUNCTION public.st_max4ma(in _float8, in text, variadic _text) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the maximum pixel value in a neighborhood.';

-- DROP FUNCTION public.st_maxdistance(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_maxdistance(geom1 geometry, geom2 geometry)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS $function$SELECT public._ST_MaxDistance(public.ST_ConvexHull($1), public.ST_ConvexHull($2))$function$
;

COMMENT ON FUNCTION public.st_maxdistance(geometry, geometry) IS 'args: g1, g2 - Returns the 2D largest distance between two geometries in projected units.';

-- DROP FUNCTION public.st_maximuminscribedcircle(in geometry, out geometry, out geometry, out float8);

CREATE OR REPLACE FUNCTION public.st_maximuminscribedcircle(geometry, OUT center geometry, OUT nearest geometry, OUT radius double precision)
 RETURNS record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_MaximumInscribedCircle$function$
;

COMMENT ON FUNCTION public.st_maximuminscribedcircle(in geometry, out geometry, out geometry, out float8) IS 'args: geom - Computes the largest circle that is fully contained within a geometry.';

-- DROP FUNCTION public.st_mean4ma(in _float8, in text, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mean4ma(matrix double precision[], nodatamode text, VARIADIC args text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
    DECLARE
        _matrix float[][];
        sum float;
        count float;
    BEGIN
        _matrix := matrix;
        sum := 0;
        count := 0;
        FOR x in array_lower(matrix, 1)..array_upper(matrix, 1) LOOP
            FOR y in array_lower(matrix, 2)..array_upper(matrix, 2) LOOP
                IF _matrix[x][y] IS NULL THEN
                    IF nodatamode = 'ignore' THEN
                        _matrix[x][y] := 0;
                    ELSE
                        _matrix[x][y] := nodatamode::float;
                        count := count + 1;
                    END IF;
                ELSE
                    count := count + 1;
                END IF;
                sum := sum + _matrix[x][y];
            END LOOP;
        END LOOP;
        IF count = 0 THEN
            RETURN NULL;
        END IF;
        RETURN sum / count;
    END;
    $function$
;

COMMENT ON FUNCTION public.st_mean4ma(in _float8, in text, variadic _text) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the mean pixel value in a neighborhood.';

-- DROP FUNCTION public.st_mean4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mean4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_value double precision[][][];
		sum double precision;
		count int;
		x int;
		y int;
		z int;
		ndims int;
	BEGIN
		sum := 0;
		count := 0;

		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		-- raster
		FOR z IN array_lower(_value, 1)..array_upper(_value, 1) LOOP
			-- row
			FOR y IN array_lower(_value, 2)..array_upper(_value, 2) LOOP
				-- column
				FOR x IN array_lower(_value, 3)..array_upper(_value, 3) LOOP
					IF _value[z][y][x] IS NULL THEN
						IF array_length(userargs, 1) > 0 THEN
							_value[z][y][x] = userargs[array_lower(userargs, 1)]::double precision;
						ELSE
							CONTINUE;
						END IF;
					END IF;

					sum := sum + _value[z][y][x];
					count := count + 1;
				END LOOP;
			END LOOP;
		END LOOP;

		IF count < 1 THEN
			RETURN NULL;
		END IF;

		RETURN sum / count::double precision;
	END;
	$function$
;

COMMENT ON FUNCTION public.st_mean4ma(in _float8, in _int4, variadic _text) IS 'args: value, pos, VARIADIC userargs - Raster processing function that calculates the mean pixel value in a neighborhood.';

-- DROP AGGREGATE public.st_memcollect(geometry);

CREATE OR REPLACE AGGREGATE public.st_memcollect(public.geometry) (
	SFUNC = public.st_collect,
	STYPE = geometry
);

-- DROP FUNCTION public.st_memsize(raster);

CREATE OR REPLACE FUNCTION public.st_memsize(raster)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_memsize$function$
;

COMMENT ON FUNCTION public.st_memsize(raster) IS 'args: rast - Returns the amount of space (in bytes) the raster takes.';

-- DROP FUNCTION public.st_memsize(geometry);

CREATE OR REPLACE FUNCTION public.st_memsize(geometry)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_mem_size$function$
;

COMMENT ON FUNCTION public.st_memsize(geometry) IS 'args: geomA - Returns the amount of memory space a geometry takes.';

-- DROP AGGREGATE public.st_memunion(geometry);

CREATE OR REPLACE AGGREGATE public.st_memunion(public.geometry) (
	SFUNC = public.st_union,
	STYPE = geometry
);

COMMENT ON AGGREGATE public.st_memunion(geometry) IS 'args: geomfield - Aggregate function which unions geometry in a memory-efficent but slower way';

-- DROP FUNCTION public.st_metadata(in raster, out float8, out float8, out int4, out int4, out float8, out float8, out float8, out float8, out int4, out int4);

CREATE OR REPLACE FUNCTION public.st_metadata(rast raster, OUT upperleftx double precision, OUT upperlefty double precision, OUT width integer, OUT height integer, OUT scalex double precision, OUT scaley double precision, OUT skewx double precision, OUT skewy double precision, OUT srid integer, OUT numbands integer)
 RETURNS record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_metadata$function$
;

COMMENT ON FUNCTION public.st_metadata(in raster, out float8, out float8, out int4, out int4, out float8, out float8, out float8, out float8, out int4, out int4) IS 'args: rast - Returns basic meta data about a raster object such as pixel size, rotation (skew), upper, lower left, etc.';

-- DROP FUNCTION public.st_min4ma(in _float8, in text, variadic _text);

CREATE OR REPLACE FUNCTION public.st_min4ma(matrix double precision[], nodatamode text, VARIADIC args text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
    DECLARE
        _matrix float[][];
        min float;
    BEGIN
        _matrix := matrix;
        min := 'Infinity'::float;
        FOR x in array_lower(_matrix, 1)..array_upper(_matrix, 1) LOOP
            FOR y in array_lower(_matrix, 2)..array_upper(_matrix, 2) LOOP
                IF _matrix[x][y] IS NULL THEN
                    IF NOT nodatamode = 'ignore' THEN
                        _matrix[x][y] := nodatamode::float;
                    END IF;
                END IF;
                IF min > _matrix[x][y] THEN
                    min := _matrix[x][y];
                END IF;
            END LOOP;
        END LOOP;
        RETURN min;
    END;
    $function$
;

COMMENT ON FUNCTION public.st_min4ma(in _float8, in text, variadic _text) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the minimum pixel value in a neighborhood.';

-- DROP FUNCTION public.st_min4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public.st_min4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_value double precision[][][];
		min double precision;
		x int;
		y int;
		z int;
		ndims int;
	BEGIN
		min := 'Infinity'::double precision;

		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		-- raster
		FOR z IN array_lower(_value, 1)..array_upper(_value, 1) LOOP
			-- row
			FOR y IN array_lower(_value, 2)..array_upper(_value, 2) LOOP
				-- column
				FOR x IN array_lower(_value, 3)..array_upper(_value, 3) LOOP
					IF _value[z][y][x] IS NULL THEN
						IF array_length(userargs, 1) > 0 THEN
							_value[z][y][x] = userargs[array_lower(userargs, 1)]::double precision;
						ELSE
							CONTINUE;
						END IF;
					END IF;

					IF _value[z][y][x] < min THEN
						min := _value[z][y][x];
					END IF;
				END LOOP;
			END LOOP;
		END LOOP;

		IF min = 'Infinity'::double precision THEN
			RETURN NULL;
		END IF;

		RETURN min;
	END;
	$function$
;

COMMENT ON FUNCTION public.st_min4ma(in _float8, in _int4, variadic _text) IS 'args: value, pos, VARIADIC userargs - Raster processing function that calculates the minimum pixel value in a neighborhood.';

-- DROP FUNCTION public.st_minconvexhull(raster, int4);

CREATE OR REPLACE FUNCTION public.st_minconvexhull(rast raster, nband integer DEFAULT NULL::integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_convex_hull$function$
;

COMMENT ON FUNCTION public.st_minconvexhull(raster, int4) IS 'args: rast, nband=NULL - Return the convex hull geometry of the raster excluding NODATA pixels.';

-- DROP FUNCTION public.st_mindist4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public.st_mindist4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_value double precision[][][];
		ndims int;

		d double precision DEFAULT NULL;
		_d double precision;

		z integer;
		x integer;
		y integer;

		cx integer;
		cy integer;
		cv double precision;

		w integer;
		h integer;
		max_dx double precision;
		max_dy double precision;
	BEGIN

		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		-- only use the first raster passed to this function
		IF array_length(_value, 1) > 1 THEN
			RAISE NOTICE 'Only using the values from the first raster';
		END IF;
		z := array_lower(_value, 1);

		-- width and height (0-based)
		h := array_upper(_value, 2) - array_lower(_value, 2);
		w := array_upper(_value, 3) - array_lower(_value, 3);

		-- max distance from center pixel
		max_dx := w / 2;
		max_dy := h / 2;

		-- correct width and height (1-based)
		w := w + 1;
		h := h + 1;

		-- width and height should be odd numbers
		IF w % 2. != 1 THEN
			RAISE EXCEPTION 'Width of neighborhood array does not permit for a center pixel';
		END IF;
		IF h % 2. != 1 THEN
			RAISE EXCEPTION 'Height of neighborhood array does not permit for a center pixel';
		END IF;

		-- center pixel's coordinates
		cy := max_dy + array_lower(_value, 2);
		cx := max_dx + array_lower(_value, 3);

		-- center pixel value
		cv := _value[z][cy][cx];

		-- check to see if center pixel has value
		IF cv IS NOT NULL THEN
			RETURN 0.;
		END IF;

		FOR y IN array_lower(_value, 2)..array_upper(_value, 2) LOOP
			FOR x IN array_lower(_value, 3)..array_upper(_value, 3) LOOP

				-- skip NODATA values and center pixel
				IF _value[z][y][x] IS NULL OR (x = cx AND y = cy) THEN
					CONTINUE;
				END IF;

				-- use pythagorean theorem
				_d := sqrt(power(cx - x, 2) + power(cy - y, 2));
--				RAISE NOTICE 'distance = %', _d;

				IF d IS NULL OR _d < d THEN
					d := _d;
				END IF;
			END LOOP;
		END LOOP;
--		RAISE NOTICE 'd = %', d;

		RETURN d;
	END;
	$function$
;

COMMENT ON FUNCTION public.st_mindist4ma(in _float8, in _int4, variadic _text) IS 'args: value, pos, VARIADIC userargs - Raster processing function that returns the minimum distance (in number of pixels) between the pixel of interest and a neighboring pixel with value.';

-- DROP FUNCTION public.st_minimumboundingcircle(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_minimumboundingcircle(inputgeom geometry, segs_per_quarter integer DEFAULT 48)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_MinimumBoundingCircle$function$
;

COMMENT ON FUNCTION public.st_minimumboundingcircle(geometry, int4) IS 'args: geomA, num_segs_per_qt_circ=48 - Returns the smallest circle polygon that contains a geometry.';

-- DROP FUNCTION public.st_minimumboundingradius(in geometry, out geometry, out float8);

CREATE OR REPLACE FUNCTION public.st_minimumboundingradius(geometry, OUT center geometry, OUT radius double precision)
 RETURNS record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_MinimumBoundingRadius$function$
;

COMMENT ON FUNCTION public.st_minimumboundingradius(in geometry, out geometry, out float8) IS 'args: geom - Returns the center point and radius of the smallest circle that contains a geometry.';

-- DROP FUNCTION public.st_minimumclearance(geometry);

CREATE OR REPLACE FUNCTION public.st_minimumclearance(geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_MinimumClearance$function$
;

COMMENT ON FUNCTION public.st_minimumclearance(geometry) IS 'args: g - Returns the minimum clearance of a geometry, a measure of a geometrys robustness.';

-- DROP FUNCTION public.st_minimumclearanceline(geometry);

CREATE OR REPLACE FUNCTION public.st_minimumclearanceline(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_MinimumClearanceLine$function$
;

COMMENT ON FUNCTION public.st_minimumclearanceline(geometry) IS 'args: g - Returns the two-point LineString spanning a geometrys minimum clearance.';

-- DROP FUNCTION public.st_minpossiblevalue(text);

CREATE OR REPLACE FUNCTION public.st_minpossiblevalue(pixeltype text)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_minPossibleValue$function$
;

COMMENT ON FUNCTION public.st_minpossiblevalue(text) IS 'args: pixeltype - Returns the minimum value this pixeltype can store.';

-- DROP FUNCTION public.st_mlinefromtext(text);

CREATE OR REPLACE FUNCTION public.st_mlinefromtext(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromText($1)) = 'MULTILINESTRING'
	THEN public.ST_GeomFromText($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_mlinefromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_mlinefromtext(text, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE
	WHEN public.geometrytype(public.ST_GeomFromText($1, $2)) = 'MULTILINESTRING'
	THEN public.ST_GeomFromText($1,$2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_mlinefromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_mlinefromwkb(bytea)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1)) = 'MULTILINESTRING'
	THEN public.ST_GeomFromWKB($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_mlinefromwkb(bytea, int4);

CREATE OR REPLACE FUNCTION public.st_mlinefromwkb(bytea, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1, $2)) = 'MULTILINESTRING'
	THEN public.ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_mpointfromtext(text);

CREATE OR REPLACE FUNCTION public.st_mpointfromtext(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromText($1)) = 'MULTIPOINT'
	THEN public.ST_GeomFromText($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_mpointfromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_mpointfromtext(text, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromText($1, $2)) = 'MULTIPOINT'
	THEN ST_GeomFromText($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_mpointfromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_mpointfromwkb(bytea)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1)) = 'MULTIPOINT'
	THEN public.ST_GeomFromWKB($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_mpointfromwkb(bytea, int4);

CREATE OR REPLACE FUNCTION public.st_mpointfromwkb(bytea, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1, $2)) = 'MULTIPOINT'
	THEN public.ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_mpolyfromtext(text);

CREATE OR REPLACE FUNCTION public.st_mpolyfromtext(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromText($1)) = 'MULTIPOLYGON'
	THEN public.ST_GeomFromText($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_mpolyfromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_mpolyfromtext(text, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromText($1, $2)) = 'MULTIPOLYGON'
	THEN public.ST_GeomFromText($1,$2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_mpolyfromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_mpolyfromwkb(bytea)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1)) = 'MULTIPOLYGON'
	THEN public.ST_GeomFromWKB($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_mpolyfromwkb(bytea, int4);

CREATE OR REPLACE FUNCTION public.st_mpolyfromwkb(bytea, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1, $2)) = 'MULTIPOLYGON'
	THEN public.ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_multi(geometry);

CREATE OR REPLACE FUNCTION public.st_multi(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_force_multi$function$
;

COMMENT ON FUNCTION public.st_multi(geometry) IS 'args: g1 - Return the geometry as a MULTI* geometry.';

-- DROP FUNCTION public.st_multilinefromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_multilinefromwkb(bytea)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1)) = 'MULTILINESTRING'
	THEN public.ST_GeomFromWKB($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_multilinestringfromtext(text);

CREATE OR REPLACE FUNCTION public.st_multilinestringfromtext(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$SELECT public.ST_MLineFromText($1)$function$
;

-- DROP FUNCTION public.st_multilinestringfromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_multilinestringfromtext(text, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$SELECT public.ST_MLineFromText($1, $2)$function$
;

-- DROP FUNCTION public.st_multipointfromtext(text);

CREATE OR REPLACE FUNCTION public.st_multipointfromtext(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$SELECT public.ST_MPointFromText($1)$function$
;

-- DROP FUNCTION public.st_multipointfromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_multipointfromwkb(bytea)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1)) = 'MULTIPOINT'
	THEN public.ST_GeomFromWKB($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_multipointfromwkb(bytea, int4);

CREATE OR REPLACE FUNCTION public.st_multipointfromwkb(bytea, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1,$2)) = 'MULTIPOINT'
	THEN public.ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_multipolyfromwkb(bytea, int4);

CREATE OR REPLACE FUNCTION public.st_multipolyfromwkb(bytea, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1, $2)) = 'MULTIPOLYGON'
	THEN public.ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_multipolyfromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_multipolyfromwkb(bytea)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1)) = 'MULTIPOLYGON'
	THEN public.ST_GeomFromWKB($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_multipolygonfromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_multipolygonfromtext(text, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$SELECT public.ST_MPolyFromText($1, $2)$function$
;

-- DROP FUNCTION public.st_multipolygonfromtext(text);

CREATE OR REPLACE FUNCTION public.st_multipolygonfromtext(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$SELECT public.ST_MPolyFromText($1)$function$
;

-- DROP FUNCTION public.st_ndims(geometry);

CREATE OR REPLACE FUNCTION public.st_ndims(geometry)
 RETURNS smallint
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_ndims$function$
;

COMMENT ON FUNCTION public.st_ndims(geometry) IS 'args: g1 - Returns the coordinate dimension of a geometry.';

-- DROP FUNCTION public.st_nearestvalue(raster, geometry, bool);

CREATE OR REPLACE FUNCTION public.st_nearestvalue(rast raster, pt geometry, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT st_nearestvalue($1, 1, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_nearestvalue(raster, geometry, bool) IS 'args: rast, pt, exclude_nodata_value=true - Returns the nearest non-NODATA value of a given bands pixel specified by a columnx and rowy or a geometric point expressed in the same spatial reference coordinate system as the raster.';

-- DROP FUNCTION public.st_nearestvalue(raster, int4, geometry, bool);

CREATE OR REPLACE FUNCTION public.st_nearestvalue(rast raster, band integer, pt geometry, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_nearestValue$function$
;

COMMENT ON FUNCTION public.st_nearestvalue(raster, int4, geometry, bool) IS 'args: rast, bandnum, pt, exclude_nodata_value=true - Returns the nearest non-NODATA value of a given bands pixel specified by a columnx and rowy or a geometric point expressed in the same spatial reference coordinate system as the raster.';

-- DROP FUNCTION public.st_nearestvalue(raster, int4, int4, bool);

CREATE OR REPLACE FUNCTION public.st_nearestvalue(rast raster, columnx integer, rowy integer, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT st_nearestvalue($1, 1, st_setsrid(st_makepoint(st_rastertoworldcoordx($1, $2, $3), st_rastertoworldcoordy($1, $2, $3)), st_srid($1)), $4) $function$
;

COMMENT ON FUNCTION public.st_nearestvalue(raster, int4, int4, bool) IS 'args: rast, columnx, rowy, exclude_nodata_value=true - Returns the nearest non-NODATA value of a given bands pixel specified by a columnx and rowy or a geometric point expressed in the same spatial reference coordinate system as the raster.';

-- DROP FUNCTION public.st_nearestvalue(raster, int4, int4, int4, bool);

CREATE OR REPLACE FUNCTION public.st_nearestvalue(rast raster, band integer, columnx integer, rowy integer, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT st_nearestvalue($1, $2, st_setsrid(st_makepoint(st_rastertoworldcoordx($1, $3, $4), st_rastertoworldcoordy($1, $3, $4)), st_srid($1)), $5) $function$
;

COMMENT ON FUNCTION public.st_nearestvalue(raster, int4, int4, int4, bool) IS 'args: rast, bandnum, columnx, rowy, exclude_nodata_value=true - Returns the nearest non-NODATA value of a given bands pixel specified by a columnx and rowy or a geometric point expressed in the same spatial reference coordinate system as the raster.';

-- DROP FUNCTION public.st_neighborhood(raster, geometry, int4, int4, bool);

CREATE OR REPLACE FUNCTION public.st_neighborhood(rast raster, pt geometry, distancex integer, distancey integer, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision[]
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT st_neighborhood($1, 1, $2, $3, $4, $5) $function$
;

COMMENT ON FUNCTION public.st_neighborhood(raster, geometry, int4, int4, bool) IS 'args: rast, pt, distanceX, distanceY, exclude_nodata_value=true - Returns a 2-D double precision array of the non-NODATA values around a given bands pixel specified by either a columnX and rowY or a geometric point expressed in the same spatial reference coordinate system as the raster.';

-- DROP FUNCTION public.st_neighborhood(raster, int4, int4, int4, int4, int4, bool);

CREATE OR REPLACE FUNCTION public.st_neighborhood(rast raster, band integer, columnx integer, rowy integer, distancex integer, distancey integer, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision[]
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_neighborhood($1, $2, $3, $4, $5, $6, $7) $function$
;

COMMENT ON FUNCTION public.st_neighborhood(raster, int4, int4, int4, int4, int4, bool) IS 'args: rast, bandnum, columnX, rowY, distanceX, distanceY, exclude_nodata_value=true - Returns a 2-D double precision array of the non-NODATA values around a given bands pixel specified by either a columnX and rowY or a geometric point expressed in the same spatial reference coordinate system as the raster.';

-- DROP FUNCTION public.st_neighborhood(raster, int4, int4, int4, int4, bool);

CREATE OR REPLACE FUNCTION public.st_neighborhood(rast raster, columnx integer, rowy integer, distancex integer, distancey integer, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision[]
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_neighborhood($1, 1, $2, $3, $4, $5, $6) $function$
;

COMMENT ON FUNCTION public.st_neighborhood(raster, int4, int4, int4, int4, bool) IS 'args: rast, columnX, rowY, distanceX, distanceY, exclude_nodata_value=true - Returns a 2-D double precision array of the non-NODATA values around a given bands pixel specified by either a columnX and rowY or a geometric point expressed in the same spatial reference coordinate system as the raster.';

-- DROP FUNCTION public.st_neighborhood(raster, int4, geometry, int4, int4, bool);

CREATE OR REPLACE FUNCTION public.st_neighborhood(rast raster, band integer, pt geometry, distancex integer, distancey integer, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision[]
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		wx double precision;
		wy double precision;
		rtn double precision[][];
	BEGIN
		IF (st_geometrytype($3) != 'ST_Point') THEN
			RAISE EXCEPTION 'Attempting to get the neighbor of a pixel with a non-point geometry';
		END IF;

		IF ST_SRID(rast) != ST_SRID(pt) THEN
			RAISE EXCEPTION 'Raster and geometry do not have the same SRID';
		END IF;

		wx := st_x($3);
		wy := st_y($3);

		SELECT public._ST_neighborhood(
			$1, $2,
			st_worldtorastercoordx(rast, wx, wy),
			st_worldtorastercoordy(rast, wx, wy),
			$4, $5,
			$6
		) INTO rtn;
		RETURN rtn;
	END;
	$function$
;

COMMENT ON FUNCTION public.st_neighborhood(raster, int4, geometry, int4, int4, bool) IS 'args: rast, bandnum, pt, distanceX, distanceY, exclude_nodata_value=true - Returns a 2-D double precision array of the non-NODATA values around a given bands pixel specified by either a columnX and rowY or a geometric point expressed in the same spatial reference coordinate system as the raster.';

-- DROP FUNCTION public.st_node(geometry);

CREATE OR REPLACE FUNCTION public.st_node(g geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_Node$function$
;

COMMENT ON FUNCTION public.st_node(geometry) IS 'args: geom - Nodes a collection of lines.';

-- DROP FUNCTION public.st_normalize(geometry);

CREATE OR REPLACE FUNCTION public.st_normalize(geom geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_Normalize$function$
;

COMMENT ON FUNCTION public.st_normalize(geometry) IS 'args: geom - Return the geometry in its canonical form.';

-- DROP FUNCTION public.st_notsamealignmentreason(raster, raster);

CREATE OR REPLACE FUNCTION public.st_notsamealignmentreason(rast1 raster, rast2 raster)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_notSameAlignmentReason$function$
;

COMMENT ON FUNCTION public.st_notsamealignmentreason(raster, raster) IS 'args: rastA, rastB - Returns text stating if rasters are aligned and if not aligned, a reason why.';

-- DROP FUNCTION public.st_npoints(geometry);

CREATE OR REPLACE FUNCTION public.st_npoints(geometry)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_npoints$function$
;

COMMENT ON FUNCTION public.st_npoints(geometry) IS 'args: g1 - Returns the number of points (vertices) in a geometry.';

-- DROP FUNCTION public.st_nrings(geometry);

CREATE OR REPLACE FUNCTION public.st_nrings(geometry)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_nrings$function$
;

COMMENT ON FUNCTION public.st_nrings(geometry) IS 'args: geomA - Returns the number of rings in a polygonal geometry.';

-- DROP FUNCTION public.st_numbands(raster);

CREATE OR REPLACE FUNCTION public.st_numbands(raster)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getNumBands$function$
;

COMMENT ON FUNCTION public.st_numbands(raster) IS 'args: rast - Returns the number of bands in the raster object.';

-- DROP FUNCTION public.st_numgeometries(geometry);

CREATE OR REPLACE FUNCTION public.st_numgeometries(geometry)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_numgeometries_collection$function$
;

COMMENT ON FUNCTION public.st_numgeometries(geometry) IS 'args: geom - Returns the number of elements in a geometry collection.';

-- DROP FUNCTION public.st_numinteriorring(geometry);

CREATE OR REPLACE FUNCTION public.st_numinteriorring(geometry)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_numinteriorrings_polygon$function$
;

COMMENT ON FUNCTION public.st_numinteriorring(geometry) IS 'args: a_polygon - Returns the number of interior rings (holes) of a Polygon. Aias for ST_NumInteriorRings';

-- DROP FUNCTION public.st_numinteriorrings(geometry);

CREATE OR REPLACE FUNCTION public.st_numinteriorrings(geometry)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_numinteriorrings_polygon$function$
;

COMMENT ON FUNCTION public.st_numinteriorrings(geometry) IS 'args: a_polygon - Returns the number of interior rings (holes) of a Polygon.';

-- DROP FUNCTION public.st_numpatches(geometry);

CREATE OR REPLACE FUNCTION public.st_numpatches(geometry)
 RETURNS integer
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.ST_GeometryType($1) = 'ST_PolyhedralSurface'
	THEN public.ST_NumGeometries($1)
	ELSE NULL END
	$function$
;

COMMENT ON FUNCTION public.st_numpatches(geometry) IS 'args: g1 - Return the number of faces on a Polyhedral Surface. Will return null for non-polyhedral geometries.';

-- DROP FUNCTION public.st_numpoints(geometry);

CREATE OR REPLACE FUNCTION public.st_numpoints(geometry)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_numpoints_linestring$function$
;

COMMENT ON FUNCTION public.st_numpoints(geometry) IS 'args: g1 - Returns the number of points in a LineString or CircularString.';

-- DROP FUNCTION public.st_offsetcurve(geometry, float8, text);

CREATE OR REPLACE FUNCTION public.st_offsetcurve(line geometry, distance double precision, params text DEFAULT ''::text)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_OffsetCurve$function$
;

COMMENT ON FUNCTION public.st_offsetcurve(geometry, float8, text) IS 'args: line, signed_distance, style_parameters='' - Returns an offset line at a given distance and side from an input line.';

-- DROP FUNCTION public.st_orderingequals(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_orderingequals(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$LWGEOM_same$function$
;

-- DROP FUNCTION public.st_orientedenvelope(geometry);

CREATE OR REPLACE FUNCTION public.st_orientedenvelope(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_OrientedEnvelope$function$
;

COMMENT ON FUNCTION public.st_orientedenvelope(geometry) IS 'args: geom - Returns a minimum-area rectangle containing a geometry.';

-- DROP FUNCTION public.st_overlaps(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public.st_overlaps(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT $1 OPERATOR(public.&&) $3 AND CASE WHEN $2 IS NULL OR $4 IS NULL THEN public._st_overlaps(public.st_convexhull($1), public.st_convexhull($3)) ELSE public._ST_overlaps($1, $2, $3, $4) END $function$
;

COMMENT ON FUNCTION public.st_overlaps(raster, int4, raster, int4) IS 'args: rastA, nbandA, rastB, nbandB - Return true if raster rastA and rastB intersect but one does not completely contain the other.';

-- DROP FUNCTION public.st_overlaps(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_overlaps(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$overlaps$function$
;

-- DROP FUNCTION public.st_overlaps(raster, raster);

CREATE OR REPLACE FUNCTION public.st_overlaps(rast1 raster, rast2 raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT public.st_overlaps($1, NULL::integer, $2, NULL::integer) $function$
;

COMMENT ON FUNCTION public.st_overlaps(raster, raster) IS 'args: rastA, rastB - Return true if raster rastA and rastB intersect but one does not completely contain the other.';

-- DROP FUNCTION public.st_patchn(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_patchn(geometry, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.ST_GeometryType($1) = 'ST_PolyhedralSurface'
	THEN public.ST_GeometryN($1, $2)
	ELSE NULL END
	$function$
;

COMMENT ON FUNCTION public.st_patchn(geometry, int4) IS 'args: geomA, n - Returns the Nth geometry (face) of a PolyhedralSurface.';

-- DROP FUNCTION public.st_perimeter(geography, bool);

CREATE OR REPLACE FUNCTION public.st_perimeter(geog geography, use_spheroid boolean DEFAULT true)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geography_perimeter$function$
;

COMMENT ON FUNCTION public.st_perimeter(geography, bool) IS 'args: geog, use_spheroid=true - Returns the length of the boundary of a polygonal geometry or geography.';

-- DROP FUNCTION public.st_perimeter(geometry);

CREATE OR REPLACE FUNCTION public.st_perimeter(geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_perimeter2d_poly$function$
;

COMMENT ON FUNCTION public.st_perimeter(geometry) IS 'args: g1 - Returns the length of the boundary of a polygonal geometry or geography.';

-- DROP FUNCTION public.st_perimeter2d(geometry);

CREATE OR REPLACE FUNCTION public.st_perimeter2d(geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_perimeter2d_poly$function$
;

COMMENT ON FUNCTION public.st_perimeter2d(geometry) IS 'args: geomA - Returns the 2D perimeter of a polygonal geometry. Alias for ST_Perimeter.';

-- DROP FUNCTION public.st_pixelascentroid(raster, int4, int4);

CREATE OR REPLACE FUNCTION public.st_pixelascentroid(rast raster, x integer, y integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_Centroid(geom) FROM public._ST_pixelaspolygons($1, NULL, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_pixelascentroid(raster, int4, int4) IS 'args: rast, x, y - Returns the centroid (point geometry) of the area represented by a pixel.';

-- DROP FUNCTION public.st_pixelascentroids(raster, int4, bool);

CREATE OR REPLACE FUNCTION public.st_pixelascentroids(rast raster, band integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true)
 RETURNS TABLE(geom geometry, val double precision, x integer, y integer)
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_Centroid(geom), val, x, y FROM public._ST_pixelaspolygons($1, $2, NULL, NULL, $3) $function$
;

COMMENT ON FUNCTION public.st_pixelascentroids(raster, int4, bool) IS 'args: rast, band=1, exclude_nodata_value=TRUE - Returns the centroid (point geometry) for each pixel of a raster band along with the value, the X and the Y raster coordinates of each pixel. The point geometry is the centroid of the area represented by a pixel.';

-- DROP FUNCTION public.st_pixelaspoint(raster, int4, int4);

CREATE OR REPLACE FUNCTION public.st_pixelaspoint(rast raster, x integer, y integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT ST_PointN(ST_ExteriorRing(geom), 1) FROM public._ST_pixelaspolygons($1, NULL, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_pixelaspoint(raster, int4, int4) IS 'args: rast, columnx, rowy - Returns a point geometry of the pixels upper-left corner.';

-- DROP FUNCTION public.st_pixelaspoints(raster, int4, bool);

CREATE OR REPLACE FUNCTION public.st_pixelaspoints(rast raster, band integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true)
 RETURNS TABLE(geom geometry, val double precision, x integer, y integer)
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_PointN(  public.ST_ExteriorRing(geom), 1), val, x, y FROM public._ST_pixelaspolygons($1, $2, NULL, NULL, $3) $function$
;

COMMENT ON FUNCTION public.st_pixelaspoints(raster, int4, bool) IS 'args: rast, band=1, exclude_nodata_value=TRUE - Returns a point geometry for each pixel of a raster band along with the value, the X and the Y raster coordinates of each pixel. The coordinates of the point geometry are of the pixels upper-left corner.';

-- DROP FUNCTION public.st_pixelaspolygon(raster, int4, int4);

CREATE OR REPLACE FUNCTION public.st_pixelaspolygon(rast raster, x integer, y integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT geom FROM public._ST_pixelaspolygons($1, NULL, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_pixelaspolygon(raster, int4, int4) IS 'args: rast, columnx, rowy - Returns the polygon geometry that bounds the pixel for a particular row and column.';

-- DROP FUNCTION public.st_pixelaspolygons(raster, int4, bool);

CREATE OR REPLACE FUNCTION public.st_pixelaspolygons(rast raster, band integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true)
 RETURNS TABLE(geom geometry, val double precision, x integer, y integer)
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT geom, val, x, y FROM public._ST_pixelaspolygons($1, $2, NULL, NULL, $3) $function$
;

COMMENT ON FUNCTION public.st_pixelaspolygons(raster, int4, bool) IS 'args: rast, band=1, exclude_nodata_value=TRUE - Returns the polygon geometry that bounds every pixel of a raster band along with the value, the X and the Y raster coordinates of each pixel.';

-- DROP FUNCTION public.st_pixelheight(raster);

CREATE OR REPLACE FUNCTION public.st_pixelheight(raster)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getPixelHeight$function$
;

COMMENT ON FUNCTION public.st_pixelheight(raster) IS 'args: rast - Returns the pixel height in geometric units of the spatial reference system.';

-- DROP FUNCTION public.st_pixelofvalue(raster, int4, _float8, bool);

CREATE OR REPLACE FUNCTION public.st_pixelofvalue(rast raster, nband integer, search double precision[], exclude_nodata_value boolean DEFAULT true)
 RETURNS TABLE(val double precision, x integer, y integer)
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_pixelOfValue$function$
;

COMMENT ON FUNCTION public.st_pixelofvalue(raster, int4, _float8, bool) IS 'args: rast, nband, search, exclude_nodata_value=true - Get the columnx, rowy coordinates of the pixel whose value equals the search value.';

-- DROP FUNCTION public.st_pixelofvalue(raster, _float8, bool);

CREATE OR REPLACE FUNCTION public.st_pixelofvalue(rast raster, search double precision[], exclude_nodata_value boolean DEFAULT true)
 RETURNS TABLE(val double precision, x integer, y integer)
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT val, x, y FROM public.ST_PixelOfValue($1, 1, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_pixelofvalue(raster, _float8, bool) IS 'args: rast, search, exclude_nodata_value=true - Get the columnx, rowy coordinates of the pixel whose value equals the search value.';

-- DROP FUNCTION public.st_pixelofvalue(raster, float8, bool);

CREATE OR REPLACE FUNCTION public.st_pixelofvalue(rast raster, search double precision, exclude_nodata_value boolean DEFAULT true)
 RETURNS TABLE(x integer, y integer)
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT x, y FROM public.ST_PixelOfValue($1, 1, ARRAY[$2], $3) $function$
;

COMMENT ON FUNCTION public.st_pixelofvalue(raster, float8, bool) IS 'args: rast, search, exclude_nodata_value=true - Get the columnx, rowy coordinates of the pixel whose value equals the search value.';

-- DROP FUNCTION public.st_pixelofvalue(raster, int4, float8, bool);

CREATE OR REPLACE FUNCTION public.st_pixelofvalue(rast raster, nband integer, search double precision, exclude_nodata_value boolean DEFAULT true)
 RETURNS TABLE(x integer, y integer)
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT x, y FROM public.ST_PixelofValue($1, $2, ARRAY[$3], $4) $function$
;

COMMENT ON FUNCTION public.st_pixelofvalue(raster, int4, float8, bool) IS 'args: rast, nband, search, exclude_nodata_value=true - Get the columnx, rowy coordinates of the pixel whose value equals the search value.';

-- DROP FUNCTION public.st_pixelwidth(raster);

CREATE OR REPLACE FUNCTION public.st_pixelwidth(raster)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getPixelWidth$function$
;

COMMENT ON FUNCTION public.st_pixelwidth(raster) IS 'args: rast - Returns the pixel width in geometric units of the spatial reference system.';

-- DROP FUNCTION public.st_point(float8, float8);

CREATE OR REPLACE FUNCTION public.st_point(double precision, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_makepoint$function$
;

COMMENT ON FUNCTION public.st_point(float8, float8) IS 'args: x, y - Creates a Point with the given coordinate values. Alias for ST_MakePoint.';

-- DROP FUNCTION public.st_pointfromgeohash(text, int4);

CREATE OR REPLACE FUNCTION public.st_pointfromgeohash(text, integer DEFAULT NULL::integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 50
AS '$libdir/postgis-3', $function$point_from_geohash$function$
;

-- DROP FUNCTION public.st_pointfromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_pointfromtext(text, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromText($1, $2)) = 'POINT'
	THEN public.ST_GeomFromText($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_pointfromtext(text);

CREATE OR REPLACE FUNCTION public.st_pointfromtext(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromText($1)) = 'POINT'
	THEN public.ST_GeomFromText($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_pointfromwkb(bytea, int4);

CREATE OR REPLACE FUNCTION public.st_pointfromwkb(bytea, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1, $2)) = 'POINT'
	THEN public.ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_pointfromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_pointfromwkb(bytea)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1)) = 'POINT'
	THEN public.ST_GeomFromWKB($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_pointinsidecircle(geometry, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_pointinsidecircle(geometry, double precision, double precision, double precision)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_inside_circle_point$function$
;

-- DROP FUNCTION public.st_pointn(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_pointn(geometry, integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_pointn_linestring$function$
;

COMMENT ON FUNCTION public.st_pointn(geometry, int4) IS 'args: a_linestring, n - Returns the Nth point in the first LineString or circular LineString in a geometry.';

-- DROP FUNCTION public.st_pointonsurface(geometry);

CREATE OR REPLACE FUNCTION public.st_pointonsurface(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$pointonsurface$function$
;

COMMENT ON FUNCTION public.st_pointonsurface(geometry) IS 'args: g1 - Returns a point guaranteed to lie in a polygon or on a geometry.';

-- DROP FUNCTION public.st_points(geometry);

CREATE OR REPLACE FUNCTION public.st_points(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_Points$function$
;

COMMENT ON FUNCTION public.st_points(geometry) IS 'args: geom - Returns a MultiPoint containing all the coordinates of a geometry.';

-- DROP FUNCTION public.st_polyfromtext(text);

CREATE OR REPLACE FUNCTION public.st_polyfromtext(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromText($1)) = 'POLYGON'
	THEN public.ST_GeomFromText($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_polyfromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_polyfromtext(text, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromText($1, $2)) = 'POLYGON'
	THEN public.ST_GeomFromText($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_polyfromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_polyfromwkb(bytea)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1)) = 'POLYGON'
	THEN public.ST_GeomFromWKB($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_polyfromwkb(bytea, int4);

CREATE OR REPLACE FUNCTION public.st_polyfromwkb(bytea, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1, $2)) = 'POLYGON'
	THEN public.ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_polygon(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_polygon(geometry, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT public.ST_SetSRID(public.ST_MakePolygon($1), $2)
	$function$
;

COMMENT ON FUNCTION public.st_polygon(geometry, int4) IS 'args: lineString, srid - Creates a Polygon from a LineString with a specified SRID.';

-- DROP FUNCTION public.st_polygon(raster, int4);

CREATE OR REPLACE FUNCTION public.st_polygon(rast raster, band integer DEFAULT 1)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getPolygon$function$
;

COMMENT ON FUNCTION public.st_polygon(raster, int4) IS 'args: rast, band_num=1 - Returns a multipolygon geometry formed by the union of pixels that have a pixel value that is not no data value. If no band number is specified, band num defaults to 1.';

-- DROP FUNCTION public.st_polygonfromtext(text);

CREATE OR REPLACE FUNCTION public.st_polygonfromtext(text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$SELECT public.ST_PolyFromText($1)$function$
;

-- DROP FUNCTION public.st_polygonfromtext(text, int4);

CREATE OR REPLACE FUNCTION public.st_polygonfromtext(text, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$SELECT public.ST_PolyFromText($1, $2)$function$
;

-- DROP FUNCTION public.st_polygonfromwkb(bytea, int4);

CREATE OR REPLACE FUNCTION public.st_polygonfromwkb(bytea, integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1,$2)) = 'POLYGON'
	THEN public.ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_polygonfromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_polygonfromwkb(bytea)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$
	SELECT CASE WHEN public.geometrytype(public.ST_GeomFromWKB($1)) = 'POLYGON'
	THEN public.ST_GeomFromWKB($1)
	ELSE NULL END
	$function$
;

-- DROP FUNCTION public.st_polygonize(_geometry);

CREATE OR REPLACE FUNCTION public.st_polygonize(geometry[])
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$polygonize_garray$function$
;

COMMENT ON FUNCTION public.st_polygonize(_geometry) IS 'args: geom_array - Computes a collection of polygons formed from the linework of a set of geometries.';

-- DROP AGGREGATE public.st_polygonize(geometry);

-- Aggregate function public.st_polygonize(geometry)
-- ERROR: more than one function named "public.st_polygonize";

COMMENT ON AGGREGATE public.st_polygonize(geometry) IS 'args: geomfield - Computes a collection of polygons formed from the linework of a set of geometries.';

-- DROP FUNCTION public.st_project(geography, float8, float8);

CREATE OR REPLACE FUNCTION public.st_project(geog geography, distance double precision, azimuth double precision)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$geography_project$function$
;

COMMENT ON FUNCTION public.st_project(geography, float8, float8) IS 'args: g1, distance, azimuth - Returns a point projected from a start point by a distance and bearing (azimuth).';

-- DROP FUNCTION public.st_quantile(raster, int4, bool, float8);

CREATE OR REPLACE FUNCTION public.st_quantile(rast raster, nband integer, exclude_nodata_value boolean, quantile double precision)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT ( public._ST_quantile($1, $2, $3, 1, ARRAY[$4]::double precision[])).value $function$
;

COMMENT ON FUNCTION public.st_quantile(raster, int4, bool, float8) IS 'args: rast, nband, exclude_nodata_value, quantile - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';

-- DROP FUNCTION public.st_quantile(raster, int4, float8);

CREATE OR REPLACE FUNCTION public.st_quantile(rast raster, nband integer, quantile double precision)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT ( public._ST_quantile($1, $2, TRUE, 1, ARRAY[$3]::double precision[])).value $function$
;

COMMENT ON FUNCTION public.st_quantile(raster, int4, float8) IS 'args: rast, nband, quantile - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';

-- DROP FUNCTION public.st_quantile(in raster, in int4, in bool, in _float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_quantile(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, quantiles double precision[] DEFAULT NULL::double precision[], OUT quantile double precision, OUT value double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_quantile($1, $2, $3, 1, $4) $function$
;

COMMENT ON FUNCTION public.st_quantile(in raster, in int4, in bool, in _float8, out float8, out float8) IS 'args: rast, nband=1, exclude_nodata_value=true, quantiles=NULL - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';

-- DROP FUNCTION public.st_quantile(raster, bool, float8);

CREATE OR REPLACE FUNCTION public.st_quantile(rast raster, exclude_nodata_value boolean, quantile double precision DEFAULT NULL::double precision)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT ( public._ST_quantile($1, 1, $2, 1, ARRAY[$3]::double precision[])).value $function$
;

COMMENT ON FUNCTION public.st_quantile(raster, bool, float8) IS 'args: rast, exclude_nodata_value, quantile=NULL - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';

-- DROP FUNCTION public.st_quantile(in raster, in _float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_quantile(rast raster, quantiles double precision[], OUT quantile double precision, OUT value double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_quantile($1, 1, TRUE, 1, $2) $function$
;

COMMENT ON FUNCTION public.st_quantile(in raster, in _float8, out float8, out float8) IS 'args: rast, quantiles - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';

-- DROP FUNCTION public.st_quantile(in raster, in int4, in _float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_quantile(rast raster, nband integer, quantiles double precision[], OUT quantile double precision, OUT value double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_quantile($1, $2, TRUE, 1, $3) $function$
;

COMMENT ON FUNCTION public.st_quantile(in raster, in int4, in _float8, out float8, out float8) IS 'args: rast, nband, quantiles - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';

-- DROP FUNCTION public.st_quantile(raster, float8);

CREATE OR REPLACE FUNCTION public.st_quantile(rast raster, quantile double precision)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT ( public._ST_quantile($1, 1, TRUE, 1, ARRAY[$2]::double precision[])).value $function$
;

COMMENT ON FUNCTION public.st_quantile(raster, float8) IS 'args: rast, quantile - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';

-- DROP FUNCTION public.st_quantizecoordinates(geometry, int4, int4, int4, int4);

CREATE OR REPLACE FUNCTION public.st_quantizecoordinates(g geometry, prec_x integer, prec_y integer DEFAULT NULL::integer, prec_z integer DEFAULT NULL::integer, prec_m integer DEFAULT NULL::integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE COST 500
AS '$libdir/postgis-3', $function$ST_QuantizeCoordinates$function$
;

COMMENT ON FUNCTION public.st_quantizecoordinates(geometry, int4, int4, int4, int4) IS 'args: g, prec_x, prec_y, prec_z, prec_m - Sets least significant bits of coordinates to zero';

-- DROP FUNCTION public.st_range4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public.st_range4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_value double precision[][][];
		min double precision;
		max double precision;
		x int;
		y int;
		z int;
		ndims int;
	BEGIN
		min := 'Infinity'::double precision;
		max := '-Infinity'::double precision;

		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		-- raster
		FOR z IN array_lower(_value, 1)..array_upper(_value, 1) LOOP
			-- row
			FOR y IN array_lower(_value, 2)..array_upper(_value, 2) LOOP
				-- column
				FOR x IN array_lower(_value, 3)..array_upper(_value, 3) LOOP
					IF _value[z][y][x] IS NULL THEN
						IF array_length(userargs, 1) > 0 THEN
							_value[z][y][x] = userargs[array_lower(userargs, 1)]::double precision;
						ELSE
							CONTINUE;
						END IF;
					END IF;

					IF _value[z][y][x] < min THEN
						min := _value[z][y][x];
					END IF;
					IF _value[z][y][x] > max THEN
						max := _value[z][y][x];
					END IF;
				END LOOP;
			END LOOP;
		END LOOP;

		IF max = '-Infinity'::double precision OR min = 'Infinity'::double precision THEN
			RETURN NULL;
		END IF;

		RETURN max - min;
	END;
	$function$
;

COMMENT ON FUNCTION public.st_range4ma(in _float8, in _int4, variadic _text) IS 'args: value, pos, VARIADIC userargs - Raster processing function that calculates the range of pixel values in a neighborhood.';

-- DROP FUNCTION public.st_range4ma(in _float8, in text, variadic _text);

CREATE OR REPLACE FUNCTION public.st_range4ma(matrix double precision[], nodatamode text, VARIADIC args text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
    DECLARE
        _matrix float[][];
        min float;
        max float;
    BEGIN
        _matrix := matrix;
        min := 'Infinity'::float;
        max := '-Infinity'::float;
        FOR x in array_lower(matrix, 1)..array_upper(matrix, 1) LOOP
            FOR y in array_lower(matrix, 2)..array_upper(matrix, 2) LOOP
                IF _matrix[x][y] IS NULL THEN
                    IF NOT nodatamode = 'ignore' THEN
                        _matrix[x][y] := nodatamode::float;
                    END IF;
                END IF;
                IF min > _matrix[x][y] THEN
                    min = _matrix[x][y];
                END IF;
                IF max < _matrix[x][y] THEN
                    max = _matrix[x][y];
                END IF;
            END LOOP;
        END LOOP;
        IF max = '-Infinity'::float OR min = 'Infinity'::float THEN
            RETURN NULL;
        END IF;
        RETURN max - min;
    END;
    $function$
;

COMMENT ON FUNCTION public.st_range4ma(in _float8, in text, variadic _text) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the range of pixel values in a neighborhood.';

-- DROP FUNCTION public.st_rastertoworldcoord(in raster, in int4, in int4, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_rastertoworldcoord(rast raster, columnx integer, rowy integer, OUT longitude double precision, OUT latitude double precision)
 RETURNS record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT longitude, latitude FROM public._ST_rastertoworldcoord($1, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_rastertoworldcoord(in raster, in int4, in int4, out float8, out float8) IS 'args: rast, xcolumn, yrow - Returns the rasters upper left corner as geometric X and Y (longitude and latitude) given a column and row. Column and row starts at 1.';

-- DROP FUNCTION public.st_rastertoworldcoordx(raster, int4);

CREATE OR REPLACE FUNCTION public.st_rastertoworldcoordx(rast raster, xr integer)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT longitude FROM public._ST_rastertoworldcoord($1, $2, NULL) $function$
;

COMMENT ON FUNCTION public.st_rastertoworldcoordx(raster, int4) IS 'args: rast, xcolumn - Returns the geometric X coordinate upper left of a raster, column and row. Numbering of columns and rows starts at 1.';

-- DROP FUNCTION public.st_rastertoworldcoordx(raster, int4, int4);

CREATE OR REPLACE FUNCTION public.st_rastertoworldcoordx(rast raster, xr integer, yr integer)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT longitude FROM public._ST_rastertoworldcoord($1, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_rastertoworldcoordx(raster, int4, int4) IS 'args: rast, xcolumn, yrow - Returns the geometric X coordinate upper left of a raster, column and row. Numbering of columns and rows starts at 1.';

-- DROP FUNCTION public.st_rastertoworldcoordy(raster, int4, int4);

CREATE OR REPLACE FUNCTION public.st_rastertoworldcoordy(rast raster, xr integer, yr integer)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT latitude FROM public._ST_rastertoworldcoord($1, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_rastertoworldcoordy(raster, int4, int4) IS 'args: rast, xcolumn, yrow - Returns the geometric Y coordinate upper left corner of a raster, column and row. Numbering of columns and rows starts at 1.';

-- DROP FUNCTION public.st_rastertoworldcoordy(raster, int4);

CREATE OR REPLACE FUNCTION public.st_rastertoworldcoordy(rast raster, yr integer)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT latitude FROM public._ST_rastertoworldcoord($1, NULL, $2) $function$
;

COMMENT ON FUNCTION public.st_rastertoworldcoordy(raster, int4) IS 'args: rast, yrow - Returns the geometric Y coordinate upper left corner of a raster, column and row. Numbering of columns and rows starts at 1.';

-- DROP FUNCTION public.st_rastfromhexwkb(text);

CREATE OR REPLACE FUNCTION public.st_rastfromhexwkb(text)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_fromHexWKB$function$
;

COMMENT ON FUNCTION public.st_rastfromhexwkb(text) IS 'args: wkb - Return a raster value from a Hex representation of Well-Known Binary (WKB) raster.';

-- DROP FUNCTION public.st_rastfromwkb(bytea);

CREATE OR REPLACE FUNCTION public.st_rastfromwkb(bytea)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_fromWKB$function$
;

COMMENT ON FUNCTION public.st_rastfromwkb(bytea) IS 'args: wkb - Return a raster value from a Well-Known Binary (WKB) raster.';

-- DROP FUNCTION public.st_reclass(raster, text, text);

CREATE OR REPLACE FUNCTION public.st_reclass(rast raster, reclassexpr text, pixeltype text)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT st_reclass($1, ROW(1, $2, $3, NULL)) $function$
;

COMMENT ON FUNCTION public.st_reclass(raster, text, text) IS 'args: rast, reclassexpr, pixeltype - Creates a new raster composed of band types reclassified from original. The nband is the band to be changed. If nband is not specified assumed to be 1. All other bands are returned unchanged. Use case: convert a 16BUI band to a 8BUI and so forth for simpler rendering as viewable formats.';

-- DROP FUNCTION public.st_reclass(raster, int4, text, text, float8);

CREATE OR REPLACE FUNCTION public.st_reclass(rast raster, nband integer, reclassexpr text, pixeltype text, nodataval double precision DEFAULT NULL::double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT st_reclass($1, ROW($2, $3, $4, $5)) $function$
;

COMMENT ON FUNCTION public.st_reclass(raster, int4, text, text, float8) IS 'args: rast, nband, reclassexpr, pixeltype, nodataval=NULL - Creates a new raster composed of band types reclassified from original. The nband is the band to be changed. If nband is not specified assumed to be 1. All other bands are returned unchanged. Use case: convert a 16BUI band to a 8BUI and so forth for simpler rendering as viewable formats.';

-- DROP FUNCTION public.st_reclass(in raster, variadic _reclassarg);

CREATE OR REPLACE FUNCTION public.st_reclass(rast raster, VARIADIC reclassargset reclassarg[])
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		i int;
		expr text;
	BEGIN
		-- for each reclassarg, validate elements as all except nodataval cannot be NULL
		FOR i IN SELECT * FROM generate_subscripts($2, 1) LOOP
			IF $2[i].nband IS NULL OR $2[i].reclassexpr IS NULL OR $2[i].pixeltype IS NULL THEN
				RAISE WARNING 'Values are required for the nband, reclassexpr and pixeltype attributes.';
				RETURN rast;
			END IF;
		END LOOP;

		RETURN public._ST_reclass($1, VARIADIC $2);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_reclass(in raster, variadic _reclassarg) IS 'args: rast, VARIADIC reclassargset - Creates a new raster composed of band types reclassified from original. The nband is the band to be changed. If nband is not specified assumed to be 1. All other bands are returned unchanged. Use case: convert a 16BUI band to a 8BUI and so forth for simpler rendering as viewable formats.';

-- DROP FUNCTION public.st_reduceprecision(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_reduceprecision(geom geometry, gridsize double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_ReducePrecision$function$
;

COMMENT ON FUNCTION public.st_reduceprecision(geometry, float8) IS 'args: g, gridsize - Returns a valid geometry with all points rounded to the provided grid tolerance.';

-- DROP FUNCTION public.st_relate(geometry, geometry, text);

CREATE OR REPLACE FUNCTION public.st_relate(geom1 geometry, geom2 geometry, text)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$relate_pattern$function$
;

-- DROP FUNCTION public.st_relate(geometry, geometry, int4);

CREATE OR REPLACE FUNCTION public.st_relate(geom1 geometry, geom2 geometry, integer)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$relate_full$function$
;

-- DROP FUNCTION public.st_relate(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_relate(geom1 geometry, geom2 geometry)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$relate_full$function$
;

-- DROP FUNCTION public.st_relatematch(text, text);

CREATE OR REPLACE FUNCTION public.st_relatematch(text, text)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_RelateMatch$function$
;

-- DROP FUNCTION public.st_removepoint(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_removepoint(geometry, integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_removepoint$function$
;

COMMENT ON FUNCTION public.st_removepoint(geometry, int4) IS 'args: linestring, offset - Remove point from a linestring.';

-- DROP FUNCTION public.st_removerepeatedpoints(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_removerepeatedpoints(geom geometry, tolerance double precision DEFAULT 0.0)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_RemoveRepeatedPoints$function$
;

COMMENT ON FUNCTION public.st_removerepeatedpoints(geometry, float8) IS 'args: geom, tolerance - Returns a version of the given geometry with duplicated points removed.';

-- DROP FUNCTION public.st_resample(raster, raster, text, float8, bool);

CREATE OR REPLACE FUNCTION public.st_resample(rast raster, ref raster, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125, usescale boolean DEFAULT true)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		rastsrid int;

		_srid int;
		_dimx int;
		_dimy int;
		_scalex double precision;
		_scaley double precision;
		_gridx double precision;
		_gridy double precision;
		_skewx double precision;
		_skewy double precision;
	BEGIN
		SELECT srid, width, height, scalex, scaley, upperleftx, upperlefty, skewx, skewy INTO _srid, _dimx, _dimy, _scalex, _scaley, _gridx, _gridy, _skewx, _skewy FROM st_metadata($2);

		rastsrid := public.ST_SRID($1);

		-- both rasters must have the same SRID
		IF (rastsrid != _srid) THEN
			RAISE EXCEPTION 'The raster to be resampled has a different SRID from the reference raster';
			RETURN NULL;
		END IF;

		IF usescale IS TRUE THEN
			_dimx := NULL;
			_dimy := NULL;
		ELSE
			_scalex := NULL;
			_scaley := NULL;
		END IF;

		RETURN public._ST_gdalwarp($1, $3, $4, NULL, _scalex, _scaley, _gridx, _gridy, _skewx, _skewy, _dimx, _dimy);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_resample(raster, raster, text, float8, bool) IS 'args: rast, ref, algorithm=NearestNeighbour, maxerr=0.125, usescale=true - Resample a raster using a specified resampling algorithm, new dimensions, an arbitrary grid corner and a set of raster georeferencing attributes defined or borrowed from another raster.';

-- DROP FUNCTION public.st_resample(raster, raster, bool, text, float8);

CREATE OR REPLACE FUNCTION public.st_resample(rast raster, ref raster, usescale boolean, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.st_resample($1, $2, $4, $5, $3) $function$
;

COMMENT ON FUNCTION public.st_resample(raster, raster, bool, text, float8) IS 'args: rast, ref, usescale, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster using a specified resampling algorithm, new dimensions, an arbitrary grid corner and a set of raster georeferencing attributes defined or borrowed from another raster.';

-- DROP FUNCTION public.st_resample(raster, float8, float8, float8, float8, float8, float8, text, float8);

CREATE OR REPLACE FUNCTION public.st_resample(rast raster, scalex double precision DEFAULT 0, scaley double precision DEFAULT 0, gridx double precision DEFAULT NULL::double precision, gridy double precision DEFAULT NULL::double precision, skewx double precision DEFAULT 0, skewy double precision DEFAULT 0, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_gdalwarp($1, $8,	$9, NULL, $2, $3, $4, $5, $6, $7) $function$
;

COMMENT ON FUNCTION public.st_resample(raster, float8, float8, float8, float8, float8, float8, text, float8) IS 'args: rast, scalex=0, scaley=0, gridx=NULL, gridy=NULL, skewx=0, skewy=0, algorithm=NearestNeighbor, maxerr=0.125 - Resample a raster using a specified resampling algorithm, new dimensions, an arbitrary grid corner and a set of raster georeferencing attributes defined or borrowed from another raster.';

-- DROP FUNCTION public.st_resample(raster, int4, int4, float8, float8, float8, float8, text, float8);

CREATE OR REPLACE FUNCTION public.st_resample(rast raster, width integer, height integer, gridx double precision DEFAULT NULL::double precision, gridy double precision DEFAULT NULL::double precision, skewx double precision DEFAULT 0, skewy double precision DEFAULT 0, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_gdalwarp($1, $8,	$9, NULL, NULL, NULL, $4, $5, $6, $7, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_resample(raster, int4, int4, float8, float8, float8, float8, text, float8) IS 'args: rast, width, height, gridx=NULL, gridy=NULL, skewx=0, skewy=0, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster using a specified resampling algorithm, new dimensions, an arbitrary grid corner and a set of raster georeferencing attributes defined or borrowed from another raster.';

-- DROP FUNCTION public.st_rescale(raster, float8, float8, text, float8);

CREATE OR REPLACE FUNCTION public.st_rescale(rast raster, scalex double precision, scaley double precision, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT  public._ST_GdalWarp($1, $4, $5, NULL, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_rescale(raster, float8, float8, text, float8) IS 'args: rast, scalex, scaley, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster by adjusting only its scale (or pixel size). New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';

-- DROP FUNCTION public.st_rescale(raster, float8, text, float8);

CREATE OR REPLACE FUNCTION public.st_rescale(rast raster, scalexy double precision, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT  public._ST_GdalWarp($1, $3, $4, NULL, $2, $2) $function$
;

COMMENT ON FUNCTION public.st_rescale(raster, float8, text, float8) IS 'args: rast, scalexy, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster by adjusting only its scale (or pixel size). New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';

-- DROP FUNCTION public.st_resize(raster, float8, float8, text, float8);

CREATE OR REPLACE FUNCTION public.st_resize(rast raster, percentwidth double precision, percentheight double precision, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		_width integer;
		_height integer;
	BEGIN
		-- range check
		IF $2 <= 0. OR $2 > 1. OR $3 <= 0. OR $3 > 1. THEN
			RAISE EXCEPTION 'Percentages must be a value greater than zero and less than or equal to one, e.g. 0.5 for 50%%';
		END IF;

		SELECT width, height INTO _width, _height FROM public.ST_Metadata($1);

		_width := round(_width::double precision * $2)::integer;
		_height:= round(_height::double precision * $3)::integer;

		IF _width < 1 THEN
			_width := 1;
		END IF;
		IF _height < 1 THEN
			_height := 1;
		END IF;

		RETURN public._ST_gdalwarp(
			$1,
			$4, $5,
			NULL,
			NULL, NULL,
			NULL, NULL,
			NULL, NULL,
			_width, _height
		);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_resize(raster, float8, float8, text, float8) IS 'args: rast, percentwidth, percentheight, algorithm=NearestNeighbor, maxerr=0.125 - Resize a raster to a new width/height';

-- DROP FUNCTION public.st_resize(raster, text, text, text, float8);

CREATE OR REPLACE FUNCTION public.st_resize(rast raster, width text, height text, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		i integer;

		wh text[2];

		whi integer[2];
		whd double precision[2];

		_width integer;
		_height integer;
	BEGIN
		wh[1] := trim(both from $2);
		wh[2] := trim(both from $3);

		-- see if width and height are percentages
		FOR i IN 1..2 LOOP
			IF position('%' in wh[i]) > 0 THEN
				BEGIN
					wh[i] := (regexp_matches(wh[i], E'^(\\d*.?\\d*)%{1}$'))[1];
					IF length(wh[i]) < 1 THEN
						RAISE invalid_parameter_value;
					END IF;

					whd[i] := wh[i]::double precision * 0.01;
				EXCEPTION WHEN OTHERS THEN -- TODO: WHEN invalid_parameter_value !
					RAISE EXCEPTION 'Invalid percentage value provided for width/height';
					RETURN NULL;
				END;
			ELSE
				BEGIN
					whi[i] := abs(wh[i]::integer);
				EXCEPTION WHEN OTHERS THEN -- TODO: only handle appropriate SQLSTATE
					RAISE EXCEPTION 'Non-integer value provided for width/height';
					RETURN NULL;
				END;
			END IF;
		END LOOP;

		IF whd[1] IS NOT NULL OR whd[2] IS NOT NULL THEN
			SELECT foo.width, foo.height INTO _width, _height FROM public.ST_Metadata($1) AS foo;

			IF whd[1] IS NOT NULL THEN
				whi[1] := round(_width::double precision * whd[1])::integer;
			END IF;

			IF whd[2] IS NOT NULL THEN
				whi[2] := round(_height::double precision * whd[2])::integer;
			END IF;

		END IF;

		-- should NEVER be here
		IF whi[1] IS NULL OR whi[2] IS NULL THEN
			RAISE EXCEPTION 'Unable to determine appropriate width or height';
			RETURN NULL;
		END IF;

		FOR i IN 1..2 LOOP
			IF whi[i] < 1 THEN
				whi[i] = 1;
			END IF;
		END LOOP;

		RETURN public._ST_gdalwarp(
			$1,
			$4, $5,
			NULL,
			NULL, NULL,
			NULL, NULL,
			NULL, NULL,
			whi[1], whi[2]
		);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_resize(raster, text, text, text, float8) IS 'args: rast, width, height, algorithm=NearestNeighbor, maxerr=0.125 - Resize a raster to a new width/height';

-- DROP FUNCTION public.st_resize(raster, int4, int4, text, float8);

CREATE OR REPLACE FUNCTION public.st_resize(rast raster, width integer, height integer, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_gdalwarp($1, $4, $5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, abs($2), abs($3)) $function$
;

COMMENT ON FUNCTION public.st_resize(raster, int4, int4, text, float8) IS 'args: rast, width, height, algorithm=NearestNeighbor, maxerr=0.125 - Resize a raster to a new width/height';

-- DROP FUNCTION public.st_reskew(raster, float8, float8, text, float8);

CREATE OR REPLACE FUNCTION public.st_reskew(rast raster, skewx double precision, skewy double precision, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_GdalWarp($1, $4, $5, NULL, 0, 0, NULL, NULL, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_reskew(raster, float8, float8, text, float8) IS 'args: rast, skewx, skewy, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster by adjusting only its skew (or rotation parameters). New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';

-- DROP FUNCTION public.st_reskew(raster, float8, text, float8);

CREATE OR REPLACE FUNCTION public.st_reskew(rast raster, skewxy double precision, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_GdalWarp($1, $3, $4, NULL, 0, 0, NULL, NULL, $2, $2) $function$
;

COMMENT ON FUNCTION public.st_reskew(raster, float8, text, float8) IS 'args: rast, skewxy, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster by adjusting only its skew (or rotation parameters). New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';

-- DROP FUNCTION public.st_retile(regclass, name, geometry, float8, float8, int4, int4, text);

CREATE OR REPLACE FUNCTION public.st_retile(tab regclass, col name, ext geometry, sfx double precision, sfy double precision, tw integer, th integer, algo text DEFAULT 'NearestNeighbour'::text)
 RETURNS SETOF raster
 LANGUAGE plpgsql
 STABLE STRICT
AS $function$
DECLARE
  rec RECORD;
  ipx FLOAT8;
  ipy FLOAT8;
  tx int;
  ty int;
  te public.GEOMETRY; -- tile extent
  ncols int;
  nlins int;
  srid int;
  sql TEXT;
BEGIN

  RAISE DEBUG 'Target coverage will have sfx=%, sfy=%', sfx, sfy;

  -- 2. Loop over each target tile and build it from source tiles
  ipx := st_xmin(ext);
  ncols := ceil((st_xmax(ext)-ipx)/sfx/tw);
  IF sfy < 0 THEN
    ipy := st_ymax(ext);
    nlins := ceil((st_ymin(ext)-ipy)/sfy/th);
  ELSE
    ipy := st_ymin(ext);
    nlins := ceil((st_ymax(ext)-ipy)/sfy/th);
  END IF;

  srid := ST_Srid(ext);

  RAISE DEBUG 'Target coverage will have % x % tiles, each of approx size % x %', ncols, nlins, tw, th;
  RAISE DEBUG 'Target coverage will cover extent %', ext::box2d;

  FOR tx IN 0..ncols-1 LOOP
    FOR ty IN 0..nlins-1 LOOP
      te := ST_MakeEnvelope(ipx + tx     *  tw  * sfx,
                             ipy + ty     *  th  * sfy,
                             ipx + (tx+1) *  tw  * sfx,
                             ipy + (ty+1) *  th  * sfy,
                             srid);
      --RAISE DEBUG 'sfx/sfy: %, %', sfx, sfy;
      --RAISE DEBUG 'tile extent %', te;
      sql := 'SELECT count(*),  public.ST_Clip(  public.ST_Union(  public.ST_SnapToGrid(  public.ST_Rescale(  public.ST_Clip(' || quote_ident(col)
          || ',  public.ST_Expand($3, greatest($1,$2))),$1, $2, $6), $4, $5, $1, $2)), $3) g FROM ' || tab::text
          || ' WHERE  public.ST_Intersects(' || quote_ident(col) || ', $3)';
      --RAISE DEBUG 'SQL: %', sql;
      FOR rec IN EXECUTE sql USING sfx, sfy, te, ipx, ipy, algo LOOP
        --RAISE DEBUG '% source tiles intersect target tile %,% with extent %', rec.count, tx, ty, te::box2d;
        IF rec.g IS NULL THEN
          RAISE WARNING 'No source tiles cover target tile %,% with extent %',
            tx, ty, te::box2d;
        ELSE
          --RAISE DEBUG 'Tile for extent % has size % x %', te::box2d, st_width(rec.g), st_height(rec.g);
          RETURN NEXT rec.g;
        END IF;
      END LOOP;
    END LOOP;
  END LOOP;

  RETURN;
END;
$function$
;

COMMENT ON FUNCTION public.st_retile(regclass, name, geometry, float8, float8, int4, int4, text) IS 'args: tab, col, ext, sfx, sfy, tw, th, algo=''NearestNeighbor'' - Return a set of configured tiles from an arbitrarily tiled raster coverage.';

-- DROP FUNCTION public.st_reverse(geometry);

CREATE OR REPLACE FUNCTION public.st_reverse(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_reverse$function$
;

COMMENT ON FUNCTION public.st_reverse(geometry) IS 'args: g1 - Return the geometry with vertex order reversed.';

-- DROP FUNCTION public.st_rotate(geometry, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_rotate(geometry, double precision, double precision, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_Affine($1,  cos($2), -sin($2), 0,  sin($2),  cos($2), 0, 0, 0, 1,	$3 - cos($2) * $3 + sin($2) * $4, $4 - sin($2) * $3 - cos($2) * $4, 0)$function$
;

COMMENT ON FUNCTION public.st_rotate(geometry, float8, float8, float8) IS 'args: geomA, rotRadians, x0, y0 - Rotates a geometry about an origin point.';

-- DROP FUNCTION public.st_rotate(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_rotate(geometry, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_Affine($1,  cos($2), -sin($2), 0,  sin($2), cos($2), 0,  0, 0, 1,  0, 0, 0)$function$
;

COMMENT ON FUNCTION public.st_rotate(geometry, float8) IS 'args: geomA, rotRadians - Rotates a geometry about an origin point.';

-- DROP FUNCTION public.st_rotate(geometry, float8, geometry);

CREATE OR REPLACE FUNCTION public.st_rotate(geometry, double precision, geometry)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_Affine($1,  cos($2), -sin($2), 0,  sin($2),  cos($2), 0, 0, 0, 1, public.ST_X($3) - cos($2) * public.ST_X($3) + sin($2) * public.ST_Y($3), public.ST_Y($3) - sin($2) * public.ST_X($3) - cos($2) * public.ST_Y($3), 0)$function$
;

COMMENT ON FUNCTION public.st_rotate(geometry, float8, geometry) IS 'args: geomA, rotRadians, pointOrigin - Rotates a geometry about an origin point.';

-- DROP FUNCTION public.st_rotatex(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_rotatex(geometry, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_Affine($1, 1, 0, 0, 0, cos($2), -sin($2), 0, sin($2), cos($2), 0, 0, 0)$function$
;

COMMENT ON FUNCTION public.st_rotatex(geometry, float8) IS 'args: geomA, rotRadians - Rotates a geometry about the X axis.';

-- DROP FUNCTION public.st_rotatey(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_rotatey(geometry, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_Affine($1,  cos($2), 0, sin($2),  0, 1, 0,  -sin($2), 0, cos($2), 0,  0, 0)$function$
;

COMMENT ON FUNCTION public.st_rotatey(geometry, float8) IS 'args: geomA, rotRadians - Rotates a geometry about the Y axis.';

-- DROP FUNCTION public.st_rotatez(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_rotatez(geometry, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_Rotate($1, $2)$function$
;

COMMENT ON FUNCTION public.st_rotatez(geometry, float8) IS 'args: geomA, rotRadians - Rotates a geometry about the Z axis.';

-- DROP FUNCTION public.st_rotation(raster);

CREATE OR REPLACE FUNCTION public.st_rotation(raster)
 RETURNS double precision
 LANGUAGE sql
AS $function$ SELECT ( public.ST_Geotransform($1)).theta_i $function$
;

COMMENT ON FUNCTION public.st_rotation(raster) IS 'args: rast - Returns the rotation of the raster in radian.';

-- DROP FUNCTION public.st_roughness(raster, int4, text, bool);

CREATE OR REPLACE FUNCTION public.st_roughness(rast raster, nband integer DEFAULT 1, pixeltype text DEFAULT '32BF'::text, interpolate_nodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_roughness($1, $2, NULL::public.raster, $3, $4) $function$
;

-- DROP FUNCTION public.st_roughness(raster, int4, raster, text, bool);

CREATE OR REPLACE FUNCTION public.st_roughness(rast raster, nband integer, customextent raster, pixeltype text DEFAULT '32BF'::text, interpolate_nodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_rast public.raster;
		_nband integer;
		_pixtype text;
		_pixwidth double precision;
		_pixheight double precision;
		_width integer;
		_height integer;
		_customextent public.raster;
		_extenttype text;
	BEGIN
		_customextent := customextent;
		IF _customextent IS NULL THEN
			_extenttype := 'FIRST';
		ELSE
			_extenttype := 'CUSTOM';
		END IF;

		IF interpolate_nodata IS TRUE THEN
			_rast := public.ST_MapAlgebra(
				ARRAY[ROW(rast, nband)]::rastbandarg[],
				'public.st_invdistweight4ma(double precision[][][], integer[][], text[])'::regprocedure,
				pixeltype,
				'FIRST', NULL,
				1, 1
			);
			_nband := 1;
			_pixtype := NULL;
		ELSE
			_rast := rast;
			_nband := nband;
			_pixtype := pixeltype;
		END IF;

		RETURN public.ST_MapAlgebra(
			ARRAY[ROW(_rast, _nband)]::rastbandarg[],
			' public._ST_roughness4ma(double precision[][][], integer[][], text[])'::regprocedure,
			_pixtype,
			_extenttype, _customextent,
			1, 1);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_roughness(raster, int4, raster, text, bool) IS 'args: rast, nband, customextent, pixeltype="32BF", interpolate_nodata=FALSE - Returns a raster with the calculated "roughness" of a DEM.';

-- DROP FUNCTION public.st_samealignment(raster, raster);

CREATE OR REPLACE FUNCTION public.st_samealignment(rast1 raster, rast2 raster)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_sameAlignment$function$
;

COMMENT ON FUNCTION public.st_samealignment(raster, raster) IS 'args: rastA, rastB - Returns true if rasters have same skew, scale, spatial ref, and offset (pixels can be put on same grid without cutting into pixels) and false if they dont with notice detailing issue.';

-- DROP FUNCTION public.st_samealignment(float8, float8, float8, float8, float8, float8, float8, float8, float8, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_samealignment(ulx1 double precision, uly1 double precision, scalex1 double precision, scaley1 double precision, skewx1 double precision, skewy1 double precision, ulx2 double precision, uly2 double precision, scalex2 double precision, scaley2 double precision, skewx2 double precision, skewy2 double precision)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT st_samealignment(st_makeemptyraster(1, 1, $1, $2, $3, $4, $5, $6), st_makeemptyraster(1, 1, $7, $8, $9, $10, $11, $12)) $function$
;

COMMENT ON FUNCTION public.st_samealignment(float8, float8, float8, float8, float8, float8, float8, float8, float8, float8, float8, float8) IS 'args: ulx1, uly1, scalex1, scaley1, skewx1, skewy1, ulx2, uly2, scalex2, scaley2, skewx2, skewy2 - Returns true if rasters have same skew, scale, spatial ref, and offset (pixels can be put on same grid without cutting into pixels) and false if they dont with notice detailing issue.';

-- DROP AGGREGATE public.st_samealignment(raster);

-- Aggregate function public.st_samealignment(raster)
-- ERROR: more than one function named "public.st_samealignment";

COMMENT ON AGGREGATE public.st_samealignment(raster) IS 'args: rastfield - Returns true if rasters have same skew, scale, spatial ref, and offset (pixels can be put on same grid without cutting into pixels) and false if they dont with notice detailing issue.';

-- DROP FUNCTION public.st_scale(geometry, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_scale(geometry, double precision, double precision, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_Scale($1, public.ST_MakePoint($2, $3, $4))$function$
;

COMMENT ON FUNCTION public.st_scale(geometry, float8, float8, float8) IS 'args: geomA, XFactor, YFactor, ZFactor - Scales a geometry by given factors.';

-- DROP FUNCTION public.st_scale(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_scale(geometry, geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_Scale$function$
;

COMMENT ON FUNCTION public.st_scale(geometry, geometry) IS 'args: geom, factor - Scales a geometry by given factors.';

-- DROP FUNCTION public.st_scale(geometry, float8, float8);

CREATE OR REPLACE FUNCTION public.st_scale(geometry, double precision, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_Scale($1, $2, $3, 1)$function$
;

COMMENT ON FUNCTION public.st_scale(geometry, float8, float8) IS 'args: geomA, XFactor, YFactor - Scales a geometry by given factors.';

-- DROP FUNCTION public.st_scale(geometry, geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_scale(geometry, geometry, origin geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_Scale$function$
;

COMMENT ON FUNCTION public.st_scale(geometry, geometry, geometry) IS 'args: geom, factor, origin - Scales a geometry by given factors.';

-- DROP FUNCTION public.st_scalex(raster);

CREATE OR REPLACE FUNCTION public.st_scalex(raster)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getXScale$function$
;

COMMENT ON FUNCTION public.st_scalex(raster) IS 'args: rast - Returns the X component of the pixel width in units of coordinate reference system.';

-- DROP FUNCTION public.st_scaley(raster);

CREATE OR REPLACE FUNCTION public.st_scaley(raster)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getYScale$function$
;

COMMENT ON FUNCTION public.st_scaley(raster) IS 'args: rast - Returns the Y component of the pixel height in units of coordinate reference system.';

-- DROP FUNCTION public.st_segmentize(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_segmentize(geometry, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_segmentize2d$function$
;

COMMENT ON FUNCTION public.st_segmentize(geometry, float8) IS 'args: geom, max_segment_length - Return a modified geometry/geography having no segment longer than the given distance.';

-- DROP FUNCTION public.st_segmentize(geography, float8);

CREATE OR REPLACE FUNCTION public.st_segmentize(geog geography, max_segment_length double precision)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$geography_segmentize$function$
;

COMMENT ON FUNCTION public.st_segmentize(geography, float8) IS 'args: geog, max_segment_length - Return a modified geometry/geography having no segment longer than the given distance.';

-- DROP FUNCTION public.st_setbandindex(raster, int4, int4, bool);

CREATE OR REPLACE FUNCTION public.st_setbandindex(rast raster, band integer, outdbindex integer, force boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_SetBandPath($1, $2, NULL, $3, $4) $function$
;

COMMENT ON FUNCTION public.st_setbandindex(raster, int4, int4, bool) IS 'args: rast, band, outdbindex, force=false - Update the external band number of an out-db band';

-- DROP FUNCTION public.st_setbandisnodata(raster, int4);

CREATE OR REPLACE FUNCTION public.st_setbandisnodata(rast raster, band integer DEFAULT 1)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_setBandIsNoData$function$
;

COMMENT ON FUNCTION public.st_setbandisnodata(raster, int4) IS 'args: rast, band=1 - Sets the isnodata flag of the band to TRUE.';

-- DROP FUNCTION public.st_setbandnodatavalue(raster, float8);

CREATE OR REPLACE FUNCTION public.st_setbandnodatavalue(rast raster, nodatavalue double precision)
 RETURNS raster
 LANGUAGE sql
AS $function$ SELECT public.ST_setbandnodatavalue($1, 1, $2, FALSE) $function$
;

COMMENT ON FUNCTION public.st_setbandnodatavalue(raster, float8) IS 'args: rast, nodatavalue - Sets the value for the given band that represents no data. Band 1 is assumed if no band is specified. To mark a band as having no nodata value, set the nodata value = NULL.';

-- DROP FUNCTION public.st_setbandnodatavalue(raster, int4, float8, bool);

CREATE OR REPLACE FUNCTION public.st_setbandnodatavalue(rast raster, band integer, nodatavalue double precision, forcechecking boolean DEFAULT false)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_setBandNoDataValue$function$
;

COMMENT ON FUNCTION public.st_setbandnodatavalue(raster, int4, float8, bool) IS 'args: rast, band, nodatavalue, forcechecking=false - Sets the value for the given band that represents no data. Band 1 is assumed if no band is specified. To mark a band as having no nodata value, set the nodata value = NULL.';

-- DROP FUNCTION public.st_setbandpath(raster, int4, text, int4, bool);

CREATE OR REPLACE FUNCTION public.st_setbandpath(rast raster, band integer, outdbpath text, outdbindex integer, force boolean DEFAULT false)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_setBandPath$function$
;

COMMENT ON FUNCTION public.st_setbandpath(raster, int4, text, int4, bool) IS 'args: rast, band, outdbpath, outdbindex, force=false - Update the external path and band number of an out-db band';

-- DROP FUNCTION public.st_seteffectivearea(geometry, float8, int4);

CREATE OR REPLACE FUNCTION public.st_seteffectivearea(geometry, double precision DEFAULT '-1'::integer, integer DEFAULT 1)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$LWGEOM_SetEffectiveArea$function$
;

COMMENT ON FUNCTION public.st_seteffectivearea(geometry, float8, int4) IS 'args: geomA, threshold = 0, set_area = 1 - Sets the effective area for each vertex, using the Visvalingam-Whyatt algorithm.';

-- DROP FUNCTION public.st_setgeoreference(raster, float8, float8, float8, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_setgeoreference(rast raster, upperleftx double precision, upperlefty double precision, scalex double precision, scaley double precision, skewx double precision, skewy double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public.ST_setgeoreference($1, array_to_string(ARRAY[$4, $7, $6, $5, $2, $3], ' ')) $function$
;

COMMENT ON FUNCTION public.st_setgeoreference(raster, float8, float8, float8, float8, float8, float8) IS 'args: rast, upperleftx, upperlefty, scalex, scaley, skewx, skewy - Set Georeference 6 georeference parameters in a single call. Numbers should be separated by white space. Accepts inputs in GDAL or ESRI format. Default is GDAL.';

-- DROP FUNCTION public.st_setgeoreference(raster, text, text);

CREATE OR REPLACE FUNCTION public.st_setgeoreference(rast raster, georef text, format text DEFAULT 'GDAL'::text)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
    DECLARE
        params text[];
        rastout public.raster;
    BEGIN
        IF rast IS NULL THEN
            RAISE WARNING 'Cannot set georeferencing on a null raster in st_setgeoreference.';
            RETURN rastout;
        END IF;

        SELECT regexp_matches(georef,
            E'(-?\\d+(?:\\.\\d+)?)\\s(-?\\d+(?:\\.\\d+)?)\\s(-?\\d+(?:\\.\\d+)?)\\s' ||
            E'(-?\\d+(?:\\.\\d+)?)\\s(-?\\d+(?:\\.\\d+)?)\\s(-?\\d+(?:\\.\\d+)?)') INTO params;

        IF NOT FOUND THEN
            RAISE EXCEPTION 'st_setgeoreference requires a string with 6 floating point values.';
        END IF;

        IF format = 'ESRI' THEN
            -- params array is now:
            -- {scalex, skewy, skewx, scaley, upperleftx, upperlefty}
            rastout := public.ST_setscale(rast, params[1]::float8, params[4]::float8);
            rastout := public.ST_setskew(rastout, params[3]::float8, params[2]::float8);
            rastout := public.ST_setupperleft(rastout,
                                   params[5]::float8 - (params[1]::float8 * 0.5),
                                   params[6]::float8 - (params[4]::float8 * 0.5));
        ELSE
            IF format != 'GDAL' THEN
                RAISE WARNING 'Format ''%'' is not recognized, defaulting to GDAL format.', format;
            END IF;
            -- params array is now:
            -- {scalex, skewy, skewx, scaley, upperleftx, upperlefty}

            rastout := public.ST_setscale(rast, params[1]::float8, params[4]::float8);
            rastout := public.ST_setskew( rastout, params[3]::float8, params[2]::float8);
            rastout := public.ST_setupperleft(rastout, params[5]::float8, params[6]::float8);
        END IF;
        RETURN rastout;
    END;
    $function$
;

COMMENT ON FUNCTION public.st_setgeoreference(raster, text, text) IS 'args: rast, georefcoords, format=GDAL - Set Georeference 6 georeference parameters in a single call. Numbers should be separated by white space. Accepts inputs in GDAL or ESRI format. Default is GDAL.';

-- DROP FUNCTION public.st_setgeotransform(raster, float8, float8, float8, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_setgeotransform(rast raster, imag double precision, jmag double precision, theta_i double precision, theta_ij double precision, xoffset double precision, yoffset double precision)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_setGeotransform$function$
;

-- DROP FUNCTION public.st_setpoint(geometry, int4, geometry);

CREATE OR REPLACE FUNCTION public.st_setpoint(geometry, integer, geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_setpoint_linestring$function$
;

COMMENT ON FUNCTION public.st_setpoint(geometry, int4, geometry) IS 'args: linestring, zerobasedposition, point - Replace point of a linestring with a given point.';

-- DROP FUNCTION public.st_setrotation(raster, float8);

CREATE OR REPLACE FUNCTION public.st_setrotation(rast raster, rotation double precision)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_setRotation$function$
;

COMMENT ON FUNCTION public.st_setrotation(raster, float8) IS 'args: rast, rotation - Set the rotation of the raster in radian.';

-- DROP FUNCTION public.st_setscale(raster, float8);

CREATE OR REPLACE FUNCTION public.st_setscale(rast raster, scale double precision)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_setScale$function$
;

COMMENT ON FUNCTION public.st_setscale(raster, float8) IS 'args: rast, xy - Sets the X and Y size of pixels in units of coordinate reference system. Number units/pixel width/height.';

-- DROP FUNCTION public.st_setscale(raster, float8, float8);

CREATE OR REPLACE FUNCTION public.st_setscale(rast raster, scalex double precision, scaley double precision)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_setScaleXY$function$
;

COMMENT ON FUNCTION public.st_setscale(raster, float8, float8) IS 'args: rast, x, y - Sets the X and Y size of pixels in units of coordinate reference system. Number units/pixel width/height.';

-- DROP FUNCTION public.st_setskew(raster, float8, float8);

CREATE OR REPLACE FUNCTION public.st_setskew(rast raster, skewx double precision, skewy double precision)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_setSkewXY$function$
;

COMMENT ON FUNCTION public.st_setskew(raster, float8, float8) IS 'args: rast, skewx, skewy - Sets the georeference X and Y skew (or rotation parameter). If only one is passed in, sets X and Y to the same value.';

-- DROP FUNCTION public.st_setskew(raster, float8);

CREATE OR REPLACE FUNCTION public.st_setskew(rast raster, skew double precision)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_setSkew$function$
;

COMMENT ON FUNCTION public.st_setskew(raster, float8) IS 'args: rast, skewxy - Sets the georeference X and Y skew (or rotation parameter). If only one is passed in, sets X and Y to the same value.';

-- DROP FUNCTION public.st_setsrid(geography, int4);

CREATE OR REPLACE FUNCTION public.st_setsrid(geog geography, srid integer)
 RETURNS geography
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_set_srid$function$
;

-- DROP FUNCTION public.st_setsrid(raster, int4);

CREATE OR REPLACE FUNCTION public.st_setsrid(rast raster, srid integer)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_setSRID$function$
;

COMMENT ON FUNCTION public.st_setsrid(raster, int4) IS 'args: rast, srid - Sets the SRID of a raster to a particular integer srid defined in the spatial_ref_sys table.';

-- DROP FUNCTION public.st_setsrid(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_setsrid(geom geometry, srid integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_set_srid$function$
;

COMMENT ON FUNCTION public.st_setsrid(geometry, int4) IS 'args: geom, srid - Set the SRID on a geometry to a particular integer value.';

-- DROP FUNCTION public.st_setupperleft(raster, float8, float8);

CREATE OR REPLACE FUNCTION public.st_setupperleft(rast raster, upperleftx double precision, upperlefty double precision)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_setUpperLeftXY$function$
;

COMMENT ON FUNCTION public.st_setupperleft(raster, float8, float8) IS 'args: rast, x, y - Sets the value of the upper left corner of the pixel of the raster to projected X and Y coordinates.';

-- DROP FUNCTION public.st_setvalue(raster, int4, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_setvalue(rast raster, nband integer, geom geometry, newvalue double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_setvalues($1, $2, ARRAY[ROW($3, $4)]::geomval[], FALSE) $function$
;

COMMENT ON FUNCTION public.st_setvalue(raster, int4, geometry, float8) IS 'args: rast, bandnum, geom, newvalue - Returns modified raster resulting from setting the value of a given band in a given columnx, rowy pixel or the pixels that intersect a particular geometry. Band numbers start at 1 and assumed to be 1 if not specified.';

-- DROP FUNCTION public.st_setvalue(raster, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_setvalue(rast raster, geom geometry, newvalue double precision)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_setvalues($1, 1, ARRAY[ROW($2, $3)]::geomval[], FALSE) $function$
;

COMMENT ON FUNCTION public.st_setvalue(raster, geometry, float8) IS 'args: rast, geom, newvalue - Returns modified raster resulting from setting the value of a given band in a given columnx, rowy pixel or the pixels that intersect a particular geometry. Band numbers start at 1 and assumed to be 1 if not specified.';

-- DROP FUNCTION public.st_setvalue(raster, int4, int4, int4, float8);

CREATE OR REPLACE FUNCTION public.st_setvalue(rast raster, band integer, x integer, y integer, newvalue double precision)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_setPixelValue$function$
;

COMMENT ON FUNCTION public.st_setvalue(raster, int4, int4, int4, float8) IS 'args: rast, bandnum, columnx, rowy, newvalue - Returns modified raster resulting from setting the value of a given band in a given columnx, rowy pixel or the pixels that intersect a particular geometry. Band numbers start at 1 and assumed to be 1 if not specified.';

-- DROP FUNCTION public.st_setvalue(raster, int4, int4, float8);

CREATE OR REPLACE FUNCTION public.st_setvalue(rast raster, x integer, y integer, newvalue double precision)
 RETURNS raster
 LANGUAGE sql
AS $function$ SELECT public.ST_SetValue($1, 1, $2, $3, $4) $function$
;

COMMENT ON FUNCTION public.st_setvalue(raster, int4, int4, float8) IS 'args: rast, columnx, rowy, newvalue - Returns modified raster resulting from setting the value of a given band in a given columnx, rowy pixel or the pixels that intersect a particular geometry. Band numbers start at 1 and assumed to be 1 if not specified.';

-- DROP FUNCTION public.st_setvalues(raster, int4, int4, int4, int4, float8, bool);

CREATE OR REPLACE FUNCTION public.st_setvalues(rast raster, x integer, y integer, width integer, height integer, newvalue double precision, keepnodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	BEGIN
		IF width <= 0 OR height <= 0 THEN
			RAISE EXCEPTION 'Values for width and height must be greater than zero';
			RETURN NULL;
		END IF;
		RETURN public._ST_setvalues($1, 1, $2, $3, array_fill($6, ARRAY[$5, $4]::int[]), NULL, FALSE, NULL, $7);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_setvalues(raster, int4, int4, int4, int4, float8, bool) IS 'args: rast, columnx, rowy, width, height, newvalue, keepnodata=FALSE - Returns modified raster resulting from setting the values of a given band.';

-- DROP FUNCTION public.st_setvalues(raster, int4, _geomval, bool);

CREATE OR REPLACE FUNCTION public.st_setvalues(rast raster, nband integer, geomvalset geomval[], keepnodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/postgis_raster-3', $function$RASTER_setPixelValuesGeomval$function$
;

COMMENT ON FUNCTION public.st_setvalues(raster, int4, _geomval, bool) IS 'args: rast, nband, geomvalset, keepnodata=FALSE - Returns modified raster resulting from setting the values of a given band.';

-- DROP FUNCTION public.st_setvalues(raster, int4, int4, int4, _float8, _bool, bool);

CREATE OR REPLACE FUNCTION public.st_setvalues(rast raster, nband integer, x integer, y integer, newvalueset double precision[], noset boolean[] DEFAULT NULL::boolean[], keepnodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_setvalues($1, $2, $3, $4, $5, $6, FALSE, NULL, $7) $function$
;

COMMENT ON FUNCTION public.st_setvalues(raster, int4, int4, int4, _float8, _bool, bool) IS 'args: rast, nband, columnx, rowy, newvalueset, noset=NULL, keepnodata=FALSE - Returns modified raster resulting from setting the values of a given band.';

-- DROP FUNCTION public.st_setvalues(raster, int4, int4, int4, _float8, float8, bool);

CREATE OR REPLACE FUNCTION public.st_setvalues(rast raster, nband integer, x integer, y integer, newvalueset double precision[], nosetvalue double precision, keepnodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_setvalues($1, $2, $3, $4, $5, NULL, TRUE, $6, $7) $function$
;

COMMENT ON FUNCTION public.st_setvalues(raster, int4, int4, int4, _float8, float8, bool) IS 'args: rast, nband, columnx, rowy, newvalueset, nosetvalue, keepnodata=FALSE - Returns modified raster resulting from setting the values of a given band.';

-- DROP FUNCTION public.st_setvalues(raster, int4, int4, int4, int4, int4, float8, bool);

CREATE OR REPLACE FUNCTION public.st_setvalues(rast raster, nband integer, x integer, y integer, width integer, height integer, newvalue double precision, keepnodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	BEGIN
		IF width <= 0 OR height <= 0 THEN
			RAISE EXCEPTION 'Values for width and height must be greater than zero';
			RETURN NULL;
		END IF;
		RETURN public._ST_setvalues($1, $2, $3, $4, array_fill($7, ARRAY[$6, $5]::int[]), NULL, FALSE, NULL, $8);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_setvalues(raster, int4, int4, int4, int4, int4, float8, bool) IS 'args: rast, nband, columnx, rowy, width, height, newvalue, keepnodata=FALSE - Returns modified raster resulting from setting the values of a given band.';

-- DROP FUNCTION public.st_sharedpaths(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_sharedpaths(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_SharedPaths$function$
;

COMMENT ON FUNCTION public.st_sharedpaths(geometry, geometry) IS 'args: lineal1, lineal2 - Returns a collection containing paths shared by the two input linestrings/multilinestrings.';

-- DROP FUNCTION public.st_shiftlongitude(geometry);

CREATE OR REPLACE FUNCTION public.st_shiftlongitude(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_longitude_shift$function$
;

COMMENT ON FUNCTION public.st_shiftlongitude(geometry) IS 'args: geom - Shifts the longitude coordinates of a geometry between -180..180 and 0..360.';

-- DROP FUNCTION public.st_shortestline(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_shortestline(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_shortestline2d$function$
;

COMMENT ON FUNCTION public.st_shortestline(geometry, geometry) IS 'args: g1, g2 - Returns the 2D shortest line between two geometries';

-- DROP FUNCTION public.st_simplify(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_simplify(geometry, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_simplify2d$function$
;

-- DROP FUNCTION public.st_simplify(geometry, float8, bool);

CREATE OR REPLACE FUNCTION public.st_simplify(geometry, double precision, boolean)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_simplify2d$function$
;

COMMENT ON FUNCTION public.st_simplify(geometry, float8, bool) IS 'args: geomA, tolerance, preserveCollapsed - Returns a simplified version of a geometry, using the Douglas-Peucker algorithm.';

-- DROP FUNCTION public.st_simplifypreservetopology(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_simplifypreservetopology(geometry, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$topologypreservesimplify$function$
;

COMMENT ON FUNCTION public.st_simplifypreservetopology(geometry, float8) IS 'args: geomA, tolerance - Returns a simplified and valid version of a geometry, using the Douglas-Peucker algorithm.';

-- DROP FUNCTION public.st_simplifyvw(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_simplifyvw(geometry, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$LWGEOM_SetEffectiveArea$function$
;

COMMENT ON FUNCTION public.st_simplifyvw(geometry, float8) IS 'args: geomA, tolerance - Returns a simplified version of a geometry, using the Visvalingam-Whyatt algorithm';

-- DROP FUNCTION public.st_skewx(raster);

CREATE OR REPLACE FUNCTION public.st_skewx(raster)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getXSkew$function$
;

COMMENT ON FUNCTION public.st_skewx(raster) IS 'args: rast - Returns the georeference X skew (or rotation parameter).';

-- DROP FUNCTION public.st_skewy(raster);

CREATE OR REPLACE FUNCTION public.st_skewy(raster)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getYSkew$function$
;

COMMENT ON FUNCTION public.st_skewy(raster) IS 'args: rast - Returns the georeference Y skew (or rotation parameter).';

-- DROP FUNCTION public.st_slope(raster, int4, raster, text, text, float8, bool);

CREATE OR REPLACE FUNCTION public.st_slope(rast raster, nband integer, customextent raster, pixeltype text DEFAULT '32BF'::text, units text DEFAULT 'DEGREES'::text, scale double precision DEFAULT 1.0, interpolate_nodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_rast public.raster;
		_nband integer;
		_pixtype text;
		_pixwidth double precision;
		_pixheight double precision;
		_width integer;
		_height integer;
		_customextent public.raster;
		_extenttype text;
	BEGIN
		_customextent := customextent;
		IF _customextent IS NULL THEN
			_extenttype := 'FIRST';
		ELSE
			_extenttype := 'CUSTOM';
		END IF;

		IF interpolate_nodata IS TRUE THEN
			_rast := public.ST_MapAlgebra(
				ARRAY[ROW(rast, nband)]::rastbandarg[],
				'public.st_invdistweight4ma(double precision[][][], integer[][], text[])'::regprocedure,
				pixeltype,
				'FIRST', NULL,
				1, 1
			);
			_nband := 1;
			_pixtype := NULL;
		ELSE
			_rast := rast;
			_nband := nband;
			_pixtype := pixeltype;
		END IF;

		-- get properties
		_pixwidth := public.ST_PixelWidth(_rast);
		_pixheight := public.ST_PixelHeight(_rast);
		SELECT width, height INTO _width, _height FROM public.ST_Metadata(_rast);

		RETURN public.ST_MapAlgebra(
			ARRAY[ROW(_rast, _nband)]::rastbandarg[],
			' public._ST_slope4ma(double precision[][][], integer[][], text[])'::regprocedure,
			_pixtype,
			_extenttype, _customextent,
			1, 1,
			_pixwidth::text, _pixheight::text,
			_width::text, _height::text,
			units::text, scale::text
		);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_slope(raster, int4, raster, text, text, float8, bool) IS 'args: rast, nband, customextent, pixeltype=32BF, units=DEGREES, scale=1.0, interpolate_nodata=FALSE - Returns the slope (in degrees by default) of an elevation raster band. Useful for analyzing terrain.';

-- DROP FUNCTION public.st_slope(raster, int4, text, text, float8, bool);

CREATE OR REPLACE FUNCTION public.st_slope(rast raster, nband integer DEFAULT 1, pixeltype text DEFAULT '32BF'::text, units text DEFAULT 'DEGREES'::text, scale double precision DEFAULT 1.0, interpolate_nodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_slope($1, $2, NULL::public.raster, $3, $4, $5, $6) $function$
;

COMMENT ON FUNCTION public.st_slope(raster, int4, text, text, float8, bool) IS 'args: rast, nband=1, pixeltype=32BF, units=DEGREES, scale=1.0, interpolate_nodata=FALSE - Returns the slope (in degrees by default) of an elevation raster band. Useful for analyzing terrain.';

-- DROP FUNCTION public.st_snap(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_snap(geom1 geometry, geom2 geometry, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_Snap$function$
;

COMMENT ON FUNCTION public.st_snap(geometry, geometry, float8) IS 'args: input, reference, tolerance - Snap segments and vertices of input geometry to vertices of a reference geometry.';

-- DROP FUNCTION public.st_snaptogrid(raster, float8, float8, float8, text, float8);

CREATE OR REPLACE FUNCTION public.st_snaptogrid(rast raster, gridx double precision, gridy double precision, scalexy double precision, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_gdalwarp($1, $5, $6, NULL, $4, $4, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_snaptogrid(raster, float8, float8, float8, text, float8) IS 'args: rast, gridx, gridy, scalexy, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster by snapping it to a grid. New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';

-- DROP FUNCTION public.st_snaptogrid(geometry, geometry, float8, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_snaptogrid(geom1 geometry, geom2 geometry, double precision, double precision, double precision, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_snaptogrid_pointoff$function$
;

COMMENT ON FUNCTION public.st_snaptogrid(geometry, geometry, float8, float8, float8, float8) IS 'args: geomA, pointOrigin, sizeX, sizeY, sizeZ, sizeM - Snap all points of the input geometry to a regular grid.';

-- DROP FUNCTION public.st_snaptogrid(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_snaptogrid(geometry, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_SnapToGrid($1, 0, 0, $2, $2)$function$
;

COMMENT ON FUNCTION public.st_snaptogrid(geometry, float8) IS 'args: geomA, size - Snap all points of the input geometry to a regular grid.';

-- DROP FUNCTION public.st_snaptogrid(geometry, float8, float8);

CREATE OR REPLACE FUNCTION public.st_snaptogrid(geometry, double precision, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_SnapToGrid($1, 0, 0, $2, $3)$function$
;

COMMENT ON FUNCTION public.st_snaptogrid(geometry, float8, float8) IS 'args: geomA, sizeX, sizeY - Snap all points of the input geometry to a regular grid.';

-- DROP FUNCTION public.st_snaptogrid(geometry, float8, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_snaptogrid(geometry, double precision, double precision, double precision, double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_snaptogrid$function$
;

COMMENT ON FUNCTION public.st_snaptogrid(geometry, float8, float8, float8, float8) IS 'args: geomA, originX, originY, sizeX, sizeY - Snap all points of the input geometry to a regular grid.';

-- DROP FUNCTION public.st_snaptogrid(raster, float8, float8, text, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_snaptogrid(rast raster, gridx double precision, gridy double precision, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125, scalex double precision DEFAULT 0, scaley double precision DEFAULT 0)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_GdalWarp($1, $4, $5, NULL, $6, $7, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_snaptogrid(raster, float8, float8, text, float8, float8, float8) IS 'args: rast, gridx, gridy, algorithm=NearestNeighbour, maxerr=0.125, scalex=DEFAULT 0, scaley=DEFAULT 0 - Resample a raster by snapping it to a grid. New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';

-- DROP FUNCTION public.st_snaptogrid(raster, float8, float8, float8, float8, text, float8);

CREATE OR REPLACE FUNCTION public.st_snaptogrid(rast raster, gridx double precision, gridy double precision, scalex double precision, scaley double precision, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_gdalwarp($1, $6, $7, NULL, $4, $5, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_snaptogrid(raster, float8, float8, float8, float8, text, float8) IS 'args: rast, gridx, gridy, scalex, scaley, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster by snapping it to a grid. New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';

-- DROP FUNCTION public.st_split(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_split(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_Split$function$
;

COMMENT ON FUNCTION public.st_split(geometry, geometry) IS 'args: input, blade - Returns a collection of geometries created by splitting a geometry by another geometry.';

-- DROP FUNCTION public.st_square(float8, int4, int4, geometry);

CREATE OR REPLACE FUNCTION public.st_square(size double precision, cell_i integer, cell_j integer, origin geometry DEFAULT '010100000000000000000000000000000000000000'::geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_Square$function$
;

COMMENT ON FUNCTION public.st_square(float8, int4, int4, geometry) IS 'args: size, cell_i, cell_j, origin - Returns a single square, using the provided edge size and cell coordinate within the hexagon grid space.';

-- DROP FUNCTION public.st_squaregrid(in float8, in geometry, out geometry, out int4, out int4);

CREATE OR REPLACE FUNCTION public.st_squaregrid(size double precision, bounds geometry, OUT geom geometry, OUT i integer, OUT j integer)
 RETURNS SETOF record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$ST_ShapeGrid$function$
;

COMMENT ON FUNCTION public.st_squaregrid(in float8, in geometry, out geometry, out int4, out int4) IS 'args: size, bounds - Returns a set of grid squares and cell indices that completely cover the bounds of the geometry argument.';

-- DROP FUNCTION public.st_srid(geography);

CREATE OR REPLACE FUNCTION public.st_srid(geog geography)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_get_srid$function$
;

-- DROP FUNCTION public.st_srid(geometry);

CREATE OR REPLACE FUNCTION public.st_srid(geom geometry)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_get_srid$function$
;

COMMENT ON FUNCTION public.st_srid(geometry) IS 'args: g1 - Returns the spatial reference identifier for the ST_Geometry as defined in spatial_ref_sys table.';

-- DROP FUNCTION public.st_srid(raster);

CREATE OR REPLACE FUNCTION public.st_srid(raster)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getSRID$function$
;

COMMENT ON FUNCTION public.st_srid(raster) IS 'args: rast - Returns the spatial reference identifier of the raster as defined in spatial_ref_sys table.';

-- DROP FUNCTION public.st_startpoint(geometry);

CREATE OR REPLACE FUNCTION public.st_startpoint(geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_startpoint_linestring$function$
;

COMMENT ON FUNCTION public.st_startpoint(geometry) IS 'args: geomA - Returns the first point of a LineString.';

-- DROP FUNCTION public.st_stddev4ma(in _float8, in text, variadic _text);

CREATE OR REPLACE FUNCTION public.st_stddev4ma(matrix double precision[], nodatamode text, VARIADIC args text[])
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT stddev(unnest) FROM unnest($1) $function$
;

COMMENT ON FUNCTION public.st_stddev4ma(in _float8, in text, variadic _text) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the standard deviation of pixel values in a neighborhood.';

-- DROP FUNCTION public.st_stddev4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public.st_stddev4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT stddev(unnest) FROM unnest($1) $function$
;

COMMENT ON FUNCTION public.st_stddev4ma(in _float8, in _int4, variadic _text) IS 'args: value, pos, VARIADIC userargs - Raster processing function that calculates the standard deviation of pixel values in a neighborhood.';

-- DROP FUNCTION public.st_subdivide(geometry, int4, float8);

CREATE OR REPLACE FUNCTION public.st_subdivide(geom geometry, maxvertices integer DEFAULT 256, gridsize double precision DEFAULT '-1.0'::numeric)
 RETURNS SETOF geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_Subdivide$function$
;

COMMENT ON FUNCTION public.st_subdivide(geometry, int4, float8) IS 'args: geom, max_vertices=256, gridSize = -1 - Computes a rectilinear subdivision of a geometry.';

-- DROP FUNCTION public.st_sum4ma(in _float8, in _int4, variadic _text);

CREATE OR REPLACE FUNCTION public.st_sum4ma(value double precision[], pos integer[], VARIADIC userargs text[] DEFAULT NULL::text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_value double precision[][][];
		sum double precision;
		x int;
		y int;
		z int;
		ndims int;
	BEGIN
		sum := 0;

		ndims := array_ndims(value);
		-- add a third dimension if 2-dimension
		IF ndims = 2 THEN
			_value := public._ST_convertarray4ma(value);
		ELSEIF ndims != 3 THEN
			RAISE EXCEPTION 'First parameter of function must be a 3-dimension array';
		ELSE
			_value := value;
		END IF;

		-- raster
		FOR z IN array_lower(_value, 1)..array_upper(_value, 1) LOOP
			-- row
			FOR y IN array_lower(_value, 2)..array_upper(_value, 2) LOOP
				-- column
				FOR x IN array_lower(_value, 3)..array_upper(_value, 3) LOOP
					IF _value[z][y][x] IS NULL THEN
						IF array_length(userargs, 1) > 0 THEN
							_value[z][y][x] = userargs[array_lower(userargs, 1)]::double precision;
						ELSE
							CONTINUE;
						END IF;
					END IF;

					sum := sum + _value[z][y][x];
				END LOOP;
			END LOOP;
		END LOOP;

		RETURN sum;
	END;
	$function$
;

COMMENT ON FUNCTION public.st_sum4ma(in _float8, in _int4, variadic _text) IS 'args: value, pos, VARIADIC userargs - Raster processing function that calculates the sum of all pixel values in a neighborhood.';

-- DROP FUNCTION public.st_sum4ma(in _float8, in text, variadic _text);

CREATE OR REPLACE FUNCTION public.st_sum4ma(matrix double precision[], nodatamode text, VARIADIC args text[])
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
    DECLARE
        _matrix float[][];
        sum float;
    BEGIN
        _matrix := matrix;
        sum := 0;
        FOR x in array_lower(matrix, 1)..array_upper(matrix, 1) LOOP
            FOR y in array_lower(matrix, 2)..array_upper(matrix, 2) LOOP
                IF _matrix[x][y] IS NULL THEN
                    IF nodatamode = 'ignore' THEN
                        _matrix[x][y] := 0;
                    ELSE
                        _matrix[x][y] := nodatamode::float;
                    END IF;
                END IF;
                sum := sum + _matrix[x][y];
            END LOOP;
        END LOOP;
        RETURN sum;
    END;
    $function$
;

COMMENT ON FUNCTION public.st_sum4ma(in _float8, in text, variadic _text) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the sum of all pixel values in a neighborhood.';

-- DROP FUNCTION public.st_summary(geometry);

CREATE OR REPLACE FUNCTION public.st_summary(geometry)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_summary$function$
;

COMMENT ON FUNCTION public.st_summary(geometry) IS 'args: g - Returns a text summary of the contents of a geometry.';

-- DROP FUNCTION public.st_summary(raster);

CREATE OR REPLACE FUNCTION public.st_summary(rast raster)
 RETURNS text
 LANGUAGE plpgsql
 STABLE STRICT
AS $function$
	DECLARE
		extent box2d;
		metadata record;
		bandmetadata record;
		msg text;
		msgset text[];
	BEGIN
		extent := public.ST_Extent(rast::geometry);
		metadata := public.ST_Metadata(rast);

		msg := 'Raster of ' || metadata.width || 'x' || metadata.height || ' pixels has ' || metadata.numbands || ' ';

		IF metadata.numbands = 1 THEN
			msg := msg || 'band ';
		ELSE
			msg := msg || 'bands ';
		END IF;
		msg := msg || 'and extent of ' || extent;

		IF
			round(metadata.skewx::numeric, 10) <> round(0::numeric, 10) OR
			round(metadata.skewy::numeric, 10) <> round(0::numeric, 10)
		THEN
			msg := 'Skewed ' || overlay(msg placing 'r' from 1 for 1);
		END IF;

		msgset := Array[]::text[] || msg;

		FOR bandmetadata IN SELECT * FROM public.ST_BandMetadata(rast, ARRAY[]::int[]) LOOP
			msg := 'band ' || bandmetadata.bandnum || ' of pixtype ' || bandmetadata.pixeltype || ' is ';
			IF bandmetadata.isoutdb IS FALSE THEN
				msg := msg || 'in-db ';
			ELSE
				msg := msg || 'out-db ';
			END IF;

			msg := msg || 'with ';
			IF bandmetadata.nodatavalue IS NOT NULL THEN
				msg := msg || 'NODATA value of ' || bandmetadata.nodatavalue;
			ELSE
				msg := msg || 'no NODATA value';
			END IF;

			msgset := msgset || ('    ' || msg);
		END LOOP;

		RETURN array_to_string(msgset, E'\n');
	END;
	$function$
;

COMMENT ON FUNCTION public.st_summary(raster) IS 'args: rast - Returns a text summary of the contents of the raster.';

-- DROP FUNCTION public.st_summary(geography);

CREATE OR REPLACE FUNCTION public.st_summary(geography)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_summary$function$
;

COMMENT ON FUNCTION public.st_summary(geography) IS 'args: g - Returns a text summary of the contents of a geometry.';

-- DROP FUNCTION public.st_summarystats(raster, bool);

CREATE OR REPLACE FUNCTION public.st_summarystats(rast raster, exclude_nodata_value boolean)
 RETURNS summarystats
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_summarystats($1, 1, $2, 1) $function$
;

COMMENT ON FUNCTION public.st_summarystats(raster, bool) IS 'args: rast, exclude_nodata_value - Returns summarystats consisting of count, sum, mean, stddev, min, max for a given raster band of a raster or raster coverage. Band 1 is assumed is no band is specified.';

-- DROP FUNCTION public.st_summarystats(raster, int4, bool);

CREATE OR REPLACE FUNCTION public.st_summarystats(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true)
 RETURNS summarystats
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_summarystats($1, $2, $3, 1) $function$
;

COMMENT ON FUNCTION public.st_summarystats(raster, int4, bool) IS 'args: rast, nband, exclude_nodata_value - Returns summarystats consisting of count, sum, mean, stddev, min, max for a given raster band of a raster or raster coverage. Band 1 is assumed is no band is specified.';

-- DROP AGGREGATE public.st_summarystatsagg(raster, int4, bool);

-- Aggregate function public.st_summarystatsagg(raster, int4, bool)
-- ERROR: more than one function named "public.st_summarystatsagg";

COMMENT ON AGGREGATE public.st_summarystatsagg(raster, int4, bool) IS 'args: rast, nband, exclude_nodata_value - Aggregate. Returns summarystats consisting of count, sum, mean, stddev, min, max for a given raster band of a set of raster. Band 1 is assumed is no band is specified.';

-- DROP AGGREGATE public.st_summarystatsagg(raster, int4, bool, float8);

-- Aggregate function public.st_summarystatsagg(raster, int4, bool, float8)
-- ERROR: more than one function named "public.st_summarystatsagg";

COMMENT ON AGGREGATE public.st_summarystatsagg(raster, int4, bool, float8) IS 'args: rast, nband, exclude_nodata_value, sample_percent - Aggregate. Returns summarystats consisting of count, sum, mean, stddev, min, max for a given raster band of a set of raster. Band 1 is assumed is no band is specified.';

-- DROP AGGREGATE public.st_summarystatsagg(raster, bool, float8);

-- Aggregate function public.st_summarystatsagg(raster, bool, float8)
-- ERROR: more than one function named "public.st_summarystatsagg";

COMMENT ON AGGREGATE public.st_summarystatsagg(raster, bool, float8) IS 'args: rast, exclude_nodata_value, sample_percent - Aggregate. Returns summarystats consisting of count, sum, mean, stddev, min, max for a given raster band of a set of raster. Band 1 is assumed is no band is specified.';

-- DROP FUNCTION public.st_swapordinates(geometry, cstring);

CREATE OR REPLACE FUNCTION public.st_swapordinates(geom geometry, ords cstring)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_SwapOrdinates$function$
;

COMMENT ON FUNCTION public.st_swapordinates(geometry, cstring) IS 'args: geom, ords - Returns a version of the given geometry with given ordinate values swapped.';

-- DROP FUNCTION public.st_symdifference(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_symdifference(geom1 geometry, geom2 geometry, gridsize double precision DEFAULT '-1.0'::numeric)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_SymDifference$function$
;

COMMENT ON FUNCTION public.st_symdifference(geometry, geometry, float8) IS 'args: geomA, geomB, gridSize = -1 - Returns a geometry representing the portions of geometries A and B that do not intersect.';

-- DROP FUNCTION public.st_symmetricdifference(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_symmetricdifference(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE sql
AS $function$SELECT ST_SymDifference(geom1, geom2, -1.0);$function$
;

-- DROP FUNCTION public.st_tile(raster, int4, int4, int4, bool, float8);

CREATE OR REPLACE FUNCTION public.st_tile(rast raster, nband integer, width integer, height integer, padwithnodata boolean DEFAULT false, nodataval double precision DEFAULT NULL::double precision)
 RETURNS SETOF raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_tile($1, $3, $4, ARRAY[$2]::integer[], $5, $6) $function$
;

COMMENT ON FUNCTION public.st_tile(raster, int4, int4, int4, bool, float8) IS 'args: rast, nband, width, height, padwithnodata=FALSE, nodataval=NULL - Returns a set of rasters resulting from the split of the input raster based upon the desired dimensions of the output rasters.';

-- DROP FUNCTION public.st_tile(raster, int4, int4, bool, float8);

CREATE OR REPLACE FUNCTION public.st_tile(rast raster, width integer, height integer, padwithnodata boolean DEFAULT false, nodataval double precision DEFAULT NULL::double precision)
 RETURNS SETOF raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_tile($1, $2, $3, NULL::integer[], $4, $5) $function$
;

COMMENT ON FUNCTION public.st_tile(raster, int4, int4, bool, float8) IS 'args: rast, width, height, padwithnodata=FALSE, nodataval=NULL - Returns a set of rasters resulting from the split of the input raster based upon the desired dimensions of the output rasters.';

-- DROP FUNCTION public.st_tile(raster, _int4, int4, int4, bool, float8);

CREATE OR REPLACE FUNCTION public.st_tile(rast raster, nband integer[], width integer, height integer, padwithnodata boolean DEFAULT false, nodataval double precision DEFAULT NULL::double precision)
 RETURNS SETOF raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_tile($1, $3, $4, $2, $5, $6) $function$
;

COMMENT ON FUNCTION public.st_tile(raster, _int4, int4, int4, bool, float8) IS 'args: rast, nband, width, height, padwithnodata=FALSE, nodataval=NULL - Returns a set of rasters resulting from the split of the input raster based upon the desired dimensions of the output rasters.';

-- DROP FUNCTION public.st_tileenvelope(int4, int4, int4, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_tileenvelope(zoom integer, x integer, y integer, bounds geometry DEFAULT '0102000020110F00000200000093107C45F81B73C193107C45F81B73C193107C45F81B734193107C45F81B7341'::geometry, margin double precision DEFAULT 0.0)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_TileEnvelope$function$
;

COMMENT ON FUNCTION public.st_tileenvelope(int4, int4, int4, geometry, float8) IS 'args: tileZoom, tileX, tileY, bounds=SRID=3857;LINESTRING(-20037508.342789 -20037508.342789,20037508.342789 20037508.342789), margin=0.0 - Creates a rectangular Polygon in Web Mercator (SRID:3857) using the XYZ tile system.';

-- DROP FUNCTION public.st_touches(raster, raster);

CREATE OR REPLACE FUNCTION public.st_touches(rast1 raster, rast2 raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT public.st_touches($1, NULL::integer, $2, NULL::integer) $function$
;

COMMENT ON FUNCTION public.st_touches(raster, raster) IS 'args: rastA, rastB - Return true if raster rastA and rastB have at least one point in common but their interiors do not intersect.';

-- DROP FUNCTION public.st_touches(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_touches(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$touches$function$
;

-- DROP FUNCTION public.st_touches(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public.st_touches(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT $1 OPERATOR(public.&&) $3 AND CASE WHEN $2 IS NULL OR $4 IS NULL THEN public._st_touches(public.st_convexhull($1), public.st_convexhull($3)) ELSE public._st_touches($1, $2, $3, $4) END $function$
;

COMMENT ON FUNCTION public.st_touches(raster, int4, raster, int4) IS 'args: rastA, nbandA, rastB, nbandB - Return true if raster rastA and rastB have at least one point in common but their interiors do not intersect.';

-- DROP FUNCTION public.st_tpi(raster, int4, text, bool);

CREATE OR REPLACE FUNCTION public.st_tpi(rast raster, nband integer DEFAULT 1, pixeltype text DEFAULT '32BF'::text, interpolate_nodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_tpi($1, $2, NULL::public.raster, $3, $4) $function$
;

-- DROP FUNCTION public.st_tpi(raster, int4, raster, text, bool);

CREATE OR REPLACE FUNCTION public.st_tpi(rast raster, nband integer, customextent raster, pixeltype text DEFAULT '32BF'::text, interpolate_nodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_rast public.raster;
		_nband integer;
		_pixtype text;
		_pixwidth double precision;
		_pixheight double precision;
		_width integer;
		_height integer;
		_customextent public.raster;
		_extenttype text;
	BEGIN
		_customextent := customextent;
		IF _customextent IS NULL THEN
			_extenttype := 'FIRST';
		ELSE
			_extenttype := 'CUSTOM';
		END IF;

		IF interpolate_nodata IS TRUE THEN
			_rast := public.ST_MapAlgebra(
				ARRAY[ROW(rast, nband)]::rastbandarg[],
				'public.st_invdistweight4ma(double precision[][][], integer[][], text[])'::regprocedure,
				pixeltype,
				'FIRST', NULL,
				1, 1
			);
			_nband := 1;
			_pixtype := NULL;
		ELSE
			_rast := rast;
			_nband := nband;
			_pixtype := pixeltype;
		END IF;

		-- get properties
		_pixwidth := public.ST_PixelWidth(_rast);
		_pixheight := public.ST_PixelHeight(_rast);
		SELECT width, height INTO _width, _height FROM public.ST_Metadata(_rast);

		RETURN public.ST_MapAlgebra(
			ARRAY[ROW(_rast, _nband)]::rastbandarg[],
			' public._ST_tpi4ma(double precision[][][], integer[][], text[])'::regprocedure,
			_pixtype,
			_extenttype, _customextent,
			1, 1);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_tpi(raster, int4, raster, text, bool) IS 'args: rast, nband, customextent, pixeltype="32BF", interpolate_nodata=FALSE - Returns a raster with the calculated Topographic Position Index.';

-- DROP FUNCTION public.st_transform(geometry, text, int4);

CREATE OR REPLACE FUNCTION public.st_transform(geom geometry, from_proj text, to_srid integer)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS $function$SELECT public.postgis_transform_geometry($1, $2, proj4text, $3)
	FROM spatial_ref_sys WHERE srid=$3;$function$
;

COMMENT ON FUNCTION public.st_transform(geometry, text, int4) IS 'args: geom, from_proj, to_srid - Return a new geometry with its coordinates transformed to a different spatial reference system.';

-- DROP FUNCTION public.st_transform(geometry, text, text);

CREATE OR REPLACE FUNCTION public.st_transform(geom geometry, from_proj text, to_proj text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS $function$SELECT public.postgis_transform_geometry($1, $2, $3, 0)$function$
;

COMMENT ON FUNCTION public.st_transform(geometry, text, text) IS 'args: geom, from_proj, to_proj - Return a new geometry with its coordinates transformed to a different spatial reference system.';

-- DROP FUNCTION public.st_transform(geometry, text);

CREATE OR REPLACE FUNCTION public.st_transform(geom geometry, to_proj text)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS $function$SELECT public.postgis_transform_geometry($1, proj4text, $2, 0)
	FROM spatial_ref_sys WHERE srid=public.ST_SRID($1);$function$
;

COMMENT ON FUNCTION public.st_transform(geometry, text) IS 'args: geom, to_proj - Return a new geometry with its coordinates transformed to a different spatial reference system.';

-- DROP FUNCTION public.st_transform(raster, int4, float8, text, float8);

CREATE OR REPLACE FUNCTION public.st_transform(rast raster, srid integer, scalexy double precision, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_gdalwarp($1, $4, $5, $2, $3, $3) $function$
;

-- DROP FUNCTION public.st_transform(raster, int4, text, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_transform(rast raster, srid integer, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125, scalex double precision DEFAULT 0, scaley double precision DEFAULT 0)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_gdalwarp($1, $3, $4, $2, $5, $6) $function$
;

COMMENT ON FUNCTION public.st_transform(raster, int4, text, float8, float8, float8) IS 'args: rast, srid, algorithm=NearestNeighbor, maxerr=0.125, scalex, scaley - Reprojects a raster in a known spatial reference system to another known spatial reference system using specified resampling algorithm. Options are NearestNeighbor, Bilinear, Cubic, CubicSpline, Lanczos defaulting to NearestNeighbor.';

-- DROP FUNCTION public.st_transform(geometry, int4);

CREATE OR REPLACE FUNCTION public.st_transform(geometry, integer)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$transform$function$
;

COMMENT ON FUNCTION public.st_transform(geometry, int4) IS 'args: g1, srid - Return a new geometry with its coordinates transformed to a different spatial reference system.';

-- DROP FUNCTION public.st_transform(raster, int4, float8, float8, text, float8);

CREATE OR REPLACE FUNCTION public.st_transform(rast raster, srid integer, scalex double precision, scaley double precision, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT public._ST_gdalwarp($1, $5, $6, $2, $3, $4) $function$
;

COMMENT ON FUNCTION public.st_transform(raster, int4, float8, float8, text, float8) IS 'args: rast, srid, scalex, scaley, algorithm=NearestNeighbor, maxerr=0.125 - Reprojects a raster in a known spatial reference system to another known spatial reference system using specified resampling algorithm. Options are NearestNeighbor, Bilinear, Cubic, CubicSpline, Lanczos defaulting to NearestNeighbor.';

-- DROP FUNCTION public.st_transform(raster, raster, text, float8);

CREATE OR REPLACE FUNCTION public.st_transform(rast raster, alignto raster, algorithm text DEFAULT 'NearestNeighbour'::text, maxerr double precision DEFAULT 0.125)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		_srid integer;
		_scalex double precision;
		_scaley double precision;
		_gridx double precision;
		_gridy double precision;
		_skewx double precision;
		_skewy double precision;
	BEGIN
		SELECT srid, scalex, scaley, upperleftx, upperlefty, skewx, skewy INTO _srid, _scalex, _scaley, _gridx, _gridy, _skewx, _skewy FROM st_metadata($2);

		RETURN public._ST_gdalwarp($1, $3, $4, _srid, _scalex, _scaley, _gridx, _gridy, _skewx, _skewy, NULL, NULL);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_transform(raster, raster, text, float8) IS 'args: rast, alignto, algorithm=NearestNeighbor, maxerr=0.125 - Reprojects a raster in a known spatial reference system to another known spatial reference system using specified resampling algorithm. Options are NearestNeighbor, Bilinear, Cubic, CubicSpline, Lanczos defaulting to NearestNeighbor.';

-- DROP FUNCTION public.st_translate(geometry, float8, float8);

CREATE OR REPLACE FUNCTION public.st_translate(geometry, double precision, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_Translate($1, $2, $3, 0)$function$
;

COMMENT ON FUNCTION public.st_translate(geometry, float8, float8) IS 'args: g1, deltax, deltay - Translates a geometry by given offsets.';

-- DROP FUNCTION public.st_translate(geometry, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_translate(geometry, double precision, double precision, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_Affine($1, 1, 0, 0, 0, 1, 0, 0, 0, 1, $2, $3, $4)$function$
;

COMMENT ON FUNCTION public.st_translate(geometry, float8, float8, float8) IS 'args: g1, deltax, deltay, deltaz - Translates a geometry by given offsets.';

-- DROP FUNCTION public.st_transscale(geometry, float8, float8, float8, float8);

CREATE OR REPLACE FUNCTION public.st_transscale(geometry, double precision, double precision, double precision, double precision)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS $function$SELECT public.ST_Affine($1,  $4, 0, 0,  0, $5, 0,
		0, 0, 1,  $2 * $4, $3 * $5, 0)$function$
;

COMMENT ON FUNCTION public.st_transscale(geometry, float8, float8, float8, float8) IS 'args: geomA, deltaX, deltaY, XFactor, YFactor - Translates and scales a geometry by given offsets and factors.';

-- DROP FUNCTION public.st_tri(raster, int4, text, bool);

CREATE OR REPLACE FUNCTION public.st_tri(rast raster, nband integer DEFAULT 1, pixeltype text DEFAULT '32BF'::text, interpolate_nodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public.ST_tri($1, $2, NULL::public.raster, $3, $4) $function$
;

-- DROP FUNCTION public.st_tri(raster, int4, raster, text, bool);

CREATE OR REPLACE FUNCTION public.st_tri(rast raster, nband integer, customextent raster, pixeltype text DEFAULT '32BF'::text, interpolate_nodata boolean DEFAULT false)
 RETURNS raster
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE
AS $function$
	DECLARE
		_rast public.raster;
		_nband integer;
		_pixtype text;
		_pixwidth double precision;
		_pixheight double precision;
		_width integer;
		_height integer;
		_customextent public.raster;
		_extenttype text;
	BEGIN
		_customextent := customextent;
		IF _customextent IS NULL THEN
			_extenttype := 'FIRST';
		ELSE
			_extenttype := 'CUSTOM';
		END IF;

		IF interpolate_nodata IS TRUE THEN
			_rast := public.ST_MapAlgebra(
				ARRAY[ROW(rast, nband)]::rastbandarg[],
				'public.st_invdistweight4ma(double precision[][][], integer[][], text[])'::regprocedure,
				pixeltype,
				'FIRST', NULL,
				1, 1
			);
			_nband := 1;
			_pixtype := NULL;
		ELSE
			_rast := rast;
			_nband := nband;
			_pixtype := pixeltype;
		END IF;

		-- get properties
		_pixwidth := public.ST_PixelWidth(_rast);
		_pixheight := public.ST_PixelHeight(_rast);
		SELECT width, height INTO _width, _height FROM public.ST_Metadata(_rast);

		RETURN public.ST_MapAlgebra(
			ARRAY[ROW(_rast, _nband)]::rastbandarg[],
			' public._ST_tri4ma(double precision[][][], integer[][], text[])'::regprocedure,
			_pixtype,
			_extenttype, _customextent,
			1, 1);
	END;
	$function$
;

COMMENT ON FUNCTION public.st_tri(raster, int4, raster, text, bool) IS 'args: rast, nband, customextent, pixeltype="32BF", interpolate_nodata=FALSE - Returns a raster with the calculated Terrain Ruggedness Index.';

-- DROP FUNCTION public.st_unaryunion(geometry, float8);

CREATE OR REPLACE FUNCTION public.st_unaryunion(geometry, gridsize double precision DEFAULT '-1.0'::numeric)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_UnaryUnion$function$
;

COMMENT ON FUNCTION public.st_unaryunion(geometry, float8) IS 'args: geom, gridSize = -1 - Computes the union of the components of a single geometry.';

-- DROP FUNCTION public.st_union(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_union(geom1 geometry, geom2 geometry)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_Union$function$
;

COMMENT ON FUNCTION public.st_union(geometry, geometry) IS 'args: g1, g2 - Returns a geometry representing the point-set union of the input geometries.';

-- DROP AGGREGATE public.st_union(raster, text);

-- Aggregate function public.st_union(raster, text)
-- ERROR: more than one function named "public.st_union";

COMMENT ON AGGREGATE public.st_union(raster, text) IS 'args: rast, uniontype - Returns the union of a set of raster tiles into a single raster composed of 1 or more bands.';

-- DROP AGGREGATE public.st_union(raster, int4);

-- Aggregate function public.st_union(raster, int4)
-- ERROR: more than one function named "public.st_union";

COMMENT ON AGGREGATE public.st_union(raster, int4) IS 'args: rast, nband - Returns the union of a set of raster tiles into a single raster composed of 1 or more bands.';

-- DROP AGGREGATE public.st_union(raster, _unionarg);

-- Aggregate function public.st_union(raster, _unionarg)
-- ERROR: more than one function named "public.st_union";

COMMENT ON AGGREGATE public.st_union(raster, _unionarg) IS 'args: rast, unionargset - Returns the union of a set of raster tiles into a single raster composed of 1 or more bands.';

-- DROP AGGREGATE public.st_union(raster);

-- Aggregate function public.st_union(raster)
-- ERROR: more than one function named "public.st_union";

COMMENT ON AGGREGATE public.st_union(raster) IS 'args: rast - Returns the union of a set of raster tiles into a single raster composed of 1 or more bands.';

-- DROP FUNCTION public.st_union(geometry, geometry, float8);

CREATE OR REPLACE FUNCTION public.st_union(geom1 geometry, geom2 geometry, gridsize double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$ST_Union$function$
;

COMMENT ON FUNCTION public.st_union(geometry, geometry, float8) IS 'args: g1, g2, gridSize - Returns a geometry representing the point-set union of the input geometries.';

-- DROP AGGREGATE public.st_union(raster, int4, text);

-- Aggregate function public.st_union(raster, int4, text)
-- ERROR: more than one function named "public.st_union";

COMMENT ON AGGREGATE public.st_union(raster, int4, text) IS 'args: rast, nband, uniontype - Returns the union of a set of raster tiles into a single raster composed of 1 or more bands.';

-- DROP AGGREGATE public.st_union(geometry, float8);

-- Aggregate function public.st_union(geometry, float8)
-- ERROR: more than one function named "public.st_union";

COMMENT ON AGGREGATE public.st_union(geometry, float8) IS 'args: g1field, gridSize - Returns a geometry representing the point-set union of the input geometries.';

-- DROP AGGREGATE public.st_union(geometry);

-- Aggregate function public.st_union(geometry)
-- ERROR: more than one function named "public.st_union";

COMMENT ON AGGREGATE public.st_union(geometry) IS 'args: g1field - Returns a geometry representing the point-set union of the input geometries.';

-- DROP FUNCTION public.st_union(_geometry);

CREATE OR REPLACE FUNCTION public.st_union(geometry[])
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000
AS '$libdir/postgis-3', $function$pgis_union_geometry_array$function$
;

COMMENT ON FUNCTION public.st_union(_geometry) IS 'args: g1_array - Returns a geometry representing the point-set union of the input geometries.';

-- DROP FUNCTION public.st_upperleftx(raster);

CREATE OR REPLACE FUNCTION public.st_upperleftx(raster)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getXUpperLeft$function$
;

COMMENT ON FUNCTION public.st_upperleftx(raster) IS 'args: rast - Returns the upper left X coordinate of raster in projected spatial ref.';

-- DROP FUNCTION public.st_upperlefty(raster);

CREATE OR REPLACE FUNCTION public.st_upperlefty(raster)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getYUpperLeft$function$
;

COMMENT ON FUNCTION public.st_upperlefty(raster) IS 'args: rast - Returns the upper left Y coordinate of raster in projected spatial ref.';

-- DROP FUNCTION public.st_value(raster, geometry, bool);

CREATE OR REPLACE FUNCTION public.st_value(rast raster, pt geometry, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$ SELECT public.ST_value($1, 1, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_value(raster, geometry, bool) IS 'args: rast, pt, exclude_nodata_value=true - Returns the value of a given band in a given columnx, rowy pixel or at a particular geometric point. Band numbers start at 1 and assumed to be 1 if not specified. If exclude_nodata_value is set to false, then all pixels include nodata pixels are considered to intersect and return value. If exclude_nodata_value is not passed in then reads it from metadata of raster.';

-- DROP FUNCTION public.st_value(raster, int4, int4, int4, bool);

CREATE OR REPLACE FUNCTION public.st_value(rast raster, band integer, x integer, y integer, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis_raster-3', $function$RASTER_getPixelValue$function$
;

COMMENT ON FUNCTION public.st_value(raster, int4, int4, int4, bool) IS 'args: rast, band, x, y, exclude_nodata_value=true - Returns the value of a given band in a given columnx, rowy pixel or at a particular geometric point. Band numbers start at 1 and assumed to be 1 if not specified. If exclude_nodata_value is set to false, then all pixels include nodata pixels are considered to intersect and return value. If exclude_nodata_value is not passed in then reads it from metadata of raster.';

-- DROP FUNCTION public.st_value(raster, int4, int4, bool);

CREATE OR REPLACE FUNCTION public.st_value(rast raster, x integer, y integer, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$ SELECT st_value($1, 1, $2, $3, $4) $function$
;

COMMENT ON FUNCTION public.st_value(raster, int4, int4, bool) IS 'args: rast, x, y, exclude_nodata_value=true - Returns the value of a given band in a given columnx, rowy pixel or at a particular geometric point. Band numbers start at 1 and assumed to be 1 if not specified. If exclude_nodata_value is set to false, then all pixels include nodata pixels are considered to intersect and return value. If exclude_nodata_value is not passed in then reads it from metadata of raster.';

-- DROP FUNCTION public.st_value(raster, int4, geometry, bool);

CREATE OR REPLACE FUNCTION public.st_value(rast raster, band integer, pt geometry, exclude_nodata_value boolean DEFAULT true)
 RETURNS double precision
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS $function$
    DECLARE
        x float8;
        y float8;
        gtype text;
    BEGIN
        gtype := public.ST_GeometryType(pt);
        IF ( gtype != 'ST_Point' ) THEN
            RAISE EXCEPTION 'Attempting to get the value of a pixel with a non-point geometry';
        END IF;

				IF public.ST_SRID(pt) != public.ST_SRID(rast) THEN
            RAISE EXCEPTION 'Raster and geometry do not have the same SRID';
				END IF;

        x := public.ST_x(pt);
        y := public.ST_y(pt);
        RETURN public.ST_value(rast,
                        band,
                        public.ST_worldtorastercoordx(rast, x, y),
                        public.ST_worldtorastercoordy(rast, x, y),
                        exclude_nodata_value);
    END;
    $function$
;

COMMENT ON FUNCTION public.st_value(raster, int4, geometry, bool) IS 'args: rast, band, pt, exclude_nodata_value=true - Returns the value of a given band in a given columnx, rowy pixel or at a particular geometric point. Band numbers start at 1 and assumed to be 1 if not specified. If exclude_nodata_value is set to false, then all pixels include nodata pixels are considered to intersect and return value. If exclude_nodata_value is not passed in then reads it from metadata of raster.';

-- DROP FUNCTION public.st_valuecount(in text, in text, in int4, in bool, in _float8, in float8, out float8, out int4);

CREATE OR REPLACE FUNCTION public.st_valuecount(rastertable text, rastercolumn text, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, searchvalues double precision[] DEFAULT NULL::double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT count integer)
 RETURNS SETOF record
 LANGUAGE sql
 STABLE
AS $function$ SELECT value, count FROM public._ST_valuecount($1, $2, $3, $4, $5, $6) $function$
;

COMMENT ON FUNCTION public.st_valuecount(in text, in text, in int4, in bool, in _float8, in float8, out float8, out int4) IS 'args: rastertable, rastercolumn, nband=1, exclude_nodata_value=true, searchvalues=NULL, roundto=0, OUT value, OUT count - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';

-- DROP FUNCTION public.st_valuecount(raster, int4, float8, float8);

CREATE OR REPLACE FUNCTION public.st_valuecount(rast raster, nband integer, searchvalue double precision, roundto double precision DEFAULT 0)
 RETURNS integer
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT ( public._ST_valuecount($1, $2, TRUE, ARRAY[$3]::double precision[], $4)).count $function$
;

COMMENT ON FUNCTION public.st_valuecount(raster, int4, float8, float8) IS 'args: rast, nband, searchvalue, roundto=0 - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';

-- DROP FUNCTION public.st_valuecount(raster, int4, bool, float8, float8);

CREATE OR REPLACE FUNCTION public.st_valuecount(rast raster, nband integer, exclude_nodata_value boolean, searchvalue double precision, roundto double precision DEFAULT 0)
 RETURNS integer
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT ( public._ST_valuecount($1, $2, $3, ARRAY[$4]::double precision[], $5)).count $function$
;

COMMENT ON FUNCTION public.st_valuecount(raster, int4, bool, float8, float8) IS 'args: rast, nband, exclude_nodata_value, searchvalue, roundto=0 - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';

-- DROP FUNCTION public.st_valuecount(raster, float8, float8);

CREATE OR REPLACE FUNCTION public.st_valuecount(rast raster, searchvalue double precision, roundto double precision DEFAULT 0)
 RETURNS integer
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT ( public._ST_valuecount($1, 1, TRUE, ARRAY[$2]::double precision[], $3)).count $function$
;

COMMENT ON FUNCTION public.st_valuecount(raster, float8, float8) IS 'args: rast, searchvalue, roundto=0 - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';

-- DROP FUNCTION public.st_valuecount(in raster, in _float8, in float8, out float8, out int4);

CREATE OR REPLACE FUNCTION public.st_valuecount(rast raster, searchvalues double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT count integer)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT value, count FROM public._ST_valuecount($1, 1, TRUE, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_valuecount(in raster, in _float8, in float8, out float8, out int4) IS 'args: rast, searchvalues, roundto=0, OUT value, OUT count - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';

-- DROP FUNCTION public.st_valuecount(in raster, in int4, in _float8, in float8, out float8, out int4);

CREATE OR REPLACE FUNCTION public.st_valuecount(rast raster, nband integer, searchvalues double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT count integer)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT value, count FROM public._ST_valuecount($1, $2, TRUE, $3, $4) $function$
;

COMMENT ON FUNCTION public.st_valuecount(in raster, in int4, in _float8, in float8, out float8, out int4) IS 'args: rast, nband, searchvalues, roundto=0, OUT value, OUT count - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';

-- DROP FUNCTION public.st_valuecount(in raster, in int4, in bool, in _float8, in float8, out float8, out int4);

CREATE OR REPLACE FUNCTION public.st_valuecount(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, searchvalues double precision[] DEFAULT NULL::double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT count integer)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT value, count FROM public._ST_valuecount($1, $2, $3, $4, $5) $function$
;

COMMENT ON FUNCTION public.st_valuecount(in raster, in int4, in bool, in _float8, in float8, out float8, out int4) IS 'args: rast, nband=1, exclude_nodata_value=true, searchvalues=NULL, roundto=0, OUT value, OUT count - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';

-- DROP FUNCTION public.st_valuecount(text, text, float8, float8);

CREATE OR REPLACE FUNCTION public.st_valuecount(rastertable text, rastercolumn text, searchvalue double precision, roundto double precision DEFAULT 0)
 RETURNS integer
 LANGUAGE sql
 STABLE STRICT
AS $function$ SELECT ( public._ST_valuecount($1, $2, 1, TRUE, ARRAY[$3]::double precision[], $4)).count $function$
;

COMMENT ON FUNCTION public.st_valuecount(text, text, float8, float8) IS 'args: rastertable, rastercolumn, searchvalue, roundto=0 - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';

-- DROP FUNCTION public.st_valuecount(text, text, int4, float8, float8);

CREATE OR REPLACE FUNCTION public.st_valuecount(rastertable text, rastercolumn text, nband integer, searchvalue double precision, roundto double precision DEFAULT 0)
 RETURNS integer
 LANGUAGE sql
 STABLE STRICT
AS $function$ SELECT ( public._ST_valuecount($1, $2, $3, TRUE, ARRAY[$4]::double precision[], $5)).count $function$
;

COMMENT ON FUNCTION public.st_valuecount(text, text, int4, float8, float8) IS 'args: rastertable, rastercolumn, nband, searchvalue, roundto=0 - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';

-- DROP FUNCTION public.st_valuecount(text, text, int4, bool, float8, float8);

CREATE OR REPLACE FUNCTION public.st_valuecount(rastertable text, rastercolumn text, nband integer, exclude_nodata_value boolean, searchvalue double precision, roundto double precision DEFAULT 0)
 RETURNS integer
 LANGUAGE sql
 STABLE STRICT
AS $function$ SELECT ( public._ST_valuecount($1, $2, $3, $4, ARRAY[$5]::double precision[], $6)).count $function$
;

COMMENT ON FUNCTION public.st_valuecount(text, text, int4, bool, float8, float8) IS 'args: rastertable, rastercolumn, nband, exclude_nodata_value, searchvalue, roundto=0 - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';

-- DROP FUNCTION public.st_valuecount(in text, in text, in int4, in _float8, in float8, out float8, out int4);

CREATE OR REPLACE FUNCTION public.st_valuecount(rastertable text, rastercolumn text, nband integer, searchvalues double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT count integer)
 RETURNS SETOF record
 LANGUAGE sql
 STABLE
AS $function$ SELECT value, count FROM public._ST_valuecount($1, $2, $3, TRUE, $4, $5) $function$
;

COMMENT ON FUNCTION public.st_valuecount(in text, in text, in int4, in _float8, in float8, out float8, out int4) IS 'args: rastertable, rastercolumn, nband, searchvalues, roundto=0, OUT value, OUT count - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';

-- DROP FUNCTION public.st_valuecount(in text, in text, in _float8, in float8, out float8, out int4);

CREATE OR REPLACE FUNCTION public.st_valuecount(rastertable text, rastercolumn text, searchvalues double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT count integer)
 RETURNS SETOF record
 LANGUAGE sql
 STABLE
AS $function$ SELECT value, count FROM public._ST_valuecount($1, $2, 1, TRUE, $3, $4) $function$
;

COMMENT ON FUNCTION public.st_valuecount(in text, in text, in _float8, in float8, out float8, out int4) IS 'args: rastertable, rastercolumn, searchvalues, roundto=0, OUT value, OUT count - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';

-- DROP FUNCTION public.st_valuepercent(text, text, int4, float8, float8);

CREATE OR REPLACE FUNCTION public.st_valuepercent(rastertable text, rastercolumn text, nband integer, searchvalue double precision, roundto double precision DEFAULT 0)
 RETURNS double precision
 LANGUAGE sql
 STABLE STRICT
AS $function$ SELECT ( public._ST_valuecount($1, $2, $3, TRUE, ARRAY[$4]::double precision[], $5)).percent $function$
;

-- DROP FUNCTION public.st_valuepercent(in raster, in int4, in bool, in _float8, in float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_valuepercent(rast raster, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, searchvalues double precision[] DEFAULT NULL::double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT value, percent FROM public._ST_valuecount($1, $2, $3, $4, $5) $function$
;

-- DROP FUNCTION public.st_valuepercent(raster, int4, float8, float8);

CREATE OR REPLACE FUNCTION public.st_valuepercent(rast raster, nband integer, searchvalue double precision, roundto double precision DEFAULT 0)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT ( public._ST_valuecount($1, $2, TRUE, ARRAY[$3]::double precision[], $4)).percent $function$
;

-- DROP FUNCTION public.st_valuepercent(text, text, int4, bool, float8, float8);

CREATE OR REPLACE FUNCTION public.st_valuepercent(rastertable text, rastercolumn text, nband integer, exclude_nodata_value boolean, searchvalue double precision, roundto double precision DEFAULT 0)
 RETURNS double precision
 LANGUAGE sql
 STABLE STRICT
AS $function$ SELECT ( public._ST_valuecount($1, $2, $3, $4, ARRAY[$5]::double precision[], $6)).percent $function$
;

-- DROP FUNCTION public.st_valuepercent(raster, float8, float8);

CREATE OR REPLACE FUNCTION public.st_valuepercent(rast raster, searchvalue double precision, roundto double precision DEFAULT 0)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT ( public._ST_valuecount($1, 1, TRUE, ARRAY[$2]::double precision[], $3)).percent $function$
;

-- DROP FUNCTION public.st_valuepercent(in text, in text, in int4, in bool, in _float8, in float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_valuepercent(rastertable text, rastercolumn text, nband integer DEFAULT 1, exclude_nodata_value boolean DEFAULT true, searchvalues double precision[] DEFAULT NULL::double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 STABLE
AS $function$ SELECT value, percent FROM public._ST_valuecount($1, $2, $3, $4, $5, $6) $function$
;

-- DROP FUNCTION public.st_valuepercent(in raster, in int4, in _float8, in float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_valuepercent(rast raster, nband integer, searchvalues double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT value, percent FROM public._ST_valuecount($1, $2, TRUE, $3, $4) $function$
;

-- DROP FUNCTION public.st_valuepercent(in text, in text, in _float8, in float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_valuepercent(rastertable text, rastercolumn text, searchvalues double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 STABLE
AS $function$ SELECT value, percent FROM public._ST_valuecount($1, $2, 1, TRUE, $3, $4) $function$
;

-- DROP FUNCTION public.st_valuepercent(raster, int4, bool, float8, float8);

CREATE OR REPLACE FUNCTION public.st_valuepercent(rast raster, nband integer, exclude_nodata_value boolean, searchvalue double precision, roundto double precision DEFAULT 0)
 RETURNS double precision
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT ( public._ST_valuecount($1, $2, $3, ARRAY[$4]::double precision[], $5)).percent $function$
;

-- DROP FUNCTION public.st_valuepercent(in text, in text, in int4, in _float8, in float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_valuepercent(rastertable text, rastercolumn text, nband integer, searchvalues double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 STABLE
AS $function$ SELECT value, percent FROM public._ST_valuecount($1, $2, $3, TRUE, $4, $5) $function$
;

-- DROP FUNCTION public.st_valuepercent(in raster, in _float8, in float8, out float8, out float8);

CREATE OR REPLACE FUNCTION public.st_valuepercent(rast raster, searchvalues double precision[], roundto double precision DEFAULT 0, OUT value double precision, OUT percent double precision)
 RETURNS SETOF record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT value, percent FROM public._ST_valuecount($1, 1, TRUE, $2, $3) $function$
;

-- DROP FUNCTION public.st_valuepercent(text, text, float8, float8);

CREATE OR REPLACE FUNCTION public.st_valuepercent(rastertable text, rastercolumn text, searchvalue double precision, roundto double precision DEFAULT 0)
 RETURNS double precision
 LANGUAGE sql
 STABLE STRICT
AS $function$ SELECT ( public._ST_valuecount($1, $2, 1, TRUE, ARRAY[$3]::double precision[], $4)).percent $function$
;

-- DROP FUNCTION public.st_voronoilines(geometry, float8, geometry);

CREATE OR REPLACE FUNCTION public.st_voronoilines(g1 geometry, tolerance double precision DEFAULT 0.0, extend_to geometry DEFAULT NULL::geometry)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_Voronoi(g1, extend_to, tolerance, false) $function$
;

COMMENT ON FUNCTION public.st_voronoilines(geometry, float8, geometry) IS 'args: g1, tolerance, extend_to - Returns the boundaries of the Voronoi diagram of the vertices of a geometry.';

-- DROP FUNCTION public.st_voronoipolygons(geometry, float8, geometry);

CREATE OR REPLACE FUNCTION public.st_voronoipolygons(g1 geometry, tolerance double precision DEFAULT 0.0, extend_to geometry DEFAULT NULL::geometry)
 RETURNS geometry
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$ SELECT public._ST_Voronoi(g1, extend_to, tolerance, true) $function$
;

COMMENT ON FUNCTION public.st_voronoipolygons(geometry, float8, geometry) IS 'args: g1, tolerance, extend_to - Returns the cells of the Voronoi diagram of the vertices of a geometry.';

-- DROP FUNCTION public.st_width(raster);

CREATE OR REPLACE FUNCTION public.st_width(raster)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis_raster-3', $function$RASTER_getWidth$function$
;

COMMENT ON FUNCTION public.st_width(raster) IS 'args: rast - Returns the width of the raster in pixels.';

-- DROP FUNCTION public.st_within(raster, raster);

CREATE OR REPLACE FUNCTION public.st_within(rast1 raster, rast2 raster)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT public.st_within($1, NULL::integer, $2, NULL::integer) $function$
;

COMMENT ON FUNCTION public.st_within(raster, raster) IS 'args: rastA, rastB - Return true if no points of raster rastA lie in the exterior of raster rastB and at least one point of the interior of rastA lies in the interior of rastB.';

-- DROP FUNCTION public.st_within(geometry, geometry);

CREATE OR REPLACE FUNCTION public.st_within(geom1 geometry, geom2 geometry)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 10000 SUPPORT postgis_index_supportfn
AS '$libdir/postgis-3', $function$within$function$
;

-- DROP FUNCTION public.st_within(raster, int4, raster, int4);

CREATE OR REPLACE FUNCTION public.st_within(rast1 raster, nband1 integer, rast2 raster, nband2 integer)
 RETURNS boolean
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE COST 1000
AS $function$ SELECT $1 OPERATOR(public.&&) $3 AND CASE WHEN $2 IS NULL OR $4 IS NULL THEN public._st_within(public.st_convexhull($1), public.st_convexhull($3)) ELSE public._st_contains($3, $4, $1, $2) END $function$
;

COMMENT ON FUNCTION public.st_within(raster, int4, raster, int4) IS 'args: rastA, nbandA, rastB, nbandB - Return true if no points of raster rastA lie in the exterior of raster rastB and at least one point of the interior of rastA lies in the interior of rastB.';

-- DROP FUNCTION public.st_wkbtosql(bytea);

CREATE OR REPLACE FUNCTION public.st_wkbtosql(wkb bytea)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_from_WKB$function$
;

-- DROP FUNCTION public.st_wkttosql(text);

CREATE OR REPLACE FUNCTION public.st_wkttosql(text)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 500
AS '$libdir/postgis-3', $function$LWGEOM_from_text$function$
;

-- DROP FUNCTION public.st_worldtorastercoord(in raster, in float8, in float8, out int4, out int4);

CREATE OR REPLACE FUNCTION public.st_worldtorastercoord(rast raster, longitude double precision, latitude double precision, OUT columnx integer, OUT rowy integer)
 RETURNS record
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT columnx, rowy FROM public._ST_worldtorastercoord($1, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_worldtorastercoord(in raster, in float8, in float8, out int4, out int4) IS 'args: rast, longitude, latitude - Returns the upper left corner as column and row given geometric X and Y (longitude and latitude) or a point geometry expressed in the spatial reference coordinate system of the raster.';

-- DROP FUNCTION public.st_worldtorastercoord(in raster, in geometry, out int4, out int4);

CREATE OR REPLACE FUNCTION public.st_worldtorastercoord(rast raster, pt geometry, OUT columnx integer, OUT rowy integer)
 RETURNS record
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		rx integer;
		ry integer;
	BEGIN
		IF public.ST_geometrytype(pt) != 'ST_Point' THEN
			RAISE EXCEPTION 'Attempting to compute raster coordinate with a non-point geometry';
		END IF;
		IF public.ST_SRID(rast) != public.ST_SRID(pt) THEN
			RAISE EXCEPTION 'Raster and geometry do not have the same SRID';
		END IF;

		SELECT rc.columnx AS x, rc.rowy AS y INTO columnx, rowy FROM public._ST_worldtorastercoord($1, public.ST_x(pt), public.ST_y(pt)) AS rc;
		RETURN;
	END;
	$function$
;

COMMENT ON FUNCTION public.st_worldtorastercoord(in raster, in geometry, out int4, out int4) IS 'args: rast, pt - Returns the upper left corner as column and row given geometric X and Y (longitude and latitude) or a point geometry expressed in the spatial reference coordinate system of the raster.';

-- DROP FUNCTION public.st_worldtorastercoordx(raster, geometry);

CREATE OR REPLACE FUNCTION public.st_worldtorastercoordx(rast raster, pt geometry)
 RETURNS integer
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		xr integer;
	BEGIN
		IF ( public.ST_geometrytype(pt) != 'ST_Point' ) THEN
			RAISE EXCEPTION 'Attempting to compute raster coordinate with a non-point geometry';
		END IF;
		IF public.ST_SRID(rast) != public.ST_SRID(pt) THEN
			RAISE EXCEPTION 'Raster and geometry do not have the same SRID';
		END IF;
		SELECT columnx INTO xr FROM public._ST_worldtorastercoord($1, public.ST_x(pt), public.ST_y(pt));
		RETURN xr;
	END;
	$function$
;

COMMENT ON FUNCTION public.st_worldtorastercoordx(raster, geometry) IS 'args: rast, pt - Returns the column in the raster of the point geometry (pt) or a X and Y world coordinate (xw, yw) represented in world spatial reference system of raster.';

-- DROP FUNCTION public.st_worldtorastercoordx(raster, float8);

CREATE OR REPLACE FUNCTION public.st_worldtorastercoordx(rast raster, xw double precision)
 RETURNS integer
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT columnx FROM public._ST_worldtorastercoord($1, $2, NULL) $function$
;

COMMENT ON FUNCTION public.st_worldtorastercoordx(raster, float8) IS 'args: rast, xw - Returns the column in the raster of the point geometry (pt) or a X and Y world coordinate (xw, yw) represented in world spatial reference system of raster.';

-- DROP FUNCTION public.st_worldtorastercoordx(raster, float8, float8);

CREATE OR REPLACE FUNCTION public.st_worldtorastercoordx(rast raster, xw double precision, yw double precision)
 RETURNS integer
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT columnx FROM public._ST_worldtorastercoord($1, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_worldtorastercoordx(raster, float8, float8) IS 'args: rast, xw, yw - Returns the column in the raster of the point geometry (pt) or a X and Y world coordinate (xw, yw) represented in world spatial reference system of raster.';

-- DROP FUNCTION public.st_worldtorastercoordy(raster, float8);

CREATE OR REPLACE FUNCTION public.st_worldtorastercoordy(rast raster, yw double precision)
 RETURNS integer
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT rowy FROM public._ST_worldtorastercoord($1, NULL, $2) $function$
;

COMMENT ON FUNCTION public.st_worldtorastercoordy(raster, float8) IS 'args: rast, xw - Returns the row in the raster of the point geometry (pt) or a X and Y world coordinate (xw, yw) represented in world spatial reference system of raster.';

-- DROP FUNCTION public.st_worldtorastercoordy(raster, float8, float8);

CREATE OR REPLACE FUNCTION public.st_worldtorastercoordy(rast raster, xw double precision, yw double precision)
 RETURNS integer
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$ SELECT rowy FROM public._ST_worldtorastercoord($1, $2, $3) $function$
;

COMMENT ON FUNCTION public.st_worldtorastercoordy(raster, float8, float8) IS 'args: rast, xw, yw - Returns the row in the raster of the point geometry (pt) or a X and Y world coordinate (xw, yw) represented in world spatial reference system of raster.';

-- DROP FUNCTION public.st_worldtorastercoordy(raster, geometry);

CREATE OR REPLACE FUNCTION public.st_worldtorastercoordy(rast raster, pt geometry)
 RETURNS integer
 LANGUAGE plpgsql
 IMMUTABLE PARALLEL SAFE STRICT
AS $function$
	DECLARE
		yr integer;
	BEGIN
		IF ( st_geometrytype(pt) != 'ST_Point' ) THEN
			RAISE EXCEPTION 'Attempting to compute raster coordinate with a non-point geometry';
		END IF;
		IF ST_SRID(rast) != ST_SRID(pt) THEN
			RAISE EXCEPTION 'Raster and geometry do not have the same SRID';
		END IF;
		SELECT rowy INTO yr FROM public._ST_worldtorastercoord($1, st_x(pt), st_y(pt));
		RETURN yr;
	END;
	$function$
;

COMMENT ON FUNCTION public.st_worldtorastercoordy(raster, geometry) IS 'args: rast, pt - Returns the row in the raster of the point geometry (pt) or a X and Y world coordinate (xw, yw) represented in world spatial reference system of raster.';

-- DROP FUNCTION public.st_wrapx(geometry, float8, float8);

CREATE OR REPLACE FUNCTION public.st_wrapx(geom geometry, wrap double precision, move double precision)
 RETURNS geometry
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$ST_WrapX$function$
;

COMMENT ON FUNCTION public.st_wrapx(geometry, float8, float8) IS 'args: geom, wrap, move - Wrap a geometry around an X value.';

-- DROP FUNCTION public.st_x(geometry);

CREATE OR REPLACE FUNCTION public.st_x(geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_x_point$function$
;

COMMENT ON FUNCTION public.st_x(geometry) IS 'args: a_point - Returns the X coordinate of a Point.';

-- DROP FUNCTION public.st_xmax(box3d);

CREATE OR REPLACE FUNCTION public.st_xmax(box3d)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$BOX3D_xmax$function$
;

COMMENT ON FUNCTION public.st_xmax(box3d) IS 'args: aGeomorBox2DorBox3D - Returns the X maxima of a 2D or 3D bounding box or a geometry.';

-- DROP FUNCTION public.st_xmin(box3d);

CREATE OR REPLACE FUNCTION public.st_xmin(box3d)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$BOX3D_xmin$function$
;

COMMENT ON FUNCTION public.st_xmin(box3d) IS 'args: aGeomorBox2DorBox3D - Returns the X minima of a 2D or 3D bounding box or a geometry.';

-- DROP FUNCTION public.st_y(geometry);

CREATE OR REPLACE FUNCTION public.st_y(geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_y_point$function$
;

COMMENT ON FUNCTION public.st_y(geometry) IS 'args: a_point - Returns the Y coordinate of a Point.';

-- DROP FUNCTION public.st_ymax(box3d);

CREATE OR REPLACE FUNCTION public.st_ymax(box3d)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$BOX3D_ymax$function$
;

COMMENT ON FUNCTION public.st_ymax(box3d) IS 'args: aGeomorBox2DorBox3D - Returns the Y maxima of a 2D or 3D bounding box or a geometry.';

-- DROP FUNCTION public.st_ymin(box3d);

CREATE OR REPLACE FUNCTION public.st_ymin(box3d)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$BOX3D_ymin$function$
;

COMMENT ON FUNCTION public.st_ymin(box3d) IS 'args: aGeomorBox2DorBox3D - Returns the Y minima of a 2D or 3D bounding box or a geometry.';

-- DROP FUNCTION public.st_z(geometry);

CREATE OR REPLACE FUNCTION public.st_z(geometry)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_z_point$function$
;

COMMENT ON FUNCTION public.st_z(geometry) IS 'args: a_point - Returns the Z coordinate of a Point.';

-- DROP FUNCTION public.st_zmax(box3d);

CREATE OR REPLACE FUNCTION public.st_zmax(box3d)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$BOX3D_zmax$function$
;

COMMENT ON FUNCTION public.st_zmax(box3d) IS 'args: aGeomorBox2DorBox3D - Returns the Z maxima of a 2D or 3D bounding box or a geometry.';

-- DROP FUNCTION public.st_zmflag(geometry);

CREATE OR REPLACE FUNCTION public.st_zmflag(geometry)
 RETURNS smallint
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$LWGEOM_zmflag$function$
;

COMMENT ON FUNCTION public.st_zmflag(geometry) IS 'args: geomA - Returns a code indicating the ZM coordinate dimension of a geometry.';

-- DROP FUNCTION public.st_zmin(box3d);

CREATE OR REPLACE FUNCTION public.st_zmin(box3d)
 RETURNS double precision
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/postgis-3', $function$BOX3D_zmin$function$
;

COMMENT ON FUNCTION public.st_zmin(box3d) IS 'args: aGeomorBox2DorBox3D - Returns the Z minima of a 2D or 3D bounding box or a geometry.';

-- DROP FUNCTION public.standardize_address(text, text, text, text);

CREATE OR REPLACE FUNCTION public.standardize_address(lextab text, gaztab text, rultab text, address text)
 RETURNS stdaddr
 LANGUAGE c
 IMMUTABLE STRICT COST 200
AS '$libdir/address_standardizer-3', $function$standardize_address1$function$
;

-- DROP FUNCTION public.standardize_address(text, text, text, text, text);

CREATE OR REPLACE FUNCTION public.standardize_address(lextab text, gaztab text, rultab text, micro text, macro text)
 RETURNS stdaddr
 LANGUAGE c
 IMMUTABLE STRICT COST 200
AS '$libdir/address_standardizer-3', $function$standardize_address$function$
;

-- DROP FUNCTION public.strict_word_similarity(text, text);

CREATE OR REPLACE FUNCTION public.strict_word_similarity(text, text)
 RETURNS real
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$strict_word_similarity$function$
;

-- DROP FUNCTION public.strict_word_similarity_commutator_op(text, text);

CREATE OR REPLACE FUNCTION public.strict_word_similarity_commutator_op(text, text)
 RETURNS boolean
 LANGUAGE c
 STABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$strict_word_similarity_commutator_op$function$
;

-- DROP FUNCTION public.strict_word_similarity_dist_commutator_op(text, text);

CREATE OR REPLACE FUNCTION public.strict_word_similarity_dist_commutator_op(text, text)
 RETURNS real
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$strict_word_similarity_dist_commutator_op$function$
;

-- DROP FUNCTION public.strict_word_similarity_dist_op(text, text);

CREATE OR REPLACE FUNCTION public.strict_word_similarity_dist_op(text, text)
 RETURNS real
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$strict_word_similarity_dist_op$function$
;

-- DROP FUNCTION public.strict_word_similarity_op(text, text);

CREATE OR REPLACE FUNCTION public.strict_word_similarity_op(text, text)
 RETURNS boolean
 LANGUAGE c
 STABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$strict_word_similarity_op$function$
;

-- DROP FUNCTION public."text"(geometry);

CREATE OR REPLACE FUNCTION public.text(geometry)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT COST 50
AS '$libdir/postgis-3', $function$LWGEOM_to_text$function$
;

-- DROP FUNCTION public.text_soundex(text);

CREATE OR REPLACE FUNCTION public.text_soundex(text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/fuzzystrmatch', $function$soundex$function$
;

-- DROP FUNCTION public.time_dist(time, time);

CREATE OR REPLACE FUNCTION public.time_dist(time without time zone, time without time zone)
 RETURNS interval
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$time_dist$function$
;

-- DROP FUNCTION public.ts_dist(timestamp, timestamp);

CREATE OR REPLACE FUNCTION public.ts_dist(timestamp without time zone, timestamp without time zone)
 RETURNS interval
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$ts_dist$function$
;

-- DROP FUNCTION public.tstz_dist(timestamptz, timestamptz);

CREATE OR REPLACE FUNCTION public.tstz_dist(timestamp with time zone, timestamp with time zone)
 RETURNS interval
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/btree_gist', $function$tstz_dist$function$
;

-- DROP FUNCTION public.unlockrows(text);

CREATE OR REPLACE FUNCTION public.unlockrows(text)
 RETURNS integer
 LANGUAGE plpgsql
 STRICT
AS $function$
DECLARE
	ret int;
BEGIN

	IF NOT LongTransactionsEnabled() THEN
		RAISE EXCEPTION 'Long transaction support disabled, use EnableLongTransaction() to enable.';
	END IF;

	EXECUTE 'DELETE FROM authorization_table where authid = ' ||
		quote_literal($1);

	GET DIAGNOSTICS ret = ROW_COUNT;

	RETURN ret;
END;
$function$
;

COMMENT ON FUNCTION public.unlockrows(text) IS 'args: auth_token - Removes all locks held by an authorization token.';

-- DROP FUNCTION public.updategeometrysrid(varchar, varchar, int4);

CREATE OR REPLACE FUNCTION public.updategeometrysrid(character varying, character varying, integer)
 RETURNS text
 LANGUAGE plpgsql
 STRICT
AS $function$
DECLARE
	ret  text;
BEGIN
	SELECT public.UpdateGeometrySRID('','',$1,$2,$3) into ret;
	RETURN ret;
END;
$function$
;

COMMENT ON FUNCTION public.updategeometrysrid(varchar, varchar, int4) IS 'args: table_name, column_name, srid - Updates the SRID of all features in a geometry column, and the table metadata.';

-- DROP FUNCTION public.updategeometrysrid(varchar, varchar, varchar, varchar, int4);

CREATE OR REPLACE FUNCTION public.updategeometrysrid(catalogn_name character varying, schema_name character varying, table_name character varying, column_name character varying, new_srid_in integer)
 RETURNS text
 LANGUAGE plpgsql
 STRICT
AS $function$
DECLARE
	myrec RECORD;
	okay boolean;
	cname varchar;
	real_schema name;
	unknown_srid integer;
	new_srid integer := new_srid_in;

BEGIN

	-- Find, check or fix schema_name
	IF ( schema_name != '' ) THEN
		okay = false;

		FOR myrec IN SELECT nspname FROM pg_namespace WHERE text(nspname) = schema_name LOOP
			okay := true;
		END LOOP;

		IF ( okay <> true ) THEN
			RAISE EXCEPTION 'Invalid schema name';
		ELSE
			real_schema = schema_name;
		END IF;
	ELSE
		SELECT INTO real_schema current_schema()::text;
	END IF;

	-- Ensure that column_name is in geometry_columns
	okay = false;
	FOR myrec IN SELECT type, coord_dimension FROM public.geometry_columns WHERE f_table_schema = text(real_schema) and f_table_name = table_name and f_geometry_column = column_name LOOP
		okay := true;
	END LOOP;
	IF (NOT okay) THEN
		RAISE EXCEPTION 'column not found in geometry_columns table';
		RETURN false;
	END IF;

	-- Ensure that new_srid is valid
	IF ( new_srid > 0 ) THEN
		IF ( SELECT count(*) = 0 from spatial_ref_sys where srid = new_srid ) THEN
			RAISE EXCEPTION 'invalid SRID: % not found in spatial_ref_sys', new_srid;
			RETURN false;
		END IF;
	ELSE
		unknown_srid := public.ST_SRID('POINT EMPTY'::public.geometry);
		IF ( new_srid != unknown_srid ) THEN
			new_srid := unknown_srid;
			RAISE NOTICE 'SRID value % converted to the officially unknown SRID value %', new_srid_in, new_srid;
		END IF;
	END IF;

	IF postgis_constraint_srid(real_schema, table_name, column_name) IS NOT NULL THEN
	-- srid was enforced with constraints before, keep it that way.
        -- Make up constraint name
        cname = 'enforce_srid_'  || column_name;

        -- Drop enforce_srid constraint
        EXECUTE 'ALTER TABLE ' || quote_ident(real_schema) ||
            '.' || quote_ident(table_name) ||
            ' DROP constraint ' || quote_ident(cname);

        -- Update geometries SRID
        EXECUTE 'UPDATE ' || quote_ident(real_schema) ||
            '.' || quote_ident(table_name) ||
            ' SET ' || quote_ident(column_name) ||
            ' = public.ST_SetSRID(' || quote_ident(column_name) ||
            ', ' || new_srid::text || ')';

        -- Reset enforce_srid constraint
        EXECUTE 'ALTER TABLE ' || quote_ident(real_schema) ||
            '.' || quote_ident(table_name) ||
            ' ADD constraint ' || quote_ident(cname) ||
            ' CHECK (st_srid(' || quote_ident(column_name) ||
            ') = ' || new_srid::text || ')';
    ELSE
        -- We will use typmod to enforce if no srid constraints
        -- We are using postgis_type_name to lookup the new name
        -- (in case Paul changes his mind and flips geometry_columns to return old upper case name)
        EXECUTE 'ALTER TABLE ' || quote_ident(real_schema) || '.' || quote_ident(table_name) ||
        ' ALTER COLUMN ' || quote_ident(column_name) || ' TYPE  geometry(' || public.postgis_type_name(myrec.type, myrec.coord_dimension, true) || ', ' || new_srid::text || ') USING public.ST_SetSRID(' || quote_ident(column_name) || ',' || new_srid::text || ');' ;
    END IF;

	RETURN real_schema || '.' || table_name || '.' || column_name ||' SRID changed to ' || new_srid::text;

END;
$function$
;

COMMENT ON FUNCTION public.updategeometrysrid(varchar, varchar, varchar, varchar, int4) IS 'args: catalog_name, schema_name, table_name, column_name, srid - Updates the SRID of all features in a geometry column, and the table metadata.';

-- DROP FUNCTION public.updategeometrysrid(varchar, varchar, varchar, int4);

CREATE OR REPLACE FUNCTION public.updategeometrysrid(character varying, character varying, character varying, integer)
 RETURNS text
 LANGUAGE plpgsql
 STRICT
AS $function$
DECLARE
	ret  text;
BEGIN
	SELECT public.UpdateGeometrySRID('',$1,$2,$3,$4) into ret;
	RETURN ret;
END;
$function$
;

COMMENT ON FUNCTION public.updategeometrysrid(varchar, varchar, varchar, int4) IS 'args: schema_name, table_name, column_name, srid - Updates the SRID of all features in a geometry column, and the table metadata.';

-- DROP FUNCTION public.updaterastersrid(name, name, int4);

CREATE OR REPLACE FUNCTION public.updaterastersrid(table_name name, column_name name, new_srid integer)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public._UpdateRasterSRID('', $1, $2, $3) $function$
;

COMMENT ON FUNCTION public.updaterastersrid(name, name, int4) IS 'args: table_name, column_name, new_srid - Change the SRID of all rasters in the user-specified column and table.';

-- DROP FUNCTION public.updaterastersrid(name, name, name, int4);

CREATE OR REPLACE FUNCTION public.updaterastersrid(schema_name name, table_name name, column_name name, new_srid integer)
 RETURNS boolean
 LANGUAGE sql
 STRICT
AS $function$ SELECT  public._UpdateRasterSRID($1, $2, $3, $4) $function$
;

COMMENT ON FUNCTION public.updaterastersrid(name, name, name, int4) IS 'args: schema_name, table_name, column_name, new_srid - Change the SRID of all rasters in the user-specified column and table.';

-- DROP FUNCTION public.uuid_generate_v1();

CREATE OR REPLACE FUNCTION public.uuid_generate_v1()
 RETURNS uuid
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/uuid-ossp', $function$uuid_generate_v1$function$
;

-- DROP FUNCTION public.uuid_generate_v1mc();

CREATE OR REPLACE FUNCTION public.uuid_generate_v1mc()
 RETURNS uuid
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/uuid-ossp', $function$uuid_generate_v1mc$function$
;

-- DROP FUNCTION public.uuid_generate_v3(uuid, text);

CREATE OR REPLACE FUNCTION public.uuid_generate_v3(namespace uuid, name text)
 RETURNS uuid
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/uuid-ossp', $function$uuid_generate_v3$function$
;

-- DROP FUNCTION public.uuid_generate_v4();

CREATE OR REPLACE FUNCTION public.uuid_generate_v4()
 RETURNS uuid
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/uuid-ossp', $function$uuid_generate_v4$function$
;

-- DROP FUNCTION public.uuid_generate_v5(uuid, text);

CREATE OR REPLACE FUNCTION public.uuid_generate_v5(namespace uuid, name text)
 RETURNS uuid
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/uuid-ossp', $function$uuid_generate_v5$function$
;

-- DROP FUNCTION public.uuid_nil();

CREATE OR REPLACE FUNCTION public.uuid_nil()
 RETURNS uuid
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/uuid-ossp', $function$uuid_nil$function$
;

-- DROP FUNCTION public.uuid_ns_dns();

CREATE OR REPLACE FUNCTION public.uuid_ns_dns()
 RETURNS uuid
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/uuid-ossp', $function$uuid_ns_dns$function$
;

-- DROP FUNCTION public.uuid_ns_oid();

CREATE OR REPLACE FUNCTION public.uuid_ns_oid()
 RETURNS uuid
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/uuid-ossp', $function$uuid_ns_oid$function$
;

-- DROP FUNCTION public.uuid_ns_url();

CREATE OR REPLACE FUNCTION public.uuid_ns_url()
 RETURNS uuid
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/uuid-ossp', $function$uuid_ns_url$function$
;

-- DROP FUNCTION public.uuid_ns_x500();

CREATE OR REPLACE FUNCTION public.uuid_ns_x500()
 RETURNS uuid
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/uuid-ossp', $function$uuid_ns_x500$function$
;

-- DROP FUNCTION public.word_similarity(text, text);

CREATE OR REPLACE FUNCTION public.word_similarity(text, text)
 RETURNS real
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$word_similarity$function$
;

-- DROP FUNCTION public.word_similarity_commutator_op(text, text);

CREATE OR REPLACE FUNCTION public.word_similarity_commutator_op(text, text)
 RETURNS boolean
 LANGUAGE c
 STABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$word_similarity_commutator_op$function$
;

-- DROP FUNCTION public.word_similarity_dist_commutator_op(text, text);

CREATE OR REPLACE FUNCTION public.word_similarity_dist_commutator_op(text, text)
 RETURNS real
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$word_similarity_dist_commutator_op$function$
;

-- DROP FUNCTION public.word_similarity_dist_op(text, text);

CREATE OR REPLACE FUNCTION public.word_similarity_dist_op(text, text)
 RETURNS real
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$word_similarity_dist_op$function$
;

-- DROP FUNCTION public.word_similarity_op(text, text);

CREATE OR REPLACE FUNCTION public.word_similarity_op(text, text)
 RETURNS boolean
 LANGUAGE c
 STABLE PARALLEL SAFE STRICT
AS '$libdir/pg_trgm', $function$word_similarity_op$function$
;
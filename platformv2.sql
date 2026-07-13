-- DROP SCHEMA platformv2;

CREATE SCHEMA platformv2 AUTHORIZATION leakmited;

-- DROP TYPE platformv2."dma_job_run_status_status_enum";

CREATE TYPE platformv2."dma_job_run_status_status_enum" AS ENUM (
	'REGISTERED',
	'INITIATED',
	'IN_PROGRESS',
	'COMPLETED',
	'ERROR',
	'PARTIAL');

-- DROP TYPE platformv2."leak_nature";

CREATE TYPE platformv2."leak_nature" AS ENUM (
	'air_valve',
	'burst_main',
	'connection',
	'customer_side_leaks',
	'fire_hydrant',
	'others');

-- DROP TYPE platformv2."leak_severity";

CREATE TYPE platformv2."leak_severity" AS ENUM (
	'high',
	'low',
	'medium');

-- DROP TYPE platformv2."leak_source";

CREATE TYPE platformv2."leak_source" AS ENUM (
	'client-onboarding',
	'leakmited-apps',
	'sprint',
	'work_field',
	'intervention');

-- DROP TYPE platformv2."leak_status";

CREATE TYPE platformv2."leak_status" AS ENUM (
	'deleted',
	'dry_hole',
	'found',
	'repaired',
	'suspicious',
	'to_move',
	'validated');

-- DROP TYPE platformv2."leakmited_probability_index";

CREATE TYPE platformv2."leakmited_probability_index" AS ENUM (
	'1',
	'2',
	'3');

-- DROP TYPE platformv2."operations_dma_data_override_type";

CREATE TYPE platformv2."operations_dma_data_override_type" AS ENUM (
	'night_flow',
	'daily_volume');

-- DROP TYPE platformv2."operations_dma_metric_type";

CREATE TYPE platformv2."operations_dma_metric_type" AS ENUM (
	'inlet',
	'outlet');

-- DROP TYPE platformv2."operations_intervention_association_type";

CREATE TYPE platformv2."operations_intervention_association_type" AS ENUM (
	'leak',
	'sector');

-- DROP TYPE platformv2."operations_scenario_state_enum";

CREATE TYPE platformv2."operations_scenario_state_enum" AS ENUM (
	'READY',
	'COMPUTING',
	'COMPUTED',
	'ERROR');

-- DROP TYPE platformv2."topkapiCatalogSyncJobRunStatusEnum";

CREATE TYPE platformv2."topkapiCatalogSyncJobRunStatusEnum" AS ENUM (
	'REGISTERED',
	'INITIATED',
	'IN_PROGRESS',
	'COMPLETED',
	'ERROR');

-- DROP TYPE platformv2."topkapiCatalogSyncJobRunTrigger";

CREATE TYPE platformv2."topkapiCatalogSyncJobRunTrigger" AS ENUM (
	'MANUAL',
	'SCHEDULED');

-- DROP TYPE platformv2."topkapiCatalogSyncJobRunType";

CREATE TYPE platformv2."topkapiCatalogSyncJobRunType" AS ENUM (
	'SITES',
	'METRICS');

-- DROP TYPE platformv2."topkapiMetricIngestionJobRunTrigger";

CREATE TYPE platformv2."topkapiMetricIngestionJobRunTrigger" AS ENUM (
	'DATA_GAP_BACKFILL',
	'NEW_METRIC_ATTACHED',
	'SCHEDULED',
	'MANUAL');

-- DROP TYPE platformv2."topkapi_critical_operator_token_status";

CREATE TYPE platformv2."topkapi_critical_operator_token_status" AS ENUM (
	'VALID',
	'ROTATING_OUT',
	'ROTATED_OUT');

-- DROP TYPE platformv2."topkapi_flow_direction";

CREATE TYPE platformv2."topkapi_flow_direction" AS ENUM (
	'direct',
	'indirect');

-- DROP TYPE platformv2."use_type";

CREATE TYPE platformv2."use_type" AS ENUM (
	'BRC',
	'TRC');

-- DROP SEQUENCE platformv2.aep_accessory_id_seq;

CREATE SEQUENCE platformv2.aep_accessory_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.aep_common_seq;

CREATE SEQUENCE platformv2.aep_common_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.annual_water_balance_id_seq;

CREATE SEQUENCE platformv2.annual_water_balance_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.chantier_site_id_seq;

CREATE SEQUENCE platformv2.chantier_site_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.district_metered_area_data_override_id_seq;

CREATE SEQUENCE platformv2.district_metered_area_data_override_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.district_metered_area_metric_id_seq;

CREATE SEQUENCE platformv2.district_metered_area_metric_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.district_metered_area_vanne_id_seq;

CREATE SEQUENCE platformv2.district_metered_area_vanne_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.leak_asset_id_seq;

CREATE SEQUENCE platformv2.leak_asset_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.leak_event_log_id_seq;

CREATE SEQUENCE platformv2.leak_event_log_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.leak_initial_state_id_seq;

CREATE SEQUENCE platformv2.leak_initial_state_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.leak_sector_campaign_id_seq;

CREATE SEQUENCE platformv2.leak_sector_campaign_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.listening_zone_id_seq;

CREATE SEQUENCE platformv2.listening_zone_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.network_arc_id_seq;

CREATE SEQUENCE platformv2.network_arc_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.network_common_id_seq;

CREATE SEQUENCE platformv2.network_common_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.network_dma_accessory_id_seq;

CREATE SEQUENCE platformv2.network_dma_accessory_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.network_dma_arc_id_seq;

CREATE SEQUENCE platformv2.network_dma_arc_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.network_dma_id_seq;

CREATE SEQUENCE platformv2.network_dma_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.network_dma_listening_zone_id_seq;

CREATE SEQUENCE platformv2.network_dma_listening_zone_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.network_elt_environment_id_seq;

CREATE SEQUENCE platformv2.network_elt_environment_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.network_id_seq;

CREATE SEQUENCE platformv2.network_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.network_locality_id_seq;

CREATE SEQUENCE platformv2.network_locality_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.network_sector_arc_id_seq;

CREATE SEQUENCE platformv2.network_sector_arc_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.network_sector_id_seq;

CREATE SEQUENCE platformv2.network_sector_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.operations_dma_arc_id_seq;

CREATE SEQUENCE platformv2.operations_dma_arc_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.operations_dma_config_id_seq;

CREATE SEQUENCE platformv2.operations_dma_config_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.operations_dma_id_seq;

CREATE SEQUENCE platformv2.operations_dma_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.operations_intervention_output_id_seq;

CREATE SEQUENCE platformv2.operations_intervention_output_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.operations_scenario_id_seq;

CREATE SEQUENCE platformv2.operations_scenario_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.platformv2_migration_table_id_seq;

CREATE SEQUENCE platformv2.platformv2_migration_table_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.qgis_access_tokens_id_seq;

CREATE SEQUENCE platformv2.qgis_access_tokens_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.topkapi_catalog_sync_job_run_id_seq;

CREATE SEQUENCE platformv2.topkapi_catalog_sync_job_run_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.topkapi_catalog_sync_job_run_status_id_seq;

CREATE SEQUENCE platformv2.topkapi_catalog_sync_job_run_status_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.topkapi_config_id_seq;

CREATE SEQUENCE platformv2.topkapi_config_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.topkapi_credentials_id_seq;

CREATE SEQUENCE platformv2.topkapi_credentials_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.topkapi_device_id_seq;

CREATE SEQUENCE platformv2.topkapi_device_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.topkapi_metric_data_id_seq;

CREATE SEQUENCE platformv2.topkapi_metric_data_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.topkapi_metric_id_seq;

CREATE SEQUENCE platformv2.topkapi_metric_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.topkapi_metric_ingestion_job_run_id_seq;

CREATE SEQUENCE platformv2.topkapi_metric_ingestion_job_run_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE platformv2.topkapi_metric_ingestion_job_run_status_id_seq;

CREATE SEQUENCE platformv2.topkapi_metric_ingestion_job_run_status_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;-- platformv2.network_common definition

-- Drop table

-- DROP TABLE platformv2.network_common;

CREATE TABLE platformv2.network_common (
	id bigserial NOT NULL,
	"location" varchar NULL,
	postal_code int4 NULL,
	road varchar NULL,
	installation_year_end int4 NULL,
	installation_year_start int4 NULL,
	created_by varchar NULL,
	created_date timestamptz NULL,
	last_modified_by varchar NULL,
	last_modified_date timestamptz NULL,
	CONSTRAINT network_common_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_network_common_road ON platformv2.network_common USING btree (road) WHERE (road IS NOT NULL);
CREATE INDEX idx_network_common_road_trgm ON platformv2.network_common USING gin (road gin_trgm_ops);


-- platformv2.network_dma definition

-- Drop table

-- DROP TABLE platformv2.network_dma;

CREATE TABLE platformv2.network_dma (
	id bigserial NOT NULL,
	organization_id int8 NOT NULL,
	"name" varchar NOT NULL,
	center public.geography(point, 4326) NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	color_index int2 NULL,
	total_length numeric(18, 6) NULL,
	segments jsonb DEFAULT '[]'::jsonb NOT NULL,
	CONSTRAINT network_dma_color_index_check CHECK (((color_index >= 1) AND (color_index <= 8))),
	CONSTRAINT network_dma_pkey PRIMARY KEY (id),
	CONSTRAINT uq_network_dma_org_name UNIQUE (organization_id, name)
);
CREATE INDEX idx_network_dma_center_gist ON platformv2.network_dma USING gist (((center)::geometry));
CREATE INDEX idx_network_dma_organization_id ON platformv2.network_dma USING btree (organization_id);


-- platformv2.network_elt_environment definition

-- Drop table

-- DROP TABLE platformv2.network_elt_environment;

CREATE TABLE platformv2.network_elt_environment (
	id bigserial NOT NULL,
	buildings_type varchar NULL,
	"zone_type" varchar NULL,
	"road_type" varchar NULL,
	CONSTRAINT network_elt_environment_pkey PRIMARY KEY (id)
);


-- platformv2.operations_dma_data_refresh_run definition

-- Drop table

-- DROP TABLE platformv2.operations_dma_data_refresh_run;

CREATE TABLE platformv2.operations_dma_data_refresh_run (
	id uuid DEFAULT gen_random_uuid() NOT NULL,
	"trigger" text NOT NULL,
	started_at timestamptz DEFAULT now() NOT NULL,
	completed_at timestamptz NULL,
	"status" text DEFAULT 'IN_PROGRESS'::text NOT NULL,
	steps jsonb DEFAULT '[]'::jsonb NOT NULL,
	error_message text NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT operations_dma_data_refresh_run_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_operations_dma_data_refresh_run_started_at ON platformv2.operations_dma_data_refresh_run USING btree (started_at DESC);
CREATE UNIQUE INDEX uq_operations_dma_data_refresh_run_in_progress ON platformv2.operations_dma_data_refresh_run USING btree (status) WHERE (status = 'IN_PROGRESS'::text);


-- platformv2.platformv2_migration_table definition

-- Drop table

-- DROP TABLE platformv2.platformv2_migration_table;

CREATE TABLE platformv2.platformv2_migration_table (
	id serial4 NOT NULL,
	"timestamp" int8 NOT NULL,
	"name" varchar NOT NULL,
	CONSTRAINT "PK_f4fb1a3c408d6a6892a033c3ac1" PRIMARY KEY (id)
);


-- platformv2.qgis_access_tokens definition

-- Drop table

-- DROP TABLE platformv2.qgis_access_tokens;

CREATE TABLE platformv2.qgis_access_tokens (
	id serial4 NOT NULL,
	"token" text NOT NULL,
	user_id varchar(255) NOT NULL,
	organization_id varchar(255) NOT NULL,
	endpoint varchar(100) NOT NULL,
	payload jsonb NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	expires_at timestamptz NOT NULL,
	revoked_at timestamptz NULL,
	last_used_at timestamptz NULL,
	CONSTRAINT qgis_access_tokens_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_qgis_access_tokens_expires_at ON platformv2.qgis_access_tokens USING btree (expires_at);
CREATE INDEX idx_qgis_access_tokens_organization_id ON platformv2.qgis_access_tokens USING btree (organization_id);
CREATE INDEX idx_qgis_access_tokens_token ON platformv2.qgis_access_tokens USING btree (token);
CREATE INDEX idx_qgis_access_tokens_user_id ON platformv2.qgis_access_tokens USING btree (user_id);


-- platformv2.topkapi_metric_ingestion_job_run definition

-- Drop table

-- DROP TABLE platformv2.topkapi_metric_ingestion_job_run;

CREATE TABLE platformv2.topkapi_metric_ingestion_job_run (
	id bigserial NOT NULL,
	databricks_job_run_id int8 NULL,
	"trigger" platformv2."topkapiMetricIngestionJobRunTrigger" NOT NULL,
	tags _text DEFAULT '{}'::text[] NOT NULL,
	time_start timestamptz NULL,
	time_end timestamptz NULL,
	organization_id int8 NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	"data" jsonb NULL,
	batch_id uuid NOT NULL,
	CONSTRAINT "UQ_topkapi_metric_ingestion_job_run_databricks_job_run_id" UNIQUE (databricks_job_run_id),
	CONSTRAINT topkapi_metric_ingestion_job_run_pkey PRIMARY KEY (id)
);
CREATE INDEX "IDX_topkapi_metric_ingestion_job_run_tags" ON platformv2.topkapi_metric_ingestion_job_run USING gin (tags);
CREATE INDEX idx_topkapi_metric_ingestion_job_run_batch_id ON platformv2.topkapi_metric_ingestion_job_run USING btree (batch_id);


-- platformv2.topkapi_metric_ingestion_job_run_status definition

-- Drop table

-- DROP TABLE platformv2.topkapi_metric_ingestion_job_run_status;

CREATE TABLE platformv2.topkapi_metric_ingestion_job_run_status (
	id bigserial NOT NULL,
	job_run_id int8 NOT NULL,
	"status" platformv2."dma_job_run_status_status_enum" NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT topkapi_metric_ingestion_job_run_status_pkey PRIMARY KEY (id),
	CONSTRAINT "FK_dma_job_run_status_job_run" FOREIGN KEY (job_run_id) REFERENCES platformv2.topkapi_metric_ingestion_job_run(id) ON DELETE CASCADE
);


-- platformv2.aep_accessory definition

-- Drop table

-- DROP TABLE platformv2.aep_accessory;

CREATE TABLE platformv2.aep_accessory (
	id bigserial NOT NULL,
	source_accessory_id varchar NULL,
	"type" public."accessory_type" NOT NULL,
	"text" varchar NULL,
	network_common_id int8 NULL,
	organization_id int8 NOT NULL,
	location_geo public.geometry(point, 4326) NULL,
	extra_data jsonb NULL,
	vanne_open bool NULL,
	is_deleted bool NULL,
	user_vanne_open bool NULL,
	user_modified bool NULL,
	CONSTRAINT aep_accessory_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_aep_accessory_location_geo ON platformv2.aep_accessory USING gist (location_geo);
CREATE INDEX idx_aep_accessory_organization_id ON platformv2.aep_accessory USING btree (organization_id);


-- platformv2.annual_water_balance definition

-- Drop table

-- DROP TABLE platformv2.annual_water_balance;

CREATE TABLE platformv2.annual_water_balance (
	id bigserial NOT NULL,
	organization_id int8 NOT NULL,
	network_id int8 NOT NULL,
	"year" int4 NOT NULL,
	v4 numeric(18, 2) NULL,
	v6 numeric(18, 2) NULL,
	created_by varchar NULL,
	created_date timestamptz DEFAULT now() NULL,
	last_modified_by varchar NULL,
	last_modified_date timestamptz DEFAULT now() NULL,
	CONSTRAINT annual_water_balance_organization_id_year_key UNIQUE (organization_id, year),
	CONSTRAINT annual_water_balance_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_annual_water_balance_organization_id ON platformv2.annual_water_balance USING btree (organization_id);
CREATE INDEX idx_annual_water_balance_year ON platformv2.annual_water_balance USING btree (year);


-- platformv2.chantier_site definition

-- Drop table

-- DROP TABLE platformv2.chantier_site;

CREATE TABLE platformv2.chantier_site (
	id bigserial NOT NULL,
	organization_id int8 NOT NULL,
	network_id int8 NOT NULL,
	"name" varchar NULL,
	"location" varchar NULL,
	simplified_leakmited_risk varchar(1) NULL,
	detailed_geometry public.geometry(multilinestring, 4326) NULL,
	simplified_geometry public.geometry(point, 4326) NULL,
	vanne_id varchar(255) NULL,
	arc_ids _varchar NULL,
	covered_length numeric(10, 2) NOT NULL,
	created_by varchar(255) NULL,
	created_date timestamptz DEFAULT now() NULL,
	last_modified_by varchar(255) NULL,
	last_modified_date timestamptz DEFAULT now() NULL,
	geometry_hash varchar(32) GENERATED ALWAYS AS (platformv2.geometry_hash(detailed_geometry)) STORED NULL,
	chantier_segments jsonb NULL,
	CONSTRAINT chantier_site_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_chantier_site_detailed_geometry ON platformv2.chantier_site USING gist (detailed_geometry);
CREATE INDEX idx_chantier_site_network_id ON platformv2.chantier_site USING btree (network_id);
CREATE UNIQUE INDEX idx_chantier_site_org_geometry_unique ON platformv2.chantier_site USING btree (organization_id, network_id, geometry_hash) WHERE (detailed_geometry IS NOT NULL);
CREATE INDEX idx_chantier_site_organization_id ON platformv2.chantier_site USING btree (organization_id);
CREATE INDEX idx_chantier_site_simplified_geometry ON platformv2.chantier_site USING gist (simplified_geometry);


-- platformv2.leak_asset definition

-- Drop table

-- DROP TABLE platformv2.leak_asset;

CREATE TABLE platformv2.leak_asset (
	id bigserial NOT NULL,
	leak_id int8 NOT NULL,
	"name" varchar(255) NOT NULL,
	"path" varchar(1024) NOT NULL,
	created_by varchar(255) NULL,
	created_at timestamptz DEFAULT now() NULL,
	updated_by varchar(255) NULL,
	updated_at timestamptz DEFAULT now() NULL,
	CONSTRAINT leak_asset_leak_id_name_key UNIQUE (leak_id, name),
	CONSTRAINT leak_asset_path_key UNIQUE (path),
	CONSTRAINT leak_asset_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_leak_asset_leak_id ON platformv2.leak_asset USING btree (leak_id);


-- platformv2.leak_event_log definition

-- Drop table

-- DROP TABLE platformv2.leak_event_log;

CREATE TABLE platformv2.leak_event_log (
	leak_id int8 NULL,
	occured_at timestamptz NULL,
	updated_leak_status platformv2."leak_status" NULL,
	user_id uuid NULL,
	extra_data jsonb NULL,
	id bigserial NOT NULL,
	nature platformv2."leak_nature" NULL,
	gravity platformv2."leak_severity" NULL,
	description text NULL,
	address text NULL,
	CONSTRAINT leak_event_log_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_leak_event_log_leak_id_occured_at_desc ON platformv2.leak_event_log USING btree (leak_id, occured_at DESC) INCLUDE (updated_leak_status, user_id);


-- platformv2.leak_initial_state definition

-- Drop table

-- DROP TABLE platformv2.leak_initial_state;

CREATE TABLE platformv2.leak_initial_state (
	id bigserial NOT NULL,
	organization_id int8 NULL,
	source_leak_id int8 NULL,
	dist_to_leaks numeric(38, 18) NULL,
	before_install int8 NULL,
	location_point public.geometry(point) NULL,
	created_at timestamptz NULL,
	ingested_at timestamptz NULL,
	origin_file_name varchar(1024) NULL,
	"leak_status" platformv2."leak_status" NULL,
	source_type platformv2."leak_source" NULL,
	extra_data jsonb NULL,
	user_id uuid NULL,
	CONSTRAINT leak_initial_state_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_leak_initial_state_created_at ON platformv2.leak_initial_state USING btree (created_at);
CREATE INDEX idx_leak_initial_state_location_point ON platformv2.leak_initial_state USING gist (location_point);
CREATE INDEX idx_leak_initial_state_location_point_srid ON platformv2.leak_initial_state USING gist (st_setsrid(location_point, 4326));
CREATE INDEX idx_leak_initial_state_organization_id ON platformv2.leak_initial_state USING btree (organization_id);
CREATE INDEX idx_leak_initial_state_recent_location ON platformv2.leak_initial_state USING gist (location_point) WHERE (created_at >= '2023-01-01 01:00:00+01'::timestamp with time zone);


-- platformv2.leak_sector_campaign definition

-- Drop table

-- DROP TABLE platformv2.leak_sector_campaign;

CREATE TABLE platformv2.leak_sector_campaign (
	id bigserial NOT NULL,
	leak_id int8 NOT NULL,
	sector_id int8 NOT NULL,
	sector_campaign_id int8 NOT NULL,
	CONSTRAINT leak_sector_campaign_leak_id_key UNIQUE (leak_id),
	CONSTRAINT leak_sector_campaign_pkey PRIMARY KEY (id)
);


-- platformv2.listening_zone definition

-- Drop table

-- DROP TABLE platformv2.listening_zone;

CREATE TABLE platformv2.listening_zone (
	id bigserial NOT NULL,
	network_id int8 NOT NULL,
	"leakmited_probability_index" platformv2."leakmited_probability_index" NULL,
	pressure_bar float8 NULL,
	detailed_geometry public.geometry(multilinestring, 4326) NULL,
	length_m float8 NULL,
	extra_data jsonb NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	last_updated_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT listening_zone_pkey PRIMARY KEY (id)
);


-- platformv2.network definition

-- Drop table

-- DROP TABLE platformv2.network;

CREATE TABLE platformv2.network (
	id bigserial NOT NULL,
	"version" int8 NULL,
	organization_id int8 NOT NULL,
	created_by varchar NULL,
	created_date timestamptz NULL,
	last_modified_by varchar NULL,
	last_modified_date timestamptz NULL,
	total_length numeric(18, 6) NOT NULL,
	total_length_trc numeric(18, 6) DEFAULT 1 NOT NULL,
	network_last_data_processing_date timestamptz NULL,
	leaks_last_data_processing_date timestamptz NULL,
	latest_leaks_date timestamptz NULL,
	CONSTRAINT chk_network_total_length CHECK ((total_length > (0)::numeric)),
	CONSTRAINT chk_network_total_length_trc CHECK ((total_length_trc > (0)::numeric)),
	CONSTRAINT network_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_network_organization_id ON platformv2.network USING btree (organization_id);


-- platformv2.network_arc definition

-- Drop table

-- DROP TABLE platformv2.network_arc;

CREATE TABLE platformv2.network_arc (
	id bigserial NOT NULL,
	arc_id int8 NOT NULL,
	origin_arc_id varchar NULL,
	network_id int8 NULL,
	geometry public.geometry(linestring, 4326) NULL,
	"use_type" platformv2."use_type" NULL,
	length numeric(18, 6) NULL,
	material varchar NULL,
	diameter int4 NULL,
	environment_id int8 NULL,
	network_common_id int8 NULL,
	CONSTRAINT network_arc_pkey PRIMARY KEY (id),
	CONSTRAINT uq_network_arc_network_id_arc_id UNIQUE (network_id, arc_id)
);
CREATE INDEX idx_network_arc_geometry ON platformv2.network_arc USING gist (geometry);
CREATE INDEX idx_network_arc_network_common_id ON platformv2.network_arc USING btree (network_common_id);
CREATE INDEX idx_network_arc_network_id ON platformv2.network_arc USING btree (network_id);
CREATE INDEX idx_network_arc_network_id_common_id ON platformv2.network_arc USING btree (network_id, network_common_id);
CREATE INDEX idx_network_arc_network_id_geometry ON platformv2.network_arc USING gist (network_id, geometry);
CREATE INDEX idx_network_arc_network_id_use_type ON platformv2.network_arc USING btree (network_id, use_type);


-- platformv2.network_dma_accessory definition

-- Drop table

-- DROP TABLE platformv2.network_dma_accessory;

CREATE TABLE platformv2.network_dma_accessory (
	id bigserial NOT NULL,
	network_dma_id int8 NOT NULL,
	aep_accessory_id int8 NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT network_dma_accessory_pkey PRIMARY KEY (id),
	CONSTRAINT uq_network_dma_accessory_dma_accessory UNIQUE (network_dma_id, aep_accessory_id)
);
CREATE INDEX idx_network_dma_accessory_aep_accessory_id ON platformv2.network_dma_accessory USING btree (aep_accessory_id);
CREATE INDEX idx_network_dma_accessory_network_dma_id ON platformv2.network_dma_accessory USING btree (network_dma_id);


-- platformv2.network_dma_arc definition

-- Drop table

-- DROP TABLE platformv2.network_dma_arc;

CREATE TABLE platformv2.network_dma_arc (
	id bigserial NOT NULL,
	network_dma_id int8 NOT NULL,
	network_arc_id int8 NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT network_dma_arc_pkey PRIMARY KEY (id),
	CONSTRAINT uq_network_dma_arc_dma_arc UNIQUE (network_dma_id, network_arc_id)
);
CREATE INDEX idx_network_dma_arc_network_arc_id ON platformv2.network_dma_arc USING btree (network_arc_id);
CREATE INDEX idx_network_dma_arc_network_dma_id ON platformv2.network_dma_arc USING btree (network_dma_id);


-- platformv2.network_dma_listening_zone definition

-- Drop table

-- DROP TABLE platformv2.network_dma_listening_zone;

CREATE TABLE platformv2.network_dma_listening_zone (
	id bigserial NOT NULL,
	network_dma_id int8 NOT NULL,
	listening_zone_id int8 NOT NULL,
	CONSTRAINT network_dma_listening_zone_pkey PRIMARY KEY (id),
	CONSTRAINT uq_network_dma_listening_zone_dma_zone UNIQUE (network_dma_id, listening_zone_id)
);
CREATE INDEX idx_network_dma_listening_zone_listening_zone_id ON platformv2.network_dma_listening_zone USING btree (listening_zone_id);
CREATE INDEX idx_network_dma_listening_zone_network_dma_id ON platformv2.network_dma_listening_zone USING btree (network_dma_id);


-- platformv2.network_locality definition

-- Drop table

-- DROP TABLE platformv2.network_locality;

CREATE TABLE platformv2.network_locality (
	id bigserial NOT NULL,
	network_id int8 NOT NULL,
	center public.geometry(point, 4326) NOT NULL,
	bounding_box public.geometry(polygon, 4326) NOT NULL,
	"name" varchar(255) NULL,
	postal_code int4 NULL,
	created_by varchar(255) NULL,
	created_date timestamptz DEFAULT now() NULL,
	last_modified_by varchar(255) NULL,
	last_modified_date timestamptz DEFAULT now() NULL,
	length numeric(18, 6) NOT NULL,
	length_trc numeric(18, 6) DEFAULT 0 NOT NULL,
	CONSTRAINT "UQ_network_locality_postal_code_name_network" UNIQUE (postal_code, name, network_id),
	CONSTRAINT chk_network_locality_length CHECK ((length >= (0)::numeric)),
	CONSTRAINT network_locality_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_network_locality_bounding_box ON platformv2.network_locality USING gist (bounding_box);
CREATE INDEX idx_network_locality_center ON platformv2.network_locality USING gist (center);
CREATE INDEX idx_network_locality_name_trgm ON platformv2.network_locality USING gin (name gin_trgm_ops);
CREATE INDEX idx_network_locality_network_id ON platformv2.network_locality USING btree (network_id);
CREATE INDEX idx_network_locality_network_id_name ON platformv2.network_locality USING btree (network_id, name) WHERE (name IS NOT NULL);
CREATE INDEX idx_network_locality_network_id_postal_code ON platformv2.network_locality USING btree (network_id, postal_code) WHERE (postal_code IS NOT NULL);


-- platformv2.network_sector definition

-- Drop table

-- DROP TABLE platformv2.network_sector;

CREATE TABLE platformv2.network_sector (
	id bigserial NOT NULL,
	source_sector_id int8 NULL,
	"name" varchar(255) NOT NULL,
	source_name varchar(255) NOT NULL,
	network_id int8 NOT NULL,
	network_common_id int8 NULL,
	CONSTRAINT network_sector_network_id_name_key UNIQUE (network_id, name),
	CONSTRAINT network_sector_pkey PRIMARY KEY (id)
);
CREATE INDEX network_sector_network_id_idx ON platformv2.network_sector USING btree (network_id);


-- platformv2.network_sector_arc definition

-- Drop table

-- DROP TABLE platformv2.network_sector_arc;

CREATE TABLE platformv2.network_sector_arc (
	id bigserial NOT NULL,
	network_sector_id int8 NOT NULL,
	network_arc_id int8 NOT NULL,
	CONSTRAINT network_sector_arc_pkey PRIMARY KEY (id),
	CONSTRAINT network_sector_arc_sector_arc_key UNIQUE (network_sector_id, network_arc_id)
);
CREATE INDEX network_sector_arc_arc_sector_idx ON platformv2.network_sector_arc USING btree (network_arc_id, network_sector_id);
CREATE INDEX network_sector_arc_sector_idx ON platformv2.network_sector_arc USING btree (network_sector_id);


-- platformv2.network_sector_stats definition

-- Drop table

-- DROP TABLE platformv2.network_sector_stats;

CREATE TABLE platformv2.network_sector_stats (
	sector_id int8 NOT NULL,
	network_id int8 NULL,
	total_length numeric(18, 6) DEFAULT 0 NOT NULL,
	total_length_trc numeric(18, 6) DEFAULT 0 NOT NULL,
	center public.geometry NULL,
	color_index int4 NOT NULL,
	CONSTRAINT network_sector_stats_color_index_check CHECK (((color_index >= 1) AND (color_index <= 8))),
	CONSTRAINT network_sector_stats_pkey PRIMARY KEY (sector_id)
);
CREATE INDEX idx_network_sector_stats_center_gist ON platformv2.network_sector_stats USING gist (center);
CREATE INDEX idx_network_sector_stats_network_id ON platformv2.network_sector_stats USING btree (network_id);


-- platformv2.operations_config definition

-- Drop table

-- DROP TABLE platformv2.operations_config;

CREATE TABLE platformv2.operations_config (
	id int8 DEFAULT nextval('platformv2.topkapi_config_id_seq'::regclass) NOT NULL,
	organization_id int8 NOT NULL,
	night_hours_start time NOT NULL,
	night_hours_end time NOT NULL,
	created_date timestamptz DEFAULT now() NULL,
	last_modified_date timestamptz DEFAULT now() NULL,
	scenario_default_decision_sheet jsonb NULL,
	timezone text DEFAULT 'Europe/Paris'::text NOT NULL,
	alert_window_hour time DEFAULT '08:00:00'::time without time zone NOT NULL,
	sync_times _time DEFAULT '{}'::time without time zone[] NOT NULL,
	topkapi_api_allow_access bool DEFAULT false NOT NULL,
	topkapi_api_sync_data_auto bool DEFAULT false NOT NULL,
	topkapi_api_allow_insecure_tls bool DEFAULT false NOT NULL,
	CONSTRAINT operations_config_organization_id_key UNIQUE (organization_id),
	CONSTRAINT topkapi_config_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_operations_config_organization_id ON platformv2.operations_config USING btree (organization_id);


-- platformv2.operations_dma definition

-- Drop table

-- DROP TABLE platformv2.operations_dma;

CREATE TABLE platformv2.operations_dma (
	id bigserial NOT NULL,
	organization_id int8 NOT NULL,
	"name" varchar NOT NULL,
	created_date timestamptz DEFAULT now() NULL,
	last_modified_date timestamptz DEFAULT now() NULL,
	network_dma_id int8 NOT NULL,
	CONSTRAINT district_metered_area_pkey PRIMARY KEY (id),
	CONSTRAINT uq_operations_dma_org_name UNIQUE (organization_id, name)
);
CREATE INDEX idx_operations_dma_network_dma_id ON platformv2.operations_dma USING btree (network_dma_id);
CREATE INDEX idx_operations_dma_organization_id ON platformv2.operations_dma USING btree (organization_id);


-- platformv2.operations_dma_arc definition

-- Drop table

-- DROP TABLE platformv2.operations_dma_arc;

CREATE TABLE platformv2.operations_dma_arc (
	id bigserial NOT NULL,
	operations_dma_id int8 NOT NULL,
	network_arc_id int8 NOT NULL,
	CONSTRAINT operations_dma_arc_pkey PRIMARY KEY (id),
	CONSTRAINT uq_operations_dma_arc_dma_arc UNIQUE (operations_dma_id, network_arc_id)
);
CREATE INDEX idx_operations_dma_arc_arc_dma ON platformv2.operations_dma_arc USING btree (network_arc_id, operations_dma_id);
CREATE INDEX idx_operations_dma_arc_dma ON platformv2.operations_dma_arc USING btree (operations_dma_id);


-- platformv2.operations_dma_config definition

-- Drop table

-- DROP TABLE platformv2.operations_dma_config;

CREATE TABLE platformv2.operations_dma_config (
	id bigserial NOT NULL,
	operations_dma_id int8 NOT NULL,
	night_flow_orange_threshold float8 NULL,
	night_flow_red_threshold float8 NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT district_metered_area_config_district_metered_area_id_key UNIQUE (operations_dma_id),
	CONSTRAINT district_metered_area_config_pkey PRIMARY KEY (id)
);


-- platformv2.operations_dma_data_override definition

-- Drop table

-- DROP TABLE platformv2.operations_dma_data_override;

CREATE TABLE platformv2.operations_dma_data_override (
	id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	operations_dma_id int8 NOT NULL,
	"date" date NOT NULL,
	data_type platformv2."operations_dma_data_override_type" NOT NULL,
	override_value float8 NULL,
	"comment" text NOT NULL,
	user_id uuid NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT district_metered_area_data_override_pkey PRIMARY KEY (id),
	CONSTRAINT uq_dma_data_override_dma_date_type UNIQUE (operations_dma_id, date, data_type)
);


-- platformv2.operations_dma_metric definition

-- Drop table

-- DROP TABLE platformv2.operations_dma_metric;

CREATE TABLE platformv2.operations_dma_metric (
	id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	operations_dma_id int8 NOT NULL,
	topkapi_metric_id int8 NOT NULL,
	"type" platformv2."operations_dma_metric_type" NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT district_metered_area_metric_pkey PRIMARY KEY (id),
	CONSTRAINT uq_dma_metric_dma_id_metric_id UNIQUE (operations_dma_id, topkapi_metric_id)
);
CREATE INDEX idx_operations_dma_metric_operations_dma_id ON platformv2.operations_dma_metric USING btree (operations_dma_id);
CREATE INDEX idx_operations_dma_metric_topkapi_metric_id ON platformv2.operations_dma_metric USING btree (topkapi_metric_id);


-- platformv2.operations_dma_vanne definition

-- Drop table

-- DROP TABLE platformv2.operations_dma_vanne;

CREATE TABLE platformv2.operations_dma_vanne (
	id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	operations_dma_id int8 NOT NULL,
	aep_accessory_id int8 NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT district_metered_area_vanne_pkey PRIMARY KEY (id),
	CONSTRAINT uq_dma_vanne_dma_accessory UNIQUE (operations_dma_id, aep_accessory_id)
);
CREATE INDEX idx_dma_vanne_accessory_id ON platformv2.operations_dma_vanne USING btree (aep_accessory_id);
CREATE INDEX idx_dma_vanne_dma_id ON platformv2.operations_dma_vanne USING btree (operations_dma_id);


-- platformv2.operations_intervention definition

-- Drop table

-- DROP TABLE platformv2.operations_intervention;

CREATE TABLE platformv2.operations_intervention (
	id uuid DEFAULT gen_random_uuid() NOT NULL,
	"name" varchar(255) NOT NULL,
	"data" jsonb DEFAULT '{}'::jsonb NOT NULL,
	organization_id int8 NOT NULL,
	created_by varchar(255) NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_at timestamptz DEFAULT now() NOT NULL,
	description text NULL,
	CONSTRAINT operations_intervention_pkey PRIMARY KEY (id),
	CONSTRAINT uq_operations_intervention_name_org UNIQUE (name, organization_id)
);
CREATE INDEX idx_operations_intervention_organization_id ON platformv2.operations_intervention USING btree (organization_id);


-- platformv2.operations_intervention_association definition

-- Drop table

-- DROP TABLE platformv2.operations_intervention_association;

CREATE TABLE platformv2.operations_intervention_association (
	id int8 DEFAULT nextval('platformv2.operations_intervention_output_id_seq'::regclass) NOT NULL,
	intervention_id uuid NOT NULL,
	association_type platformv2."operations_intervention_association_type" NOT NULL,
	association_ref_id text NOT NULL,
	created_by varchar(255) NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT operations_intervention_output_pkey PRIMARY KEY (id),
	CONSTRAINT uq_operations_intervention_association_ref UNIQUE (association_type, association_ref_id)
);
CREATE INDEX idx_operations_intervention_association_intervention_type ON platformv2.operations_intervention_association USING btree (intervention_id, association_type);


-- platformv2.operations_scenario definition

-- Drop table

-- DROP TABLE platformv2.operations_scenario;

CREATE TABLE platformv2.operations_scenario (
	id bigserial NOT NULL,
	"name" varchar(255) NOT NULL,
	description text DEFAULT ''::text NOT NULL,
	organization_id int8 NOT NULL,
	decision_sheet jsonb DEFAULT '{}'::jsonb NOT NULL,
	expert_score_distribution jsonb NULL,
	state platformv2."operations_scenario_state_enum" DEFAULT 'READY'::platformv2.operations_scenario_state_enum NOT NULL,
	created_by varchar(255) NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	last_modified_by varchar(255) NOT NULL,
	last_modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT operations_scenario_pkey PRIMARY KEY (id),
	CONSTRAINT uq_operations_scenario_name_org UNIQUE (name, organization_id)
);
CREATE INDEX idx_operations_scenario_organization_id ON platformv2.operations_scenario USING btree (organization_id);


-- platformv2.tile_cache_version definition

-- Drop table

-- DROP TABLE platformv2.tile_cache_version;

CREATE TABLE platformv2.tile_cache_version (
	builder_key text NOT NULL,
	network_id int8 NOT NULL,
	"version" int8 DEFAULT 1 NOT NULL,
	updated_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT tile_cache_version_pkey PRIMARY KEY (builder_key, network_id)
);
CREATE INDEX idx_tile_cache_version_updated ON platformv2.tile_cache_version USING btree (updated_at);


-- platformv2.topkapi_catalog_sync_job_run definition

-- Drop table

-- DROP TABLE platformv2.topkapi_catalog_sync_job_run;

CREATE TABLE platformv2.topkapi_catalog_sync_job_run (
	id bigserial NOT NULL,
	databricks_job_run_id int8 NULL,
	"trigger" platformv2."topkapiCatalogSyncJobRunTrigger" NOT NULL,
	organization_id int8 NULL,
	"data" jsonb NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	"type" platformv2."topkapiCatalogSyncJobRunType" NULL,
	CONSTRAINT topkapi_catalog_sync_job_run_databricks_job_run_id_key UNIQUE (databricks_job_run_id),
	CONSTRAINT topkapi_catalog_sync_job_run_pkey PRIMARY KEY (id)
);


-- platformv2.topkapi_catalog_sync_job_run_status definition

-- Drop table

-- DROP TABLE platformv2.topkapi_catalog_sync_job_run_status;

CREATE TABLE platformv2.topkapi_catalog_sync_job_run_status (
	id bigserial NOT NULL,
	job_run_id int8 NOT NULL,
	"status" platformv2."topkapiCatalogSyncJobRunStatusEnum" NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT topkapi_catalog_sync_job_run_status_pkey PRIMARY KEY (id)
);


-- platformv2.topkapi_credentials definition

-- Drop table

-- DROP TABLE platformv2.topkapi_credentials;

CREATE TABLE platformv2.topkapi_credentials (
	id bigserial NOT NULL,
	organization_id int8 NOT NULL,
	encrypted_endpoint bytea NOT NULL,
	encrypted_account bytea NOT NULL,
	encrypted_password bytea NOT NULL,
	created_date timestamptz DEFAULT now() NOT NULL,
	last_modified_date timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT topkapi_credentials_organization_id_key UNIQUE (organization_id),
	CONSTRAINT topkapi_credentials_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_topkapi_credentials_organization_id ON platformv2.topkapi_credentials USING btree (organization_id);


-- platformv2.topkapi_critical_operator_org_settings definition

-- Drop table

-- DROP TABLE platformv2.topkapi_critical_operator_org_settings;

CREATE TABLE platformv2.topkapi_critical_operator_org_settings (
	organization_id int8 NOT NULL,
	allowed_ips _inet DEFAULT '{}'::inet[] NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	updated_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT topkapi_critical_operator_org_settings_pkey PRIMARY KEY (organization_id)
);


-- platformv2.topkapi_critical_operator_request_log definition

-- Drop table

-- DROP TABLE platformv2.topkapi_critical_operator_request_log;

CREATE TABLE platformv2.topkapi_critical_operator_request_log (
	id uuid DEFAULT gen_random_uuid() NOT NULL,
	organization_id int8 NOT NULL,
	token_id uuid NOT NULL,
	endpoint text NOT NULL,
	source_ip inet NOT NULL,
	body text NOT NULL,
	received_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT topkapi_critical_operator_request_log_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_topkapi_critical_operator_request_log_org_received ON platformv2.topkapi_critical_operator_request_log USING btree (organization_id, received_at DESC, id DESC);
CREATE INDEX idx_topkapi_critical_operator_request_log_received_at ON platformv2.topkapi_critical_operator_request_log USING btree (received_at DESC, id DESC);


-- platformv2.topkapi_critical_operator_token definition

-- Drop table

-- DROP TABLE platformv2.topkapi_critical_operator_token;

CREATE TABLE platformv2.topkapi_critical_operator_token (
	id uuid DEFAULT gen_random_uuid() NOT NULL,
	organization_id int8 NOT NULL,
	"label" text NULL,
	token_sha256 bytea NOT NULL,
	token_prefix text NOT NULL,
	"status" platformv2."topkapi_critical_operator_token_status" DEFAULT 'VALID'::platformv2.topkapi_critical_operator_token_status NOT NULL,
	revoked_reason text NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	rotating_out_at timestamptz NULL,
	rotated_out_at timestamptz NULL,
	last_used_at timestamptz NULL,
	ttl_in_hours int4 NULL,
	expires_at timestamptz NULL,
	CONSTRAINT topkapi_critical_operator_token_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_topkapi_critical_operator_token_active_hash ON platformv2.topkapi_critical_operator_token USING btree (token_sha256) WHERE (status = ANY (ARRAY['VALID'::platformv2.topkapi_critical_operator_token_status, 'ROTATING_OUT'::platformv2.topkapi_critical_operator_token_status]));
CREATE UNIQUE INDEX idx_topkapi_critical_operator_token_one_rotating_out ON platformv2.topkapi_critical_operator_token USING btree (organization_id) WHERE (status = 'ROTATING_OUT'::platformv2.topkapi_critical_operator_token_status);
CREATE UNIQUE INDEX idx_topkapi_critical_operator_token_one_valid ON platformv2.topkapi_critical_operator_token USING btree (organization_id) WHERE (status = 'VALID'::platformv2.topkapi_critical_operator_token_status);


-- platformv2.topkapi_metric definition

-- Drop table

-- DROP TABLE platformv2.topkapi_metric;

CREATE TABLE platformv2.topkapi_metric (
	id bigserial NOT NULL,
	site_id int8 NULL,
	topkapi_refcell varchar NOT NULL,
	topkapi_tagname varchar NOT NULL,
	topkapi_label varchar NOT NULL,
	flow_direction platformv2."topkapi_flow_direction" NULL,
	"name" varchar NULL,
	created_date timestamptz DEFAULT now() NULL,
	last_modified_date timestamptz DEFAULT now() NULL,
	organization_id int8 NOT NULL,
	topkapi_api_code varchar NULL,
	aep_accessory_id int8 NULL,
	active bool DEFAULT false NOT NULL,
	CONSTRAINT "UQ_topkapi_metric_organizationId_topkapiTagName" UNIQUE (organization_id, topkapi_tagname),
	CONSTRAINT topkapi_metric_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_topkapi_metric_aep_accessory_id ON platformv2.topkapi_metric USING btree (aep_accessory_id);
CREATE INDEX idx_topkapi_metric_api_code ON platformv2.topkapi_metric USING btree (organization_id, topkapi_api_code) WHERE (site_id IS NULL);
CREATE INDEX idx_topkapi_metric_organization_id ON platformv2.topkapi_metric USING btree (organization_id);
CREATE INDEX idx_topkapi_metric_site_id ON platformv2.topkapi_metric USING btree (site_id);


-- platformv2.topkapi_metric_data definition

-- Drop table

-- DROP TABLE platformv2.topkapi_metric_data;

CREATE TABLE platformv2.topkapi_metric_data (
	id bigserial NOT NULL,
	organization_id int8 NOT NULL,
	network_id int8 NULL,
	topkapi_tagname varchar NOT NULL,
	sample_timestamp timestamptz NOT NULL,
	value float8 NOT NULL,
	CONSTRAINT topkapi_metric_data_pkey PRIMARY KEY (id),
	CONSTRAINT uq_topkapi_metric_data_org_tagname_timestamp UNIQUE (organization_id, topkapi_tagname, sample_timestamp)
);
CREATE INDEX idx_topkapi_metric_data_org_id ON platformv2.topkapi_metric_data USING btree (organization_id);
CREATE INDEX idx_topkapi_metric_data_sample_timestamp ON platformv2.topkapi_metric_data USING btree (sample_timestamp);
CREATE INDEX idx_topkapi_metric_data_tagname ON platformv2.topkapi_metric_data USING btree (topkapi_tagname);


-- platformv2.topkapi_site definition

-- Drop table

-- DROP TABLE platformv2.topkapi_site;

CREATE TABLE platformv2.topkapi_site (
	id int8 DEFAULT nextval('platformv2.topkapi_device_id_seq'::regclass) NOT NULL,
	organization_id int8 NOT NULL,
	topkapi_api_code varchar NOT NULL,
	topkapi_api_label varchar NOT NULL,
	created_date timestamptz DEFAULT now() NULL,
	last_modified_date timestamptz DEFAULT now() NULL,
	imported bool DEFAULT false NOT NULL,
	CONSTRAINT topkapi_device_pkey PRIMARY KEY (id),
	CONSTRAINT uq_topkapi_site_org_api_code UNIQUE (organization_id, topkapi_api_code)
);
CREATE INDEX idx_topkapi_site_organization_id ON platformv2.topkapi_site USING btree (organization_id);


-- platformv2.aep_accessory foreign keys

ALTER TABLE platformv2.aep_accessory ADD CONSTRAINT aep_network_common_fk FOREIGN KEY (network_common_id) REFERENCES platformv2.network_common(id);
ALTER TABLE platformv2.aep_accessory ADD CONSTRAINT aep_organization_fk FOREIGN KEY (organization_id) REFERENCES public.organization(id);


-- platformv2.annual_water_balance foreign keys

ALTER TABLE platformv2.annual_water_balance ADD CONSTRAINT annual_water_balance_network_id_fkey FOREIGN KEY (network_id) REFERENCES platformv2.network(id);
ALTER TABLE platformv2.annual_water_balance ADD CONSTRAINT annual_water_balance_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id);


-- platformv2.chantier_site foreign keys

ALTER TABLE platformv2.chantier_site ADD CONSTRAINT chantier_site_network_id_fkey FOREIGN KEY (network_id) REFERENCES platformv2.network(id);
ALTER TABLE platformv2.chantier_site ADD CONSTRAINT chantier_site_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id);


-- platformv2.leak_asset foreign keys

ALTER TABLE platformv2.leak_asset ADD CONSTRAINT leak_asset_leak_id_fkey FOREIGN KEY (leak_id) REFERENCES platformv2.leak_initial_state(id) ON DELETE CASCADE;


-- platformv2.leak_event_log foreign keys

ALTER TABLE platformv2.leak_event_log ADD CONSTRAINT leak_event_log_leak_id_fkey FOREIGN KEY (leak_id) REFERENCES platformv2.leak_initial_state(id);
ALTER TABLE platformv2.leak_event_log ADD CONSTRAINT leak_event_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);


-- platformv2.leak_initial_state foreign keys

ALTER TABLE platformv2.leak_initial_state ADD CONSTRAINT leak_initial_state_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);


-- platformv2.leak_sector_campaign foreign keys

ALTER TABLE platformv2.leak_sector_campaign ADD CONSTRAINT leak_sector_campaign_leak_id_fkey FOREIGN KEY (leak_id) REFERENCES platformv2.leak_initial_state(id);
ALTER TABLE platformv2.leak_sector_campaign ADD CONSTRAINT leak_sector_campaign_sector_campaign_id_fkey FOREIGN KEY (sector_campaign_id) REFERENCES public.sector_campaign(id);
ALTER TABLE platformv2.leak_sector_campaign ADD CONSTRAINT leak_sector_campaign_sector_id_fkey FOREIGN KEY (sector_id) REFERENCES public.sector(id);


-- platformv2.listening_zone foreign keys

ALTER TABLE platformv2.listening_zone ADD CONSTRAINT listening_zone_network_id_fkey FOREIGN KEY (network_id) REFERENCES platformv2.network(id);


-- platformv2.network foreign keys

ALTER TABLE platformv2.network ADD CONSTRAINT network_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id);


-- platformv2.network_arc foreign keys

ALTER TABLE platformv2.network_arc ADD CONSTRAINT network_arc_environment_id_fkey FOREIGN KEY (environment_id) REFERENCES platformv2.network_elt_environment(id);
ALTER TABLE platformv2.network_arc ADD CONSTRAINT network_arc_network_common_id_fkey FOREIGN KEY (network_common_id) REFERENCES platformv2.network_common(id);
ALTER TABLE platformv2.network_arc ADD CONSTRAINT network_arc_network_id_fkey FOREIGN KEY (network_id) REFERENCES platformv2.network(id);


-- platformv2.network_dma_accessory foreign keys

ALTER TABLE platformv2.network_dma_accessory ADD CONSTRAINT network_dma_accessory_aep_accessory_id_fkey FOREIGN KEY (aep_accessory_id) REFERENCES platformv2.aep_accessory(id) ON DELETE CASCADE;
ALTER TABLE platformv2.network_dma_accessory ADD CONSTRAINT network_dma_accessory_network_dma_id_fkey FOREIGN KEY (network_dma_id) REFERENCES platformv2.network_dma(id) ON DELETE CASCADE;


-- platformv2.network_dma_arc foreign keys

ALTER TABLE platformv2.network_dma_arc ADD CONSTRAINT network_dma_arc_network_arc_id_fkey FOREIGN KEY (network_arc_id) REFERENCES platformv2.network_arc(id) ON DELETE CASCADE;
ALTER TABLE platformv2.network_dma_arc ADD CONSTRAINT network_dma_arc_network_dma_id_fkey FOREIGN KEY (network_dma_id) REFERENCES platformv2.network_dma(id) ON DELETE CASCADE;


-- platformv2.network_dma_listening_zone foreign keys

ALTER TABLE platformv2.network_dma_listening_zone ADD CONSTRAINT network_dma_listening_zone_listening_zone_id_fkey FOREIGN KEY (listening_zone_id) REFERENCES platformv2.listening_zone(id) ON DELETE CASCADE;
ALTER TABLE platformv2.network_dma_listening_zone ADD CONSTRAINT network_dma_listening_zone_network_dma_id_fkey FOREIGN KEY (network_dma_id) REFERENCES platformv2.network_dma(id) ON DELETE CASCADE;


-- platformv2.network_locality foreign keys

ALTER TABLE platformv2.network_locality ADD CONSTRAINT fk_network_locality_network_id FOREIGN KEY (network_id) REFERENCES platformv2.network(id) ON DELETE CASCADE;


-- platformv2.network_sector foreign keys

ALTER TABLE platformv2.network_sector ADD CONSTRAINT network_sector_network_common_id_fkey FOREIGN KEY (network_common_id) REFERENCES platformv2.network_common(id) ON DELETE SET NULL;
ALTER TABLE platformv2.network_sector ADD CONSTRAINT network_sector_network_id_fkey FOREIGN KEY (network_id) REFERENCES platformv2.network(id) ON DELETE CASCADE;


-- platformv2.network_sector_arc foreign keys

ALTER TABLE platformv2.network_sector_arc ADD CONSTRAINT network_sector_arc_network_arc_id_fkey FOREIGN KEY (network_arc_id) REFERENCES platformv2.network_arc(id) ON DELETE CASCADE;
ALTER TABLE platformv2.network_sector_arc ADD CONSTRAINT network_sector_arc_network_sector_id_fkey FOREIGN KEY (network_sector_id) REFERENCES platformv2.network_sector(id) ON DELETE CASCADE;


-- platformv2.network_sector_stats foreign keys

ALTER TABLE platformv2.network_sector_stats ADD CONSTRAINT network_sector_stats_sector_id_fkey FOREIGN KEY (sector_id) REFERENCES platformv2.network_sector(id) ON DELETE CASCADE;


-- platformv2.operations_config foreign keys

ALTER TABLE platformv2.operations_config ADD CONSTRAINT operations_config_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id);


-- platformv2.operations_dma foreign keys

ALTER TABLE platformv2.operations_dma ADD CONSTRAINT district_metered_area_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id);
ALTER TABLE platformv2.operations_dma ADD CONSTRAINT fk_operations_dma_network_dma FOREIGN KEY (network_dma_id) REFERENCES platformv2.network_dma(id);


-- platformv2.operations_dma_arc foreign keys

ALTER TABLE platformv2.operations_dma_arc ADD CONSTRAINT operations_dma_arc_network_arc_id_fkey FOREIGN KEY (network_arc_id) REFERENCES platformv2.network_arc(id) ON DELETE CASCADE;
ALTER TABLE platformv2.operations_dma_arc ADD CONSTRAINT operations_dma_arc_operations_dma_id_fkey FOREIGN KEY (operations_dma_id) REFERENCES platformv2.operations_dma(id) ON DELETE CASCADE;


-- platformv2.operations_dma_config foreign keys

ALTER TABLE platformv2.operations_dma_config ADD CONSTRAINT district_metered_area_config_district_metered_area_id_fkey FOREIGN KEY (operations_dma_id) REFERENCES platformv2.operations_dma(id) ON DELETE CASCADE;


-- platformv2.operations_dma_data_override foreign keys

ALTER TABLE platformv2.operations_dma_data_override ADD CONSTRAINT district_metered_area_data_overri_district_metered_area_id_fkey FOREIGN KEY (operations_dma_id) REFERENCES platformv2.operations_dma(id) ON DELETE CASCADE;
ALTER TABLE platformv2.operations_dma_data_override ADD CONSTRAINT district_metered_area_data_override_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);


-- platformv2.operations_dma_metric foreign keys

ALTER TABLE platformv2.operations_dma_metric ADD CONSTRAINT district_metered_area_metric_district_metered_area_id_fkey FOREIGN KEY (operations_dma_id) REFERENCES platformv2.operations_dma(id) ON DELETE CASCADE;
ALTER TABLE platformv2.operations_dma_metric ADD CONSTRAINT district_metered_area_metric_topkapi_metric_id_fkey FOREIGN KEY (topkapi_metric_id) REFERENCES platformv2.topkapi_metric(id);


-- platformv2.operations_dma_vanne foreign keys

ALTER TABLE platformv2.operations_dma_vanne ADD CONSTRAINT district_metered_area_vanne_aep_accessory_id_fkey FOREIGN KEY (aep_accessory_id) REFERENCES platformv2.aep_accessory(id) ON DELETE CASCADE;
ALTER TABLE platformv2.operations_dma_vanne ADD CONSTRAINT district_metered_area_vanne_district_metered_area_id_fkey FOREIGN KEY (operations_dma_id) REFERENCES platformv2.operations_dma(id) ON DELETE CASCADE;


-- platformv2.operations_intervention foreign keys

ALTER TABLE platformv2.operations_intervention ADD CONSTRAINT operations_intervention_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;


-- platformv2.operations_intervention_association foreign keys

ALTER TABLE platformv2.operations_intervention_association ADD CONSTRAINT operations_intervention_output_intervention_id_fkey FOREIGN KEY (intervention_id) REFERENCES platformv2.operations_intervention(id) ON DELETE CASCADE;


-- platformv2.operations_scenario foreign keys

ALTER TABLE platformv2.operations_scenario ADD CONSTRAINT operations_scenario_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;


-- platformv2.tile_cache_version foreign keys

ALTER TABLE platformv2.tile_cache_version ADD CONSTRAINT tile_cache_version_network_id_fkey FOREIGN KEY (network_id) REFERENCES platformv2.network(id) ON DELETE CASCADE;


-- platformv2.topkapi_catalog_sync_job_run foreign keys

ALTER TABLE platformv2.topkapi_catalog_sync_job_run ADD CONSTRAINT topkapi_catalog_sync_job_run_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id);


-- platformv2.topkapi_catalog_sync_job_run_status foreign keys

ALTER TABLE platformv2.topkapi_catalog_sync_job_run_status ADD CONSTRAINT topkapi_catalog_sync_job_run_status_job_run_id_fkey FOREIGN KEY (job_run_id) REFERENCES platformv2.topkapi_catalog_sync_job_run(id);


-- platformv2.topkapi_credentials foreign keys

ALTER TABLE platformv2.topkapi_credentials ADD CONSTRAINT fk_topkapi_credentials_organization FOREIGN KEY (organization_id) REFERENCES public.organization(id);


-- platformv2.topkapi_critical_operator_org_settings foreign keys

ALTER TABLE platformv2.topkapi_critical_operator_org_settings ADD CONSTRAINT topkapi_critical_operator_org_settings_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;


-- platformv2.topkapi_critical_operator_request_log foreign keys

ALTER TABLE platformv2.topkapi_critical_operator_request_log ADD CONSTRAINT topkapi_critical_operator_request_log_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;
ALTER TABLE platformv2.topkapi_critical_operator_request_log ADD CONSTRAINT topkapi_critical_operator_request_log_token_id_fkey FOREIGN KEY (token_id) REFERENCES platformv2.topkapi_critical_operator_token(id) ON DELETE RESTRICT;


-- platformv2.topkapi_critical_operator_token foreign keys

ALTER TABLE platformv2.topkapi_critical_operator_token ADD CONSTRAINT topkapi_critical_operator_token_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON DELETE CASCADE;


-- platformv2.topkapi_metric foreign keys

ALTER TABLE platformv2.topkapi_metric ADD CONSTRAINT fk_topkapi_metric_aep_accessory FOREIGN KEY (aep_accessory_id) REFERENCES platformv2.aep_accessory(id);
ALTER TABLE platformv2.topkapi_metric ADD CONSTRAINT topkapi_metric_device_id_fkey FOREIGN KEY (site_id) REFERENCES platformv2.topkapi_site(id);
ALTER TABLE platformv2.topkapi_metric ADD CONSTRAINT topkapi_metric_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id);


-- platformv2.topkapi_metric_data foreign keys

ALTER TABLE platformv2.topkapi_metric_data ADD CONSTRAINT topkapi_metric_data_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id);


-- platformv2.topkapi_site foreign keys

ALTER TABLE platformv2.topkapi_site ADD CONSTRAINT topkapi_device_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id);


-- platformv2.aep_accessory_current_state source

CREATE OR REPLACE VIEW platformv2.aep_accessory_current_state
AS SELECT aa.id,
    aa.source_accessory_id,
    aa.type,
    COALESCE(aa.user_vanne_open, aa.vanne_open) AS vanne_open,
    aa.text,
    aa.network_common_id,
    aa.organization_id,
    aa.location_geo,
    na_closest.arc_id,
    na_closest.arc_network_id,
    aa.extra_data,
    aa.user_modified
   FROM platformv2.aep_accessory aa
     JOIN organization org ON org.id = aa.organization_id
     LEFT JOIN LATERAL ( SELECT na.id AS arc_id,
            na.network_id AS arc_network_id
           FROM platformv2.network_arc na
          WHERE org.network_id = na.network_id AND st_dwithin(aa.location_geo, na.geometry, 0.00016::double precision)
          ORDER BY (na.geometry <-> aa.location_geo)
         LIMIT 1) na_closest ON true
  WHERE aa.is_deleted IS NOT TRUE;


-- platformv2.aep_accessory_current_state_mv source

CREATE MATERIALIZED VIEW platformv2.aep_accessory_current_state_mv
TABLESPACE pg_default
AS SELECT aep_accessory_current_state.id,
    aep_accessory_current_state.source_accessory_id,
    aep_accessory_current_state.type,
    aep_accessory_current_state.vanne_open,
    aep_accessory_current_state.text,
    aep_accessory_current_state.network_common_id,
    aep_accessory_current_state.organization_id,
    aep_accessory_current_state.location_geo,
    aep_accessory_current_state.arc_id,
    aep_accessory_current_state.arc_network_id,
    aep_accessory_current_state.extra_data,
    aep_accessory_current_state.user_modified
   FROM platformv2.aep_accessory_current_state
WITH DATA;

-- View indexes:
CREATE INDEX idx_aep_accessory_current_state_mv_arc_id ON platformv2.aep_accessory_current_state_mv USING btree (arc_id);
CREATE INDEX idx_aep_accessory_current_state_mv_arc_network_id ON platformv2.aep_accessory_current_state_mv USING btree (arc_network_id);
CREATE UNIQUE INDEX idx_aep_accessory_current_state_mv_id ON platformv2.aep_accessory_current_state_mv USING btree (id);
CREATE INDEX idx_aep_accessory_current_state_mv_location_geo ON platformv2.aep_accessory_current_state_mv USING gist (location_geo);
CREATE INDEX idx_aep_accessory_current_state_mv_org_and_type ON platformv2.aep_accessory_current_state_mv USING btree (organization_id, type);
CREATE INDEX idx_aep_accessory_current_state_mv_organization_id ON platformv2.aep_accessory_current_state_mv USING btree (organization_id);
CREATE INDEX idx_aep_accessory_current_state_mv_type ON platformv2.aep_accessory_current_state_mv USING btree (type);


-- platformv2.leak_current_state source

CREATE OR REPLACE VIEW platformv2.leak_current_state
AS WITH ranked_events AS (
         SELECT in_st.id,
            in_st.organization_id,
            in_st.source_leak_id,
            in_st.dist_to_leaks,
            in_st.before_install,
            in_st.location_point,
            in_st.created_at,
            in_st.ingested_at,
            in_st.origin_file_name,
            in_st.leak_status,
            in_st.source_type,
            in_st.extra_data,
            in_st.user_id,
            el.id AS event_id,
            el.occured_at,
            el.updated_leak_status,
            el.user_id AS event_user_id,
            el.extra_data AS event_extra_data,
            el.nature AS event_nature,
            el.gravity AS event_gravity,
            el.description AS event_description,
            el.address AS event_address,
            row_number() OVER (PARTITION BY in_st.id ORDER BY el.occured_at DESC) AS rn
           FROM platformv2.leak_initial_state in_st
             LEFT JOIN platformv2.leak_event_log el ON in_st.id = el.leak_id
          WHERE in_st.source_type <> 'leakmited-apps'::platformv2.leak_source
        ), status_history AS (
         SELECT el.leak_id,
            json_agg(json_build_object('status', el.updated_leak_status, 'date', el.occured_at, 'user_id', el.user_id) ORDER BY el.occured_at) AS status_history
           FROM platformv2.leak_event_log el
          WHERE el.updated_leak_status IS NOT NULL
          GROUP BY el.leak_id
        )
 SELECT rs.id,
    rs.organization_id,
    rs.source_leak_id,
    na_closest.arc_id,
    rs.dist_to_leaks,
    rs.before_install,
    rs.location_point,
    rs.origin_file_name,
    rs.source_type,
    rs.created_at,
    COALESCE(rs.occured_at, rs.created_at) AS last_modified_at,
    rs.event_user_id AS last_modified_by,
    COALESCE(rs.updated_leak_status, rs.leak_status) AS current_status,
    rs.event_nature AS nature,
    rs.event_gravity AS gravity,
    rs.event_description AS description,
    rs.event_address AS address,
    lsc.sector_id,
    lsc.sector_campaign_id,
        CASE
            WHEN rs.source_type = 'client-onboarding'::platformv2.leak_source THEN NULL::json
            ELSE COALESCE(sh.status_history, '[]'::json)
        END AS status_history
   FROM ranked_events rs
     LEFT JOIN status_history sh ON rs.id = sh.leak_id
     LEFT JOIN platformv2.leak_sector_campaign lsc ON rs.id = lsc.leak_id
     JOIN organization org ON org.id = rs.organization_id
     LEFT JOIN LATERAL ( SELECT na.arc_id
           FROM platformv2.network_arc na
          WHERE org.network_id = na.network_id AND st_dwithin(rs.location_point, na.geometry, 0.00016::double precision)
          ORDER BY (na.geometry <-> rs.location_point)
         LIMIT 1) na_closest ON true
  WHERE rs.rn = 1
  ORDER BY rs.id DESC;


-- platformv2.leak_current_state_mv source

CREATE MATERIALIZED VIEW platformv2.leak_current_state_mv
TABLESPACE pg_default
AS SELECT leak_current_state.id,
    leak_current_state.organization_id,
    leak_current_state.source_leak_id,
    leak_current_state.arc_id,
    leak_current_state.dist_to_leaks,
    leak_current_state.before_install,
    leak_current_state.location_point,
    leak_current_state.origin_file_name,
    leak_current_state.source_type,
    leak_current_state.created_at,
    leak_current_state.last_modified_at,
    leak_current_state.last_modified_by,
    leak_current_state.current_status,
    leak_current_state.nature,
    leak_current_state.gravity,
    leak_current_state.description,
    leak_current_state.address,
    leak_current_state.sector_id,
    leak_current_state.sector_campaign_id,
    leak_current_state.status_history
   FROM platformv2.leak_current_state
WITH DATA;

-- View indexes:
CREATE INDEX idx_leak_current_state_mv_arc_id ON platformv2.leak_current_state_mv USING btree (arc_id);
CREATE INDEX idx_leak_current_state_mv_created_at ON platformv2.leak_current_state_mv USING btree (created_at);
CREATE INDEX idx_leak_current_state_mv_current_status ON platformv2.leak_current_state_mv USING btree (current_status);
CREATE UNIQUE INDEX idx_leak_current_state_mv_id ON platformv2.leak_current_state_mv USING btree (id);
CREATE INDEX idx_leak_current_state_mv_location_point ON platformv2.leak_current_state_mv USING gist (location_point);
CREATE INDEX idx_leak_current_state_mv_organization_id ON platformv2.leak_current_state_mv USING btree (organization_id);


-- platformv2.metric_missing_yesterday source

CREATE OR REPLACE VIEW platformv2.metric_missing_yesterday
AS SELECT DISTINCT tm.id AS metric_id,
    tm.aep_accessory_id,
    tm.topkapi_tagname
   FROM platformv2.topkapi_metric tm
     LEFT JOIN platformv2.operations_config oc ON oc.organization_id = tm.organization_id
  WHERE tm.site_id IS NOT NULL AND NOT (EXISTS ( SELECT 1
           FROM platformv2.topkapi_metric_data md
          WHERE md.topkapi_tagname::text = tm.topkapi_tagname::text AND md.organization_id = tm.organization_id AND md.sample_timestamp >=
                CASE
                    WHEN now() >= (((now() AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text))::date + COALESCE(oc.alert_window_hour, '08:00:00'::time without time zone)) AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text)) THEN (((now() AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text))::date + COALESCE(oc.alert_window_hour, '08:00:00'::time without time zone)) AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text)) - '1 day'::interval
                    ELSE (((now() AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text))::date + COALESCE(oc.alert_window_hour, '08:00:00'::time without time zone)) AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text)) - '2 days'::interval
                END AND md.sample_timestamp <
                CASE
                    WHEN now() >= (((now() AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text))::date + COALESCE(oc.alert_window_hour, '08:00:00'::time without time zone)) AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text)) THEN (((now() AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text))::date + COALESCE(oc.alert_window_hour, '08:00:00'::time without time zone)) AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text))
                    ELSE (((now() AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text))::date + COALESCE(oc.alert_window_hour, '08:00:00'::time without time zone)) AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text)) - '1 day'::interval
                END));


-- platformv2.operations_dma_daily source

CREATE MATERIALIZED VIEW platformv2.operations_dma_daily
TABLESPACE pg_default
AS WITH days AS (
         SELECT generate_series((CURRENT_TIMESTAMP AT TIME ZONE 'UTC'::text)::date - '89 days'::interval, (CURRENT_TIMESTAMP AT TIME ZONE 'UTC'::text)::date::timestamp without time zone, '1 day'::interval)::date AS day
        ), fully_configured_dma AS (
         SELECT dam.operations_dma_id AS dma_id
           FROM platformv2.operations_dma_metric dam
             JOIN platformv2.topkapi_metric tm ON tm.id = dam.topkapi_metric_id
          WHERE dam.type = ANY (ARRAY['inlet'::platformv2.operations_dma_metric_type, 'outlet'::platformv2.operations_dma_metric_type])
          GROUP BY dam.operations_dma_id
         HAVING bool_and(tm.active)
        ), partially_configured_dma AS (
         SELECT dam.operations_dma_id AS dma_id
           FROM platformv2.operations_dma_metric dam
             JOIN platformv2.topkapi_metric tm ON tm.id = dam.topkapi_metric_id
          WHERE dam.type = ANY (ARRAY['inlet'::platformv2.operations_dma_metric_type, 'outlet'::platformv2.operations_dma_metric_type])
          GROUP BY dam.operations_dma_id
         HAVING NOT bool_and(tm.active)
        ), dma_metric_count AS (
         SELECT dam.operations_dma_id AS dma_id,
            count(*)::integer AS expected_metric_count
           FROM platformv2.operations_dma_metric dam
             JOIN platformv2.topkapi_metric tm ON tm.id = dam.topkapi_metric_id AND tm.active = true
          WHERE dam.type = ANY (ARRAY['inlet'::platformv2.operations_dma_metric_type, 'outlet'::platformv2.operations_dma_metric_type])
          GROUP BY dam.operations_dma_id
        ), hourly_net_flow AS (
         SELECT per_hour.dma_id,
            per_hour.hour,
            per_hour.net_flow
           FROM ( SELECT dam.operations_dma_id AS dma_id,
                    tmd.sample_timestamp AS hour,
                    sum(
                        CASE
                            WHEN dam.type = 'inlet'::platformv2.operations_dma_metric_type THEN tmd.flow_m3_h
                            ELSE - tmd.flow_m3_h
                        END) AS net_flow,
                    count(*)::integer AS observed_metric_count
                   FROM platformv2.operations_dma_metric dam
                     JOIN fully_configured_dma fc ON fc.dma_id = dam.operations_dma_id
                     JOIN platformv2.topkapi_metric tm ON tm.id = dam.topkapi_metric_id AND tm.active = true
                     JOIN platformv2.topkapi_metric_data_hourly tmd ON tmd.topkapi_metric_tagname::text = tm.topkapi_tagname::text AND tmd.organization_id = tm.organization_id
                  WHERE (dam.type = ANY (ARRAY['inlet'::platformv2.operations_dma_metric_type, 'outlet'::platformv2.operations_dma_metric_type])) AND tmd.sample_timestamp >= ((CURRENT_TIMESTAMP AT TIME ZONE 'UTC'::text)::date - '91 days'::interval) AND tmd.sample_timestamp < ((CURRENT_TIMESTAMP AT TIME ZONE 'UTC'::text)::date + '1 day'::interval)
                  GROUP BY dam.operations_dma_id, tmd.sample_timestamp) per_hour
             JOIN dma_metric_count dmc ON dmc.dma_id = per_hour.dma_id
          WHERE per_hour.observed_metric_count = dmc.expected_metric_count
        ), night_window_per_dma_day AS (
         SELECT d.id AS dma_id,
            days.day,
            (
                CASE
                    WHEN oc.night_hours_start <= oc.night_hours_end THEN days.day::timestamp without time zone + oc.night_hours_start::interval
                    ELSE days.day - '1 day'::interval + oc.night_hours_start::interval
                END AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text)) AS night_start,
            ((days.day::timestamp without time zone + oc.night_hours_end::interval) AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text)) AS night_end,
            (EXTRACT(epoch FROM ((days.day::timestamp without time zone + oc.night_hours_end::interval) AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text)) - (
                CASE
                    WHEN oc.night_hours_start <= oc.night_hours_end THEN days.day::timestamp without time zone + oc.night_hours_start::interval
                    ELSE days.day - '1 day'::interval + oc.night_hours_start::interval
                END AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text))) / 3600::numeric)::integer AS expected_hour_count
           FROM platformv2.operations_dma d
             CROSS JOIN days
             JOIN platformv2.operations_config oc ON oc.organization_id = d.organization_id
        ), night_flow_agg AS (
         SELECT nw.dma_id,
            nw.day,
                CASE
                    WHEN count(hnf.hour) = max(nw.expected_hour_count) THEN min(hnf.net_flow)
                    ELSE NULL::numeric
                END AS night_flow_min
           FROM night_window_per_dma_day nw
             LEFT JOIN hourly_net_flow hnf ON hnf.dma_id = nw.dma_id AND hnf.hour >= nw.night_start AND hnf.hour < nw.night_end
          GROUP BY nw.dma_id, nw.day
        ), daily_volume_per_dma AS (
         SELECT dam.operations_dma_id AS dma_id,
            tmdd.sample_date::date AS day,
            sum(
                CASE
                    WHEN dam.type = 'inlet'::platformv2.operations_dma_metric_type THEN tmdd.volume
                    ELSE - tmdd.volume
                END) AS daily_volume_m3
           FROM platformv2.operations_dma_metric dam
             JOIN fully_configured_dma fc ON fc.dma_id = dam.operations_dma_id
             JOIN platformv2.topkapi_metric tm ON tm.id = dam.topkapi_metric_id AND tm.active = true
             JOIN platformv2.topkapi_metric_data_daily tmdd ON tmdd.topkapi_metric_tagname::text = tm.topkapi_tagname::text AND tmdd.organization_id = tm.organization_id
          WHERE (dam.type = ANY (ARRAY['inlet'::platformv2.operations_dma_metric_type, 'outlet'::platformv2.operations_dma_metric_type])) AND tmdd.sample_date::date >= ((CURRENT_TIMESTAMP AT TIME ZONE 'UTC'::text)::date - '89 days'::interval)
          GROUP BY dam.operations_dma_id, (tmdd.sample_date::date)
        ), sync_per_dma_day AS (
         SELECT dam.operations_dma_id AS dma_id,
            (tmd.sample_timestamp AT TIME ZONE 'UTC'::text)::date AS day,
            max(tmd.sample_timestamp) AS last_sync_at
           FROM platformv2.operations_dma_metric dam
             JOIN platformv2.topkapi_metric tm ON tm.id = dam.topkapi_metric_id AND tm.active = true
             JOIN platformv2.topkapi_metric_data_hourly tmd ON tmd.topkapi_metric_tagname::text = tm.topkapi_tagname::text AND tmd.organization_id = tm.organization_id
          WHERE tmd.sample_timestamp >= ((CURRENT_TIMESTAMP AT TIME ZONE 'UTC'::text)::date - '89 days'::interval)
          GROUP BY dam.operations_dma_id, ((tmd.sample_timestamp AT TIME ZONE 'UTC'::text)::date)
        ), metric_data_days AS (
         SELECT DISTINCT tm.id AS metric_id,
            (tmd.sample_timestamp AT TIME ZONE 'UTC'::text)::date AS day
           FROM platformv2.topkapi_metric tm
             JOIN platformv2.topkapi_metric_data_hourly tmd ON tmd.topkapi_metric_tagname::text = tm.topkapi_tagname::text AND tmd.organization_id = tm.organization_id
          WHERE tm.active = true AND tmd.sample_timestamp >= ((CURRENT_TIMESTAMP AT TIME ZONE 'UTC'::text)::date - '89 days'::interval)
        ), expected_dma_metric_days AS (
         SELECT dam.operations_dma_id AS dma_id,
            dam.topkapi_metric_id AS metric_id,
            days.day
           FROM platformv2.operations_dma_metric dam
             JOIN fully_configured_dma fc ON fc.dma_id = dam.operations_dma_id
             JOIN platformv2.topkapi_metric tm ON tm.id = dam.topkapi_metric_id AND tm.active = true
             CROSS JOIN days
        ), data_gap_per_dma_day AS (
         SELECT em.dma_id,
            em.day,
            bool_or(mdd.day IS NULL) AS has_data_gap,
            count(*) FILTER (WHERE mdd.day IS NULL)::integer AS metrics_without_data_count
           FROM expected_dma_metric_days em
             LEFT JOIN metric_data_days mdd ON mdd.metric_id = em.metric_id AND mdd.day = em.day
          GROUP BY em.dma_id, em.day
        ), per_metric_gap_window AS (
         SELECT em.dma_id,
            em.metric_id,
            em.day,
            count(mdd.day) AS days_with_data
           FROM expected_dma_metric_days em
             LEFT JOIN metric_data_days mdd ON mdd.metric_id = em.metric_id AND mdd.day >= (em.day - '13 days'::interval) AND mdd.day <= em.day
          GROUP BY em.dma_id, em.metric_id, em.day
        ), metric_gap_per_dma_day AS (
         SELECT per_metric_gap_window.dma_id,
            per_metric_gap_window.day,
            GREATEST(max(14 - per_metric_gap_window.days_with_data), 0::bigint)::integer AS max_metric_data_gap_days
           FROM per_metric_gap_window
          GROUP BY per_metric_gap_window.dma_id, per_metric_gap_window.day
        ), per_day_facts AS (
         SELECT d.id AS dma_id,
            days.day,
            nfa.night_flow_min,
            dvol.daily_volume_m3
           FROM platformv2.operations_dma d
             CROSS JOIN days
             LEFT JOIN night_flow_agg nfa ON nfa.dma_id = d.id AND nfa.day = days.day
             LEFT JOIN daily_volume_per_dma dvol ON dvol.dma_id = d.id AND dvol.day = days.day
        ), per_day_islands AS (
         SELECT per_day_facts.dma_id,
            per_day_facts.day,
            per_day_facts.night_flow_min,
            per_day_facts.daily_volume_m3,
            count(per_day_facts.night_flow_min) OVER (PARTITION BY per_day_facts.dma_id ORDER BY per_day_facts.day) AS min_island,
            count(per_day_facts.daily_volume_m3) OVER (PARTITION BY per_day_facts.dma_id ORDER BY per_day_facts.day) AS vol_island
           FROM per_day_facts
        ), per_day_carried AS (
         SELECT per_day_islands.dma_id,
            per_day_islands.day,
            max(per_day_islands.night_flow_min) OVER (PARTITION BY per_day_islands.dma_id, per_day_islands.min_island) AS night_flow_min_carried,
            max(per_day_islands.daily_volume_m3) OVER (PARTITION BY per_day_islands.dma_id, per_day_islands.vol_island) AS daily_volume_m3_carried
           FROM per_day_islands
        ), last_known_per_dma_day AS (
         SELECT per_day_carried.dma_id,
            per_day_carried.day,
            lag(per_day_carried.night_flow_min_carried) OVER (PARTITION BY per_day_carried.dma_id ORDER BY per_day_carried.day) AS last_known_night_flow_min,
            lag(per_day_carried.daily_volume_m3_carried) OVER (PARTITION BY per_day_carried.dma_id ORDER BY per_day_carried.day) AS last_known_daily_volume_m3
           FROM per_day_carried
        ), base AS (
         SELECT d.id AS dma_id,
            days.day,
            d.organization_id,
            d.name,
            nd.center,
            nfa.night_flow_min,
                CASE
                    WHEN nfa.night_flow_min IS NULL THEN lk.last_known_night_flow_min
                    ELSE NULL::numeric
                END AS last_known_night_flow_min,
            dvol.daily_volume_m3,
            lk.last_known_daily_volume_m3,
            sync.last_sync_at,
            cfg.night_flow_orange_threshold AS night_flow_warning_threshold,
            cfg.night_flow_red_threshold AS night_flow_alert_threshold,
            COALESCE(gap.metrics_without_data_count, 0) AS metrics_without_data_count,
            COALESCE(gw.max_metric_data_gap_days, 0) AS max_metric_data_gap_days,
                CASE
                    WHEN fc.dma_id IS NULL THEN 'Unconfigured'::text
                    WHEN COALESCE(gap.has_data_gap, false) OR nfa.night_flow_min IS NULL THEN 'Missing'::text
                    WHEN cfg.id IS NULL OR cfg.night_flow_orange_threshold IS NULL AND cfg.night_flow_red_threshold IS NULL THEN 'NoAlertConfigured'::text
                    WHEN cfg.night_flow_red_threshold IS NOT NULL AND nfa.night_flow_min::double precision > cfg.night_flow_red_threshold THEN 'Alert'::text
                    WHEN cfg.night_flow_orange_threshold IS NOT NULL AND nfa.night_flow_min::double precision > cfg.night_flow_orange_threshold THEN 'Warning'::text
                    ELSE 'Ok'::text
                END AS status,
            days.day = ((CURRENT_TIMESTAMP AT TIME ZONE COALESCE(oc.timezone, 'UTC'::text)) - COALESCE(oc.alert_window_hour, '08:00:00'::time without time zone)::interval)::date AS is_current_day
           FROM platformv2.operations_dma d
             CROSS JOIN days
             LEFT JOIN platformv2.network_dma nd ON nd.id = d.network_dma_id
             LEFT JOIN night_flow_agg nfa ON nfa.dma_id = d.id AND nfa.day = days.day
             LEFT JOIN daily_volume_per_dma dvol ON dvol.dma_id = d.id AND dvol.day = days.day
             LEFT JOIN last_known_per_dma_day lk ON lk.dma_id = d.id AND lk.day = days.day
             LEFT JOIN sync_per_dma_day sync ON sync.dma_id = d.id AND sync.day = days.day
             LEFT JOIN data_gap_per_dma_day gap ON gap.dma_id = d.id AND gap.day = days.day
             LEFT JOIN metric_gap_per_dma_day gw ON gw.dma_id = d.id AND gw.day = days.day
             LEFT JOIN fully_configured_dma fc ON fc.dma_id = d.id
             LEFT JOIN partially_configured_dma pc ON pc.dma_id = d.id
             LEFT JOIN platformv2.operations_dma_config cfg ON cfg.operations_dma_id = d.id
             LEFT JOIN platformv2.operations_config oc ON oc.organization_id = d.organization_id
        ), with_alert_group AS (
         SELECT base.dma_id,
            base.day,
            base.organization_id,
            base.name,
            base.center,
            base.night_flow_min,
            base.last_known_night_flow_min,
            base.daily_volume_m3,
            base.last_known_daily_volume_m3,
            base.last_sync_at,
            base.night_flow_warning_threshold,
            base.night_flow_alert_threshold,
            base.metrics_without_data_count,
            base.max_metric_data_gap_days,
            base.status,
            base.is_current_day,
            sum(
                CASE
                    WHEN base.status = ANY (ARRAY['Alert'::text, 'Warning'::text]) THEN 0
                    ELSE 1
                END) OVER (PARTITION BY base.dma_id ORDER BY base.day) AS alert_group
           FROM base
        )
 SELECT with_alert_group.dma_id,
    with_alert_group.day,
    with_alert_group.organization_id,
    with_alert_group.name,
    with_alert_group.center,
    with_alert_group.night_flow_min,
    with_alert_group.last_known_night_flow_min,
    with_alert_group.daily_volume_m3,
    with_alert_group.last_known_daily_volume_m3,
    with_alert_group.last_sync_at,
    with_alert_group.night_flow_warning_threshold,
    with_alert_group.night_flow_alert_threshold,
    with_alert_group.metrics_without_data_count,
    with_alert_group.max_metric_data_gap_days,
    with_alert_group.status,
    with_alert_group.is_current_day,
        CASE
            WHEN with_alert_group.status = ANY (ARRAY['Alert'::text, 'Warning'::text]) THEN sum(
            CASE
                WHEN with_alert_group.status = ANY (ARRAY['Alert'::text, 'Warning'::text]) THEN 1
                ELSE 0
            END) OVER (PARTITION BY with_alert_group.dma_id, with_alert_group.alert_group ORDER BY with_alert_group.day)
            ELSE 0::bigint
        END AS consecutive_alert_days
   FROM with_alert_group
WITH DATA;

-- View indexes:
CREATE INDEX idx_dma_daily_center_gist ON platformv2.operations_dma_daily USING gist (((center)::geometry));
CREATE INDEX idx_dma_daily_day ON platformv2.operations_dma_daily USING btree (day);
CREATE INDEX idx_dma_daily_org_day ON platformv2.operations_dma_daily USING btree (organization_id, day);
CREATE INDEX idx_dma_daily_status_alert ON platformv2.operations_dma_daily USING btree (dma_id, status, day) WHERE (status = ANY (ARRAY['Alert'::text, 'Warning'::text, 'Missing'::text]));
CREATE UNIQUE INDEX uq_dma_daily_dma_id_day ON platformv2.operations_dma_daily USING btree (dma_id, day);


-- platformv2.topkapi_catalog_sync_job_run_with_current_status source

CREATE OR REPLACE VIEW platformv2.topkapi_catalog_sync_job_run_with_current_status
AS SELECT jr.id,
    jr.databricks_job_run_id,
    jr.type,
    jr.trigger,
    jr.organization_id,
    jr.data,
    jr.created_date,
    jr.last_modified_date,
    ls.status AS current_status,
    ls.created_date AS current_status_date
   FROM platformv2.topkapi_catalog_sync_job_run jr
     LEFT JOIN LATERAL ( SELECT s.status,
            s.created_date
           FROM platformv2.topkapi_catalog_sync_job_run_status s
          WHERE s.job_run_id = jr.id
          ORDER BY s.created_date DESC
         LIMIT 1) ls ON true;


-- platformv2.topkapi_metric_data_daily source

CREATE MATERIALIZED VIEW platformv2.topkapi_metric_data_daily
TABLESPACE pg_default
AS WITH midnights AS (
         SELECT tmd.organization_id,
            tmd.topkapi_tagname,
            tmd.sample_timestamp,
            date_trunc('day'::text, (tmd.sample_timestamp AT TIME ZONE 'Europe/Paris'::text)) AS day,
            tmd.value
           FROM platformv2.topkapi_metric_data tmd
             JOIN platformv2.topkapi_metric tm ON tmd.topkapi_tagname::text = tm.topkapi_tagname::text AND tmd.organization_id = tm.organization_id
          WHERE tm.active = true AND (tmd.sample_timestamp AT TIME ZONE 'Europe/Paris'::text)::time without time zone = '00:00:00'::time without time zone
        ), paired AS (
         SELECT midnights.organization_id,
            midnights.topkapi_tagname,
            midnights.day,
            midnights.value AS day_start_value,
            lead(midnights.value) OVER w AS day_end_value,
            lead(midnights.day) OVER w AS next_day
           FROM midnights
          WINDOW w AS (PARTITION BY midnights.organization_id, midnights.topkapi_tagname ORDER BY midnights.sample_timestamp)
        )
 SELECT paired.topkapi_tagname AS topkapi_metric_tagname,
    paired.organization_id,
    paired.day AS sample_date,
    paired.day_end_value - paired.day_start_value AS volume
   FROM paired
  WHERE paired.next_day = (paired.day + '1 day'::interval)
WITH DATA;

-- View indexes:
CREATE INDEX idx_matview_daily_date ON platformv2.topkapi_metric_data_daily USING btree (sample_date);
CREATE UNIQUE INDEX uq_matview_daily_tagname_org_date ON platformv2.topkapi_metric_data_daily USING btree (topkapi_metric_tagname, organization_id, sample_date);


-- platformv2.topkapi_metric_data_hourly source

CREATE MATERIALIZED VIEW platformv2.topkapi_metric_data_hourly
TABLESPACE pg_default
AS WITH hourly AS (
         SELECT tmd.organization_id,
            tmd.topkapi_tagname,
            tmd.sample_timestamp,
            date_trunc('hour'::text, tmd.sample_timestamp) AS hour,
            tmd.value
           FROM platformv2.topkapi_metric_data tmd
             JOIN platformv2.topkapi_metric tm ON tmd.topkapi_tagname::text = tm.topkapi_tagname::text AND tmd.organization_id = tm.organization_id
          WHERE tm.active = true AND date_trunc('hour'::text, tmd.sample_timestamp) = tmd.sample_timestamp
        ), paired AS (
         SELECT hourly.organization_id,
            hourly.topkapi_tagname,
            hourly.hour,
            hourly.value AS hour_start_value,
            lead(hourly.value) OVER w AS hour_end_value,
            lead(hourly.hour) OVER w AS next_hour
           FROM hourly
          WINDOW w AS (PARTITION BY hourly.organization_id, hourly.topkapi_tagname ORDER BY hourly.sample_timestamp)
        )
 SELECT paired.topkapi_tagname AS topkapi_metric_tagname,
    paired.organization_id,
    paired.hour AS sample_timestamp,
    (paired.hour_end_value - paired.hour_start_value)::numeric AS flow_m3_h
   FROM paired
  WHERE paired.next_hour = (paired.hour + '01:00:00'::interval)
WITH DATA;

-- View indexes:
CREATE INDEX idx_matview_hourly_ts ON platformv2.topkapi_metric_data_hourly USING btree (sample_timestamp);
CREATE UNIQUE INDEX uq_matview_hourly_tagname_org_ts ON platformv2.topkapi_metric_data_hourly USING btree (topkapi_metric_tagname, organization_id, sample_timestamp);


-- platformv2.topkapi_metric_ingestion_job_run_tag_coverage source

CREATE OR REPLACE VIEW platformv2.topkapi_metric_ingestion_job_run_tag_coverage
AS WITH tag_runs AS (
         SELECT unnest(jr.tags) AS tag_name,
            jr.time_start,
            jr.time_end,
            jr.id AS job_run_id,
            ls.status AS current_status
           FROM platformv2.topkapi_metric_ingestion_job_run jr
             LEFT JOIN LATERAL ( SELECT s.status
                   FROM platformv2.topkapi_metric_ingestion_job_run_status s
                  WHERE s.job_run_id = jr.id
                  ORDER BY s.created_date DESC
                 LIMIT 1) ls ON true
          WHERE jr.time_start IS NOT NULL AND jr.time_end IS NOT NULL
        ), non_failed AS (
         SELECT tag_runs.tag_name,
            tag_runs.time_start,
            tag_runs.time_end
           FROM tag_runs
          WHERE tag_runs.current_status IS NULL OR tag_runs.current_status <> 'ERROR'::platformv2.dma_job_run_status_status_enum
        ), completed AS (
         SELECT tag_runs.tag_name,
            tag_runs.time_start,
            tag_runs.time_end
           FROM tag_runs
          WHERE tag_runs.current_status = 'COMPLETED'::platformv2.dma_job_run_status_status_enum
        ), nf_ordered AS (
         SELECT non_failed.tag_name,
            non_failed.time_start,
            non_failed.time_end,
                CASE
                    WHEN non_failed.time_start <= lag(non_failed.time_end) OVER (PARTITION BY non_failed.tag_name ORDER BY non_failed.time_start) THEN 0
                    ELSE 1
                END AS new_group
           FROM non_failed
        ), nf_grouped AS (
         SELECT nf_ordered.tag_name,
            nf_ordered.time_start,
            nf_ordered.time_end,
            sum(nf_ordered.new_group) OVER (PARTITION BY nf_ordered.tag_name ORDER BY nf_ordered.time_start) AS grp
           FROM nf_ordered
        ), nf_merged AS (
         SELECT nf_grouped.tag_name,
            min(nf_grouped.time_start) AS time_start,
            max(nf_grouped.time_end) AS time_end,
            'covered'::text AS coverage_type
           FROM nf_grouped
          GROUP BY nf_grouped.tag_name, nf_grouped.grp
        ), c_ordered AS (
         SELECT completed.tag_name,
            completed.time_start,
            completed.time_end,
                CASE
                    WHEN completed.time_start <= lag(completed.time_end) OVER (PARTITION BY completed.tag_name ORDER BY completed.time_start) THEN 0
                    ELSE 1
                END AS new_group
           FROM completed
        ), c_grouped AS (
         SELECT c_ordered.tag_name,
            c_ordered.time_start,
            c_ordered.time_end,
            sum(c_ordered.new_group) OVER (PARTITION BY c_ordered.tag_name ORDER BY c_ordered.time_start) AS grp
           FROM c_ordered
        ), c_merged AS (
         SELECT c_grouped.tag_name,
            min(c_grouped.time_start) AS time_start,
            max(c_grouped.time_end) AS time_end,
            'completed'::text AS coverage_type
           FROM c_grouped
          GROUP BY c_grouped.tag_name, c_grouped.grp
        )
 SELECT nf_merged.tag_name,
    nf_merged.time_start,
    nf_merged.time_end,
    nf_merged.coverage_type
   FROM nf_merged
UNION ALL
 SELECT c_merged.tag_name,
    c_merged.time_start,
    c_merged.time_end,
    c_merged.coverage_type
   FROM c_merged;


-- platformv2.topkapi_metric_ingestion_job_run_with_current_status source

CREATE OR REPLACE VIEW platformv2.topkapi_metric_ingestion_job_run_with_current_status
AS SELECT jr.id,
    jr.databricks_job_run_id,
    jr.trigger,
    jr.tags,
    jr.time_start,
    jr.time_end,
    jr.organization_id,
    jr.batch_id,
    jr.data,
    jr.created_date,
    jr.last_modified_date,
    ls.status AS current_status,
    ls.created_date AS current_status_date
   FROM platformv2.topkapi_metric_ingestion_job_run jr
     LEFT JOIN LATERAL ( SELECT s.status,
            s.created_date
           FROM platformv2.topkapi_metric_ingestion_job_run_status s
          WHERE s.job_run_id = jr.id
          ORDER BY s.created_date DESC
         LIMIT 1) ls ON true;



-- DROP FUNCTION platformv2.geometry_hash(geometry);

CREATE OR REPLACE FUNCTION platformv2.geometry_hash(geom geometry)
 RETURNS character varying
 LANGUAGE sql
 IMMUTABLE PARALLEL SAFE
AS $function$
				SELECT MD5(ST_AsText(ST_SnapToGrid(geom, 0.0000001)))
			$function$
;

-- DROP FUNCTION platformv2.refresh_network_dma_color_indices(int8);

CREATE OR REPLACE FUNCTION platformv2.refresh_network_dma_color_indices(p_organization_id bigint)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
			DECLARE
				v_dma_id BIGINT;
				v_color INT;
				palette_size CONSTANT INT := 8;
			BEGIN
				-- Single-threaded: parallel workers competed for IO on the old
				-- plan (BufFileWrite) and brought no value on this dataset
				-- size. They also caused cascading BgWorkerShutdown waits when
				-- the fire-and-forget caller disconnected.
				SET LOCAL max_parallel_workers_per_gather = 0;
				-- Safety net: the optimised plan runs in <1s on the current
				-- dataset; >30s would mean something is off (data growth,
				-- planner regression) and we'd rather cancel than pile up.
				SET LOCAL statement_timeout = '30s';

				-- Drop temp tables left over from a previous call in the
				-- same transaction. ON COMMIT DROP only fires at commit,
				-- so a backfill loop calling this function once per
				-- organization would otherwise hit "relation already exists".
				DROP TABLE IF EXISTS _dma_envelopes, _adjacency, _degree, _colored;

				-- 1a. Pre-compute one envelope per DMA. Subsequent BB-vs-BB
				--     ST_DWithin replaces the old arc-by-arc self-join, which
				--     scaled in O(arcs^2) and overflowed work_mem.
				CREATE TEMP TABLE _dma_envelopes ON COMMIT DROP AS
				SELECT
					d.id AS dma_id,
					ST_Envelope(ST_Collect(arc.geometry)) AS env
				FROM platformv2.network_dma d
				JOIN platformv2.network_dma_arc nda ON nda.network_dma_id = d.id
				JOIN platformv2.network_arc arc ON arc.id = nda.network_arc_id
				WHERE d.organization_id = p_organization_id
				GROUP BY d.id;

				-- 1b. Adjacency: hybrid graph
				--      Source 1: two DMAs of the same organization with
				--                overlapping/near envelopes. No false
				--                negatives wrt the arc-arc semantics (env
				--                englobe arcs); a few false positives at
				--                most, which only force extra colour
				--                distinctness — desired behaviour.
				--      Source 2: K=6 nearest centres for every DMA of the
				--                organization, in both directions, so the
				--                DSATUR traversal via adj.d1 = X is symmetric.
				--    The DISTINCT collapses duplicates produced when both
				--    sources agree on a pair.
				CREATE TEMP TABLE _adjacency ON COMMIT DROP AS
				SELECT DISTINCT d1, d2 FROM (
					-- Source 1: DMA-envelope adjacency
					SELECT e1.dma_id AS d1, e2.dma_id AS d2
					FROM _dma_envelopes e1
					JOIN _dma_envelopes e2
						ON e1.dma_id <> e2.dma_id
						AND ST_DWithin(e1.env, e2.env, 0.0036)
					UNION
					-- Source 2: KNN on centres (K=6), direction d -> nb
					SELECT d.id AS d1, nb.id AS d2
					FROM platformv2.network_dma d
					CROSS JOIN LATERAL (
						SELECT n.id
						FROM platformv2.network_dma n
						WHERE n.organization_id = p_organization_id
							AND n.id <> d.id
						ORDER BY n.center::geometry <-> d.center::geometry
						LIMIT 6
					) nb
					WHERE d.organization_id = p_organization_id
					UNION
					-- Source 2 bis: symmetric pair nb -> d so the DSATUR loop
					-- can traverse via adj.d1 = X
					SELECT nb.id AS d1, d.id AS d2
					FROM platformv2.network_dma d
					CROSS JOIN LATERAL (
						SELECT n.id
						FROM platformv2.network_dma n
						WHERE n.organization_id = p_organization_id
							AND n.id <> d.id
						ORDER BY n.center::geometry <-> d.center::geometry
						LIMIT 6
					) nb
					WHERE d.organization_id = p_organization_id
				) all_edges;

				CREATE INDEX ON _adjacency (d1);

				-- 2. DSATUR coloring. At each step, pick the uncolored DMA
				--    with the highest saturation degree (number of distinct
				--    colors among already-colored neighbors). Ties broken by
				--    max degree, then id. Assigns a random color among those
				--    not used by colored neighbors (balances the palette
				--    distribution); falls back to a deterministic hash if
				--    the palette is exhausted.
				CREATE TEMP TABLE _degree (dma_id BIGINT PRIMARY KEY, degree INT NOT NULL)
					ON COMMIT DROP;
				INSERT INTO _degree (dma_id, degree)
				SELECT d.id, COALESCE(deg.cnt, 0)
				FROM platformv2.network_dma d
				LEFT JOIN (
					SELECT d1, COUNT(*) AS cnt FROM _adjacency GROUP BY d1
				) deg ON deg.d1 = d.id
				WHERE d.organization_id = p_organization_id;

				CREATE TEMP TABLE _colored (dma_id BIGINT PRIMARY KEY, color_index INT NOT NULL)
					ON COMMIT DROP;

				LOOP
					-- Pick the uncolored DMA with max saturation, then max degree, then min id.
					SELECT d.dma_id INTO v_dma_id
					FROM _degree d
					LEFT JOIN (
						SELECT adj.d1 AS dma_id, COUNT(DISTINCT cl.color_index) AS sat
						FROM _adjacency adj
						JOIN _colored cl ON cl.dma_id = adj.d2
						GROUP BY adj.d1
					) s ON s.dma_id = d.dma_id
					WHERE NOT EXISTS (SELECT 1 FROM _colored cl WHERE cl.dma_id = d.dma_id)
					ORDER BY COALESCE(s.sat, 0) DESC, d.degree DESC, d.dma_id ASC
					LIMIT 1;

					EXIT WHEN v_dma_id IS NULL;

					-- Random color among those not used by colored neighbors.
					SELECT c INTO v_color
					FROM generate_series(1, palette_size) c
					WHERE c NOT IN (
						SELECT cl.color_index
						FROM _colored cl
						JOIN _adjacency adj ON adj.d2 = cl.dma_id
						WHERE adj.d1 = v_dma_id
					)
					ORDER BY random()
					LIMIT 1;

					IF v_color IS NULL THEN
						v_color := (ABS(HASHTEXT(v_dma_id::TEXT)) % palette_size) + 1;
						RAISE WARNING
							'refresh_network_dma_color_indices: palette of % colors exhausted for DMA %, falling back to deterministic hash color %',
							palette_size, v_dma_id, v_color;
					END IF;

					INSERT INTO _colored(dma_id, color_index) VALUES (v_dma_id, v_color);
				END LOOP;

				-- 3. Write back the new color indices. DMAs of the requested
				--    organization that had no adjacency record (zero arcs or
				--    fully isolated) still get a deterministic fallback color
				--    so the column never goes NULL.
				UPDATE platformv2.network_dma nd
				SET color_index = COALESCE(
					cl.color_index,
					(ABS(HASHTEXT(nd.id::TEXT)) % palette_size) + 1
				)
				FROM _degree d
				LEFT JOIN _colored cl ON cl.dma_id = d.dma_id
				WHERE nd.id = d.dma_id
					AND nd.organization_id = p_organization_id;
			END;
			$function$
;

-- DROP FUNCTION platformv2.refresh_network_sector_stats(int8);

CREATE OR REPLACE FUNCTION platformv2.refresh_network_sector_stats(p_network_id bigint DEFAULT NULL::bigint)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
			DECLARE
				v_sector_id BIGINT;
				v_color INT;
				palette_size CONSTANT INT := 8;
			BEGIN
				-- 1. Adjacency: two sectors with at least one pair of arcs within
				--    ~400m of each other (visual adjacency for tile coloring).
				--    Uses the GiST index on network_arc.geometry via ST_DWithin's
				--    && pre-filter. Symmetric pairs (a,b) and (b,a) are produced
				--    on purpose so DSATUR can traverse via adj.s1 = X.
				CREATE TEMP TABLE _adjacency ON COMMIT DROP AS
				SELECT DISTINCT nsa1.network_sector_id AS s1, nsa2.network_sector_id AS s2
				FROM platformv2.network_sector_arc nsa1
				JOIN platformv2.network_arc arc1 ON arc1.id = nsa1.network_arc_id
				JOIN platformv2.network_arc arc2
					ON arc2.network_id = arc1.network_id
					AND arc2.id <> arc1.id
					AND ST_DWithin(arc1.geometry, arc2.geometry, 0.0036)
				JOIN platformv2.network_sector_arc nsa2
					ON nsa2.network_arc_id = arc2.id
					AND nsa2.network_sector_id <> nsa1.network_sector_id
				WHERE p_network_id IS NULL OR arc1.network_id = p_network_id;

				CREATE INDEX ON _adjacency (s1);

				-- 2. DSATUR coloring. At each step, pick the uncolored sector with
				--    the highest saturation degree (number of distinct colors among
				--    already-colored neighbors). Ties broken by max degree, then id.
				--    Assigns a random color among those not used by colored neighbors
				--    (balances the palette distribution); falls back to a deterministic
				--    hash if the palette is exhausted.
				--
				--    Pre-compute static degrees (used as the tie-breaker; doesn't
				--    change as coloring progresses).
				CREATE TEMP TABLE _degree (sector_id BIGINT PRIMARY KEY, degree INT NOT NULL)
					ON COMMIT DROP;
				INSERT INTO _degree (sector_id, degree)
				SELECT s.id, COALESCE(deg.d, 0)
				FROM platformv2.network_sector s
				LEFT JOIN (
					SELECT s1, COUNT(*) AS d FROM _adjacency GROUP BY s1
				) deg ON deg.s1 = s.id
				WHERE p_network_id IS NULL OR s.network_id = p_network_id;

				CREATE TEMP TABLE _colored (sector_id BIGINT PRIMARY KEY, color_index INT NOT NULL)
					ON COMMIT DROP;

				LOOP
					-- Pick the uncolored sector with max saturation, then max degree, then min id.
					SELECT d.sector_id INTO v_sector_id
					FROM _degree d
					LEFT JOIN (
						SELECT adj.s1 AS sector_id, COUNT(DISTINCT cl.color_index) AS sat
						FROM _adjacency adj
						JOIN _colored cl ON cl.sector_id = adj.s2
						GROUP BY adj.s1
					) s ON s.sector_id = d.sector_id
					WHERE NOT EXISTS (SELECT 1 FROM _colored cl WHERE cl.sector_id = d.sector_id)
					ORDER BY COALESCE(s.sat, 0) DESC, d.degree DESC, d.sector_id ASC
					LIMIT 1;

					EXIT WHEN v_sector_id IS NULL;

					-- Random color among those not used by colored neighbors.
					SELECT c INTO v_color
					FROM generate_series(1, palette_size) c
					WHERE c NOT IN (
						SELECT cl.color_index
						FROM _colored cl
						JOIN _adjacency adj ON adj.s2 = cl.sector_id
						WHERE adj.s1 = v_sector_id
					)
					ORDER BY random()
					LIMIT 1;

					IF v_color IS NULL THEN
						v_color := (ABS(HASHTEXT(v_sector_id::TEXT)) % palette_size) + 1;
						RAISE WARNING
							'refresh_network_sector_stats: palette of % colors exhausted for sector %, falling back to deterministic hash color %',
							palette_size, v_sector_id, v_color;
					END IF;

					INSERT INTO _colored(sector_id, color_index) VALUES (v_sector_id, v_color);
				END LOOP;

				-- 3. Refresh the stats table atomically. Within one transaction;
				--    readers see the previous snapshot via MVCC until COMMIT.
				--    Global refresh = TRUNCATE; per-network refresh = DELETE
				--    scoped via sector_id IN (...) so orphan sectors (zero arcs,
				--    NULL network_id in stats) are still captured.
				IF p_network_id IS NULL THEN
					TRUNCATE platformv2.network_sector_stats;
				ELSE
					DELETE FROM platformv2.network_sector_stats
					WHERE sector_id IN (
						SELECT id FROM platformv2.network_sector WHERE network_id = p_network_id
					);
				END IF;

				INSERT INTO platformv2.network_sector_stats (
					sector_id, network_id, total_length, total_length_trc, center, color_index
				)
				SELECT
					s.id                                                              AS sector_id,
					MAX(aps.network_id)                                               AS network_id,
					COALESCE(SUM(aps.length), 0)::DECIMAL(18,6)                       AS total_length,
					COALESCE(SUM(aps.length) FILTER (WHERE aps.use_type = 'TRC'), 0)::DECIMAL(18,6)
																					  AS total_length_trc,
					ST_Centroid(ST_Collect(aps.geometry) FILTER (WHERE aps.use_type = 'TRC'))
																					  AS center,
					COALESCE(cl.color_index, 1)                                       AS color_index
				FROM platformv2.network_sector s
				LEFT JOIN (
					SELECT
						nsa.network_sector_id AS sector_id,
						arc.network_id,
						arc.geometry,
						arc.length,
						arc.use_type
					FROM platformv2.network_sector_arc nsa
					JOIN platformv2.network_arc arc ON arc.id = nsa.network_arc_id
				) aps ON aps.sector_id = s.id
				LEFT JOIN _colored cl ON cl.sector_id = s.id
				WHERE p_network_id IS NULL OR s.network_id = p_network_id
				GROUP BY s.id, cl.color_index;
			END;
			$function$
;
prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>1472407722091150
,p_default_application_id=>136
,p_default_id_offset=>0
,p_default_owner=>'BMS'
);
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(68390722219935005)
,p_name=>'Requisiton Master'
,p_alias=>'REQUISITON-MASTER1'
,p_step_title=>'Requisiton Master'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'APPLE'
,p_last_upd_yyyymmddhh24miss=>'20220302152757'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69477920108759180)
,p_plug_name=>'Requisiton Master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(68289158869933952)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'BC_REQ'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Requisiton Master'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69478338559759181)
,p_name=>'Requisiton Master'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_REQ_NO:#REQ_NO#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'OLIUR'
,p_internal_uid=>69478338559759181
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69478445971759182)
,p_db_column_name=>'REQ_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Req No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69478854274759184)
,p_db_column_name=>'REQ_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Req Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69479256139759185)
,p_db_column_name=>'REQ_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Req Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69479611125759185)
,p_db_column_name=>'REQ_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Req By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69480009935759186)
,p_db_column_name=>'STORE_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Store No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69480488793759187)
,p_db_column_name=>'SUBMIT_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Submit By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69480899061759188)
,p_db_column_name=>'SUBMIT_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Submit Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69481217068759189)
,p_db_column_name=>'APPROVE_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Approve By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69481642137759190)
,p_db_column_name=>'APPROVE_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Approve Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69482031167759190)
,p_db_column_name=>'REJECT_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Reject By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69482478961759191)
,p_db_column_name=>'REJECT_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Reject Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69482838584759192)
,p_db_column_name=>'REJECT_CAUSE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Reject Cause'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69483223906759193)
,p_db_column_name=>'ORG_NO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Org No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69483620024759193)
,p_db_column_name=>'INSERT_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Insert By'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69484078381759194)
,p_db_column_name=>'INSERT_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Insert Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69484438379759195)
,p_db_column_name=>'UPDATE_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Update By'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69484857861759195)
,p_db_column_name=>'UPDATE_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69500554350760019)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'695006'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REQ_NO:REQ_ID:REQ_DATE:REQ_BY:STORE_NO:SUBMIT_BY:SUBMIT_DATE:APPROVE_BY:APPROVE_DATE:REJECT_BY:REJECT_DATE:REJECT_CAUSE:ORG_NO:INSERT_BY:INSERT_DATE:UPDATE_BY:UPDATE_DATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69485335911759196)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(69477920108759180)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:29'
);
wwv_flow_api.component_end;
end;
/

prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(68390722219935005)
,p_name=>'IN_TRN'
,p_alias=>'IN-TRN'
,p_step_title=>'IN_TRN'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'TEST_USER'
,p_last_upd_yyyymmddhh24miss=>'20220306112105'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71803891425061510)
,p_plug_name=>'IN_TRN'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(68289158869933952)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'BC_TRN'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'IN_TRN'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(71804279626061511)
,p_name=>'IN_TRN'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP:P25_TRN_NO:\#TRN_NO#\'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'OLIUR'
,p_internal_uid=>71804279626061511
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71804340408061544)
,p_db_column_name=>'TRN_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Trn No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71804724446061553)
,p_db_column_name=>'TRN_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Trn Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71805189896061554)
,p_db_column_name=>'TRN_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Trn Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71805596963061555)
,p_db_column_name=>'REQ_NO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Req No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71805812184061556)
,p_db_column_name=>'PROC_TYPE_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Proc Type No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71806237992061556)
,p_db_column_name=>'SUPPLIER_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Supplier No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71806625565061557)
,p_db_column_name=>'WORK_ORDER_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Work Order Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71807015750061557)
,p_db_column_name=>'PROC_COMMITTEE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Proc Committee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71807480784061558)
,p_db_column_name=>'ORG_NO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Org No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71807814108061558)
,p_db_column_name=>'INSERT_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Insert By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71808276867061559)
,p_db_column_name=>'INSERT_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Insert Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71808601037061559)
,p_db_column_name=>'UPDATE_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Update By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71809016272061560)
,p_db_column_name=>'UPDATE_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(71825358032062472)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'718254'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRN_NO:TRN_ID:TRN_DATE:REQ_NO:PROC_TYPE_NO:SUPPLIER_NO:WORK_ORDER_DATE:PROC_COMMITTEE:ORG_NO:INSERT_BY:INSERT_DATE:UPDATE_BY:UPDATE_DATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71810242460061573)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(71803891425061510)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25'
);
wwv_flow_api.component_end;
end;
/

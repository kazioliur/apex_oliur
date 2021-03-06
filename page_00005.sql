prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(68390722219935005)
,p_name=>'IN_DASHBOARD'
,p_alias=>'IN-DASHBOARD'
,p_step_title=>'IN_DASHBOARD'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'APPLE'
,p_last_upd_yyyymmddhh24miss=>'20220302094217'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68999135773683801)
,p_plug_name=>'Status'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(68246141598933738)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68999271950683802)
,p_plug_name=>'Chemical Inventory'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(68289158869933952)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'BC_ITEM'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Chemical Inventory'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68999471328683804)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPLE'
,p_internal_uid=>68999471328683804
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68999541124683805)
,p_db_column_name=>'ITEM_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Item No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68999610231683806)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Item Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68999774253683807)
,p_db_column_name=>'ITEM_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Item Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68999895165683808)
,p_db_column_name=>'BRAND_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Brand No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68999974230683809)
,p_db_column_name=>'ORIGIN_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Origin No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69000040024683810)
,p_db_column_name=>'MODEL_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Model Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69000112174683811)
,p_db_column_name=>'UOM_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Uom No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69000257696683812)
,p_db_column_name=>'SUBITEM_OF'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Subitem Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69000332527683813)
,p_db_column_name=>'ORG_NO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Org No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69000417157683814)
,p_db_column_name=>'INSERT_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Insert By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69000508289683815)
,p_db_column_name=>'INSERT_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Insert Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69000631739683816)
,p_db_column_name=>'UPDATE_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Update By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69000713309683817)
,p_db_column_name=>'UPDATE_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69070279232909653)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'690703'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ITEM_NO:ITEM_ID:ITEM_NAME:BRAND_NO:ORIGIN_NO:MODEL_NAME:UOM_NO:SUBITEM_OF:ORG_NO:INSERT_BY:INSERT_DATE:UPDATE_BY:UPDATE_DATE'
);
wwv_flow_api.component_end;
end;
/

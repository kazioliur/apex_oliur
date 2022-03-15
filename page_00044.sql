prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(68390722219935005)
,p_name=>'Requisition'
,p_alias=>'REQUISITION1'
,p_step_title=>'Requisition'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'APPLE'
,p_last_upd_yyyymmddhh24miss=>'20220314182019'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73817819176030529)
,p_plug_name=>'Parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(68293448319933961)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73817981832030530)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(68289158869933952)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  REQ_NO, REQ_DATE, REQ_ID,',
'                    --  DECODE (REQ_STAT,',
'                    --  ''A'', ''Approved'',''I'', ''Issued'') STATUS, ',
'            CASE REQ_STAT WHEN ''R'' THEN ''Pending'' ',
'            WHEN ''I'' THEN ''Issued''',
'            WHEN ''W'' THEN ''Waiting for Approval''',
'            WHEN ''A'' THEN ''Approved''',
'            ELSE ''Rejected'' END STATUS, ',
'                     USER_NAME "REQ BY", REQ_BY',
'FROM   BC_REQ br, BC_USER bu',
'WHERE  br.req_by = bu.user_no',
'AND  REQ_STAT = NVL((CASE :P44_STATUS WHEN ''1'' THEN ''R''',
'            WHEN ''2'' THEN ''I''',
'            WHEN ''3'' THEN ''W''',
'            WHEN ''4'' THEN ''A'' ',
'            WHEN ''5'' THEN ''D''',
'            ELSE null END), REQ_STAT)',
'AND    REQ_NO = NVL(:P44_REQUSITION_ID, REQ_NO)',
'AND    REQ_BY = NVL(:P44_SCIENTIST, REQ_BY);'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P44_SCIENTIST,P44_REQUSITION_ID,P44_STATUS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73818177428030532)
,p_name=>'REQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQ_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Req ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:46:P46_REQ_ID,P46_REQ_DATE,P46_REQ_NO,P46_REQ_BY:&REQ_ID.,&REQ_DATE.,&REQ_NO.,&REQ_BY.'
,p_link_text=>'&REQ_ID.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73818282129030533)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76139559421360106)
,p_name=>'REQ_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQ_BY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Req By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76139601010360107)
,p_name=>'REQ_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQ_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76139722747360108)
,p_name=>'REQ_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQ_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76858448913932902)
,p_name=>'REQ BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQ BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Req By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(73818008267030531)
,p_internal_uid=>73818008267030531
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(75088629828582421)
,p_interactive_grid_id=>wwv_flow_api.id(73818008267030531)
,p_static_id=>'750887'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(75088885392582422)
,p_report_id=>wwv_flow_api.id(75088629828582421)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(75089387925582429)
,p_view_id=>wwv_flow_api.id(75088885392582422)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(73818177428030532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(75090201311582439)
,p_view_id=>wwv_flow_api.id(75088885392582422)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(73818282129030533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76337825521182414)
,p_view_id=>wwv_flow_api.id(75088885392582422)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(76139559421360106)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76340634857197709)
,p_view_id=>wwv_flow_api.id(75088885392582422)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(76139601010360107)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76341588600197714)
,p_view_id=>wwv_flow_api.id(75088885392582422)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(76139722747360108)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76887041250172876)
,p_view_id=>wwv_flow_api.id(75088885392582422)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(76858448913932902)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73818324872030534)
,p_name=>'P44_SCIENTIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(73817819176030529)
,p_prompt=>'Scientist'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'USERNAME'
,p_lov=>'select user_name, user_no from bc_user;'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'ALL'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73818432852030535)
,p_name=>'P44_REQUSITION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(73817819176030529)
,p_prompt=>'Requisition ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select req_id, req_no from bc_req ORDER BY req_no DESC;'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'ALL'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73818586928030536)
,p_name=>'P44_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(73817819176030529)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT CASE REQ_STAT WHEN ''R'' THEN ''Pending'' ',
'            WHEN ''I'' THEN ''Issued''',
'            WHEN ''W'' THEN ''Waiting for Approval''',
'            WHEN ''A'' THEN ''Approved''',
'            ELSE ''Rejected'' END STATUS, ',
'            CASE REQ_STAT WHEN ''R'' THEN ''1'' ',
'            WHEN ''I'' THEN ''2''',
'            WHEN ''W'' THEN ''3''',
'            WHEN ''A'' THEN ''4''',
'            ELSE ''5'' END STATUSA',
'            FROM bc_req  ',
'            order by STATUS'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'ALL'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(76139026057360101)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(73817819176030529)
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(76139178644360102)
,p_event_id=>wwv_flow_api.id(76139026057360101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(73817981832030530)
);
wwv_flow_api.component_end;
end;
/

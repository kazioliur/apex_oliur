prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(68390722219935005)
,p_name=>'IN_BC_REQUISITION'
,p_alias=>'IN-BC-PURCHASE1'
,p_step_title=>'IN_BC_REQUISITION'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P14_REQ_BY_CONTAINER > div.t-Form-inputContainer.col.col-10 > div{',
'    width: 214px;',
'}',
'',
'#B71705190315281645{',
'    background-color: red;',
'    font-weight: bold;',
'    color: white;',
'}',
'',
'#B72647459465902234{',
'    background-color: green;',
'    font-weight: bold;',
'    color: white;',
'}',
'',
'#R71713366426299007_ig_toolbar > div.a-Toolbar-groupContainer.a-Toolbar-groupContainer--start > div:nth-child(6) > button{',
'    background-color: #056ac8;',
'    font-weight: bold;',
'    color: white;',
'}',
'',
'.a-ListView-item .ui-btn{',
'    font-weight: bold;',
'    color: purple;',
'}',
'',
'/* .a-ListView-item .ui-btn:before{',
'    content: '''';',
'    background:url(''fa fa-user'');',
'    background-size:cover;',
'        position:absolute;',
'    width:20px;',
'    height:20px;',
'    margin-left:-20px;',
'} */',
'',
'#B71704571300281632{',
'    font-weight: bold;',
'}',
'',
'.a-ListView-searchbar{',
'    padding-left: 0;',
'    padding-right: 0;',
'    padding-top: 0;',
'}',
'',
'#R71712771027299001_filter_input{',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}',
'',
'#BRAND{',
'    background-color: gray;',
'}',
'',
'',
'.a-GV-table tr td:nth-child(2).a-GV-cell,',
'.a-GV-table tr td:nth-child(3).a-GV-cell,',
'.a-GV-table tr td:nth-child(4).a-GV-cell,',
'.a-GV-table tr td:nth-child(6).a-GV-cell,',
'',
'.a-GV-table th:nth-child(6).a-GV-cell {',
'',
'    background: rgb(201, 195, 195) !important;',
'    font-weight: bold;',
'    color: rgb(0, 0, 0); ',
'    /* !important; */',
'',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'APPLE'
,p_last_upd_yyyymmddhh24miss=>'20220313155728'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71691779229281524)
,p_plug_name=>'NEW REQUISITION ENTRY'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(68293448319933961)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       REQ_NO,',
'       REQ_ID,',
'       REQ_DATE,',
'       REQ_BY,',
'       STORE_NO,',
'       SUBMIT_BY,',
'       SUBMIT_DATE,',
'       APPROVE_BY,',
'       APPROVE_DATE,',
'       REJECT_BY,',
'       REJECT_DATE,',
'       REJECT_CAUSE,',
'       ORG_NO,',
'       INSERT_BY,',
'       INSERT_DATE,',
'       UPDATE_BY,',
'       UPDATE_DATE,',
'       REQ_STAT',
'  from BC_REQ ',
'--    WHERE REQ_NO = :P14_REQ_ID_V'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_edit_row_operations_column=>'REQ_NO'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P14_REQ_ID_V'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71713366426299007)
,p_plug_name=>'Requisition Details'
,p_region_name=>'myig'
,p_parent_plug_id=>wwv_flow_api.id(71691779229281524)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(68289158869933952)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       REQDTL_NO,',
'       REQ_NO,',
'       ITEM_NO,',
'       BATCH_NAME,',
'       REQ_QTY,',
'       APP_QTY,',
'       ORG_NO,',
'       INSERT_BY,',
'       INSERT_DATE,',
'       UPDATE_BY,',
'       UPDATE_DATE,',
'       ''Delete'' Del',
'  from BC_REQDTL',
'  WHERE REQ_NO = :P14_REQ_NO'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P14_REQ_NO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Requisition Details'
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
 p_id=>wwv_flow_api.id(71713571126299009)
,p_name=>'REQDTL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQDTL_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71713661162299010)
,p_name=>'REQ_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQ_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71713776264299011)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Item Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'BRAND_NAME:BRAND,ORIGIN_NAME:ORIGIN,MODEL_NAME:MODEL'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(73263733999085140)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'ITEM_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71713856381299012)
,p_name=>'BATCH_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71713918579299013)
,p_name=>'REQ_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQ_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Req Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71714001750299014)
,p_name=>'APP_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'App Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71714164823299015)
,p_name=>'ORG_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'G_ORG_NO'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71714278378299016)
,p_name=>'INSERT_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERT_BY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'G_USER_NO'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71714345375299017)
,p_name=>'INSERT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERT_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>'select sysdate from dual'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71714458024299018)
,p_name=>'UPDATE_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_BY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71714541844299019)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71714664396299020)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71714751247299021)
,p_name=>'APEX$ROW_ACTION'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71714804098299022)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(72644369072902203)
,p_name=>'DEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Delete'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_link_target=>'javascript:void(null);'
,p_link_text=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true"></span>'
,p_link_attributes=>'data-id=&REQDTL_NO.'
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
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73240760553772627)
,p_name=>'BRAND'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'BRAND'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_static_id=>'BRAND'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73240809679772628)
,p_name=>'ORIGIN'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'ORIGIN'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_static_id=>'ORIGIN'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73240975176772629)
,p_name=>'MODEL'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'MODEL'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_static_id=>'MODEL'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(71713490835299008)
,p_internal_uid=>71713490835299008
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>310
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(71731076474461461)
,p_interactive_grid_id=>wwv_flow_api.id(71713490835299008)
,p_static_id=>'717311'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(71731299071461466)
,p_report_id=>wwv_flow_api.id(71731076474461461)
,p_view_type=>'GRID'
,p_stretch_columns=>false
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1221345000023)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(71714804098299022)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(4662936053753)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(73240760553772627)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(5963634053778)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(73240809679772628)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(7362791053791)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(73240975176772629)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71731734630461479)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(71713571126299009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71732625470461494)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(71713661162299010)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71733555161461502)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(71713776264299011)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>264
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71734472672461507)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(71713856381299012)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147.344
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71735329039461513)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(71713918579299013)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71736219005461519)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(71714001750299014)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71737184951461525)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(71714164823299015)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71738037215461530)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(71714278378299016)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71738944432461537)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(71714345375299017)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71739864881461543)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(71714458024299018)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71740707121461549)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(71714541844299019)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71741678502461554)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(71714664396299020)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71742406860461559)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(71714751247299021)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72657421880136189)
,p_view_id=>wwv_flow_api.id(71731299071461466)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(72644369072902203)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71712771027299001)
,p_plug_name=>'REQUISITION ID'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(68293448319933961)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>'select req_id, req_no, req_date, req_by  from bc_req ORDER BY req_id DESC, REQ_DATE DESC;'
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'ADVANCED_FORMATTING:SEARCH'
,p_attribute_05=>'&REQ_ID.'
,p_attribute_16=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:CR,14:P14_REQ_NO,P14_REQ_ID,P14_REQ_ID_V,P14_REQ_DATE,P14_REQ_BY:&REQ_NO.,&REQ_ID.,&REQ_NO.,&REQ_DATE.,&REQ_BY.'
,p_attribute_18=>'SERVER_LIKE_IGNORE'
,p_attribute_19=>'REQ_ID'
,p_attribute_20=>'Search Requisition ID'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71705533822281647)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(71691779229281524)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P14_REQ_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71704571300281632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(71691779229281524)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71898860532536425)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(71691779229281524)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New '
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72647459465902234)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(71691779229281524)
,p_button_name=>'Submit_for_Approval'
,p_button_static_id=>'submited'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit For Approval'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P14_REQ_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71705986412281647)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(71691779229281524)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P14_REQ_NO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71705190315281645)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(71691779229281524)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P14_REQ_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(71706238764281648)
,p_branch_name=>'Go To Page 14'
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14:P14_REQ_NO,P14_REQ_ID,P14_REQ_DATE:&P14_REQ_NO.,&P14_REQ_ID.,&P14_REQ_DATE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71692072896281543)
,p_name=>'P14_REQ_NO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'REQ_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71692328875281566)
,p_name=>'P14_REQ_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_prompt=>'Requisition ID'
,p_source=>'REQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(68364133102934538)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71692762563281600)
,p_name=>'P14_REQ_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_prompt=>'Requisition Date'
,p_source=>'REQ_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>25
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(68364133102934538)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71693181185281602)
,p_name=>'P14_REQ_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_prompt=>'Requisition By'
,p_source=>'REQ_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select user_name, user_no ',
'from bc_user ',
'where UPPER(user_name) like UPPER(v(''APP_USER''));'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(68364133102934538)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71693579500281603)
,p_name=>'P14_STORE_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'STORE_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71693924824281604)
,p_name=>'P14_SUBMIT_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_default=>'0'
,p_source=>'SUBMIT_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71694352963281605)
,p_name=>'P14_SUBMIT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'SUBMIT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71694783722281606)
,p_name=>'P14_APPROVE_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'APPROVE_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71695141671281609)
,p_name=>'P14_APPROVE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'APPROVE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71695569151281610)
,p_name=>'P14_REJECT_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'REJECT_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71695975032281610)
,p_name=>'P14_REJECT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'REJECT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71696382691281611)
,p_name=>'P14_REJECT_CAUSE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'REJECT_CAUSE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71696709479281612)
,p_name=>'P14_ORG_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_default=>'G_ORG_NO'
,p_item_default_type=>'ITEM'
,p_source=>'ORG_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71697192277281612)
,p_name=>'P14_INSERT_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'INSERT_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71697500402281613)
,p_name=>'P14_INSERT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'INSERT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71697962952281614)
,p_name=>'P14_UPDATE_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'UPDATE_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71698391381281615)
,p_name=>'P14_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71698799422281615)
,p_name=>'P14_REQ_STAT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'REQ_STAT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>1472407722091150
,p_default_application_id=>136
,p_default_id_offset=>0
,p_default_owner=>'BMS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71712825357299002)
,p_name=>'P14_REQ_ID_V'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(71712771027299001)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71716762117299041)
,p_name=>'P14_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_item_source_plug_id=>wwv_flow_api.id(71691779229281524)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72644491944902204)
,p_name=>'P14_DEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(71713366426299007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72647948723902239)
,p_name=>'P14_NEWTEST'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(71691779229281524)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73769697575705311)
,p_tabular_form_region_id=>wwv_flow_api.id(71713366426299007)
,p_validation_name=>'Item'
,p_validation_sequence=>10
,p_validation=>'ITEM_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select an item.'
,p_associated_column=>'ITEM_NO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(71717193893299045)
,p_name=>'ID'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(71712771027299001)
,p_bind_type=>'bind'
,p_bind_event_type=>'dblclick'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(71717288183299046)
,p_event_id=>wwv_flow_api.id(71717193893299045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_REQ_ID,P14_REQ_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select req_id, req_date ',
'from bc_req ',
'where req_no = :P14_REQ_NO'))
,p_attribute_07=>'P14_REQ_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(71898132084536418)
,p_name=>'Delete'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(71705190315281645)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(71898037595536417)
,p_event_id=>wwv_flow_api.id(71898132084536418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'DELETE FROM BC_REQ WHERE REQ_NO = :P14_REQ_NO;'
,p_attribute_02=>'P14_REQ_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P14_REQ_NO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(71898398224536420)
,p_event_id=>wwv_flow_api.id(71898132084536418)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(71712771027299001)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(71898529709536422)
,p_event_id=>wwv_flow_api.id(71898132084536418)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_REQ_ID,P14_REQ_DATE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72646320385902223)
,p_event_id=>wwv_flow_api.id(71898132084536418)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''f?p=&APP_ID.:14:&SESSION.:::::'', ''_self'');'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(71898453619536421)
,p_event_id=>wwv_flow_api.id(71898132084536418)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(71691779229281524)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(71898965856536426)
,p_name=>'Clear'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(71898860532536425)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72644261545902202)
,p_event_id=>wwv_flow_api.id(71898965856536426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_REQ_ID_V,P14_REQ_NO,P14_ROWID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72645346967902213)
,p_event_id=>wwv_flow_api.id(71898965856536426)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_REQ_ID_V'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(71899468739536431)
,p_event_id=>wwv_flow_api.id(71898965856536426)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// location.reload();',
'',
'window.open(''f?p=&APP_ID.:14:&SESSION.:::::'', ''_self'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(72644554895902205)
,p_name=>'DA_DELETEROW'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-irrow'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72644660445902206)
,p_event_id=>wwv_flow_api.id(72644554895902205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure to delete this?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72644770616902207)
,p_event_id=>wwv_flow_api.id(72644554895902205)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_DEL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72644833253902208)
,p_event_id=>wwv_flow_api.id(72644554895902205)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_DEL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'Delete from bc_reqdtl where reqdtl_no = :P14_DEL;'
,p_attribute_07=>'P14_DEL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72644931385902209)
,p_event_id=>wwv_flow_api.id(72644554895902205)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(71713366426299007)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(72645407691902214)
,p_name=>'REQ_ID'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_REQ_ID_V'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72645555040902215)
,p_event_id=>wwv_flow_api.id(72645407691902214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_NEWTEST'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT ''R''||TO_CHAR(sysdate, ''RRMM'')||''-00''||(MAX(SUBSTR(NVL(REQ_ID,''R2203-001''), 8))+1) GEN_ID from BC_REQ;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P14_REQ_ID'
,p_build_option_id=>wwv_flow_api.id(68202122264932664)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72645864200902218)
,p_event_id=>wwv_flow_api.id(72645407691902214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_REQ_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT CURRENT_DATE FROM DUAL;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P14_REQ_DATE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72646153251902221)
,p_event_id=>wwv_flow_api.id(72645407691902214)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_REQ_BY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select user_no ',
'from   bc_user ',
'WHERE user_no = :G_USER_NO',
'-- where  UPPER(user_name) like UPPER(v(''APP_USER''));'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P14_REQ_BY'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(72645607677902216)
,p_name=>'setR'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72645770269902217)
,p_event_id=>wwv_flow_api.id(72645607677902216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P14_REQ_ID").readOnly = true;',
'document.getElementById("P14_REQ_BY").readOnly = true;'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73238268896772602)
,p_event_id=>wwv_flow_api.id(72645607677902216)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_REQ_ID'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P14_REQ_ID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(72647552891902235)
,p_name=>'Cancel'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(71704571300281632)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72647685561902236)
,p_event_id=>wwv_flow_api.id(72647552891902235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''f?p=&APP_ID.:7:&SESSION.:::::'', ''_self'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73770411166705319)
,p_name=>'New'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73770551116705320)
,p_event_id=>wwv_flow_api.id(73770411166705319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("myig").call("getActions").set("edit", true);',
'document.getElementById("BRAND").readOnly = true;',
'document.getElementById("ORIGIN").readOnly = true;',
'document.getElementById("MODEL").readOnly = true;',
'// apex.item("BRAND").setStyle("background-color", "red");',
'apex.region("myig").widget().interactiveGrid("getViews", "grid").view$.grid("selectAll");',
'// apex.item( "ITEM_NO" ).setFocus();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74342383250141707)
,p_name=>'New_2'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * ',
'FROM  BC_REQ ',
'WHERE UPPER(REQ_STAT) IN (''R'', ''W'', ''A'')',
'AND REQ_NO = :P14_REQ_NO;'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74342530936141709)
,p_event_id=>wwv_flow_api.id(74342383250141707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(71705533822281647)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74342666430141710)
,p_event_id=>wwv_flow_api.id(74342383250141707)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(72647459465902234)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74342972664141713)
,p_event_id=>wwv_flow_api.id(74342383250141707)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#myig_ig_grid_vc_cur > a > span'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74344196023141725)
,p_event_id=>wwv_flow_api.id(74342383250141707)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(71705190315281645)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74344229276141726)
,p_event_id=>wwv_flow_api.id(74342383250141707)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("submited").setValue("SUBMITED");',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73770682025705321)
,p_name=>'New_1'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(71713366426299007)
,p_triggering_element=>'ITEM_NO'
,p_bind_type=>'live'
,p_bind_event_type=>'load'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73770796904705322)
,p_event_id=>wwv_flow_api.id(73770682025705321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'BRAND,ORIGIN,MODEL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BRAND_NAME,ORIGIN_NAME,MODEL_NAME',
'FROM bc_item bi, bc_origin bo, bc_brand bb',
'WHERE bo.origin_no = bi.origin_no',
'AND   bb.brand_no = bi.brand_no',
'AND bi.item_no = :ITEM_NO;',
''))
,p_attribute_07=>'ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73771383991705328)
,p_name=>'Submit_For_Approval'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(72647459465902234)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73771539233705330)
,p_event_id=>wwv_flow_api.id(73771383991705328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Requisition successfully submitted for approval.'
,p_attribute_03=>'success'
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P14_SUBMIT_BY'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73771633708705331)
,p_event_id=>wwv_flow_api.id(73771383991705328)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Requisition already submitted for approval.'
,p_attribute_02=>'Submission'
,p_attribute_03=>'success'
,p_server_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_server_condition_expr1=>'P14_SUBMIT_BY'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73771494885705329)
,p_event_id=>wwv_flow_api.id(73771383991705328)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P14_SUBMIT_BY IS NULL THEN',
'update bc_req',
'set SUBMIT_BY = :G_USER_NO,',
'    SUBMIT_DATE = sysdate,',
'    REQ_STAT = ''R''',
'WHERE req_no = :P14_REQ_NO;',
'',
'END IF;'))
,p_attribute_02=>'P14_REQ_NO,G_USER_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P14_SUBMIT_BY'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74343059591141714)
,p_event_id=>wwv_flow_api.id(73771383991705328)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71713101591299005)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Requisition'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P14_REQ_NO IS NULL THEN',
'SELECT S_BC_REQ.NEXTVAL',
'INTO   :P14_REQ_NO',
'FROM DUAL;',
'END IF;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(71705986412281647)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71897114034536408)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(71691779229281524)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form IN_BC_PURCHASE'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71715191343299025)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(71713366426299007)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Requisition Details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'CASE :APEX$ROW_STATUS',
'WHEN ''C'' THEN',
'INSERT INTO BC_REQDTL(REQDTL_NO, REQ_NO, ITEM_NO, BATCH_NAME, REQ_QTY, APP_QTY, ORG_NO, INSERT_BY, INSERT_DATE)',
'VALUES(S_BC_REQDTL.NEXTVAL, :P14_REQ_NO, :ITEM_NO, :BATCH_NAME, :REQ_QTY, :APP_QTY, :G_ORG_NO, :G_USER_NO, sysdate);',
'WHEN ''U'' THEN',
'UPDATE BC_REQDTL ',
'SET    ITEM_NO = :ITEM_NO,',
'BATCH_NAME = :BATCH_NAME,',
'REQ_QTY = :REQ_QTY,',
'APP_QTY = :APP_QTY,',
'ORG_NO = :G_ORG_NO, ',
'UPDATE_BY = :G_USER_NO, ',
'UPDATE_DATE = sysdate',
'WHERE ROWID  = :ROWID;',
'WHEN ''D'' THEN',
'DELETE FROM BC_REQDTL ',
'WHERE ROWID  = :ROWID;',
'END CASE;',
'EXCEPTION',
'WHEN OTHERS THEN',
'RAISE_APPLICATION_ERROR(-20001, SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73770870872705323)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'val date;',
'BEGIN',
'SELECT REQ_DATE ',
'INTO   val',
'FROM BC_REQ WHERE REQ_NO = :P14_REQ_NO;',
'IF val IS NOT NULL THEN',
'UPDATE BC_REQ',
'SET REQ_DATE = :P14_REQ_DATE',
'WHERE REQ_NO = :P14_REQ_NO;',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(71705533822281647)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76139885372360109)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(71713366426299007)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BRAND_NAME,ORIGIN_NAME, MODEL_NAME',
'INTO   :BRAND, :ORIGIN, :MODEL',
'FROM bc_item bi, bc_origin bo, bc_brand bb',
'WHERE bo.origin_no = bi.origin_no',
'AND   bb.brand_no = bi.brand_no',
'AND bi.item_no = :ITEM_NO;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71706749564281660)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(71691779229281524)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form IN_BC_PURCHASE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72648017622902240)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P14_REQ_ID IS NULL THEN',
'SELECT ''R''||TO_CHAR(sysdate, ''RRMM'')||''-00''||(MAX(SUBSTR(NVL(REQ_ID,''R2203-001''), 8))+1) GEN_ID',
'INTO :P14_REQ_ID ',
'from BC_REQ;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(71705986412281647)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73239920850772619)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P14_INSERT_BY IS NULL THEN',
':P14_INSERT_BY := :G_USER_NO;',
':P14_INSERT_DATE := sysdate;',
'elsif :P14_INSERT_DATE IS NOT NULL THEN',
':P14_UPDATE_BY := :G_USER_NO;',
':P14_UPDATE_DATE := sysdate;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/

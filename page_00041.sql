prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(68390722219935005)
,p_name=>'IN_BC_REQUISITION_STORE'
,p_alias=>'IN-BC-REQUISITION-STORE'
,p_step_title=>'IN_BC_REQUISITION_STORE'
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
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'APPLE'
,p_last_upd_yyyymmddhh24miss=>'20220310125903'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(145924688921114430)
,p_plug_name=>'REQUISITION'
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
'  from BC_REQ',
'WHERE REQ_STAT = ''R'''))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_edit_row_operations_column=>'REQ_NO'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P41_REQ_ID_V'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(145946276118131913)
,p_plug_name=>'Requisition Details'
,p_region_name=>'myig'
,p_parent_plug_id=>wwv_flow_api.id(145924688921114430)
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
'       UPDATE_DATE',
'   --    ''Delete'' Del',
'  from BC_REQDTL',
'  WHERE REQ_NO = :P41_REQ_NO'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P41_REQ_NO'
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
 p_id=>wwv_flow_api.id(145946480818131915)
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
 p_id=>wwv_flow_api.id(145946570854131916)
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
 p_id=>wwv_flow_api.id(145946685956131917)
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(145946766073131918)
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
 p_id=>wwv_flow_api.id(145946828271131919)
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(145946911442131920)
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
 p_id=>wwv_flow_api.id(145947074515131921)
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
 p_id=>wwv_flow_api.id(145947188070131922)
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
 p_id=>wwv_flow_api.id(145947255067131923)
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
 p_id=>wwv_flow_api.id(145947367716131924)
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
 p_id=>wwv_flow_api.id(145947451536131925)
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
 p_id=>wwv_flow_api.id(145947574088131926)
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
 p_id=>wwv_flow_api.id(145947660939131927)
,p_name=>'APEX$ROW_ACTION'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(145947713790131928)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(147473670245605533)
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
 p_id=>wwv_flow_api.id(147473719371605534)
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
 p_id=>wwv_flow_api.id(147473884868605535)
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
 p_id=>wwv_flow_api.id(145946400527131914)
,p_internal_uid=>145946400527131914
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
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
 p_id=>wwv_flow_api.id(145963986166294367)
,p_interactive_grid_id=>wwv_flow_api.id(145946400527131914)
,p_static_id=>'717311'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(145964208763294372)
,p_report_id=>wwv_flow_api.id(145963986166294367)
,p_view_type=>'GRID'
,p_stretch_columns=>false
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74234131036832929)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(145947713790131928)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74237572627886659)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(147473670245605533)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74238873325886684)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(147473719371605534)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74240272482886697)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(147473884868605535)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(145964644322294385)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(145946480818131915)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(145965535162294400)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(145946570854131916)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(145966464853294408)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(145946685956131917)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>264
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(145967382364294413)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(145946766073131918)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147.344
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(145968238731294419)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(145946828271131919)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(145969128697294425)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(145946911442131920)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(145970094643294431)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(145947074515131921)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(145970946907294436)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(145947188070131922)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(145971854124294443)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(145947255067131923)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(145972774573294449)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(145947367716131924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(145973616813294455)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(145947451536131925)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(145974588194294460)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(145947574088131926)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(145975316552294465)
,p_view_id=>wwv_flow_api.id(145964208763294372)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(145947660939131927)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(145945680719131907)
,p_plug_name=>'REQUISITION ID'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(68293448319933961)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select req_id, req_no, req_date, req_by  ',
'from bc_req ',
'WHERE submit_by IS NOT NULL',
'AND   REQ_STAT = ''R''',
'ORDER BY req_id DESC, REQ_DATE DESC;'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'ADVANCED_FORMATTING:SEARCH'
,p_attribute_05=>'&REQ_ID.'
,p_attribute_16=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:CR,41:P41_REQ_NO,P41_REQ_ID,P41_REQ_ID_V,P41_REQ_DATE,P41_REQ_BY:&REQ_NO.,&REQ_ID.,&REQ_NO.,&REQ_DATE.,&REQ_BY.'
,p_attribute_18=>'SERVER_LIKE_IGNORE'
,p_attribute_19=>'REQ_ID'
,p_attribute_20=>'Search Requisition ID'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74235027347833162)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(145924688921114430)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P41_REQ_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74234240726833161)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(145924688921114430)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74233538280833154)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(145924688921114430)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New '
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_required_patch=>wwv_flow_api.id(68202122264932664)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74233838137833161)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(145924688921114430)
,p_button_name=>'Submit_for_Approval'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(68366138352934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit For Approval'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P41_REQ_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-arrow-circle-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74235455103833163)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(145924688921114430)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P41_REQ_NO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_required_patch=>wwv_flow_api.id(68202122264932664)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74234602313833162)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(145924688921114430)
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
,p_button_condition=>'P41_REQ_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_required_patch=>wwv_flow_api.id(68202122264932664)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(74277777614833608)
,p_branch_name=>'Go To Page 14'
,p_branch_action=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41:P41_REQ_NO,P41_REQ_ID,P41_REQ_DATE:&P41_REQ_NO.,&P41_REQ_ID.,&P41_REQ_DATE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74235816723833185)
,p_name=>'P41_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74236266710833205)
,p_name=>'P41_REQ_NO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'REQ_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74236686565833205)
,p_name=>'P41_REQ_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_prompt=>'Requisition ID'
,p_source=>'REQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(68364133102934538)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74237010138833206)
,p_name=>'P41_REQ_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_prompt=>'Requisition Date'
,p_source=>'REQ_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>25
,p_cMaxlength=>255
,p_cattributes_element=>'readonly="readonly"'
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
 p_id=>wwv_flow_api.id(74237422062833207)
,p_name=>'P41_REQ_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
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
 p_id=>wwv_flow_api.id(74237811834833215)
,p_name=>'P41_STORE_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'STORE_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74238265751833216)
,p_name=>'P41_SUBMIT_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_default=>'0'
,p_source=>'SUBMIT_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74238685391833216)
,p_name=>'P41_SUBMIT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'SUBMIT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74239047452833217)
,p_name=>'P41_APPROVE_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'APPROVE_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74239417511833217)
,p_name=>'P41_APPROVE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'APPROVE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74239833137833219)
,p_name=>'P41_REJECT_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'REJECT_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74240247633833220)
,p_name=>'P41_REJECT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'REJECT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74240671498833221)
,p_name=>'P41_REJECT_CAUSE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'REJECT_CAUSE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74241034236833221)
,p_name=>'P41_REQ_STAT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'REQ_STAT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74241487744833222)
,p_name=>'P41_ORG_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_default=>'G_ORG_NO'
,p_item_default_type=>'ITEM'
,p_source=>'ORG_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74241864486833222)
,p_name=>'P41_INSERT_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'INSERT_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74242217401833223)
,p_name=>'P41_INSERT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'INSERT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74242621996833223)
,p_name=>'P41_UPDATE_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'UPDATE_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74243022319833225)
,p_name=>'P41_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_item_source_plug_id=>wwv_flow_api.id(145924688921114430)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74243426149833226)
,p_name=>'P41_NEWTEST'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(145924688921114430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74258447624833430)
,p_name=>'P41_DEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(145946276118131913)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(74259803127833454)
,p_name=>'P41_REQ_ID_V'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(145945680719131907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74258834811833437)
,p_tabular_form_region_id=>wwv_flow_api.id(145946276118131913)
,p_validation_name=>'Item'
,p_validation_sequence=>10
,p_validation=>'ITEM_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select an item.'
,p_associated_column=>'ITEM_NO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74261782609833544)
,p_name=>'ID'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(145945680719131907)
,p_bind_type=>'bind'
,p_bind_event_type=>'dblclick'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74262259356833553)
,p_event_id=>wwv_flow_api.id(74261782609833544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_REQ_ID,P41_REQ_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select req_id, req_date ',
'from bc_req ',
'where req_no = :P41_REQ_NO'))
,p_attribute_07=>'P41_REQ_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74262641086833554)
,p_name=>'Delete'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74234602313833162)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74263545804833562)
,p_event_id=>wwv_flow_api.id(74262641086833554)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'DELETE FROM BC_REQ WHERE REQ_NO = :P41_REQ_NO;'
,p_attribute_02=>'P41_REQ_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P41_REQ_NO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74263180254833557)
,p_event_id=>wwv_flow_api.id(74262641086833554)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(145945680719131907)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74264587539833563)
,p_event_id=>wwv_flow_api.id(74262641086833554)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_REQ_ID,P41_REQ_DATE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74265001980833564)
,p_event_id=>wwv_flow_api.id(74262641086833554)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''f?p=&APP_ID.:14:&SESSION.:::::'', ''_self'');'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74264035292833563)
,p_event_id=>wwv_flow_api.id(74262641086833554)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(145924688921114430)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74265446151833565)
,p_name=>'Clear'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74233538280833154)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74266914397833573)
,p_event_id=>wwv_flow_api.id(74265446151833565)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_REQ_ID_V,P41_REQ_NO,P41_ROWID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74266483877833566)
,p_event_id=>wwv_flow_api.id(74265446151833565)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_REQ_ID_V'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74265925540833565)
,p_event_id=>wwv_flow_api.id(74265446151833565)
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
 p_id=>wwv_flow_api.id(74269216012833576)
,p_name=>'DA_DELETEROW'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-irrow'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74269728094833577)
,p_event_id=>wwv_flow_api.id(74269216012833576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure to delete this?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74270202220833579)
,p_event_id=>wwv_flow_api.id(74269216012833576)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_DEL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74270734964833580)
,p_event_id=>wwv_flow_api.id(74269216012833576)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_DEL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'Delete from bc_reqdtl where reqdtl_no = :P41_DEL;'
,p_attribute_07=>'P41_DEL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74271241801833581)
,p_event_id=>wwv_flow_api.id(74269216012833576)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(145946276118131913)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74267388550833573)
,p_name=>'REQ_ID'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_REQ_ID_V'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74267891400833574)
,p_event_id=>wwv_flow_api.id(74267388550833573)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_NEWTEST'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT ''R''||TO_CHAR(sysdate, ''RRMM'')||''-00''||(MAX(SUBSTR(NVL(REQ_ID,''R2203-001''), 8))+1) GEN_ID from BC_REQ;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P41_REQ_ID'
,p_build_option_id=>wwv_flow_api.id(68202122264932664)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74268369465833575)
,p_event_id=>wwv_flow_api.id(74267388550833573)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_REQ_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT CURRENT_DATE FROM DUAL;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P41_REQ_DATE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74268857963833575)
,p_event_id=>wwv_flow_api.id(74267388550833573)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_REQ_BY'
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
,p_client_condition_element=>'P41_REQ_BY'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74271645169833581)
,p_name=>'setR'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74272122686833582)
,p_event_id=>wwv_flow_api.id(74271645169833581)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P41_REQ_ID").readOnly = true;',
'document.getElementById("P41_REQ_BY").readOnly = true;'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74272698044833585)
,p_event_id=>wwv_flow_api.id(74271645169833581)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_REQ_ID'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P41_REQ_ID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74273068920833586)
,p_name=>'Cancel'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74234240726833161)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74273526187833587)
,p_event_id=>wwv_flow_api.id(74273068920833586)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''f?p=&APP_ID.:41:&SESSION.:::::'', ''_self'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74274880549833597)
,p_name=>'New'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74275301463833601)
,p_event_id=>wwv_flow_api.id(74274880549833597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// apex.region("myig").call("getActions").set("edit", true);',
'document.getElementById("BRAND").readOnly = true;',
'document.getElementById("ORIGIN").readOnly = true;',
'document.getElementById("MODEL").readOnly = true;',
'document.getElementById("P41_REQ_DATE").readOnly = true;',
'document.getElementById("P41_REQ_DATE").setAttribute("readonly", true);',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74273997854833587)
,p_name=>'New_1'
,p_event_sequence=>100
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(145946276118131913)
,p_triggering_element=>'ITEM_NO'
,p_bind_type=>'live'
,p_bind_event_type=>'load'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74274498498833597)
,p_event_id=>wwv_flow_api.id(74273997854833587)
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
 p_id=>wwv_flow_api.id(74275732767833602)
,p_name=>'Submit_For_Approval'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74233838137833161)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74276796736833603)
,p_event_id=>wwv_flow_api.id(74275732767833602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Requisition successfully submitted for approval.'
,p_attribute_03=>'success'
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P41_SUBMIT_BY'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74277294599833604)
,p_event_id=>wwv_flow_api.id(74275732767833602)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Requisition already submitted for approval.'
,p_attribute_02=>'Submission'
,p_attribute_03=>'success'
,p_server_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_server_condition_expr1=>'P41_SUBMIT_BY'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74276290359833602)
,p_event_id=>wwv_flow_api.id(74275732767833602)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P41_SUBMIT_BY IS NULL THEN',
'update bc_req',
'set CHECK_BY = :G_USER_NO,',
'    CHECK_DATE = sysdate,',
'    REQ_STAT = ''W''',
'WHERE req_no = :P41_REQ_NO;',
'',
'END IF;'))
,p_attribute_02=>'P41_REQ_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P41_SUBMIT_BY'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74343157587141715)
,p_event_id=>wwv_flow_api.id(74275732767833602)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74260257741833541)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Requisition'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P41_REQ_NO IS NULL THEN',
'SELECT S_BC_REQ.NEXTVAL',
'INTO   :P41_REQ_NO',
'FROM DUAL;',
'END IF;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(74235455103833163)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74249846414833267)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(145924688921114430)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form IN_BC_PURCHASE'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74259159306833438)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(145946276118131913)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Requisition Details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'CASE :APEX$ROW_STATUS',
'WHEN ''C'' THEN',
'INSERT INTO BC_REQDTL(REQDTL_NO, REQ_NO, ITEM_NO, BATCH_NAME, REQ_QTY, APP_QTY, ORG_NO, INSERT_BY, INSERT_DATE)',
'VALUES(S_BC_REQDTL.NEXTVAL, :P41_REQ_NO, :ITEM_NO, :BATCH_NAME, :REQ_QTY, :APP_QTY, :G_ORG_NO, :G_USER_NO, sysdate);',
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
 p_id=>wwv_flow_api.id(74261324273833543)
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
'FROM BC_REQ WHERE REQ_NO = :P41_REQ_NO;',
'IF val IS NOT NULL THEN',
'UPDATE BC_REQ',
'SET REQ_DATE = :P41_REQ_DATE',
'WHERE REQ_NO = :P41_REQ_NO;',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(74235027347833162)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74249560101833251)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(145924688921114430)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form IN_BC_PURCHASE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74260535985833541)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P41_REQ_ID IS NULL THEN',
'SELECT ''R''||TO_CHAR(sysdate, ''RRMM'')||''-00''||(MAX(SUBSTR(NVL(REQ_ID,''R2203-001''), 8))+1) GEN_ID',
'INTO :P41_REQ_ID ',
'from BC_REQ;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(74235455103833163)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74260906133833542)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P41_INSERT_BY IS NULL THEN',
':P41_INSERT_BY := :G_USER_NO;',
':P41_INSERT_DATE := sysdate;',
'elsif :P41_INSERT_DATE IS NOT NULL THEN',
':P41_UPDATE_BY := :G_USER_NO;',
':P41_UPDATE_DATE := sysdate;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/

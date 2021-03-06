prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(68390722219935005)
,p_name=>'test_trndtl'
,p_alias=>'TEST-TRNDTL'
,p_step_title=>'test_trndtl'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(68215616165933137)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'APPLE'
,p_last_upd_yyyymmddhh24miss=>'20220308121632'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(144665143701207032)
,p_plug_name=>'Form on BC_TRN'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(68293448319933961)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'BC_TRN'
,p_query_order_by=>'REQ_NO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(144687921016207235)
,p_plug_name=>'IN_TRNDTL'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(68289158869933952)
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'BC_TRNDTL'
,p_query_where=>'TRN_NO = :P38_TRN_NO'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P38_TRN_NO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'IN_TRNDTL'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144689250745207241)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144689701917207244)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144690741452207254)
,p_name=>'TRND_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRND_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'S_BC_TRNDTL'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144691684725207255)
,p_name=>'TRN_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRN_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'1234'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144692651709207257)
,p_name=>'REQDTL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQDTL_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144693642557207260)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Item Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(69730134773020810)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P38_TRN_NO'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144694603448207266)
,p_name=>'RCV_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RCV_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Received Quantity'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144695608990207268)
,p_name=>'ISU_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISU_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Issue  Quantity'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144696669656207269)
,p_name=>'ORG_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'G_ORG_NO'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144697593264207270)
,p_name=>'INSERT_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERT_BY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'G_USER_NO'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144698665034207271)
,p_name=>'INSERT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERT_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>'select sysdate from dual'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144699638266207273)
,p_name=>'UPDATE_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_BY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144700658632207274)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(144739806336414793)
,p_name=>'Add_store'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Add Store'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:Y,::'
,p_link_text=>'<button style = "background-color: #4CAF50;   border: none;   color: white;     text-align: center;   text-decoration: none;   display: inline-block;   font-size: 11px;   margin: 1px 1px;   cursor: pointer;">Add Store</button>'
,p_link_attributes=>'&"Add_store".'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(144688459753207237)
,p_internal_uid=>144688459753207237
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(144688854835207239)
,p_interactive_grid_id=>wwv_flow_api.id(144688459753207237)
,p_static_id=>'718116'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(144689085310207240)
,p_report_id=>wwv_flow_api.id(144688854835207239)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(144690128299207246)
,p_view_id=>wwv_flow_api.id(144689085310207240)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(144689701917207244)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(144691071127207254)
,p_view_id=>wwv_flow_api.id(144689085310207240)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(144690741452207254)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(144691990035207256)
,p_view_id=>wwv_flow_api.id(144689085310207240)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(144691684725207255)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(144692997548207257)
,p_view_id=>wwv_flow_api.id(144689085310207240)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(144692651709207257)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(144694043612207265)
,p_view_id=>wwv_flow_api.id(144689085310207240)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(144693642557207260)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>280.64099999999996
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(144695065600207267)
,p_view_id=>wwv_flow_api.id(144689085310207240)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(144694603448207266)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>235.64100000000002
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(144696059427207268)
,p_view_id=>wwv_flow_api.id(144689085310207240)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(144695608990207268)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(144697057871207269)
,p_view_id=>wwv_flow_api.id(144689085310207240)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(144696669656207269)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(144698071754207271)
,p_view_id=>wwv_flow_api.id(144689085310207240)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(144697593264207270)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(144699023667207272)
,p_view_id=>wwv_flow_api.id(144689085310207240)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(144698665034207271)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(144700065201207273)
,p_view_id=>wwv_flow_api.id(144689085310207240)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(144699638266207273)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(144701023941207274)
,p_view_id=>wwv_flow_api.id(144689085310207240)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(144700658632207274)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(144765889655503697)
,p_view_id=>wwv_flow_api.id(144689085310207240)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(144739806336414793)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(144740303226414798)
,p_name=>'Master Records'
,p_template=>wwv_flow_api.id(68239009819933696)
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'select "TRN_NO",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P38_TRN_NO'', p_values => "TRN_NO") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P38_TRN_NO,''0'') = "TRN_NO"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("TRN_DATE", 1, 50)||( case when length("TRN_DATE") > 50 then ''...'' end ) list_title,',
'    substr("TRN_ID", 1, 50)||( case when length("TRN_ID") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "BC_TRN" x',
'where (:P38_SEARCH is null',
'        or upper(x."TRN_DATE") like ''%''||upper(:P38_SEARCH)||''%''',
'        or upper(x."TRN_ID") like ''%''||upper(:P38_SEARCH)||''%''',
'    )',
'order by "TRN_DATE"',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P38_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(68316681898934096)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No data found.</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72899489255145873)
,p_query_column_id=>1
,p_column_alias=>'TRN_NO'
,p_column_display_sequence=>110
,p_column_heading=>'Trn No'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72899893063145874)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>20
,p_column_heading=>'Link Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72900247684145875)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>30
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72902257243145879)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>40
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72902675730145880)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>50
,p_column_heading=>'Link Attr'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72903093787145880)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>60
,p_column_heading=>'Icon Color Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72900673409145875)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>70
,p_column_heading=>'List Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72901079921145876)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>80
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72901405997145878)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>90
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72901894763145879)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>100
,p_column_heading=>'List Badge'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(216834747969978866)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(68239009819933696)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72878580801145705)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(144665143701207032)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P38_TRN_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72877775044145699)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(144665143701207032)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72878967386145705)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(144665143701207032)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P38_TRN_NO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72878179770145703)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(144665143701207032)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P38_TRN_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72879782432145712)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(144665143701207032)
,p_button_name=>'GET_NEXT_TRN_NO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68365303336934564)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_condition=>'P38_TRN_NO_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72879349939145706)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(144665143701207032)
,p_button_name=>'GET_PREVIOUS_TRN_NO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68365303336934564)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P38_TRN_NO_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72880195268145722)
,p_name=>'P38_TRN_NO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_source_plug_id=>wwv_flow_api.id(144665143701207032)
,p_prompt=>'New'
,p_source=>'TRN_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72880530675145738)
,p_name=>'P38_TRN_NO_PREV'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72880917423145738)
,p_name=>'P38_TRN_NO_NEXT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72881329738145739)
,p_name=>'P38_TRN_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_source_plug_id=>wwv_flow_api.id(144665143701207032)
,p_prompt=>'Transaction ID'
,p_source=>'TRN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(68363304746934507)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72881726345145739)
,p_name=>'P38_TRN_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_source_plug_id=>wwv_flow_api.id(144665143701207032)
,p_prompt=>'Transaction Date'
,p_source=>'TRN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(68363304746934507)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72882112186145741)
,p_name=>'P38_REQ_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_source_plug_id=>wwv_flow_api.id(144665143701207032)
,p_prompt=>'Requisition ID'
,p_source=>'REQ_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72882524345145742)
,p_name=>'P38_PROC_TYPE_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_source_plug_id=>wwv_flow_api.id(144665143701207032)
,p_prompt=>'Proc Type No'
,p_source=>'PROC_TYPE_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72882907995145742)
,p_name=>'P38_SUPPLIER_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_source_plug_id=>wwv_flow_api.id(144665143701207032)
,p_prompt=>'Supplier Name'
,p_source=>'SUPPLIER_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supplier_name,supplier_no   ',
'from   bc_supplier;'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72883344063145744)
,p_name=>'P38_WORK_ORDER_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_source_plug_id=>wwv_flow_api.id(144665143701207032)
,p_prompt=>'Work Order Date'
,p_source=>'WORK_ORDER_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72883760323145744)
,p_name=>'P38_PROC_COMMITTEE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_source_plug_id=>wwv_flow_api.id(144665143701207032)
,p_prompt=>'Proc Committee'
,p_source=>'PROC_COMMITTEE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72884192043145744)
,p_name=>'P38_ORG_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_source_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_default=>'G_ORG_NO'
,p_item_default_type=>'ITEM'
,p_source=>'ORG_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72884557089145745)
,p_name=>'P38_INSERT_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_source_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_default=>'G_USER_NO'
,p_item_default_type=>'ITEM'
,p_source=>'INSERT_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72884963063145745)
,p_name=>'P38_INSERT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_source_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_default=>'select sysdate from dual'
,p_item_default_type=>'SQL_QUERY'
,p_source=>'INSERT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72885396561145745)
,p_name=>'P38_UPDATE_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_source_plug_id=>wwv_flow_api.id(144665143701207032)
,p_source=>'UPDATE_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72885781768145746)
,p_name=>'P38_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_item_source_plug_id=>wwv_flow_api.id(144665143701207032)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72886103853145746)
,p_name=>'P38_TRN_NO_COUNT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72886532307145747)
,p_name=>'P38_MASTER_PK_HOLDER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(144665143701207032)
,p_prompt=>'New'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72898717477145867)
,p_name=>'P38_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(216834747969978866)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(68364002670934537)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(72903486581145936)
,p_name=>'Perform Search'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72903954524145947)
,p_event_id=>wwv_flow_api.id(72903486581145936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(144740303226414798)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72904406245145948)
,p_event_id=>wwv_flow_api.id(72903486581145936)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(72905761579145950)
,p_name=>'pk'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_TRN_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72906274505145958)
,p_event_id=>wwv_flow_api.id(72905761579145950)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_MASTER_PK_HOLDER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S_BC_TRN.NEXTVAL',
'FROM   DUAL;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P38_TRN_DATE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72906647646145958)
,p_event_id=>wwv_flow_api.id(72905761579145950)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_TRN_NO'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P38_MASTER_PK_HOLDER'
,p_attribute_07=>'P38_MASTER_PK_HOLDER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_elem_type=>'ITEM'
,p_client_condition_element=>'P38_TRN_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(72904842156145948)
,p_name=>'fk'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(144687921016207235)
,p_triggering_element=>'ITEM_NO'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'ITEM_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72905385469145948)
,p_event_id=>wwv_flow_api.id(72904842156145948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TRN_NO'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P38_MASTER_PK_HOLDER'
,p_attribute_07=>'P38_MASTER_PK_HOLDER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'TRN_NO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72891152443145775)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(144665143701207032)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on BC_TRN'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72898199318145858)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(144687921016207235)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'IN_TRNDTL - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72890751568145760)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(144665143701207032)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on BC_TRN'
,p_attribute_01=>'P38_TRN_NO_NEXT'
,p_attribute_02=>'P38_TRN_NO_PREV'
,p_attribute_03=>'P38_TRN_NO_COUNT'
);
wwv_flow_api.component_end;
end;
/

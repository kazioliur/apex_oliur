prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(68390722219935005)
,p_name=>'fror_left_column'
,p_alias=>'FROR-LEFT-COLUMN'
,p_step_title=>'fror_left_column'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>wwv_flow_api.id(68215616165933137)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIUR'
,p_last_upd_yyyymmddhh24miss=>'20220306133204'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71950908946848025)
,p_plug_name=>'fror_left_column'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(68271304335933904)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71952118070848028)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(68239009819933696)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(71952904820848034)
,p_name=>'Master Records'
,p_template=>wwv_flow_api.id(68240444901933707)
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "TRN_NO",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P30_TRN_NO'', p_values => "TRN_NO") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P30_TRN_NO,''0'') = "TRN_NO"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("TRN_DATE", 1, 50)||( case when length("TRN_DATE") > 50 then ''...'' end ) list_title,',
'    substr("TRN_ID", 1, 50)||( case when length("TRN_ID") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "BC_TRN" x',
'where (:P30_SEARCH is null',
'        or upper(x."TRN_DATE") like ''%''||upper(:P30_SEARCH)||''%''',
'        or upper(x."TRN_ID") like ''%''||upper(:P30_SEARCH)||''%''',
'    )',
'order by "TRN_DATE"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P30_SEARCH'
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
 p_id=>wwv_flow_api.id(71953601394848057)
,p_query_column_id=>1
,p_column_alias=>'TRN_NO'
,p_column_display_sequence=>1
,p_column_heading=>'TRN_NO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71953936572848063)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'LINK_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71954305503848064)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'LINK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71954728666848065)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'ICON_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71955109681848066)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'LINK_ATTR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71955547052848067)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'ICON_COLOR_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71955928924848067)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'LIST_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71956375444848068)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'LIST_TITLE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71956727456848069)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'LIST_TEXT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71957157945848069)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'LIST_BADGE'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(71957538416848226)
,p_name=>'Bc Trn'
,p_template=>wwv_flow_api.id(68293448319933961)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'BC_TRN'
,p_query_where=>'"TRN_NO" = :P30_TRN_NO'
,p_include_rowid_column=>false
,p_display_when_condition=>'P30_TRN_NO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(68322018907934126)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71958132736848229)
,p_query_column_id=>1
,p_column_alias=>'TRN_NO'
,p_column_display_sequence=>1
,p_column_heading=>'Trn No'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_TRN"',
'where "TRN_NO" is not null',
'and "TRN_NO" = :P30_TRN_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71958594765848230)
,p_query_column_id=>2
,p_column_alias=>'TRN_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Trn Id'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_TRN"',
'where "TRN_ID" is not null',
'and "TRN_NO" = :P30_TRN_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71958929693848230)
,p_query_column_id=>3
,p_column_alias=>'TRN_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Trn Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_TRN"',
'where "TRN_DATE" is not null',
'and "TRN_NO" = :P30_TRN_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71959393964848230)
,p_query_column_id=>4
,p_column_alias=>'REQ_NO'
,p_column_display_sequence=>4
,p_column_heading=>'Req No'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_TRN"',
'where "REQ_NO" is not null',
'and "TRN_NO" = :P30_TRN_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71959750658848231)
,p_query_column_id=>5
,p_column_alias=>'PROC_TYPE_NO'
,p_column_display_sequence=>5
,p_column_heading=>'Proc Type No'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_TRN"',
'where "PROC_TYPE_NO" is not null',
'and "TRN_NO" = :P30_TRN_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71960140259848231)
,p_query_column_id=>6
,p_column_alias=>'SUPPLIER_NO'
,p_column_display_sequence=>6
,p_column_heading=>'Supplier No'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_TRN"',
'where "SUPPLIER_NO" is not null',
'and "TRN_NO" = :P30_TRN_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71960552992848232)
,p_query_column_id=>7
,p_column_alias=>'WORK_ORDER_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Work Order Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_TRN"',
'where "WORK_ORDER_DATE" is not null',
'and "TRN_NO" = :P30_TRN_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71960910904848232)
,p_query_column_id=>8
,p_column_alias=>'PROC_COMMITTEE'
,p_column_display_sequence=>8
,p_column_heading=>'Proc Committee'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_TRN"',
'where "PROC_COMMITTEE" is not null',
'and "TRN_NO" = :P30_TRN_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71961349055848233)
,p_query_column_id=>9
,p_column_alias=>'ORG_NO'
,p_column_display_sequence=>9
,p_column_heading=>'Org No'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_TRN"',
'where "ORG_NO" is not null',
'and "TRN_NO" = :P30_TRN_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71961730341848233)
,p_query_column_id=>10
,p_column_alias=>'INSERT_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Insert By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_TRN"',
'where "INSERT_BY" is not null',
'and "TRN_NO" = :P30_TRN_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71962166536848233)
,p_query_column_id=>11
,p_column_alias=>'INSERT_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Insert Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_TRN"',
'where "INSERT_DATE" is not null',
'and "TRN_NO" = :P30_TRN_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71962511692848234)
,p_query_column_id=>12
,p_column_alias=>'UPDATE_BY'
,p_column_display_sequence=>12
,p_column_heading=>'Update By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_TRN"',
'where "UPDATE_BY" is not null',
'and "TRN_NO" = :P30_TRN_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71962939081848234)
,p_query_column_id=>13
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'Update Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_TRN"',
'where "UPDATE_DATE" is not null',
'and "TRN_NO" = :P30_TRN_NO'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71971824564848268)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(68239009819933696)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P30_TRN_NO'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(71972213283848269)
,p_name=>'Bc Trndtl'
,p_template=>wwv_flow_api.id(68293448319933961)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'BC_TRNDTL'
,p_query_where=>'"TRN_NO" = :P30_TRN_NO'
,p_include_rowid_column=>true
,p_display_when_condition=>'P30_TRN_NO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(68328441370934140)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71973032309848312)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:RP:P35_ROWID:#ROWID#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_report_column_width=>32
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71973473255848313)
,p_query_column_id=>2
,p_column_alias=>'TRND_NO'
,p_column_display_sequence=>2
,p_column_heading=>'Trnd No'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71973807794848313)
,p_query_column_id=>3
,p_column_alias=>'TRN_NO'
,p_column_display_sequence=>3
,p_column_heading=>'Trn No'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71974243054848314)
,p_query_column_id=>4
,p_column_alias=>'REQDTL_NO'
,p_column_display_sequence=>4
,p_column_heading=>'Reqdtl No'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71974676918848314)
,p_query_column_id=>5
,p_column_alias=>'ITEM_NO'
,p_column_display_sequence=>5
,p_column_heading=>'Item No'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71975014925848314)
,p_query_column_id=>6
,p_column_alias=>'RCV_QTY'
,p_column_display_sequence=>6
,p_column_heading=>'Rcv Qty'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71975450740848315)
,p_query_column_id=>7
,p_column_alias=>'ISU_QTY'
,p_column_display_sequence=>7
,p_column_heading=>'Isu Qty'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71975845021848315)
,p_query_column_id=>8
,p_column_alias=>'ORG_NO'
,p_column_display_sequence=>8
,p_column_heading=>'Org No'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71976264399848315)
,p_query_column_id=>9
,p_column_alias=>'INSERT_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Insert By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71976686824848318)
,p_query_column_id=>10
,p_column_alias=>'INSERT_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Insert Date'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71977018646848318)
,p_query_column_id=>11
,p_column_alias=>'UPDATE_BY'
,p_column_display_sequence=>11
,p_column_heading=>'Update By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71977417948848319)
,p_query_column_id=>12
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'Update Date'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71997424179848363)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(68239009819933696)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>'No Record Selected'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P30_TRN_NO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71982143039848326)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(71972213283848269)
,p_button_name=>'POP_BC_TRNDTL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(68365303336934564)
,p_button_image_alt=>'Add Bc Trndtl'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:RP,35:P35_TRN_NO:&P30_TRN_NO.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71997920708848365)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(71957538416848226)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(68366138352934590)
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:RP,33:P33_TRN_NO:&P30_TRN_NO.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71951499938848027)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(71950908946848025)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(68366138352934590)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&APP_SESSION.:RESET:&DEBUG.:RP,30::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71951898119848028)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(71950908946848025)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(68366138352934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:RP,33::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71952597731848032)
,p_name=>'P30_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(71952118070848028)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(68364002670934537)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71971430664848268)
,p_name=>'P30_TRN_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(71957538416848226)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(71998208464848365)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(71957538416848226)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(71998897751848366)
,p_event_id=>wwv_flow_api.id(71998208464848365)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(71957538416848226)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(71999340312848366)
,p_event_id=>wwv_flow_api.id(71998208464848365)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Bc Trn row(s) updated.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(71972327080848270)
,p_name=>'Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(71972213283848269)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(71982853757848327)
,p_event_id=>wwv_flow_api.id(71972327080848270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(71972213283848269)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(71983395970848328)
,p_event_id=>wwv_flow_api.id(71972327080848270)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Bc Trndtl row(s) updated.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(71998331818848365)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72000137845848367)
,p_event_id=>wwv_flow_api.id(71998331818848365)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(71952904820848034)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72000618577848368)
,p_event_id=>wwv_flow_api.id(71998331818848365)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.component_end;
end;
/

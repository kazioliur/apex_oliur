prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(68390722219935005)
,p_name=>'IN_REQUISITION'
,p_alias=>'IN-REQUISITION'
,p_step_title=>'IN_REQUISITION'
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
,p_last_updated_by=>'APPLE'
,p_last_upd_yyyymmddhh24miss=>'20220302152645'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69324759027440921)
,p_plug_name=>'IN_REQUISITION'
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
 p_id=>wwv_flow_api.id(69325924284440922)
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
 p_id=>wwv_flow_api.id(69326786863440924)
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
'select "REQ_NO",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P21_REQ_NO'', p_values => "REQ_NO") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P21_REQ_NO,''0'') = "REQ_NO"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("REQ_DATE", 1, 50)||( case when length("REQ_DATE") > 50 then ''...'' end ) list_title,',
'    substr("SUBMIT_DATE", 1, 50)||( case when length("SUBMIT_DATE") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "BC_REQ" x',
'where (:P21_SEARCH is null',
'        or upper(x."REQ_DATE") like ''%''||upper(:P21_SEARCH)||''%''',
'        or upper(x."SUBMIT_DATE") like ''%''||upper(:P21_SEARCH)||''%''',
'    )',
'order by "REQ_DATE"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P21_SEARCH'
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
 p_id=>wwv_flow_api.id(69327453305440930)
,p_query_column_id=>1
,p_column_alias=>'REQ_NO'
,p_column_display_sequence=>1
,p_column_heading=>'REQ_NO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69327893259440930)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'LINK_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69328218894440931)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'LINK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69328623652440931)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'ICON_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69329077704440932)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'LINK_ATTR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69329441924440932)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'ICON_COLOR_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69329867507440933)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'LIST_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69330289603440933)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'LIST_TITLE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69330668194440934)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'LIST_TEXT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69331085902440934)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'LIST_BADGE'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(69331464293441009)
,p_name=>'Bc Req'
,p_template=>wwv_flow_api.id(68293448319933961)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'BC_REQ'
,p_query_where=>'"REQ_NO" = :P21_REQ_NO'
,p_include_rowid_column=>false
,p_display_when_condition=>'P21_REQ_NO'
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
 p_id=>wwv_flow_api.id(69332048559441011)
,p_query_column_id=>1
,p_column_alias=>'REQ_NO'
,p_column_display_sequence=>1
,p_column_heading=>'Req No'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REQ_NO" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69332459970441011)
,p_query_column_id=>2
,p_column_alias=>'REQ_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Req Id'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REQ_ID" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69332823034441012)
,p_query_column_id=>3
,p_column_alias=>'REQ_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Req Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REQ_DATE" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69333275846441012)
,p_query_column_id=>4
,p_column_alias=>'REQ_BY'
,p_column_display_sequence=>4
,p_column_heading=>'Req By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REQ_BY" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69333636767441012)
,p_query_column_id=>5
,p_column_alias=>'STORE_NO'
,p_column_display_sequence=>5
,p_column_heading=>'Store No'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "STORE_NO" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69334027168441013)
,p_query_column_id=>6
,p_column_alias=>'SUBMIT_BY'
,p_column_display_sequence=>6
,p_column_heading=>'Submit By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "SUBMIT_BY" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69334425948441013)
,p_query_column_id=>7
,p_column_alias=>'SUBMIT_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Submit Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "SUBMIT_DATE" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69334888041441014)
,p_query_column_id=>8
,p_column_alias=>'APPROVE_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Approve By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "APPROVE_BY" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69335220720441014)
,p_query_column_id=>9
,p_column_alias=>'APPROVE_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Approve Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "APPROVE_DATE" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69335674221441015)
,p_query_column_id=>10
,p_column_alias=>'REJECT_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Reject By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REJECT_BY" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69336068652441015)
,p_query_column_id=>11
,p_column_alias=>'REJECT_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Reject Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REJECT_DATE" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69336402325441015)
,p_query_column_id=>12
,p_column_alias=>'REJECT_CAUSE'
,p_column_display_sequence=>12
,p_column_heading=>'Reject Cause'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REJECT_CAUSE" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69336892482441016)
,p_query_column_id=>13
,p_column_alias=>'ORG_NO'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "ORG_NO" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69337227741441017)
,p_query_column_id=>14
,p_column_alias=>'INSERT_BY'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "INSERT_BY" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69337682371441017)
,p_query_column_id=>15
,p_column_alias=>'INSERT_DATE'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "INSERT_DATE" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69338069399441018)
,p_query_column_id=>16
,p_column_alias=>'UPDATE_BY'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "UPDATE_BY" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69338450607441018)
,p_query_column_id=>17
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "UPDATE_DATE" is not null',
'and "REQ_NO" = :P21_REQ_NO'))
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69349789957441030)
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
,p_plug_display_when_condition=>'P21_REQ_NO'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(69350154500441030)
,p_name=>'Bc Reqdtl'
,p_template=>wwv_flow_api.id(68293448319933961)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'BC_REQDTL'
,p_query_where=>'"REQ_NO" = :P21_REQ_NO'
,p_include_rowid_column=>true
,p_display_when_condition=>'P21_REQ_NO'
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
 p_id=>wwv_flow_api.id(69350833504441072)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:RP:P23_ROWID:#ROWID#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_report_column_width=>32
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69351223443441072)
,p_query_column_id=>2
,p_column_alias=>'REQDTL_NO'
,p_column_display_sequence=>2
,p_column_heading=>'Reqdtl No'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69351692763441073)
,p_query_column_id=>3
,p_column_alias=>'REQ_NO'
,p_column_display_sequence=>3
,p_column_heading=>'Req No'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69352099684441078)
,p_query_column_id=>4
,p_column_alias=>'ITEM_NO'
,p_column_display_sequence=>4
,p_column_heading=>'Item No'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69352409915441078)
,p_query_column_id=>5
,p_column_alias=>'BATCH_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Batch Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69352803030441079)
,p_query_column_id=>6
,p_column_alias=>'REQ_QTY'
,p_column_display_sequence=>6
,p_column_heading=>'Req Qty'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69353229406441079)
,p_query_column_id=>7
,p_column_alias=>'APP_QTY'
,p_column_display_sequence=>7
,p_column_heading=>'App Qty'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69353643231441080)
,p_query_column_id=>8
,p_column_alias=>'ORG_NO'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69354055178441080)
,p_query_column_id=>9
,p_column_alias=>'INSERT_BY'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69354467359441081)
,p_query_column_id=>10
,p_column_alias=>'INSERT_DATE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69354894664441081)
,p_query_column_id=>11
,p_column_alias=>'UPDATE_BY'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69355287276441082)
,p_query_column_id=>12
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69375305910441128)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(68239009819933696)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>'No Record Selected'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P21_REQ_NO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69359980903441088)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(69350154500441030)
,p_button_name=>'POP_BC_REQDTL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(68365303336934564)
,p_button_image_alt=>'Add Bc Reqdtl'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:RP,23:P23_REQ_NO:&P21_REQ_NO.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69375845916441129)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(69331464293441009)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(68366138352934590)
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:RP,22:P22_REQ_NO:&P21_REQ_NO.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69325221194440922)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(69324759027440921)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(68366138352934590)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&APP_SESSION.:RESET:&DEBUG.:RP,21::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69325679806440922)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(69324759027440921)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(68366138352934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:RP,22::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69326358938440923)
,p_name=>'P21_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(69325924284440922)
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
 p_id=>wwv_flow_api.id(69349339727441029)
,p_name=>'P21_REQ_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(69331464293441009)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69376192144441129)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(69331464293441009)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69376714965441129)
,p_event_id=>wwv_flow_api.id(69376192144441129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(69331464293441009)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69377203735441130)
,p_event_id=>wwv_flow_api.id(69376192144441129)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Bc Req row(s) updated.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69350235583441030)
,p_name=>'Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(69350154500441030)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69360662571441091)
,p_event_id=>wwv_flow_api.id(69350235583441030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(69350154500441030)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69361133658441093)
,p_event_id=>wwv_flow_api.id(69350235583441030)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Bc Reqdtl row(s) updated.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69376206184441129)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69378028746441131)
,p_event_id=>wwv_flow_api.id(69376206184441129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(69326786863440924)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69378535844441131)
,p_event_id=>wwv_flow_api.id(69376206184441129)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.component_end;
end;
/

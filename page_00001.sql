prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(68390722219935005)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'INARS Inventory Management'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#R68400595939937000 > div.t-HeroRegion-top > div > div.t-HeroRegion-col.t-HeroRegion-col--left > span{',
'    background-image:url(#APP_FILES#BCSIR_LOGO.png);',
'background-repeat: no-repeat;',
'background-size: 80px 80px;',
'background-position: center;',
'-moz-border-radius: 80px/80px;',
'  -webkit-border-radius: 80px 80px;',
'  padding-bottom: 2px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'APPLE'
,p_last_upd_yyyymmddhh24miss=>'20220302162148'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68400595939937000)
,p_plug_name=>'INARS Chemical Inventory'
,p_icon_css_classes=>'#APP_FILES#BCSIR_LOGO.png'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(68271304335933904)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.component_end;
end;
/

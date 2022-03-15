prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(68390722219935005)
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Inventory Management - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P9999_ORG_NO").html(''<div style="font-size: 24px;"> Sign In </div> <br /> <div style="font-size:12px;">Login to stay connected.</div>'');',
'',
'',
'',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-PageBody--login {',
'background-image:url(#APP_FILES#BCSIR_BACKGROUND.jpg);',
'background-repeat: no-repeat;',
'background-size : cover;',
'/* background-size: 800px 800px; */',
'background-position: center;',
'}',
'',
'#R68395375944936489 > div.t-Login-header > span{',
'background-image:url(#APP_FILES#BCSIR_LOGO.png);',
'background-repeat: no-repeat;',
'/* background-size : cover; */',
'background-size: 80px 80px;',
'background-position: center;',
'-moz-border-radius: 80px/80px;',
'  -webkit-border-radius: 80px 80px;',
'  /* border-radius: 50px/50px;',
'  border: solid 21px #f00; */',
'  padding-bottom: 2px;',
'}',
'',
'#R68395375944936489 > div.t-Login-header{',
'    padding: 0px 0px 0px 0px;',
'}',
'',
'#R68395375944936489 > div.t-Login-buttons{',
'    width: 100px;',
'}',
'',
'#P9999_USERNAME_LABEL{',
'    font-size: 25px;',
'    font-weight: bold;',
'    padding-bottom: 15px;',
'}',
'',
'#B69000908961683819{',
'    background-color: none;',
'}',
''))
,p_step_template=>wwv_flow_api.id(68211855248933117)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIUR'
,p_last_upd_yyyymmddhh24miss=>'20220308094916'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68395375944936489)
,p_plug_name=>'<H2 style= "color:#28AAA9; text-align: center;">INARS Chemical Inventory</>'
,p_plug_template=>wwv_flow_api.id(68290909899933955)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68397879403936939)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(68395375944936489)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69000908961683819)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(68395375944936489)
,p_button_name=>'SIGN_UP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_image_alt=>'Create an Account Sign Up'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RR,2::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68395665595936846)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68395375944936489)
,p_prompt=>'Sign In'
,p_placeholder=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(68364002670934537)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68395904212936853)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(68395375944936489)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(68364002670934537)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68396969224936918)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(68395375944936489)
,p_prompt=>'Remember Me'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(68396288642936859)||'.'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(68364002670934537)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69532200469831527)
,p_name=>'P9999_ORG_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68395375944936489)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68398518023936968)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68398274492936958)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68399349923936976)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68398996919936970)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;',
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
' :G_ORG_NO  := :P9999_ORG_NO;',
'',
':G_USERNAME := UPPER(:P9999_USERNAME);',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/

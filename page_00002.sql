prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(68390722219935005)
,p_name=>'Sign Up'
,p_alias=>'SIGN-UP'
,p_step_title=>'Sign Up'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.requiredInput .requiredBlock {background-color: transparent; }',
'',
'.requiredInput .requiredBlock::before { display: block; content: "*";',
' font-size: 1.5em; ',
' font-weight: bold; ',
'  color: #c00;',
'  margin-left: -4px; ',
'  margin-top: -2px; }',
'',
'',
'#P2_CHECK_BOX + label::before {',
'	content: ''*'';',
'	color: red;',
'  }'))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_browser_cache=>'N'
,p_last_updated_by=>'APPLE'
,p_last_upd_yyyymmddhh24miss=>'20220309155111'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68529274344192801)
,p_plug_name=>'Main Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(68293448319933961)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h1  style ="width: 430px;height: 45px;font-style: normal;font-weight: bold;color:#28AAA9; font-size:34px;font-family:Helvetica">INARS Chemical Inventory </h1><center>',
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
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68530117575192810)
,p_plug_name=>'image'
,p_parent_plug_id=>wwv_flow_api.id(68529274344192801)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(68293448319933961)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'',
'',
'',
'<!DOCTYPE html>',
'<html>',
'<head>',
'<title>Page Title</title>',
'<style>',
'    img {',
'  border-radius: 4px;',
'  padding: 100px 0 0 0;',
'  width: 250px;',
'  hieght: 300px;',
'}',
'',
'</style>',
'</head>',
'<body>',
'<img src="#APP_FILES#login page image/Logingpage_pic.PNG" alt="Not available">',
'',
'',
'</body>',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68530299586192811)
,p_plug_name=>'Field'
,p_parent_plug_id=>wwv_flow_api.id(68529274344192801)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(68293448319933961)
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2  style="text-align:left; padding:0px 0px 0px 20px;">   Sign Up </h2>',
'',
'<p style="text-align:left;padding:0px 0px 0px 20px;"> Create your inventory account</p>',
'',
'',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68530313423192812)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(68530299586192811)
,p_button_name=>'sign_up'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(68366093926934590)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign Up'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(69532789067831532)
,p_branch_name=>'GOTO9999'
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68529452190192803)
,p_name=>'P2_RETYPE_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68530299586192811)
,p_prompt=>'Retype Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68529592701192804)
,p_name=>'P2_USER_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68530299586192811)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68529663811192805)
,p_name=>'P2_DESIGNATION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68530299586192811)
,p_prompt=>'Designation'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'JOBTITLE_NAME'
,p_lov=>'select JOBTITLE_NAME , jobtitle_no from bc_jobtitle;'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68529769378192806)
,p_name=>'P2_EMAIL'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68530299586192811)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'LOWER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68529835938192807)
,p_name=>'P2_LAB_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68530299586192811)
,p_prompt=>'Lab Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LAB_NAME	'
,p_lov=>'select LAB_NAME	, lab_no from bc_lab;'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68529941746192808)
,p_name=>'P2_BCSIR'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68530299586192811)
,p_prompt=>'BCSIR ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68530022667192809)
,p_name=>'P2_PASSWORD'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68530299586192811)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68530465795192813)
,p_name=>'P2_CHECK_BOX'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(68530299586192811)
,p_prompt=>' I agree with the terms of use.'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_api.id(68364758818934560)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73241165209772631)
,p_validation_name=>'Username'
,p_validation_sequence=>10
,p_validation=>'P2_USER_NAME'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>'You can''t use special character for username.'
,p_associated_item=>wwv_flow_api.id(68529592701192804)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(72689325003487050)
,p_validation_name=>'New'
,p_validation_sequence=>20
,p_validation=>'P2_USER_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item should not be null'
,p_associated_item=>wwv_flow_api.id(68529592701192804)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73769192182705306)
,p_validation_name=>'match'
,p_validation_sequence=>30
,p_validation=>':P2_PASSWORD = :P2_RETYPE_PASSWORD'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Password didn''t match. Please retype your password.'
,p_associated_item=>wwv_flow_api.id(68529452190192803)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73769214462705307)
,p_validation_name=>'PW'
,p_validation_sequence=>40
,p_validation=>'P2_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please Enter Your Password.'
,p_associated_item=>wwv_flow_api.id(68530022667192809)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73771100411705326)
,p_validation_name=>'New_1'
,p_validation_sequence=>50
,p_validation=>'P2_EMAIL'
,p_validation2=>'@'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please enter a valid email address.'
,p_associated_item=>wwv_flow_api.id(68529769378192806)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69532521533831530)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(68530313423192812)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69532656974831531)
,p_event_id=>wwv_flow_api.id(69532521533831530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'insert into bc_user(user_no, user_id, user_name, jobtitle_no, lab_no, user_password, EMAIL_ID, ORG_NO)',
'values (f_sequence(''S_BC_USER''),:P2_BCSIR,:P2_USER_NAME, :P2_DESIGNATION, :P2_LAB_NAME, :P2_PASSWORD,:P2_EMAIL, :G_USER_NO);',
'',
''))
,p_attribute_02=>'P2_USER_NAME,P2_DESIGNATION,P2_LAB_NAME,P2_PASSWORD,P2_EMAIL,P2_BCSIR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P2_PASSWORD'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72646469991902224)
,p_event_id=>wwv_flow_api.id(69532521533831530)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Your account request has been sent.',
'Please wait for approval.'))
,p_attribute_04=>'fa-commenting-o'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68533438795192843)
,p_event_id=>wwv_flow_api.id(69532521533831530)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(68530299586192811)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69532803992831533)
,p_event_id=>wwv_flow_api.id(69532521533831530)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.open(''f?p=136.:9999'');',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(72646996188902229)
,p_name=>'Agree'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(68529274344192801)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72647033915902230)
,p_event_id=>wwv_flow_api.id(72646996188902229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(68530313423192812)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P2_CHECK_BOX'
,p_client_condition_expression=>'1'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72647186232902231)
,p_event_id=>wwv_flow_api.id(72646996188902229)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(68530313423192812)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P2_CHECK_BOX'
,p_client_condition_expression=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69533347334831538)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/

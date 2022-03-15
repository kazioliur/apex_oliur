prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(68390722219935005)
,p_name=>'batch'
,p_alias=>'BATCH'
,p_step_title=>'batch'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function($) {',
'',
'    function update(model) {',
'        var salKey = model.getFieldKey("BATCH_QTY"),',
'            total = 0;',
'',
'        console.log(">> starting sum BATCH_QTY column")',
'        model.forEach(function(record, index, id) {',
'            var sal = parseFloat(record[salKey]), ',
'                meta = model.getRecordMetadata(id);',
'',
'            if (!isNaN(sal) && !meta.deleted && !meta.agg) {',
'                total += sal;',
'            }',
'        });',
'        console.log(">> setting sum BATCH_QTY column to " + total)',
'        $s("P26_SUM_QTY", total);',
'    }',
'',
'    $(function() {',
'       ',
'        $("#BCTRNDLTSRL").on("interactivegridviewmodelcreate", function(event, ui) {',
'            var sid,',
'                model = ui.model;',
'',
'            if ( ui.viewId === "grid" ) {',
'                sid = model.subscribe( {',
'                    onChange: function(type, change) {',
'                        console.log(">> model changed ", type, change);',
'                        if ( type === "set" ) {',
'                             if (change.field === "BATCH_QTY" ) {',
'                                update( model );',
'                            }',
'                        } else if (type !== "move" && type !== "metaChange") {',
'                          update( model );',
'                        }',
'                    },',
'                    progressView: $("#P26_SUM_QTY") ',
'                } );',
'                 update( model );           ',
'                model.fetchAll(function() {});',
'            }',
'        });',
'',
'    });',
'',
'})(apex.jQuery);',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIUR'
,p_last_upd_yyyymmddhh24miss=>'20220314175630'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76892012118247923)
,p_plug_name=>'batch'
,p_region_name=>'BCTRNDLTSRL'
,p_region_template_options=>'t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(68289158869933952)
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'TABLE'
,p_query_table=>'BC_TRNDTLSRL'
,p_query_where=>'TRND_NO = :P26_TRN'
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P26_TRN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'batch'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76893326118247947)
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
 p_id=>wwv_flow_api.id(76893851482247950)
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
 p_id=>wwv_flow_api.id(76894857462247957)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76895741623247958)
,p_name=>'SRL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRL_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'S_BC_TRNDTLSRL'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76896700360247961)
,p_name=>'TRND_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRND_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P26_TRN'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76897737871247962)
,p_name=>'LOT_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOT_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Batch/Lot'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76898763663247963)
,p_name=>'GRADE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRADE_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Grade No'
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
 p_id=>wwv_flow_api.id(76899713993247964)
,p_name=>'PURITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURITY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Purity'
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
 p_id=>wwv_flow_api.id(76900724545247965)
,p_name=>'EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPIRY_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Expiry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
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
 p_id=>wwv_flow_api.id(76901790223247966)
,p_name=>'UNIT_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Unit Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
 p_id=>wwv_flow_api.id(76902772778247967)
,p_name=>'ORG_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
 p_id=>wwv_flow_api.id(76903719342247968)
,p_name=>'INSERT_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERT_BY'
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
 p_id=>wwv_flow_api.id(76904747673247969)
,p_name=>'INSERT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERT_DATE'
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
 p_id=>wwv_flow_api.id(76905750231247970)
,p_name=>'UPDATE_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_BY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
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
 p_id=>wwv_flow_api.id(76906779096247972)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
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
 p_id=>wwv_flow_api.id(76907725029247973)
,p_name=>'BATCH_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Batch Quantity'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(76892598623247926)
,p_internal_uid=>76892598623247926
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SAVE'
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
 p_id=>wwv_flow_api.id(76892948664247928)
,p_interactive_grid_id=>wwv_flow_api.id(76892598623247926)
,p_static_id=>'768930'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(76893158820247929)
,p_report_id=>wwv_flow_api.id(76892948664247928)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76894224634247951)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(76893851482247950)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76895176741247957)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(76894857462247957)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76896153967247958)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(76895741623247958)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76897134938247961)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(76896700360247961)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76898195246247963)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(76897737871247962)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>367.646
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76899165039247964)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(76898763663247963)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76900120355247965)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(76899713993247964)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>219.1911145019531
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76901148816247966)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(76900724545247965)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>213.08300000000003
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76902144406247967)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(76901790223247966)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>184.2183282470703
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76903185707247968)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(76902772778247967)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76904183374247969)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(76903719342247968)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76905165759247970)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(76904747673247969)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76906160650247971)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(76905750231247970)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76907180418247972)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(76906779096247972)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76908131087247973)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(76907725029247973)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>233.35109161376954
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(56400639304754)
,p_view_id=>wwv_flow_api.id(76893158820247929)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(76907725029247973)
,p_show_grand_total=>false
,p_is_enabled=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76206760208898039)
,p_name=>'P26_TRN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(76892012118247923)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76207620880898048)
,p_name=>'P26_SUM_QTY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(76892012118247923)
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_column=>10
,p_field_template=>wwv_flow_api.id(68363211348934495)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77190292303514704)
,p_name=>'set total value'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(76892012118247923)
,p_triggering_element=>'BATCH_QTY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77190343408514705)
,p_event_id=>wwv_flow_api.id(77190292303514704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_SUM_QTY'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':BATCH_QTY'
,p_attribute_07=>'BATCH_QTY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77190480852514706)
,p_event_id=>wwv_flow_api.id(77190292303514704)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_SUM_QTY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("ONTOOR").widget().interactiveGrid("getViews", "grid").model;',
'var n_amt, n_totamt = 0;',
'col_amt = model.getFieldKey("BATCH_QTY");',
'model.forEach(function(igrow) {',
'    n_amt = parseInt(igrow[col_amt], 10);',
'    if (!isNaN(n_amt)) {',
'        n_totamt += n_amt;',
'    }',
'});',
'apex.item("P26_SUM_QTY").setValue(n_totamt);',
'',
'',
'',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76908753259247978)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(76892012118247923)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'batch - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77190038056514702)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(76892012118247923)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update rcv_qty'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'V_SUM_BATCH_QTY        NUMBER;',
'',
'V_SUM_BATCH_QTY_FROM_TABLE       NUMBER;',
'BEGIN',
'SELECT SUM(:BATCH_QTY)',
'INTO V_SUM_BATCH_QTY',
'FROM  DUAL;',
'',
'',
'',
'SELECT SUM(BATCH_QTY)',
'INTO V_SUM_BATCH_QTY_FROM_TABLE',
'FROM  BC_TRNDTLSRL',
'WHERE TRND_NO = :P26_TRN;',
'',
'',
'',
'UPDATE BC_TRNDTL',
'SET RCV_QTY = V_SUM_BATCH_QTY+V_SUM_BATCH_QTY_FROM_TABLE',
'WHERE TRND_NO = :P26_TRN;',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/

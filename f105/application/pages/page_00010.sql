prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7595803988746305
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WILMAFIN'
);
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Configuration'
,p_alias=>'CONFIGURATION'
,p_step_title=>'Configuration'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).on(''click'', ''.config-edit-btn'', function(e) {',
'  e.preventDefault();',
'  const id = $(this).data(''configId'');',
'  const value = $(this).data(''configValue'');',
'  editConfig(id, value, e);',
'});',
'',
'function editConfig(id, value, event) {',
'  event.preventDefault();',
'  event.stopPropagation();',
'',
'  const valueElement = document.querySelector(`#config-value-${id}`);',
'  ',
'  // Replace the div with an input field',
'  valueElement.innerHTML = `',
'    <input type="text" ',
'           id="edit-input-${id}" ',
'           class="config-edit-input" ',
'           value="${value}"',
'           style="width:auto">',
'    <button onclick="saveConfig(''${id}'')" class="t-Button t-Button--small t-Button--success">',
'      Save',
'    </button>',
'    <button onclick="cancelEdit(''${id}'', ''${value}'')" class="t-Button t-Button--small t-Button--danger">',
'      Cancel',
'    </button>',
'  `;',
'  ',
'  // Focus the input field',
'  document.querySelector(`#edit-input-${id}`).focus();',
'}',
'',
'function saveConfig(id) {',
'  const newValue = document.querySelector(`#edit-input-${id}`).value;',
'  apex.server.process(',
'    ''SAVE_CONFIG'',',
'    {',
'      x01: id,',
'      x02: newValue',
'    },',
'    {',
'      dataType: ''text'',',
'      success: function() {',
'       // document.querySelector(`#config-value-${id}`).textContent = newValue;',
'        apex.message.showPageSuccess(''Configuration updated.'');',
'      },',
'      error: function(pData) {',
'        console.error(''AJAX Error:'', pData); // Log full error to console',
'        apex.message.showErrors([{',
'          type: ''error'',',
'          location: ''page'',',
'          message: pData.message || ''Error saving configuration: '' + ',
'                   (pData.errorMessage || ''Unknown error'')',
'        }]);',
'      }',
'    }',
'  );',
'}',
'',
'function cancelEdit(id, originalValue) {',
'  document.querySelector(`#config-value-${id}`).textContent = originalValue;',
'}'))
,p_css_file_urls=>'#APP_FILES#css/wm-style#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#config-region{',
'    padding-bottom: 120px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16238714157680833)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(14309936853069701)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16239442656680839)
,p_plug_name=>'Configuration'
,p_region_name=>'config-region'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'AM_CONFIGURATION'
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P10_ORDER_BY", "orderBys": [{"key":"CONFIG_NAME","expr":"\"CONFIG_NAME\" asc"},{"key":"DESCRIPTION","expr":"\"DESCRIPTION\" asc"}]}'
,p_include_rowid_column=>false
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(16239945551680842)
,p_region_id=>wwv_flow_imp.id(16239442656680839)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'CONFIG_DISPLAY_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'DESCRIPTION'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="config-value-&CONFIG_ID." class="config-edit-container">&CONFIG_VALUE.</div>',
'',
'<button class="t-Button t-Button--icon t-Button--edit config-edit-btn" ',
'        data-config-id="&CONFIG_ID."',
'        data-config-value="&CONFIG_VALUE.">',
'  <span class="t-Icon fa fa-pencil" aria-hidden="true"></span>',
'</button> ',
''))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CONFIG_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63892496030412894)
,p_plug_name=>'Nav Bar'
,p_region_css_classes=>'bottom-btn-container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--noPadding:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16350287814825907)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(63892496030412894)
,p_button_name=>'Home'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Home'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1::'
,p_button_css_classes=>'bottom-mobile-btn'
,p_icon_css_classes=>'fa-lg fa-home'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16349876819825906)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(63892496030412894)
,p_button_name=>'Add'
,p_button_static_id=>'add-btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3::'
,p_button_css_classes=>'bottom-mobile-btn'
,p_icon_css_classes=>'fa-lg fa-plus-circle-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16350614467825907)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(63892496030412894)
,p_button_name=>'Search'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Search'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:10::'
,p_button_css_classes=>'bottom-mobile-btn'
,p_icon_css_classes=>'fa-lg fa-table-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16240468057680845)
,p_name=>'P10_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16239442656680839)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'CONFIG_NAME'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Config Name;CONFIG_NAME,Description;DESCRIPTION'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16282847384233223)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_CONFIG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE am_configuration',
'    SET config_value = APEX_APPLICATION.g_x02',
'    WHERE config_id = APEX_APPLICATION.g_x01;',
'    ',
'    COMMIT;',
'    EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''SAVE_CONFIG failed: ''||SQLERRM);',
'    RAISE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error..!'
,p_process_success_message=>'Updated successfully..!'
,p_internal_uid=>16282847384233223
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Add Customer'
,p_alias=>'ADD-CUSTOMER'
,p_step_title=>'Add Customer'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#css/wm-style#MIN#.css',
'#APP_FILES#css/wm-home-style#MIN#.css'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hidden-items {',
'  display: none !important;',
'}',
'@media (max-width: 768px) {',
'',
'}',
'@media (min-width: 468px) {',
'    #customer-form{',
'        margin: 10px 10% 120px 10%;',
'    }',
'}',
'',
'@media (min-width: 568px) {',
'    #customer-form{',
'        margin: 10px 15% 120px 15%;',
'    }',
'}',
'@media (min-width: 768px) {',
'    #customer-form{',
'        margin: 10px 20% 120px 20%;',
'    }',
'}',
'@media (min-width: 868px) {',
'    #customer-form{',
'        margin: 10px 25% 120px 25%;',
'    }',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15486323366587721)
,p_plug_name=>'Drawer Menu'
,p_plug_template=>1660973136434625155
,p_plug_display_sequence=>40
,p_location=>null
,p_list_id=>wwv_flow_imp.id(15485743804587709)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2467739217141810545
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29385113239605780)
,p_plug_name=>'New Customer'
,p_title=>'Add New Customer'
,p_region_name=>'customer-form'
,p_region_template_options=>'#DEFAULT#:t-Form--xlarge:t-Form--leftLabels:t-Form--labelsAbove'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CUSTOMERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47483511637979831)
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
 p_id=>wwv_flow_imp.id(15005836131095109)
,p_button_sequence=>30
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Back'
,p_button_position=>'AFTER_LOGO'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
,p_button_css_classes=>'back-button'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14933965480482617)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(47483511637979831)
,p_button_name=>'HOME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Home'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1::'
,p_button_condition=>'P3_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'bottom-mobile-btn'
,p_icon_css_classes=>'fa-lg fa-home'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14934362903482618)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(47483511637979831)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_show_processing=>'Y'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'bottom-mobile-btn'
,p_icon_css_classes=>'fa-trash-o fa-lg'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15967996723092386)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(47483511637979831)
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
 p_id=>wwv_flow_imp.id(14935119610482618)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(47483511637979831)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create'
,p_button_condition=>'P3_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'bottom-mobile-btn'
,p_icon_css_classes=>'fa-lg fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14934793796482618)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(47483511637979831)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply '
,p_show_processing=>'Y'
,p_button_condition=>'P3_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'bottom-mobile-btn'
,p_icon_css_classes=>'fa-lg fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14991176904663243)
,p_branch_name=>'Redirect After Delete'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14934362903482618)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14991090250663242)
,p_name=>'P3_MESSAGE'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15658875546334411)
,p_name=>'P3_UNIT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_source=>'UNIT_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15658973955334412)
,p_name=>'P3_STREET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_source=>'STREET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15659362146334416)
,p_name=>'P3_LOAN_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Loan Amount'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'LOAN_AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15659407248334417)
,p_name=>'P3_PRIORITY_LEVEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Priority Level'
,p_source=>'PRIORITY_LEVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:LOW;L,MEDIUM;M,HIGH;H'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15951801622011007)
,p_name=>'P3_NEW'
,p_item_sequence=>40
,p_item_display_point=>'AFTER_LOGO'
,p_source=>'P3_CUSTOMER_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P3_CUSTOMER_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_css_classes=>'header-text'
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:margin-top-none:margin-bottom-none:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16283065188233225)
,p_name=>'P3_SALUTATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Salutation'
,p_source=>'SALUTATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT display_value, return_value FROM (',
'  SELECT ''Mr.'' as display_value, ''Mr.'' as return_value FROM dual UNION ALL',
'  SELECT ''Mrs.'', ''Mrs.'' FROM dual UNION ALL',
'  SELECT ''Ms.'', ''Ms.'' FROM dual UNION ALL',
'  SELECT ''Dr.'', ''Dr.'' FROM dual UNION ALL',
'  SELECT ''Prof.'', ''Prof.'' FROM dual UNION ALL',
'  SELECT ''Rev.'', ''Rev.'' FROM dual UNION ALL',
'  SELECT ''Mx.'', ''Mx.'' FROM dual UNION ALL',
'  SELECT ''[None]'', '''' FROM dual UNION ALL',
'  SELECT ''[Other]'', ''Other'' FROM dual',
') ORDER BY display_value'))
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16283781063233232)
,p_name=>'P3_AUDIT_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_is_required=>true
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'AUDIT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_css_classes=>'hidden-items'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16283863703233233)
,p_name=>'P3_AUDIT_CREATED_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_is_required=>true
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'AUDIT_CREATED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_css_classes=>'hidden-items'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29385610229605782)
,p_name=>'P3_CUSTOMER_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_source=>'CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P3_CUSTOMER_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29386033689605783)
,p_name=>'P3_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29386488593605784)
,p_name=>'P3_MIDDLE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Middle Name'
,p_source=>'MIDDLE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29386881622605784)
,p_name=>'P3_SURNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Surname'
,p_source=>'SURNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29387274683605784)
,p_name=>'P3_DOB'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'DOB'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:NUMBER-OF-MONTH',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'STATIC',
  'min_static', '01-JAN-1950',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29387672546605786)
,p_name=>'P3_PHONE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_default=>'+61'
,p_prompt=>'Phone No'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'    <a href="tel:&P3_PHONE_NO." class="phone-link" title="Call &P3_PHONE_NO.">',
'      <i class="fa fa-phone"></i>',
'    </a>'))
,p_source=>'PHONE_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29388063271605786)
,p_name=>'P3_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29389220199605787)
,p_name=>'P3_ADDRESS_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Address'
,p_source=>'ADDRESS_1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29389613375605787)
,p_name=>'P3_ADDRESS_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_source=>'ADDRESS_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29390099322605787)
,p_name=>'P3_SUBURB'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Suburb'
,p_source=>'SUBURB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29390419850605788)
,p_name=>'P3_STATE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'State'
,p_source=>'STATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SA;SA,WA;WA,NT;NT,VIC;VIC,QLD;QLD,NSW;NSW,TAS;TAS,ACT;ACT'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29390801192605788)
,p_name=>'P3_POSTALCODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Postalcode'
,p_source=>'POSTALCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29391283377605788)
,p_name=>'P3_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_default=>'Australia'
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT country AS display_value, country AS return_value',
'FROM (',
'    SELECT ''Australia'' AS country FROM DUAL UNION ALL',
'    SELECT ''India'' FROM DUAL UNION ALL',
'    SELECT ''United States'' FROM DUAL UNION ALL',
'    SELECT ''Sri Lanka'' FROM DUAL UNION ALL',
'    SELECT ''United Kingdom'' FROM DUAL UNION ALL',
'    SELECT ''Germany'' FROM DUAL UNION ALL',
'    SELECT ''Canada'' FROM DUAL UNION ALL',
'    SELECT ''Singapore'' FROM DUAL UNION ALL',
'    SELECT ''New Zealand'' FROM DUAL UNION ALL',
'    SELECT ''France'' FROM DUAL',
')',
'ORDER BY country',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29391649058605789)
,p_name=>'P3_REQUIREMENT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Requirement'
,p_source=>'REQUIREMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:FIRST HOME;FH,REFINANCE;RE,INVESTMENT;IN,PERSONAL LOAN;PL,VEHICLE LOAN;VL'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29392015445605789)
,p_name=>'P3_IS_PARTNER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Has Partner'
,p_source=>'IS_PARTNER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29392415256605789)
,p_name=>'P3_NO_OF_DEPENDANTS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'No Of Dependants'
,p_source=>'NO_OF_DEPENDANTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_value', '99',
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29392893396605789)
,p_name=>'P3_INCOME_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Income Amount'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'INCOME_AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29393291096605790)
,p_name=>'P3_INCOME_FREQUENCY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Income Frequency'
,p_source=>'INCOME_FREQUENCY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:WEEKLY;W,MONTHLY;M,ANNUALLY;A'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29393655916605790)
,p_name=>'P3_MONTHLY_EXPENSES'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Monthly Expenses'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'MONTHLY_EXPENSES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29394073908605790)
,p_name=>'P3_COMMENTS'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_prompt=>'Comments'
,p_source=>'COMMENTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29395606317605791)
,p_name=>'P3_IS_SUBSCRIBED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_default=>'Y'
,p_prompt=>'Subscribed'
,p_source=>'IS_SUBSCRIBED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29397662277605794)
,p_name=>'P3_AUDIT_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_USER',
''))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'AUDIT_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29398086337605795)
,p_name=>'P3_AUDIT_PRODUCT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_default=>'WILMAFINS'
,p_source=>'AUDIT_PRODUCT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29398497415605795)
,p_name=>'P3_AUDIT_SESSION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_source_plug_id=>wwv_flow_imp.id(29385113239605780)
,p_item_default=>'V(''APP_SESSION'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'AUDIT_SESSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14938560310519985)
,p_validation_name=>'phone no validation'
,p_validation_sequence=>20
,p_validation=>'P3_PHONE_NO'
,p_validation2=>'^(\+61|0)[2-478](?\d){8}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please enter a valid Austrlian phone no.'
,p_associated_item=>wwv_flow_imp.id(29387672546605786)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14987056821663202)
,p_validation_name=>'email validation'
,p_validation_sequence=>30
,p_validation=>'P3_EMAIL'
,p_validation2=>'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Enter a valid email address.'
,p_associated_item=>wwv_flow_imp.id(29388063271605786)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14936425897490358)
,p_name=>'autocomplete address'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14936897587490361)
,p_event_id=>wwv_flow_imp.id(14936425897490358)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// 1. Define function globally',
'window.initAutocomplete = function () {',
'  const input = document.getElementById(''P3_ADDRESS_1'');',
'  if (!input) return;',
'',
'  const autocomplete = new google.maps.places.Autocomplete(input, {',
'    componentRestrictions: { country: ''au'' },',
'    fields: [''address_component'', ''formatted_address''],',
'    types: [''address'']',
'  });',
'',
'  autocomplete.addListener(''place_changed'', function () {',
'    const place = autocomplete.getPlace();',
'    const components = place.address_components;',
'',
'    let streetNumber = '''', streetName = '''', subpremise = '''', suburb = '''', state = '''', country = '''', postcode = '''';',
'',
'    components.forEach(function (component) {',
'      const types = component.types;',
'      if (types.includes(''street_number'')) {',
'       streetNumber = component.long_name;',
'      } else if (types.includes(''route'')) {',
'       streetName = component.long_name;',
'      } else if (types.includes(''subpremise'')) {',
'       subpremise = component.long_name;',
'      } else if (types.includes(''locality'')) {',
'        suburb = component.long_name;',
'      } else if (types.includes(''administrative_area_level_1'')) {',
'        state = component.short_name;',
'      } else if (types.includes(''country'')) {',
'        country = component.long_name;',
'      } else if (types.includes(''postal_code'')) {',
'        postcode = component.long_name;',
'      }',
'    });',
'    let fullAddress = '''';',
'    if (subpremise) fullAddress += subpremise + ''/'';',
'    if (streetNumber) fullAddress += streetNumber + '' '';',
'    if (streetName) fullAddress += streetName;',
'    ',
'    if (document.getElementById(''P3_ADDRESS_1'')) {',
'      document.getElementById(''P3_ADDRESS_1'').value = fullAddress.trim();',
'    }',
'    if (document.getElementById(''P3_SUBURB'')) {',
'      document.getElementById(''P3_SUBURB'').value = suburb;',
'    }',
'    if (document.getElementById(''P3_STATE'')) {',
'      document.getElementById(''P3_STATE'').value = state;',
'    }',
'    if (document.getElementById(''P3_COUNTRY'')) {',
'      document.getElementById(''P3_COUNTRY'').value = country;',
'    }',
'    if (document.getElementById(''P3_POSTALCODE'')) {',
'      document.getElementById(''P3_POSTALCODE'').value = postcode;',
'    }',
'  });',
'};',
'',
'// 2. Load script with callback',
'(function loadGoogleAPI() {',
'  const existingScript = document.getElementById(''googleMaps'');',
'  if (!existingScript) {',
'    const script = document.createElement(''script'');',
'    script.src = "https://maps.googleapis.com/maps/api/js?key=&APP_GOOGLE_MAPS_API_KEY.&libraries=places&callback=initAutocomplete";',
'    script.id = ''googleMaps'';',
'    script.async = true;',
'    script.defer = true;',
'    document.body.appendChild(script);',
'  }',
'})();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14937266430493490)
,p_name=>'validate age'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_DOB'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14937644197493491)
,p_event_id=>wwv_flow_imp.id(14937266430493490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_DOB'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let dob = new Date($v(''P3_DOB''));',
'let today = new Date();',
'let cutoff = new Date();',
'cutoff.setFullYear(today.getFullYear() - 18);',
'',
'if (dob > cutoff) {',
'  apex.message.showErrors([{',
'    type: "error",',
'    location: "inline",',
'    pageItem: "P3_DOB",',
'    message: "You must be at least 18 years old.",',
'    unsafe: false',
'  }]);',
'  return false;',
'}else{',
'  apex.message.clearErrors();',
'}',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P3_DOB'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14987132293663203)
,p_name=>'show dial icon'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14987283151663204)
,p_event_id=>wwv_flow_imp.id(14987132293663203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    if ($v(''P3_CUSTOMER_ID'')) {',
'        $(''.phone-link'').show();',
'    } else {',
'        $(''.phone-link'').hide();',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16283358083233228)
,p_name=>'Set Current Time'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16283494448233229)
,p_event_id=>wwv_flow_imp.id(16283358083233228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_AUDIT_DATE,P3_AUDIT_CREATED_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT TO_CHAR(SYSDATE, ''DD-MON-YYYY HH24:MI:SS'') AS formatted_datetime FROM DUAL;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(14309379580069697)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16283522171233230)
,p_name=>'New'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16283676311233231)
,p_event_id=>wwv_flow_imp.id(16283522171233230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P3_AUDIT_DATE := TO_CHAR(LOCALTIMESTAMP, ''DD-MM-YYYY HH24:MI:SS'');',
'  :P3_AUDIT_CREATED_DATE := TO_CHAR(LOCALTIMESTAMP, ''DD-MM-YYYY HH24:MI:SS'');',
'-- :P3_AUDIT_DATE := null;',
'-- :P3_AUDIT_CREATED_DATE := null;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(14309379580069697)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14990923656663241)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Dynamic Message'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P3_CUSTOMER_ID IS NULL THEN',
'    :P3_MESSAGE := ''Successfully created.'';',
'ELSIF :REQUEST = ''DELETE'' THEN',
'    :P3_MESSAGE := ''Successfully deleted.'';',
'ELSE',
'    :P3_MESSAGE := ''Successfully updated.'';',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14934793796482618)
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
,p_internal_uid=>14990923656663241
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14938748689523043)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(29385113239605780)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form New Customer'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14938748689523043
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14988956648663221)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Invoke Workflow'
,p_attribute_01=>'START'
,p_attribute_02=>wwv_flow_imp.id(15029879911839076)
,p_attribute_03=>'P3_CUSTOMER_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14935119610482618)
,p_process_when_type=>'NOT_DISPLAYING_INLINE_VALIDATION_ERRORS'
,p_internal_uid=>14988956648663221
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(14989075743663222)
,p_page_process_id=>wwv_flow_imp.id(14988956648663221)
,p_workflow_variable_id=>wwv_flow_imp.id(15030047510839078)
,p_page_id=>3
,p_value_type=>'ITEM'
,p_value=>'P3_EMAIL'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15309235046301912)
,p_page_process_id=>wwv_flow_imp.id(14988956648663221)
,p_workflow_variable_id=>wwv_flow_imp.id(14989451658663226)
,p_page_id=>3
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>':P3_SALUTATION||'' ''||:P3_FIRST_NAME||'' ''||:P3_SURNAME'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15320046342377598)
,p_page_process_id=>wwv_flow_imp.id(14988956648663221)
,p_workflow_variable_id=>wwv_flow_imp.id(14989543930663227)
,p_page_id=>3
,p_value_type=>'ITEM'
,p_value=>'P3_CUSTOMER_ID'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15390344746601164)
,p_page_process_id=>wwv_flow_imp.id(14988956648663221)
,p_workflow_variable_id=>wwv_flow_imp.id(14990778642663239)
,p_page_id=>3
,p_value_type=>'SQL_QUERY'
,p_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT config_value',
'FROM am_configuration ',
'WHERE upper(config_name) = ''COMPANY_EMAIL'';'))
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15663087463341383)
,p_page_process_id=>wwv_flow_imp.id(14988956648663221)
,p_workflow_variable_id=>wwv_flow_imp.id(15657844121334401)
,p_page_id=>3
,p_value_type=>'SQL_QUERY'
,p_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select AUDIT_CREATED_DATE',
'  from customers',
' where customer_id = :P3_CUSTOMER_ID;'))
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15664280953341388)
,p_page_process_id=>wwv_flow_imp.id(14988956648663221)
,p_workflow_variable_id=>wwv_flow_imp.id(15657962137334402)
,p_page_id=>3
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>':P3_ADDRESS_1||'', ''||:P3_SUBURB||'', ''||:P3_STATE||'', ''||:P3_POSTALCODE'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15678702106559483)
,p_page_process_id=>wwv_flow_imp.id(14988956648663221)
,p_workflow_variable_id=>wwv_flow_imp.id(15658301319334406)
,p_page_id=>3
,p_value_type=>'ITEM'
,p_value=>'P3_PHONE_NO'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15680453605708662)
,p_page_process_id=>wwv_flow_imp.id(14988956648663221)
,p_workflow_variable_id=>wwv_flow_imp.id(15658499050334407)
,p_page_id=>3
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- PL/SQL Expression for Annual Income Calculation',
'CASE ',
'    WHEN :P3_INCOME_FREQUENCY = ''A'' THEN TO_NUMBER(REGEXP_REPLACE(:P3_INCOME_AMOUNT, ''[^0-9.]'', ''''))',
'    WHEN :P3_INCOME_FREQUENCY = ''M'' THEN TO_NUMBER(REGEXP_REPLACE(:P3_INCOME_AMOUNT, ''[^0-9.]'', '''')) * 12',
'    WHEN :P3_INCOME_FREQUENCY = ''W'' THEN TO_NUMBER(REGEXP_REPLACE(:P3_INCOME_AMOUNT, ''[^0-9.]'', '''')) * 52',
'    ELSE 0  -- Default case if frequency is not specified',
'END',
'',
''))
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15682532924720218)
,p_page_process_id=>wwv_flow_imp.id(14988956648663221)
,p_workflow_variable_id=>wwv_flow_imp.id(15658554186334408)
,p_page_id=>3
,p_value_type=>'ITEM'
,p_value=>'P3_LOAN_AMOUNT'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15683738282720220)
,p_page_process_id=>wwv_flow_imp.id(14988956648663221)
,p_workflow_variable_id=>wwv_flow_imp.id(15658691967334409)
,p_page_id=>3
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CASE ',
'    WHEN :P3_PRIORITY_LEVEL = ''L'' THEN ''Low''',
'    WHEN :P3_PRIORITY_LEVEL = ''M'' THEN ''Medium''',
'    WHEN :P3_PRIORITY_LEVEL = ''H'' THEN ''High''',
'    ELSE ''Not Specified'' ',
'END'))
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15710332632031235)
,p_page_process_id=>wwv_flow_imp.id(14988956648663221)
,p_workflow_variable_id=>wwv_flow_imp.id(15659501487334418)
,p_page_id=>3
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CASE ',
'    WHEN :P3_REQUIREMENT = ''FH'' THEN ''First Home''',
'    WHEN :P3_REQUIREMENT = ''RE'' THEN ''Refinance''',
'    WHEN :P3_REQUIREMENT = ''IN'' THEN ''Investment''',
'    WHEN :P3_REQUIREMENT = ''PL'' THEN ''Personal Loan''',
'    WHEN :P3_REQUIREMENT = ''VL'' THEN ''Vehicle Loan''',
'    ELSE ''Not Specified'' ',
'END'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14935632998487157)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(29385113239605780)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form New Customer'
,p_internal_uid=>14935632998487157
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14935926108488714)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set audit timestamp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P3_CUSTOMER_ID IS NULL THEN',
'   :P3_AUDIT_DATE := TO_CHAR(CURRENT_TIMESTAMP, ''DD-MON-YYYY HH24:MI:SS'');',
'   :P3_AUDIT_CREATED_DATE := TO_CHAR(CURRENT_TIMESTAMP, ''DD-MON-YYYY HH24:MI:SS'');',
'ELSE',
'   -- Set current audit date',
'   :P3_AUDIT_DATE := TO_CHAR(CURRENT_TIMESTAMP, ''DD-MON-YYYY HH24:MI:SS'');',
'',
'   -- Retrieve original AUDIT_CREATED_DATE from DB',
'   SELECT TO_CHAR(AUDIT_CREATED_DATE, ''DD-MON-YYYY HH24:MI:SS'')',
'   INTO :P3_AUDIT_CREATED_DATE',
'   FROM CUSTOMERS',
'   WHERE CUSTOMER_ID = :P3_CUSTOMER_ID;',
'END IF;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>14935926108488714
);
wwv_flow_imp.component_end;
end;
/

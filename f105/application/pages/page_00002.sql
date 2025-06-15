prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>9537998525254393
,p_default_application_id=>105
,p_default_id_offset=>9654090527537426
,p_default_owner=>'XEWMDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Seach Customers'
,p_alias=>'SEACH-CUSTOMERS'
,p_step_title=>'Seach Customers'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function() {',
'  var originalScroll = window.scrollTo;',
'  window.scrollTo = function(options) {',
'    if (typeof options === ''object'' && options.behavior === ''smooth'') {',
'      return originalScroll(options);',
'    }',
'    $(''html, body'').animate({',
'      scrollTop: typeof options === ''number'' ? options : options.top',
'    }, 800);',
'  };',
'  ',
'  document.addEventListener(''click'', function(e) {',
'    if (e.target.tagName === ''A'' && e.target.getAttribute(''href'')?.startsWith(''#'')) {',
'      e.preventDefault();',
'      const target = document.querySelector(e.target.getAttribute(''href''));',
'      if (target) {',
'        target.scrollIntoView({ behavior: ''smooth'' });',
'      }',
'    }',
'  });',
'})();'))
,p_css_file_urls=>'#APP_FILES#css/wm-style#MIN#.css'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(25186092316820253)
,p_navigation_list_template_id=>wwv_flow_imp.id(25293735804829919)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleB:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(23999479293527139)
,p_name=>'Search Results'
,p_region_name=>'customer-search'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody:margin-top-none:margin-bottom-lg:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "CUSTOMER_ID","FIRST_NAME","SURNAME","SALUTATION"||'' ''||"FIRST_NAME"||'' ''||"SURNAME" as  "NAME","DOB","PHONE_NO","EMAIL","UNIT_NO",',
'"STREET","ADDRESS_1","ADDRESS_2","SUBURB","STATE","POSTALCODE","COUNTRY","REQUIREMENT","IS_PARTNER","NO_OF_DEPENDANTS",',
'decode(INCOME_FREQUENCY,''W'', INCOME_AMOUNT*52, ''M'', INCOME_AMOUNT*12, ''A'', INCOME_AMOUNT, null) as "ANNUAL_INCOME_AMOUNT","INCOME_FREQUENCY","MONTHLY_EXPENSES","COMMENTS","IS_SUBSCRIBED","AUDIT_DATE","AUDIT_CREATED_DATE","AUDIT_USER","AUDIT_PRODUCT",'
||'"AUDIT_SESSION" ',
'from "CUSTOMERS"'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24062278574633941)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Customer Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25313849456871846)
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>280
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25313924662871847)
,p_query_column_id=>3
,p_column_alias=>'SURNAME'
,p_column_display_sequence=>290
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25271815603744227)
,p_query_column_id=>4
,p_column_alias=>'NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24062675539633945)
,p_query_column_id=>5
,p_column_alias=>'DOB'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24062753315633946)
,p_query_column_id=>6
,p_column_alias=>'PHONE_NO'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24062828209633947)
,p_query_column_id=>7
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24062902367633948)
,p_query_column_id=>8
,p_column_alias=>'UNIT_NO'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24063049155633949)
,p_query_column_id=>9
,p_column_alias=>'STREET'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24063171646633950)
,p_query_column_id=>10
,p_column_alias=>'ADDRESS_1'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24063252812633951)
,p_query_column_id=>11
,p_column_alias=>'ADDRESS_2'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24063332373633952)
,p_query_column_id=>12
,p_column_alias=>'SUBURB'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24063400823633953)
,p_query_column_id=>13
,p_column_alias=>'STATE'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24063559540633954)
,p_query_column_id=>14
,p_column_alias=>'POSTALCODE'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24063675870633955)
,p_query_column_id=>15
,p_column_alias=>'COUNTRY'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24063716857633956)
,p_query_column_id=>16
,p_column_alias=>'REQUIREMENT'
,p_column_display_sequence=>150
,p_column_heading=>'Requirement'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC:VEHICLE LOAN;VL,FIRST HOME;FH,INVESTMENT;IN,REFINANCE;RE,PERSONAL LOAN;PL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24063803542633957)
,p_query_column_id=>17
,p_column_alias=>'IS_PARTNER'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24063968077633958)
,p_query_column_id=>18
,p_column_alias=>'NO_OF_DEPENDANTS'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26471142699020634)
,p_query_column_id=>19
,p_column_alias=>'ANNUAL_INCOME_AMOUNT'
,p_column_display_sequence=>190
,p_column_heading=>'Annual Income'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24064183646633960)
,p_query_column_id=>20
,p_column_alias=>'INCOME_FREQUENCY'
,p_column_display_sequence=>180
,p_column_heading=>'Income Frequency'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC:ANNUALLY;A,MONTHLY;M,WEEKLY;W'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24064262300633961)
,p_query_column_id=>21
,p_column_alias=>'MONTHLY_EXPENSES'
,p_column_display_sequence=>200
,p_column_heading=>'Monthly Expenses'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24064364531633962)
,p_query_column_id=>22
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>210
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24064752591633966)
,p_query_column_id=>23
,p_column_alias=>'IS_SUBSCRIBED'
,p_column_display_sequence=>220
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24064801049633967)
,p_query_column_id=>24
,p_column_alias=>'AUDIT_DATE'
,p_column_display_sequence=>230
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'CUSTOMERS'
,p_ref_column_name=>'AUDIT_DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24064905230633968)
,p_query_column_id=>25
,p_column_alias=>'AUDIT_CREATED_DATE'
,p_column_display_sequence=>240
,p_column_heading=>'Created On'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24065058137633969)
,p_query_column_id=>26
,p_column_alias=>'AUDIT_USER'
,p_column_display_sequence=>250
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24065130947633970)
,p_query_column_id=>27
,p_column_alias=>'AUDIT_PRODUCT'
,p_column_display_sequence=>260
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24065248306633971)
,p_query_column_id=>28
,p_column_alias=>'AUDIT_SESSION'
,p_column_display_sequence=>270
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24065429276633973)
,p_query_column_id=>32
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'Edit'
,p_column_css_class=>'fa fa-edit'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_CUSTOMER_ID:#CUSTOMER_ID#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-page.png"  class="apex-edit-page" alt="">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'Y'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23999494753527139)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-bar'
,p_icon_css_classes=>'fa-filter'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody:t-Form--stretchInputs:margin-left-none'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'AFTER_LOGO'
,p_location=>null
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(23999479293527139)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24003544205527145)
,p_plug_name=>'Button Bar'
,p_region_name=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--noPadding:t-ButtonRegion--noUI:margin-top-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>'<!-- <div id="active_facets"></div>  -->'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(23963470107607123)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41116726907622566)
,p_plug_name=>'Nav Bar'
,p_region_css_classes=>'bottom-btn-container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--noPadding:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24641443000200631)
,p_button_sequence=>50
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Back'
,p_button_position=>'AFTER_LOGO'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
,p_icon_css_classes=>'fa-edit'
,p_required_patch=>wwv_flow_imp.id(23963470107607123)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24004001693527146)
,p_button_sequence=>60
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Clear'
,p_button_position=>'AFTER_LOGO'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:RR,2::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25545191759033077)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41116726907622566)
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
 p_id=>wwv_flow_imp.id(25545601294033078)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41116726907622566)
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
 p_id=>wwv_flow_imp.id(25546046756033078)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41116726907622566)
,p_button_name=>'Search'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Search'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
,p_button_css_classes=>'bottom-mobile-btn'
,p_icon_css_classes=>'fa-lg fa-table-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24000035499527140)
,p_name=>'P2_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23999494753527139)
,p_prompt=>'Search'
,p_placeholder=>'Search'
,p_source=>'EMAIL,UNIT_NO,STREET,ADDRESS_1,CUSTOMER_ID,FIRST_NAME,MIDDLE_NAME,SURNAME,PHONE_NO'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24000419893527141)
,p_name=>'P2_SUBURB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(23999494753527139)
,p_prompt=>'Suburb'
,p_source=>'SUBURB'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_display_as=>'FILTER_DIALOG'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24000852778527142)
,p_name=>'P2_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(23999494753527139)
,p_prompt=>'State'
,p_source=>'STATE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_display_as=>'FILTER_DIALOG'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24001226535527142)
,p_name=>'P2_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(23999494753527139)
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_required_patch=>wwv_flow_imp.id(23963470107607123)
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24001678210527142)
,p_name=>'P2_REQUIREMENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(23999494753527139)
,p_prompt=>'Requirement'
,p_source=>'REQUIREMENT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:FIRST HOME;FH,INVESTMENT;IN,PERSONAL LOAN;PL, REFINANCE; RE,VEHICLE LOAN;VL'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_display_as=>'FILTER_DIALOG'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24002032483527142)
,p_name=>'P2_NO_OF_DEPENDANTS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(23999494753527139)
,p_prompt=>'No of Dependants'
,p_source=>'NO_OF_DEPENDANTS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_required_patch=>wwv_flow_imp.id(23963470107607123)
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24002407958527144)
,p_name=>'P2_INCOME_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(23999494753527139)
,p_prompt=>'Income Amount'
,p_source=>'ANNUAL_INCOME_AMOUNT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<70#G#000;|70000,70#G#000 - 80#G#000;70000|80000,80#G#000 - 90#G#000;80000|90000,90#G#000 - 100#G#000;90000|100000,>=100#G#000;100000|'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_display_as=>'FILTER_DIALOG'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24002805700527144)
,p_name=>'P2_INCOME_FREQUENCY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(23999494753527139)
,p_prompt=>'Income Frequency'
,p_source=>'INCOME_FREQUENCY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:WEEKLY;W,MONTHLY;M,ANNUALLY;A'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_display_as=>'FILTER_DIALOG'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24003249684527145)
,p_name=>'P2_MONTHLY_EXPENSES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(23999494753527139)
,p_prompt=>'Monthly Expenses'
,p_source=>'MONTHLY_EXPENSES'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<2#G#100;|2100,2#G#100 - 2#G#400;2100|2400,2#G#400 - 2#G#600;2400|2600,2#G#600 - 3#G#000;2600|3000,>=3#G#000;3000|'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_display_as=>'FILTER_DIALOG'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24644929676200666)
,p_name=>'P2_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24003544205527145)
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Income;INCOME_AMOUNT,Customer Id;CUSTOMER_ID,Modified Date;AUDIT_DATE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_imp.id(23963470107607123)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp.component_end;
end;
/

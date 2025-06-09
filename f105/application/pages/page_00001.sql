prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'WILMAFIN'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#css/wm-style#MIN#.css',
'#APP_FILES#css/wm-home-style#MIN#.css'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-autocomplete-readonly, .apex-item-color-picker-readonly, .apex-item-combobox, .apex-item-combobox-readonly, .apex-item-datepicker-readonly, .apex-item-group-readonly, .apex-item-multi, .apex-item-number-readonly, .apex-item-popup-lov-reado'
||'nly, .apex-item-select, .apex-item-select-one-many-readonly, .apex-item-select-readonly, .apex-item-text, .apex-item-text-readonly, .apex-item-textarea, .apex-item-textarea-readonly, .apex-item-wrapper--combobox-many .apex-item-comboselect, .apex-ite'
||'m-wrapper--select-many .apex-item-comboselect, .apex-item-wrapper.is-readonly .js-accessible-readonly, .datetimepicker_newMonth, .u-TF-item--select, .u-TF-item--text, select.group_selectlist, select.listmanager{',
'      line-height: 2rem;',
'    }',
'#main-body{',
'    padding-bottom: 120px;',
'}',
'.hidden-item{',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#:js-pageStickyMobileHeader'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(15532001789282827)
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleB:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15951464074011003)
,p_plug_name=>'Nav Bar'
,p_region_css_classes=>'bottom-btn-container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--noPadding:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19118738585806633)
,p_plug_name=>'MainBody'
,p_region_name=>'main-body'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16284999059233244)
,p_plug_name=>'First Column'
,p_region_name=>'first-col'
,p_parent_plug_id=>wwv_flow_imp.id(19118738585806633)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16285364726233248)
,p_plug_name=>'Dashboard'
,p_region_name=>'new-customers'
,p_parent_plug_id=>wwv_flow_imp.id(16284999059233244)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) new_customers_month FROM customers ',
'WHERE to_char(audit_created_date,''MM-YYYY'') = to_char(SYSDATE,''MM-YYYY'');'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(16285491331233249)
,p_region_id=>wwv_flow_imp.id(16285364726233248)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>'New Customers This Month'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>'<h1>&NEW_CUSTOMERS_MONTH.</h1>'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16748198670557413)
,p_plug_name=>'Dashboard'
,p_region_name=>'avg-loan-amt'
,p_parent_plug_id=>wwv_flow_imp.id(16284999059233244)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:margin-bottom-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(ROUND(AVG(loan_amount), 2), ''$999G999G990D00'') AS avg_loan_amt FROM customers ',
'WHERE loan_amount IS NOT NULL;'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P1_ORDER_BY", "orderBys": [{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"},{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"}]}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(16748246624557414)
,p_region_id=>wwv_flow_imp.id(16748198670557413)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>'Average Loan Amount Requested'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>'<h1>&AVG_LOAN_AMT.</h1>'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16748383102557415)
,p_plug_name=>'New Customers by Month'
,p_parent_plug_id=>wwv_flow_imp.id(16284999059233244)
,p_region_css_classes=>'frame'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16748454260557416)
,p_plug_name=>'New Customers by Month'
,p_title=>'New Customers by Month'
,p_parent_plug_id=>wwv_flow_imp.id(16748383102557415)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  to_number(TO_CHAR(audit_created_date, ''YYYY'')) + to_number(TO_CHAR(audit_created_date, ''MM'')) AS serial_no,',
'  TO_CHAR(audit_created_date, ''MON'') AS month,',
'  COUNT(*) AS new_customers',
'FROM customers',
'where TO_CHAR(audit_created_date, ''YYYY'') = TO_CHAR(sysdate, ''YYYY'')',
'GROUP BY to_number(TO_CHAR(audit_created_date, ''YYYY'')) + to_number(TO_CHAR(audit_created_date, ''MM'')) ,',
'         TO_CHAR(audit_created_date, ''MON'')',
'ORDER BY serial_no;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(16748729846557419)
,p_region_id=>wwv_flow_imp.id(16748454260557416)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'on'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(16748806816557420)
,p_chart_id=>wwv_flow_imp.id(16748729846557419)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  to_number(TO_CHAR(audit_created_date, ''MM''))  AS serial_no,',
'  TO_CHAR(audit_created_date, ''MON'') AS month,',
'  COUNT(*) AS new_customers,',
'  CASE MOD(to_number(TO_CHAR(audit_created_date, ''MM'')), 9)',
'    -- Base colors',
'    WHEN 1 THEN ''#C7EF9E''  -- January (light green)',
'    WHEN 2 THEN ''#8ACDD9''  -- February (medium blue)',
'    WHEN 3 THEN ''#BDE9F1''  -- March (light blue)',
'    -- Lighter variations (tints)',
'    WHEN 4 THEN ''#E7F9CE''  -- April (very light green)',
'    WHEN 5 THEN ''#C4E6EF''  -- May (very light medium blue)',
'    WHEN 6 THEN ''#DEF4F8''  -- June (very light light blue)',
'    -- Darker variations (shades)',
'    WHEN 7 THEN ''#A7CF7E''  -- July (dark green)',
'    WHEN 8 THEN ''#5AB3C9''  -- August (dark medium blue)',
'    WHEN 0 THEN ''#9BD9E1''  -- December (dark light blue - MOD 0 for month 12)',
'  END AS color_value_0',
'FROM customers',
'WHERE TO_CHAR(audit_created_date, ''YYYY'') = TO_CHAR(sysdate, ''YYYY'')',
'GROUP BY to_number(TO_CHAR(audit_created_date, ''MM'')),',
'         TO_CHAR(audit_created_date, ''MON'')',
'ORDER BY serial_no;'))
,p_series_name_column_name=>'MONTH'
,p_items_value_column_name=>'NEW_CUSTOMERS'
,p_group_name_column_name=>'NEW_CUSTOMERS'
,p_group_short_desc_column_name=>'MONTH'
,p_items_label_column_name=>'MONTH'
,p_items_short_desc_column_name=>'NEW_CUSTOMERS'
,p_color=>'&COLOR_VALUE_0.'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(16748987775557421)
,p_chart_id=>wwv_flow_imp.id(16748729846557419)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(16749094212557422)
,p_chart_id=>wwv_flow_imp.id(16748729846557419)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Count'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16820450850483242)
,p_plug_name=>'Subscription Status'
,p_parent_plug_id=>wwv_flow_imp.id(16284999059233244)
,p_region_css_classes=>'frame'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16747780313557409)
,p_plug_name=>'Subscription Status'
,p_parent_plug_id=>wwv_flow_imp.id(16820450850483242)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  is_subscribed,',
'  COUNT(*) AS count,',
'  ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM customers), 2) AS percentage',
'FROM customers',
'GROUP BY is_subscribed;'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P1_ORDER_BY", "orderBys": [{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"},{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"}]}'
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(16751628045557448)
,p_region_id=>wwv_flow_imp.id(16747780313557409)
,p_chart_type=>'donut'
,p_title=>'Subscription Status'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(16751749759557449)
,p_chart_id=>wwv_flow_imp.id(16751628045557448)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  CASE WHEN is_subscribed = ''Y'' THEN ''Subscribed'' ELSE ''Unsubscribed'' END AS subscription_status,',
'  COUNT(*) AS count,',
'  ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM customers), 2) AS percentage,',
'  CASE ',
'    WHEN is_subscribed = ''Y'' THEN ''#5AB3C9''  -- Darker blue for subscribed',
'    ELSE ''#A7CF7E''                           -- Darker green for unsubscribed',
'  END AS color_code',
'FROM customers',
'GROUP BY is_subscribed;'))
,p_series_name_column_name=>'SUBSCRIPTION_STATUS'
,p_items_value_column_name=>'COUNT'
,p_items_label_column_name=>'COUNT'
,p_color=>'&COLOR_CODE.'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33457399116350409)
,p_plug_name=>'Dashboard'
,p_region_name=>'tot-customers'
,p_parent_plug_id=>wwv_flow_imp.id(16284999059233244)
,p_icon_css_classes=>'fa-person-standing'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:margin-top-none'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>'select count(*) AS total_customers from customers;'
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P1_ORDER_BY", "orderBys": [{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"},{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"}]}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(16737823279506938)
,p_region_id=>wwv_flow_imp.id(33457399116350409)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>'Total active customer'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>'<h1>&TOTAL_CUSTOMERS.</h1>'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16285092970233245)
,p_plug_name=>'Second Column'
,p_region_name=>'second-col'
,p_parent_plug_id=>wwv_flow_imp.id(19118738585806633)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16285593343233250)
,p_plug_name=>'Row-1-Col-1'
,p_parent_plug_id=>wwv_flow_imp.id(16285092970233245)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16820504489483243)
,p_plug_name=>'Frame'
,p_title=>'Customer Count by Region'
,p_parent_plug_id=>wwv_flow_imp.id(16285593343233250)
,p_region_css_classes=>'frame'
,p_icon_css_classes=>'fa-user-chart'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16285115778233246)
,p_plug_name=>'Customer Count by Region'
,p_title=>'Customer Count by Region'
,p_parent_plug_id=>wwv_flow_imp.id(16820504489483243)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(16750773545557439)
,p_region_id=>wwv_flow_imp.id(16285115778233246)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(16750814674557440)
,p_chart_id=>wwv_flow_imp.id(16750773545557439)
,p_seq=>10
,p_name=>'Series'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT ',
'    a.suburb, ',
'    a.state, ',
'    CASE MOD(ORA_HASH(suburb), 9)',
'        -- Base colors',
'        WHEN 0 THEN ''#C7EF9E''',
'        WHEN 1 THEN ''#8ACDD9''',
'        WHEN 2 THEN ''#BDE9F1''',
'        -- Lighter variations (tints)',
'        WHEN 3 THEN ''#E7F9CE''',
'        WHEN 4 THEN ''#C4E6EF''',
'        WHEN 5 THEN ''#DEF4F8''',
'        -- Darker variations (shades)',
'        WHEN 6 THEN ''#A7CF7E''',
'        WHEN 7 THEN ''#5AB3C9''',
'        WHEN 8 THEN ''#9BD9E1''',
'    END as color_value_1,',
'    COUNT(*) customer_count ',
'FROM (',
'    SELECT suburb, state',
'    FROM customers',
'    WHERE loan_amount IS NOT NULL',
'    AND state = NVL(:P1_STATE,''VIC'')',
') a',
'GROUP BY a.suburb, a.state',
'ORDER BY suburb;'))
,p_ajax_items_to_submit=>'P1_STATE'
,p_series_name_column_name=>'SUBURB'
,p_items_value_column_name=>'CUSTOMER_COUNT'
,p_items_label_column_name=>'SUBURB'
,p_color=>'&COLOR_VALUE_1.'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16747264081557404)
,p_plug_name=>'Row-2-Col-1'
,p_parent_plug_id=>wwv_flow_imp.id(16285092970233245)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16820741119483245)
,p_plug_name=>'Frame'
,p_title=>'Loan Purpose Breakdown'
,p_parent_plug_id=>wwv_flow_imp.id(16747264081557404)
,p_region_css_classes=>'frame'
,p_icon_css_classes=>'fa-pie-chart'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16747373120557405)
,p_plug_name=>'Loan Purpose Breakdown'
,p_parent_plug_id=>wwv_flow_imp.id(16820741119483245)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Loan Purpose Breakdown with Color Coding',
'SELECT ',
'  CASE requirement',
'    WHEN ''FH'' THEN ''First Home''',
'    WHEN ''RE'' THEN ''Refinance''',
'    WHEN ''IN'' THEN ''Investment''',
'    WHEN ''PL'' THEN ''Personal Loan''',
'    WHEN ''VL'' THEN ''Vehicle Loan''',
'    ELSE ''Other''',
'  END AS loan_type,',
'  COUNT(*) AS count,',
'  ROUND(AVG(loan_amount), 2) AS avg_amount,',
'  CASE MOD(ORA_HASH(requirement), 9)',
'    -- Base colors',
'    WHEN 0 THEN ''#C7EF9E''  -- Light green',
'    WHEN 1 THEN ''#8ACDD9''  -- Medium blue',
'    WHEN 2 THEN ''#BDE9F1''  -- Light blue',
'    -- Lighter variations (tints)',
'    WHEN 3 THEN ''#E7F9CE''  -- Very light green',
'    WHEN 4 THEN ''#C4E6EF''  -- Very light medium blue',
'    WHEN 5 THEN ''#DEF4F8''  -- Very light light blue',
'    -- Darker variations (shades)',
'    WHEN 6 THEN ''#A7CF7E''  -- Dark green',
'    WHEN 7 THEN ''#5AB3C9''  -- Dark medium blue',
'    WHEN 8 THEN ''#9BD9E1''  -- Dark light blue',
'  END AS color_code',
'FROM customers',
'WHERE requirement IS NOT NULL',
'GROUP BY requirement',
'ORDER BY count DESC;'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P1_ORDER_BY", "orderBys": [{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"},{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"}]}'
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(16817128130483209)
,p_region_id=>wwv_flow_imp.id(16747373120557405)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(16817252060483210)
,p_chart_id=>wwv_flow_imp.id(16817128130483209)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Loan Purpose Breakdown with Color Coding',
'SELECT ',
'  CASE requirement',
'    WHEN ''FH'' THEN ''First Home''',
'    WHEN ''RE'' THEN ''Real Estate''',
'    WHEN ''IN'' THEN ''Investment''',
'    WHEN ''PL'' THEN ''Personal Loan''',
'    WHEN ''VL'' THEN ''Vehicle Loan''',
'    ELSE ''Other''',
'  END AS loan_type,',
'  COUNT(*) AS count,',
'  ROUND(AVG(loan_amount), 2) AS avg_amount,',
'  CASE MOD(ORA_HASH(requirement), 9)',
'    -- Base colors',
'    WHEN 0 THEN ''#C7EF9E''  -- Light green',
'    WHEN 1 THEN ''#8ACDD9''  -- Medium blue',
'    WHEN 2 THEN ''#BDE9F1''  -- Light blue',
'    -- Lighter variations (tints)',
'    WHEN 3 THEN ''#E7F9CE''  -- Very light green',
'    WHEN 4 THEN ''#C4E6EF''  -- Very light medium blue',
'    WHEN 5 THEN ''#DEF4F8''  -- Very light light blue',
'    -- Darker variations (shades)',
'    WHEN 6 THEN ''#A7CF7E''  -- Dark green',
'    WHEN 7 THEN ''#5AB3C9''  -- Dark medium blue',
'    WHEN 8 THEN ''#9BD9E1''  -- Dark light blue',
'  END AS COLOR_VALUE_2',
'FROM customers',
'WHERE requirement IS NOT NULL',
'GROUP BY requirement',
'ORDER BY count DESC;'))
,p_series_name_column_name=>'LOAN_TYPE'
,p_items_value_column_name=>'COUNT'
,p_items_label_column_name=>'LOAN_TYPE'
,p_items_short_desc_column_name=>'COUNT'
,p_custom_column_name=>'COUNT'
,p_color=>'&COLOR_VALUE_2.'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16750400408557436)
,p_plug_name=>'Priority Customer List'
,p_parent_plug_id=>wwv_flow_imp.id(16285092970233245)
,p_region_css_classes=>'frame'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16747940278557411)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(16750400408557436)
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors:t-MediaList--stack'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  customer_id as list_title,',
'  salutation || '' '' || first_name || '' '' || surname AS list_text,',
'  phone_no,',
'  email,',
'  loan_amount,',
'  CASE priority_level WHEN ''H'' THEN ''High'' WHEN ''M'' THEN ''Medium'' ELSE ''Low'' END list_badge,',
'  CASE priority_level WHEN ''H'' THEN 1 WHEN ''M'' THEN 2 ELSE 3 END priority_level_no,',
'  CASE priority_level WHEN ''H'' THEN ''priority-high'' WHEN ''M'' THEN ''priority-medium'' ELSE ''priority-low'' END CSS_STYLE,',
'  audit_created_date',
'FROM customers',
'WHERE priority_level IN (''H'', ''M'', ''L'')',
'order by priority_level_no asc;'))
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'priority_level_no asc'
,p_query_row_template=>2093604263195414824
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19115711103806603)
,p_query_column_id=>1
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>100
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19115831355806604)
,p_query_column_id=>2
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>110
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16819855616483236)
,p_query_column_id=>3
,p_column_alias=>'PHONE_NO'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16819950318483237)
,p_query_column_id=>4
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16820023232483238)
,p_query_column_id=>5
,p_column_alias=>'LOAN_AMOUNT'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19115962107806605)
,p_query_column_id=>6
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>130
,p_column_heading=>'List Badge'
,p_column_html_expression=>'<span class="#CSS_STYLE#">#LIST_BADGE#</span>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16820289964483240)
,p_query_column_id=>7
,p_column_alias=>'PRIORITY_LEVEL_NO'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19116272697806608)
,p_query_column_id=>8
,p_column_alias=>'CSS_STYLE'
,p_column_display_sequence=>140
,p_column_heading=>'Css Style'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16820348025483241)
,p_query_column_id=>9
,p_column_alias=>'AUDIT_CREATED_DATE'
,p_column_display_sequence=>90
,p_column_heading=>'Join on'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'CUSTOMERS'
,p_ref_column_name=>'AUDIT_CREATED_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19117143592806617)
,p_plug_name=>'Third Column'
,p_parent_plug_id=>wwv_flow_imp.id(19118738585806633)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19117215478806618)
,p_plug_name=>'Row-1-Col-1'
,p_parent_plug_id=>wwv_flow_imp.id(19117143592806617)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19117701732806623)
,p_plug_name=>'Frame'
,p_title=>'Calculators'
,p_parent_plug_id=>wwv_flow_imp.id(19117215478806618)
,p_region_css_classes=>'frame'
,p_icon_css_classes=>'fa-calculator'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20377378432328512)
,p_plug_name=>'Calculators'
,p_region_name=>'calculator-region'
,p_parent_plug_id=>wwv_flow_imp.id(19117701732806623)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16747046807557402)
,p_plug_name=>'Repayment'
,p_region_name=>'repayment-calculator'
,p_parent_plug_id=>wwv_flow_imp.id(20377378432328512)
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:js-headingLevel-4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'LOAN_CALCULATOR'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16818698240483224)
,p_plug_name=>'InputField Container'
,p_parent_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20377768554328516)
,p_plug_name=>'Home Loans'
,p_region_name=>'home-calculator'
,p_parent_plug_id=>wwv_flow_imp.id(20377378432328512)
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:js-headingLevel-4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'LOAN_CALCULATOR'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19117408378806620)
,p_plug_name=>'Row-2-Col-1'
,p_parent_plug_id=>wwv_flow_imp.id(19117143592806617)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19117811686806624)
,p_plug_name=>'Frame'
,p_title=>'Annual Income vs Requested Loan Amount'
,p_parent_plug_id=>wwv_flow_imp.id(19117408378806620)
,p_region_css_classes=>'frame'
,p_icon_css_classes=>'fa-money-bag'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16747529972557407)
,p_plug_name=>'Annual Income vs Requested Loan Amount'
,p_parent_plug_id=>wwv_flow_imp.id(19117811686806624)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'SELECT ',
'  customer_id,',
'  CASE income_frequency',
'    WHEN ''A'' THEN income_amount',
'    WHEN ''M'' THEN income_amount*12',
'    WHEN ''W'' THEN income_amount*52',
'  END AS annual_income,',
'  loan_amount,',
'  CASE income_frequency',
'    -- Assign colors based on income frequency',
'    WHEN ''A'' THEN ''#C7EF9E''  -- Annual (light green)',
'    WHEN ''M'' THEN ''#8ACDD9''  -- Monthly (medium blue)',
'    WHEN ''W'' THEN ''#BDE9F1''  -- Weekly (light blue)',
'    ELSE ''#E7F9CE''           -- Default (very light green)',
'  END AS color_value_3,',
'  -- Additional column to display the frequency type',
'  CASE income_frequency',
'    WHEN ''A'' THEN ''Annual''',
'    WHEN ''M'' THEN ''Monthly''',
'    WHEN ''W'' THEN ''Weekly''',
'    ELSE ''Unknown''',
'  END AS frequency_type',
'FROM customers',
'WHERE loan_amount IS NOT NULL;'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P1_ORDER_BY", "orderBys": [{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"},{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"}]}'
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(16816639306483204)
,p_region_id=>wwv_flow_imp.id(16747529972557407)
,p_chart_type=>'bubble'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(16816751778483205)
,p_chart_id=>wwv_flow_imp.id(16816639306483204)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  customer_id,',
'  CASE income_frequency',
'    WHEN ''A'' THEN income_amount',
'    WHEN ''M'' THEN income_amount*12',
'    WHEN ''W'' THEN income_amount*52',
'  END AS annual_income,',
'  loan_amount,',
'  CASE income_frequency',
'    -- Assign colors based on income frequency',
'    WHEN ''A'' THEN ''#C7EF9E''  -- Annual (light green)',
'    WHEN ''M'' THEN ''#8ACDD9''  -- Monthly (medium blue)',
'    WHEN ''W'' THEN ''#BDE9F1''  -- Weekly (light blue)',
'    ELSE ''#E7F9CE''           -- Default (very light green)',
'  END AS color_value_3,',
'  -- Additional column to display the frequency type',
'  CASE income_frequency',
'    WHEN ''A'' THEN ''Annual''',
'    WHEN ''M'' THEN ''Monthly''',
'    WHEN ''W'' THEN ''Weekly''',
'    ELSE ''Unknown''',
'  END AS frequency_type',
'FROM customers',
'WHERE loan_amount IS NOT NULL;'))
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'annual_income'
,p_series_name_column_name=>'FREQUENCY_TYPE'
,p_items_x_column_name=>'ANNUAL_INCOME'
,p_items_y_column_name=>'LOAN_AMOUNT'
,p_items_label_column_name=>'ANNUAL_INCOME'
,p_color=>'&COLOR_VALUE_3.'
,p_line_style=>'solid'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(16819446210483232)
,p_chart_id=>wwv_flow_imp.id(16816639306483204)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Anual Income'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(16819513812483233)
,p_chart_id=>wwv_flow_imp.id(16816639306483204)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Loan Amount'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19117668599806622)
,p_plug_name=>'Affordability Analysis'
,p_parent_plug_id=>wwv_flow_imp.id(19117143592806617)
,p_region_css_classes=>'frame'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19117982264806625)
,p_name=>'Affordability Analysis'
,p_parent_plug_id=>wwv_flow_imp.id(19117668599806622)
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Debt-to-Income Ratio Analysis',
'SELECT ',
'  customer_id,',
'  ROUND(',
'    (monthly_expenses / ',
'    CASE income_frequency',
'      WHEN ''A'' THEN income_amount/12',
'      WHEN ''M'' THEN income_amount',
'      WHEN ''W'' THEN income_amount*4',
'    END) * 100, 2',
'  ) AS Debt_To_Income_Ratio,',
'  loan_amount',
'FROM customers',
'WHERE income_amount > 0',
'order by Debt_To_Income_Ratio asc;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>9
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19118071071806626)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Customer Id'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19118212867806628)
,p_query_column_id=>2
,p_column_alias=>'DEBT_TO_INCOME_RATIO'
,p_column_display_sequence=>30
,p_column_heading=>'Debt To Income Ratio'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19118178128806627)
,p_query_column_id=>3
,p_column_alias=>'LOAN_AMOUNT'
,p_column_display_sequence=>20
,p_column_heading=>'Loan Amount'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19118424897806630)
,p_button_sequence=>70
,p_button_name=>'Calculator'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--large:t-Button--noUI:t-Button--pillEnd:t-Button--gapRight'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Re payment Calculator'
,p_button_position=>'AFTER_NAVIGATION_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-lg fa-calculator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15951560482011004)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15951464074011003)
,p_button_name=>'Home_1'
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
 p_id=>wwv_flow_imp.id(15951645532011005)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15951464074011003)
,p_button_name=>'Add_1'
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
 p_id=>wwv_flow_imp.id(15951713733011006)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(15951464074011003)
,p_button_name=>'Search_1'
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
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(15494765159757212)
,p_branch_name=>'Back'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:2::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16751199350557443)
,p_name=>'P1_STATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16820504489483243)
,p_item_display_point=>'CREATE'
,p_item_default=>'VIC'
,p_prompt=>'State'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st.display_value, st.return_value from (',
'select ''VIC'' display_value, ''VIC'' return_value, 1 priority from dual',
'union',
'select ''NSW'' display_value, ''NSW'' return_value, 2 priority from dual',
'union',
'select ''ACT'' display_value, ''ACT'' return_value, 4 priority from dual',
'union',
'select ''WA'' display_value, ''WA'' return_value, 5 priority from dual',
'union',
'select ''SA'' display_value, ''SA'' return_value, 3 priority from dual',
'union',
'select ''NT'' display_value, ''NT'' return_value, 7 priority from dual',
'union',
'select ''QLD'' display_value, ''QLD'' return_value, 8 priority from dual',
'union',
'select ''TAS'' display_value, ''TAS'' return_value, 6 priority from dual) st',
'',
'order by st.priority asc;'))
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16817696750483214)
,p_name=>'P1_CALCULATOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16818698240483224)
,p_item_source_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_source=>'CALCULATOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16817733707483215)
,p_name=>'P1_CALCULATOR_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_item_source_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_prompt=>'Calculator Type'
,p_source=>'CALCULATOR_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Home Loan;Home Loan,Repayment;Repayment'
,p_field_template=>3031561666792084173
,p_item_css_classes=>'hidden-item'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16817844201483216)
,p_name=>'P1_INTEREST_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16818698240483224)
,p_item_source_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_prompt=>'Interest Rate'
,p_source=>'INTEREST_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16817944063483217)
,p_name=>'P1_PROPERTY_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(16818698240483224)
,p_item_source_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_prompt=>'Property Type'
,p_source=>'PROPERTY_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Live In;LIVE_IN,Invest;INVEST'
,p_field_template=>3031561666792084173
,p_item_css_classes=>'radio-item'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16818039335483218)
,p_name=>'P1_BUYING_REASON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(16818698240483224)
,p_item_source_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_source=>'BUYING_REASON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16818148114483219)
,p_name=>'P1_REPAYMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(16818698240483224)
,p_item_source_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_source=>'REPAYMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16818238741483220)
,p_name=>'P1_AUDIT_DATE'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_item_source_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_source=>'AUDIT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16818361831483221)
,p_name=>'P1_AUDIT_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_item_source_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_source=>'AUDIT_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16818423528483222)
,p_name=>'P1_AUDIT_PRODUCT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_item_source_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_source=>'AUDIT_PRODUCT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16818501462483223)
,p_name=>'P1_AUDIT_SESSION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_item_source_plug_id=>wwv_flow_imp.id(16747046807557402)
,p_source=>'AUDIT_SESSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16818877641483226)
,p_name=>'P1_REPAYMENT_AMT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16818698240483224)
,p_item_default=>'$410'
,p_prompt=>'Repayment Amt'
,p_format_mask=>'FML999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16818935027483227)
,p_name=>'P1_MODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16818698240483224)
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Weekly;52,Fortnightly;26,Monthy;12'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16820932219483247)
,p_name=>'P1_LOAN_AMOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(16818698240483224)
,p_prompt=>'Loan Amount'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This amount can be changed slightly based on different conditions.',
'<p>Also, this excludes stamp duty and LMI premium</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16821252065483250)
,p_name=>'P1_TERM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16818698240483224)
,p_prompt=>'Loan Term'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LEVEL + 2 || '' years'' AS display_value,',
'       LEVEL + 2 AS return_value',
'FROM   DUAL',
'CONNECT BY LEVEL <= 28',
'ORDER BY LEVEL;'))
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20377876244328517)
,p_name=>'P1_CALCULATOR_ID_1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_item_source_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_source=>'CALCULATOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20378061711328519)
,p_name=>'P1_INTEREST_RATE_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_item_source_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_prompt=>'Interest Rate'
,p_source=>'INTEREST_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20378124058328520)
,p_name=>'P1_PROPERTY_TYPE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_item_source_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_prompt=>'Property Type'
,p_source=>'PROPERTY_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Live In;LIVE_IN,Invest;INVEST'
,p_field_template=>3031561666792084173
,p_item_css_classes=>'radio-item'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20378240387328521)
,p_name=>'P1_BUYING_REASON_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_item_source_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_prompt=>'Buying Reason'
,p_source=>'BUYING_REASON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20378399747328522)
,p_name=>'P1_REPAYMENT_TYPE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_item_source_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_prompt=>'Repayment Type'
,p_source=>'REPAYMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20378406918328523)
,p_name=>'P1_AUDIT_DATE_1'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_item_source_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_prompt=>'Audit Date'
,p_source=>'AUDIT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20378502854328524)
,p_name=>'P1_AUDIT_USER_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_item_source_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_prompt=>'Audit User'
,p_source=>'AUDIT_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20378692634328525)
,p_name=>'P1_AUDIT_PRODUCT_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_item_source_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_prompt=>'Audit Product'
,p_source=>'AUDIT_PRODUCT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20378786491328526)
,p_name=>'P1_AUDIT_SESSION_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_item_source_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_prompt=>'Audit Session'
,p_source=>'AUDIT_SESSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20378818472328527)
,p_name=>'P1_CALCULATOR_TYPE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_item_source_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_prompt=>'Calculator Type'
,p_source=>'CALCULATOR_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Home Loan;Home Loan,Repayment;Repayment'
,p_field_template=>3031561666792084173
,p_item_css_classes=>'hidden-item'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20378933334328528)
,p_name=>'P1_LOAN_AMOUNT_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_item_default=>'153662'
,p_prompt=>'Loan Amount'
,p_format_mask=>'FML999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20379110221328530)
,p_name=>'P1_MODE_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Weekly;52,Fortnightly;26,Monthy;12'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20379241033328531)
,p_name=>'P1_TERM_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_prompt=>'Loan Term'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LEVEL + 2 || '' years'' AS display_value,',
'       LEVEL + 2 AS return_value',
'FROM   DUAL',
'CONNECT BY LEVEL <= 28',
'ORDER BY LEVEL;'))
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20379426354328533)
,p_name=>'P1_REPAYMENT_AMT_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(20377768554328516)
,p_prompt=>'Repayment Amount'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This amount can be changed slightly based on different conditions.',
'<p>Also, this excludes stamp duty and LMI premium</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33459158822350426)
,p_name=>'P1_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33457399116350409)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'TOTAL_CUSTOMERS'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Total Customers;TOTAL_CUSTOMERS'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16751254800557444)
,p_name=>'Change Bar Char Data'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_STATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16751394922557445)
,p_event_id=>wwv_flow_imp.id(16751254800557444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16285115778233246)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16821040018483248)
,p_name=>'InitializeHomeLoan'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16821195769483249)
,p_event_id=>wwv_flow_imp.id(16821040018483248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_REPAYMENT_AMT_1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''$'' || TO_CHAR(',
'         fin_loan_cal.calculate_repayment(',
'           p_loan_amount   => trim(regexp_replace(:P1_LOAN_AMOUNT_1, ''[^0-9]'', '''')), ',
'           p_interest_rate => :P1_INTEREST_RATE_1,',
'           p_frequency     => :P1_MODE_1,',
'           p_term          => :P1_TERM_1',
'         ),',
'         ''FM999,999,999,990''',
'       );'))
,p_attribute_07=>'P1_LOAN_AMOUNT_1,P1_INTEREST_RATE_1,P1_MODE_1,P1_TERM_1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19115509514806601)
,p_name=>'InitializeRepayment'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19115695460806602)
,p_event_id=>wwv_flow_imp.id(19115509514806601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_loan_amt varchar2(100);',
'begin',
'  fin_loan_cal.calculate_max_property_and_loan(',
'    p_repayment_amount => trim(regexp_replace(:P1_REPAYMENT_AMT, ''[^0-9]'', '''')),      -- Repayment Amount',
'    p_mode             => :P1_MODE,       -- Repayment Mode: 12 (monthly), 26 (fortnightly), 52 (weekly)',
'    p_term             => :P1_TERM,      -- Loan Term in years',
'    p_interest_rate    => :P1_INTEREST_RATE,    -- Annual Interest Rate (percentage)',
'    loan_amt           => v_loan_amt',
'  );',
' :P1_LOAN_AMOUNT := v_loan_amt;',
'end;',
''))
,p_attribute_02=>'P1_MODE,P1_TERM,P1_INTEREST_RATE'
,p_attribute_03=>'P1_LOAN_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19116395102806609)
,p_name=>'calHomeInterest&LoanAmt'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PROPERTY_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19116414523806610)
,p_event_id=>wwv_flow_imp.id(19116395102806609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_interest_rate number;',
'  v_loan_amt varchar2(100);',
'begin    ',
'--   select interest_rate',
'--     into l_interest_rate',
'--     from loan_calculator',
'--    where calculator_type = ''Home Loan''',
'--      and property_type = :P1_PROPERTY_TYPE;',
'    select config_value into l_interest_rate from am_configuration where config_name = nvl(:P1_PROPERTY_TYPE,''LIVE_IN'');',
'',
'  :P1_INTEREST_RATE := l_interest_rate;',
'  fin_loan_cal.calculate_max_property_and_loan(',
'    p_repayment_amount => trim(regexp_replace(:P1_REPAYMENT_AMT, ''[^0-9]'', '''')),      -- Repayment Amount',
'    p_mode             => :P1_MODE,       -- Repayment Mode: 12 (monthly), 26 (fortnightly), 52 (weekly)',
'    p_term             => :P1_TERM,      -- Loan Term in years',
'    p_interest_rate    => l_interest_rate,    -- Annual Interest Rate (percentage)',
'    loan_amt           => v_loan_amt',
'  );',
':P1_LOAN_AMOUNT := v_loan_amt;',
'end;',
''))
,p_attribute_02=>'P1_PROPERTY_TYPE,P1_MODE,P1_TERM'
,p_attribute_03=>'P1_INTEREST_RATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19116585493806611)
,p_name=>'re-calRepaymentInterest&LoanAmt'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_MODE,P1_TERM,P1_INTEREST_RATE,P1_REPAYMENT_AMT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19116624085806612)
,p_event_id=>wwv_flow_imp.id(19116585493806611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_loan_amt varchar2(100);',
'begin',
'  fin_loan_cal.calculate_max_property_and_loan(',
'    p_repayment_amount => trim(regexp_replace(:P1_REPAYMENT_AMT, ''[^0-9]'', '''')),      -- Repayment Amount',
'    p_mode             => :P1_MODE,       -- Repayment Mode: 12 (monthly), 26 (fortnightly), 52 (weekly)',
'    p_term             => :P1_TERM,      -- Loan Term in years',
'    p_interest_rate    => :P1_INTEREST_RATE,    -- Annual Interest Rate (percentage)',
'    loan_amt           => v_loan_amt',
'  );',
' :P1_LOAN_AMOUNT := v_loan_amt;',
'end;',
''))
,p_attribute_02=>'P1_REPAYMENT_AMT,P1_MODE,P1_TERM,P1_INTEREST_RATE'
,p_attribute_03=>'P1_LOAN_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19116771165806613)
,p_name=>'re-calRepaymentInterest&LoanAmt_1'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_MODE,P1_TERM,P1_INTEREST_RATE,P1_REPAYMENT_AMT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'input'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19116896588806614)
,p_event_id=>wwv_flow_imp.id(19116771165806613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_loan_amt varchar2(100);',
'begin',
'  fin_loan_cal.calculate_max_property_and_loan(',
'    p_repayment_amount => trim(regexp_replace(:P1_REPAYMENT_AMT, ''[^0-9]'', '''')),      -- Repayment Amount',
'    p_mode             => :P1_MODE,       -- Repayment Mode: 12 (monthly), 26 (fortnightly), 52 (weekly)',
'    p_term             => :P1_TERM,      -- Loan Term in years',
'    p_interest_rate    => :P1_INTEREST_RATE,    -- Annual Interest Rate (percentage)',
'    loan_amt           => v_loan_amt',
'  );',
' :P1_LOAN_AMOUNT := v_loan_amt;',
'end;',
''))
,p_attribute_02=>'P1_REPAYMENT_AMT,P1_MODE,P1_TERM,P1_INTEREST_RATE'
,p_attribute_03=>'P1_LOAN_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19118505956806631)
,p_name=>'Scroll to Calculator'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19118424897806630)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19118625950806632)
,p_event_id=>wwv_flow_imp.id(19118505956806631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Smooth scroll to the region',
'$(''html, body'').animate({',
'    scrollTop: $(''#calculator-region'').offset().top - 190 // Adjust offset as needed',
'}, 500); // 500ms animation duration'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20508817223356803)
,p_name=>'re-calHomeInterest&LoanAmt'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_LOAN_AMOUNT_1,P1_INTEREST_RATE_1,P1_MODE_1,P1_TERM_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20508962182356804)
,p_event_id=>wwv_flow_imp.id(20508817223356803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_REPAYMENT_AMT_1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''$'' || TO_CHAR(',
'         fin_loan_cal.calculate_repayment(',
'           p_loan_amount   => round(to_number(trim(regexp_replace(:P1_LOAN_AMOUNT_1, ''[^0-9.]'', ''''))), 0), ',
'           p_interest_rate => :P1_INTEREST_RATE_1,',
'           p_frequency     => :P1_MODE_1,',
'           p_term          => :P1_TERM_1',
'         ),',
'         ''999G999G999G999G999G999G990''',
'       );'))
,p_attribute_07=>'P1_LOAN_AMOUNT_1,P1_INTEREST_RATE_1,P1_MODE_1,P1_TERM_1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20509097131356805)
,p_name=>'re-calHomeInterest&LoanAmt_1'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_LOAN_AMOUNT_1,P1_INTEREST_RATE_1,P1_MODE_1,P1_TERM_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'input'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20509166339356806)
,p_event_id=>wwv_flow_imp.id(20509097131356805)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_REPAYMENT_AMT_1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''$'' || TO_CHAR(',
'         fin_loan_cal.calculate_repayment(',
'           p_loan_amount   => round(to_number(trim(regexp_replace(:P1_LOAN_AMOUNT_1, ''[^0-9.]'', ''''))), 0), ',
'           p_interest_rate => :P1_INTEREST_RATE_1,',
'           p_frequency     => :P1_MODE_1,',
'           p_term          => :P1_TERM_1',
'         ),',
'         ''999G999G999G999G999G999G990''',
'       );'))
,p_attribute_07=>'P1_LOAN_AMOUNT_1,P1_INTEREST_RATE_1,P1_MODE_1,P1_TERM_1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20509207214356807)
,p_name=>'re-calInterestRate&HomeLoanAmt'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PROPERTY_TYPE_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20509349297356808)
,p_event_id=>wwv_flow_imp.id(20509207214356807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_interest_rate number;',
'  v_repayment_amt varchar2(100);',
'begin    ',
'',
'    select config_value into l_interest_rate from am_configuration where config_name = nvl(:P1_PROPERTY_TYPE_1,''LIVE_IN'');',
'    ',
'    :P1_INTEREST_RATE_1 := l_interest_rate;',
'',
'    v_repayment_amt :=  ''$'' || to_char(',
'                         fin_loan_cal.calculate_repayment(',
'                           p_loan_amount   => round(to_number(trim(regexp_replace(:P1_LOAN_AMOUNT_1, ''[^0-9.]'', ''''))), 0), ',
'                           p_interest_rate => :P1_INTEREST_RATE_1,',
'                           p_frequency     => :P1_MODE_1,',
'                           p_term          => :P1_TERM_1',
'                         ),',
'                         ''999G999G999G999G999G999G990''',
'                       );',
'    :P1_REPAYMENT_AMT_1 := v_repayment_amt;',
'end;'))
,p_attribute_02=>'P1_PROPERTY_TYPE_1,P1_LOAN_AMOUNT_1,P1_INTEREST_RATE_1,P1_MODE_1,P1_TERM_1'
,p_attribute_03=>'P1_REPAYMENT_AMT_1,P1_INTEREST_RATE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15043942364162319)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Invoke Workflow'
,p_attribute_01=>'START'
,p_attribute_02=>wwv_flow_imp.id(15029879911839076)
,p_attribute_03=>':APP_USER'
,p_process_error_message=>'Error in Workflow.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Invoked Workflow.'
,p_internal_uid=>15043942364162319
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15044381699162320)
,p_page_process_id=>wwv_flow_imp.id(15043942364162319)
,p_workflow_variable_id=>wwv_flow_imp.id(15030047510839078)
,p_page_id=>1
,p_value_type=>'STATIC'
,p_value=>'cbkulawardana@gmail.com'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15309662417301913)
,p_page_process_id=>wwv_flow_imp.id(15043942364162319)
,p_workflow_variable_id=>wwv_flow_imp.id(14989451658663226)
,p_page_id=>1
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15320433296377599)
,p_page_process_id=>wwv_flow_imp.id(15043942364162319)
,p_workflow_variable_id=>wwv_flow_imp.id(14989543930663227)
,p_page_id=>1
,p_value_type=>'ITEM'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15390716798601167)
,p_page_process_id=>wwv_flow_imp.id(15043942364162319)
,p_workflow_variable_id=>wwv_flow_imp.id(14990778642663239)
,p_page_id=>1
,p_value_type=>'ITEM'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15663468990341387)
,p_page_process_id=>wwv_flow_imp.id(15043942364162319)
,p_workflow_variable_id=>wwv_flow_imp.id(15657844121334401)
,p_page_id=>1
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15664759069341388)
,p_page_process_id=>wwv_flow_imp.id(15043942364162319)
,p_workflow_variable_id=>wwv_flow_imp.id(15657962137334402)
,p_page_id=>1
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15679198971559484)
,p_page_process_id=>wwv_flow_imp.id(15043942364162319)
,p_workflow_variable_id=>wwv_flow_imp.id(15658301319334406)
,p_page_id=>1
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15680872482708663)
,p_page_process_id=>wwv_flow_imp.id(15043942364162319)
,p_workflow_variable_id=>wwv_flow_imp.id(15658499050334407)
,p_page_id=>1
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15682961270720219)
,p_page_process_id=>wwv_flow_imp.id(15043942364162319)
,p_workflow_variable_id=>wwv_flow_imp.id(15658554186334408)
,p_page_id=>1
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15684268128720220)
,p_page_process_id=>wwv_flow_imp.id(15043942364162319)
,p_workflow_variable_id=>wwv_flow_imp.id(15658691967334409)
,p_page_id=>1
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(15710783889031236)
,p_page_process_id=>wwv_flow_imp.id(15043942364162319)
,p_workflow_variable_id=>wwv_flow_imp.id(15659501487334418)
,p_page_id=>1
,p_value_type=>'NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16818753837483225)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Loan Calculate PKs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin           ',
'  :P1_CALCULATOR_ID := 2;',
'  :P1_CALCULATOR_ID_1 := 4;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16818753837483225
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16817517453483213)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(20377768554328516)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Home'
,p_process_when=>'select * from loan_calculator;'
,p_process_when_type=>'EXISTS'
,p_internal_uid=>16817517453483213
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20379038138328529)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(16747046807557402)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Repayment'
,p_process_when=>'select * from loan_calculator;'
,p_process_when_type=>'EXISTS'
,p_internal_uid=>20379038138328529
);
wwv_flow_imp.component_end;
end;
/

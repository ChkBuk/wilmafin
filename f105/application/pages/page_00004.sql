prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<meta name="theme-color" content="#004a5a">',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16284553672233240)
,p_plug_name=>'Dashboard'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>'SELECT COUNT(*) AS total_customers FROM customers;'
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P4_ORDER_BY", "orderBys": [{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"},{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"}]}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(16284656208233241)
,p_region_id=>wwv_flow_imp.id(16284553672233240)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>'Total customer'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>'<h1>&TOTAL_CUSTOMERS.</h1>'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16284733606233242)
,p_plug_name=>'Dashboard'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>1
,p_plug_display_column=>3
,p_query_type=>'SQL'
,p_plug_source=>'SELECT COUNT(*) AS total_customers FROM customers;'
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P4_ORDER_BY", "orderBys": [{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"},{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"}]}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(16284854823233243)
,p_region_id=>wwv_flow_imp.id(16284733606233242)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>'Total customer'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>'<h1>&TOTAL_CUSTOMERS.</h1>'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16719110110843476)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(14309936853069701)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16719885148843480)
,p_plug_name=>'Dashboard'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_query_type=>'SQL'
,p_plug_source=>'SELECT COUNT(*) AS total_customers FROM customers;'
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P4_ORDER_BY", "orderBys": [{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"},{"key":"TOTAL_CUSTOMERS","expr":"\"TOTAL_CUSTOMERS\" asc"}]}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(16720333724843481)
,p_region_id=>wwv_flow_imp.id(16719885148843480)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>'Total customer'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>'<h1>&TOTAL_CUSTOMERS.</h1>'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16720815352843485)
,p_name=>'P4_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16719885148843480)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'TOTAL_CUSTOMERS'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Total Customers;TOTAL_CUSTOMERS,Total Customers;TOTAL_CUSTOMERS'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp.component_end;
end;
/

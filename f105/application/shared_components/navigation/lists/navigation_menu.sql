prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7595803988746305
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WILMAFIN'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14310404614069704)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>39508251068820
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14322117346069787)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa fa-home fa-3x'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14916465533473106)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Add Customer'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-plus-circle-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14344265193989708)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Seach Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14494665857123206)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Create New Customer'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-plus'
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3,4'
);
wwv_flow_imp.component_end;
end;
/

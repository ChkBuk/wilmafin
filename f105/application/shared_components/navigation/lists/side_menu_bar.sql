prompt --application/shared_components/navigation/lists/side_menu_bar
begin
--   Manifest
--     LIST: Side Menu Bar
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
 p_id=>wwv_flow_imp.id(15532001789282827)
,p_name=>'Side Menu Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>39508596145900
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15532689095282828)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15533421755282828)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(15532689095282828)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16096441455932728)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16096775381945006)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'Add New Customer'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-plus'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16097079680951787)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'Search Customer'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16238384640680832)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15532237836282827)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15534814040295624)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Version'
,p_required_patch=>wwv_flow_imp.id(14309379580069697)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

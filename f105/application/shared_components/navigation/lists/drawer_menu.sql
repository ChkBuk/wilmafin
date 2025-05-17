prompt --application/shared_components/navigation/lists/drawer_menu
begin
--   Manifest
--     LIST: Drawer Menu
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
 p_id=>wwv_flow_imp.id(15485743804587709)
,p_name=>'Drawer Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>39508480234236
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15499307918776099)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Favourits'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-star'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

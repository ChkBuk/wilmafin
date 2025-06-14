prompt --application/shared_components/navigation/lists/application_configuration
begin
--   Manifest
--     LIST: Application Configuration
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>9537998525254393
,p_default_application_id=>105
,p_default_id_offset=>9654090527537426
,p_default_owner=>'XEWMDEV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(25853463385802525)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(25843879643802474)
,p_version_scn=>39508475059667
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25853849747802526)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Company email address'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010:::'
,p_list_item_icon=>'fa-envelope-edit'
,p_list_text_01=>'Enable or disable application features'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/navigation/lists/navigation_bar
begin
--   Manifest
--     LIST: Navigation Bar
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
 p_id=>wwv_flow_imp.id(23965719387607150)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>39508413434702
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(23994034653491697)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/

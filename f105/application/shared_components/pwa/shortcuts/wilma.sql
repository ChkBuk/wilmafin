prompt --application/shared_components/pwa/shortcuts/wilma
begin
--   Manifest
--     PWA SHORTCUT: Wilma
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>9537998525254393
,p_default_application_id=>105
,p_default_id_offset=>9654090527537426
,p_default_owner=>'XEWMDEV'
);
wwv_flow_imp_shared.create_pwa_shortcut(
 p_id=>wwv_flow_imp.id(28991872964678206)
,p_name=>'Wilma'
,p_display_sequence=>10
,p_target_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_icon_url=>'pwa/shortcut-icon-10.png'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/logic/application_settings
begin
--   Manifest
--     APPLICATION SETTINGS: 105
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>9537998525254393
,p_default_application_id=>105
,p_default_id_offset=>9654090527537426
,p_default_owner=>'XEWMDEV'
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(24476273204769577)
,p_name=>'GOOGLE_MAPS_API_KEY'
,p_value=>'AIzaSyC9Gxptyfk_uc98mafSaBkXDsQuQbjDy2U'
,p_is_required=>'N'
,p_on_upgrade_keep_value=>true
,p_version_scn=>39508181520783
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 105
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7595803988746305
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WILMAFIN'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(14309379580069697)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>39508145762784
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(16189789116265048)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>39508474953440
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
--   Manifest
--     AUTHENTICATION: Oracle APEX Accounts
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7595803988746305
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WILMAFIN'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(14309666481069699)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>39508145762786
);
wwv_flow_imp.component_end;
end;
/

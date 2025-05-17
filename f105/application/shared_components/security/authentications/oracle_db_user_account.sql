prompt --application/shared_components/security/authentications/oracle_db_user_account
begin
--   Manifest
--     AUTHENTICATION: Oracle DB User Account
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
 p_id=>wwv_flow_imp.id(14327762400230297)
,p_name=>'Oracle DB User Account'
,p_scheme_type=>'NATIVE_DB_ACCOUNTS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>39508146312765
);
wwv_flow_imp.component_end;
end;
/

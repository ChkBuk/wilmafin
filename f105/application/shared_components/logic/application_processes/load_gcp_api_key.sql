prompt --application/shared_components/logic/application_processes/load_gcp_api_key
begin
--   Manifest
--     APPLICATION PROCESS: LOAD_GCP_API_KEY
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>9537998525254393
,p_default_application_id=>105
,p_default_id_offset=>9654090527537426
,p_default_owner=>'XEWMDEV'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(29756395863474734)
,p_process_sequence=>1
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOAD_GCP_API_KEY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  apex_util.set_session_state(',
'    p_name  => ''GCP_API_KEY'',',
'    p_value => APEX_APP_SETTING.GET_VALUE(p_name => ''GCP_API_KEY'')',
'  );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'USER_IS_NOT_PUBLIC_USER'
,p_version_scn=>39508901776308
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 105
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7595803988746305
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WILMAFIN'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(14315567726069756)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/

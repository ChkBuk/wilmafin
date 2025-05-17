prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7595803988746305
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WILMAFIN'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(14309936853069701)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14310160886069702)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14345169790989712)
,p_short_name=>'Seach Customers'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14917335095473113)
,p_short_name=>'Add Customer'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16239215035680837)
,p_short_name=>'Configuration'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16719644664843479)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp.component_end;
end;
/

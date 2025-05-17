prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 105
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7595803988746305
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WILMAFIN'
);
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(105)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_auto_dismiss_success_msg=>true
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(15532001789282827)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(15639645277292493)
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleB'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(14311628860069724)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_imp.component_end;
end;
/

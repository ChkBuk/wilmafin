prompt --application/create_application
begin
--   Manifest
--     FLOW: 105
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>9537998525254393
,p_default_application_id=>105
,p_default_id_offset=>9654090527537426
,p_default_owner=>'XEWMDEV'
);
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'XEWMDEV')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'WILMAFIN')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'WILMAFIN')
,p_application_group=>wwv_flow_imp.id(195814339718149747)
,p_application_group_name=>'Starter Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'E5856F87120C5C80164A375FAC3D0C30C8B7ED70AC76FB888B3DCC6ADF03029D'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_date_time_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(23963757008607125)
,p_application_tab_set=>0
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'www.wilmatest.site')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>unistr('Wilma Financial Services \00A9 2025')
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_rejoin_existing_sessions=>'Y'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'WILMAFIN'
,p_substitution_string_02=>'APP_GOOGLE_MAPS_API_KEY'
,p_substitution_value_02=>'AIzaSyC9Gxptyfk_uc98mafSaBkXDsQuQbjDy2U'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>1370
,p_version_scn=>39509510083300
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'fullscreen'
,p_pwa_manifest_orientation=>'any'
,p_pwa_manifest_theme_color=>'#0192ad'
,p_pwa_manifest_bg_color=>'#ffffff'
,p_pwa_manifest_custom=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "name": "WilmaFin",',
'  "short_name": "WilmaFin",',
'  "display": "fullscreen",',
'  "background_color": "#009db2",',
'  "theme_color": "#009db2",',
'  "orientation": "portrait"',
'}',
''))
,p_pwa_apple_status_bar_style=>'black-translucent'
,p_pwa_is_push_enabled=>'N'
,p_copyright_banner=>unistr('Wilma Financial Services \00A9 2025. All Rights Reserved Terms of Use and Privacy Policy')
);
wwv_flow_imp.component_end;
end;
/

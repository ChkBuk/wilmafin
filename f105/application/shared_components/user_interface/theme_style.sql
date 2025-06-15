prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 105
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>9537998525254393
,p_default_application_id=>105
,p_default_id_offset=>9654090527537426
,p_default_owner=>'XEWMDEV'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(24520152174330697)
,p_theme_id=>42
,p_name=>'Vita (WIlma)'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-BG":"#0093ad","@g_Link-Base":"#1156ce","@g_Success-BG":"#31a703","@g_Success-FG":"#ffffff","@g_Form-BorderRadius":"4px","@g_Nav-Active-BG":"#1b7d81","@g_Nav-Active-FG":"#fcfdfd","@g_Nav-BG":"#0d89a5","@g_Nav-FG":"#edf'
||'1f2","@g_Nav_Style":"light"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#14866061646793271.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp.component_end;
end;
/

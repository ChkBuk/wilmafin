prompt --application/shared_components/email/templates/new_customer_acknowledgement_email
begin
--   Manifest
--     EMAIL TEMPLATE: New Customer Acknowledgement Email
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7595803988746305
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WILMAFIN'
);
wwv_flow_imp_shared.create_email_template(
 p_id=>wwv_flow_imp.id(15291939401699518)
,p_name=>'New Customer Acknowledgement Email'
,p_static_id=>'NEW_CUSTOMER_ACKNOWLEDGEMENT_EMAIL'
,p_version_number=>2
,p_subject=>unistr('Welcome to Wilma Financial Services \2013 Your Trusted Mortgage Partner')
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <div style="padding:30px;">',
'      <p style="font-size:16px; line-height:1.6; color:#333333;">Dear #CLIENT_NAME#,</p>',
'      ',
'      <p style="font-size:16px; line-height:1.6; color:#333333;">On behalf of everyone at <strong>Wilma Financial Services</strong>, we''re thrilled to welcome you as our newest client!</p>',
'      <p style="font-size:16px; line-height:1.6; color:#333333;">Your reference no is: <strong>#CLIENT_REF#</strong></p>',
'      <p style="font-size:16px; line-height:1.6; color:#333333;">As your dedicated mortgage broker, we''re committed to:</p>',
'      ',
'      <ul style="font-size:16px; line-height:1.8; color:#333333; padding-left:20px;">',
'        <li>Finding you the <strong>best mortgage rates</strong> in the market</li>',
'        <li>Providing <strong>personalized service</strong> tailored to your needs</li>',
'        <li>Making the entire process <strong>simple and stress-free</strong></li>',
'      </ul>',
'      ',
'      <div style="background-color:#e1f7fb; padding:15px; border-left:4px solid #0093ad; margin:20px 0;">',
'        <p style="font-size:16px; margin:0; color:#004a5a;"><strong>Next Steps:</strong> One of our dedicated advisors will contact you within 24 hours to discuss your financing goals.</p>',
'      </div>',
'      ',
'      <p style="font-size:16px; line-height:1.6; color:#333333;">In the meantime, feel free to explore our various services at <a href="https://wilmafinance.com.au" style="color:#0093ad; text-decoration:underline;">www.wilmafinance.com.au</a></p>',
'      ',
'      <!-- <div style="text-align:center; margin:25px 0;">',
'        <a href="[App Store Link]" style="display:inline-block; margin:0 10px;"><img src="[App Store Badge URL]" alt="Download on the App Store" style="height:40px;"></a>',
'        <a href="[Play Store Link]" style="display:inline-block; margin:0 10px;"><img src="[Play Store Badge URL]" alt="Get it on Google Play" style="height:40px;"></a>',
'      </div> -->'))
,p_html_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="margin:0; background-color:#f8f9fa; padding:0; font-family:''Helvetica Neue'', Arial, sans-serif;">',
'  <div style="margin:0; background:#ffffff;overflow:hidden;">',
'    <!-- Premium Header Banner -->',
'    <div style="background: linear-gradient(135deg, #0093ad, #004a5a); padding:30px; text-align:center; border-bottom:1px solid rgba(255,255,255,0.1);">',
'      <img src="https://ga8e55f0b539d22-wilmadb.adb.ap-melbourne-1.oraclecloudapps.com/ords/r/dev/105/files/static/v131/images/wilma-logo-square.png" ',
'           alt="Wilma Financial Services" ',
'           style="height:50px; margin-bottom:20px;">',
'      ',
'      <h1 style="color:#ffffff; margin:0; font-size:26px; font-weight:300; letter-spacing:0.5px; text-transform:none;">',
'        Welcome to Wilma Financial Services',
'      </h1>',
'      <p style="color:rgba(255,255,255,0.9); margin:8px 0 0; font-size:15px; font-weight:300;">',
'        Your Trusted Partner in Mortgage Financing Solutions',
'      </p>',
'    </div>'))
,p_html_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    </div>',
'    ',
'    <div style="background-color:#f5f5f5; padding:20px; text-align:center; font-size:14px; color:#666666; border-top:1px solid #e0e0e0;">',
'      <p style="margin:5px 0;">Wilma Financial Services</p>',
'      <p style="margin:5px 0;">59 Kiama Street, Officer, Victoria 3809 | 0433534514</p>',
'      <p style="margin:5px 0;"><a href="https://wilmafinance.com.au" style="color:#0093ad; text-decoration:none;">www.wilmafinance.com.au</a></p>',
'      ',
'      <div style="margin-top:15px;">',
'        <a href="https://www.facebook.com/wilmahomeloans" style="margin:0 5px;"><img src="https://ga8e55f0b539d22-wilmadb.adb.ap-melbourne-1.oraclecloudapps.com/ords/r/dev/105/files/static/v131/images/facebook_5968764.png" alt="Facebook" style="heigh'
||'t:24px;"></a>',
'        <a href="https://www.instagram.com/wilmafinancialservices/?igsh=aHQwbm9pMXhvNjlo" style="margin:0 5px;"><img src="https://ga8e55f0b539d22-wilmadb.adb.ap-melbourne-1.oraclecloudapps.com/ords/r/dev/105/files/static/v131/images/instagram_2111463'
||'.png" alt="Instagram" style="height:24px;"></a>',
'      </div>',
'      ',
'      <p style="margin-top:15px; font-size:12px; color:#999999;">',
unistr('        \00A9 2025 Wilma Financial Services. All rights reserved.<br>'),
'        <a href="[Privacy Policy URL]" style="color:#999999; text-decoration:underline;">Privacy Policy</a> | ',
'        <a href="[Terms of Service URL]" style="color:#999999; text-decoration:underline;">Terms of Service</a>',
'      </p>',
'    </div>',
'  </div>',
'</div>'))
,p_html_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE HTML>',
'<html>',
'<head>',
'  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">',
'  <meta name="viewport" content="width=device-width">',
'  <style>',
'    body { background-color: #fdfdfd; color: #3e3e3e; margin: 0; padding: 0; min-width: 100%; -webkit-text-size-adjust: none; -ms-text-size-adjust: none; text-size-adjust: none; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", "Helvetica N'
||'eue", Roboto, Helvetica, Arial, sans-serif; line-height: 1.5; -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; }',
'    table { border: 0; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; }',
'    table td { padding: 0; vertical-align: top; border-collapse: collapse; }',
'    table, th, td { line-height: inherit; }',
'    img { vertical-align: middle; text-decoration: none; outline: none; border: 0; -ms-interpolation-mode: bicubic; }',
'    table.container { margin-right: auto; margin-left: auto; width: 600px; }',
'    p { margin: 0 0 20px 0; }',
'    a, .main a { color: #056abf; }',
'    @media only screen and (max-width: 612px) {',
'      .mobile-hide { display: none !important; }',
'      .stack { display: block !important; width: auto !important; }',
'      table.container { width: 100% !important; }',
'      table td { text-align: left !important; }',
'    }',
'  </style>',
'</head>',
'<body yahoo="fix" style="background-color: #efefef; line-height: 1.5;">',
'<table class="body" border="0" width="100%">',
'  <tr>',
'    <td align="center" valign="top" style="background-color: #efefef;">',
'      <center>',
'        <table class="container" width="600">',
'          <tr>',
'            <td style="padding: 6px;">',
'',
'              <!-- Header -->',
'              <table width="100%" style="background-color: #f8f8f8; border-radius: 4px 4px 0 0">',
'                <tr>',
'                  <td style="text-align: left;border-bottom: 1px solid #eaeaea;">',
'                    #HEADER#',
'                  </td>',
'                </tr>',
'              </table>',
'              <!-- // Header -->',
'',
'              <!-- Main Body -->',
'              <table width="100%" style="background-color: #ffffff; border-radius: 0 0 4px 4px;">',
'                <tr>',
'                  <td class="main" style="text-align: left; padding: 12px; font-size: 14px;">',
'                  #BODY#',
'                  </td>',
'                </tr>',
'              </table>',
'              <!-- // Main Body -->',
'',
'              <!-- Footer -->',
'              <table width="100%">',
'                <tr>',
'                  <td style="font-size: 11px; padding: 12px;">',
'                    #FOOTER#',
'                  </td>',
'                </tr>',
'              </table>',
'              <!-- // Footer -->',
'',
'            </td>',
'          </tr>',
'        </table>',
'      </center>',
'    </td>',
'  </tr>',
'</table>',
'</body>',
'</html>'))
,p_version_scn=>39508552037314
);
wwv_flow_imp.component_end;
end;
/

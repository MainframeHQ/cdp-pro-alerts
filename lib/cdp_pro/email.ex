defmodule CdpPro.Email do
  import Bamboo.Email

  alias CdpProWeb.Router.Helpers, as: Routes

  def confirm_subscription_email(conn, subscription) do
    text = "Please confirm your subscription to CDP PRO notifications by clicking on the following link: "
    url = Routes.subscription_url(conn, :confirm, %{id: subscription.id})
    new_email(
      to: subscription.email,
      from: "cdp-pro-alerts@mainframe.com",
      subject: "Confirm your subscription to CDP PRO alerts",
      html_body: """
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html data-editor-version="2" class="sg-campaigns" xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" /><!--[if !mso]><!-->
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" /><!--<![endif]-->
    <!--[if (gte mso 9)|(IE)]>
    <xml>
    <o:OfficeDocumentSettings>
    <o:AllowPNG/>
    <o:PixelsPerInch>96</o:PixelsPerInch>
    </o:OfficeDocumentSettings>
    </xml>
    <![endif]-->
    <!--[if (gte mso 9)|(IE)]>
    <style type="text/css">
      body {width: 600px;margin: 0 auto;}
      table {border-collapse: collapse;}
      table, td {mso-table-lspace: 0pt;mso-table-rspace: 0pt;}
      img {-ms-interpolation-mode: bicubic;}
    </style>
    <![endif]-->

    <style type="text/css">
      body, p, div {
        font-family: arial;
        font-size: 14px;
      }
      body {
        color: #000000;
      }
      body a {
        color: #1188E6;
        text-decoration: none;
      }
      p { margin: 0; padding: 0; }
      table.wrapper {
        width:100% !important;
        table-layout: fixed;
        -webkit-font-smoothing: antialiased;
        -webkit-text-size-adjust: 100%;
        -moz-text-size-adjust: 100%;
        -ms-text-size-adjust: 100%;
      }
      img.max-width {
        max-width: 100% !important;
      }
      .column.of-2 {
        width: 50%;
      }
      .column.of-3 {
        width: 33.333%;
      }
      .column.of-4 {
        width: 25%;
      }
      @media screen and (max-width:480px) {
        .preheader .rightColumnContent,
        .footer .rightColumnContent {
            text-align: left !important;
        }
        .preheader .rightColumnContent div,
        .preheader .rightColumnContent span,
        .footer .rightColumnContent div,
        .footer .rightColumnContent span {
          text-align: left !important;
        }
        .preheader .rightColumnContent,
        .preheader .leftColumnContent {
          font-size: 80% !important;
          padding: 5px 0;
        }
        table.wrapper-mobile {
          width: 100% !important;
          table-layout: fixed;
        }
        img.max-width {
          height: auto !important;
          max-width: 480px !important;
        }
        a.bulletproof-button {
          display: block !important;
          width: auto !important;
          font-size: 80%;
          padding-left: 0 !important;
          padding-right: 0 !important;
        }
        .columns {
          width: 100% !important;
        }
        .column {
          display: block !important;
          width: 100% !important;
          padding-left: 0 !important;
          padding-right: 0 !important;
          margin-left: 0 !important;
          margin-right: 0 !important;
        }
      }
    </style>
    <!--user entered Head Start-->
    
     <!--End Head user entered-->
  </head>
  <body>
    <center class="wrapper" data-link-color="#1188E6" data-body-style="font-size: 14px; font-family: arial; color: #000000; background-color: #ffffff;">
      <div class="webkit">
        <table cellpadding="0" cellspacing="0" border="0" width="100%" class="wrapper" bgcolor="#ffffff">
          <tr>
            <td valign="top" bgcolor="#ffffff" width="100%">
              <table width="100%" role="content-container" class="outer" align="center" cellpadding="0" cellspacing="0" border="0">
                <tr>
                  <td width="100%">
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td>
                          <!--[if mso]>
                          <center>
                          <table><tr><td width="600">
                          <![endif]-->
                          <table width="100%" cellpadding="0" cellspacing="0" border="0" style="width: 100%; max-width:600px;" align="center">
                            <tr>
                              <td role="modules-container" style="padding: 0px 0px 0px 0px; color: #000000; text-align: left;" bgcolor="#ffffff" width="100%" align="left">
                                
    <table class="module preheader preheader-hide" role="module" data-type="preheader" border="0" cellpadding="0" cellspacing="0" width="100%"
           style="display: none !important; mso-hide: all; visibility: hidden; opacity: 0; color: transparent; height: 0; width: 0;">
      <tr>
        <td role="module-content">
          <p>Confirm your subscription to the CDP Pro Guard</p>
        </td>
      </tr>
    </table>
  
    <table  border="0"
            cellpadding="0"
            cellspacing="0"
            align="center"
            width="100%"
            role="module"
            data-type="columns"
            data-version="2"
            style="padding:0px 0px 0px 0px;box-sizing:border-box;"
            bgcolor="">
      <tr role='module-content'>
        <td height="100%" valign="top">
            <!--[if (gte mso 9)|(IE)]>
              <center>
                <table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-spacing:0;border-collapse:collapse;table-layout: fixed;" >
                  <tr>
            <![endif]-->
          
    <!--[if (gte mso 9)|(IE)]>
      <td width="300.000px" valign="top" style="padding: 0px 0px 0px 0px;border-collapse: collapse;" >
    <![endif]-->

    <table  width="300.000"
            style="width:300.000px;border-spacing:0;border-collapse:collapse;margin:0px 0px 0px 0px;"
            cellpadding="0"
            cellspacing="0"
            align="left"
            border="0"
            bgcolor=""
            class="column column-0 of-2
                  empty"
      >
      <tr>
        <td style="padding:0px;margin:0px;border-spacing:0;">
            
    <table class="wrapper" role="module" data-type="image" border="0" cellpadding="0" cellspacing="0" width="100%" style="table-layout: fixed;">
      <tr>
        <td style="font-size:6px;line-height:10px;padding:0px 0px 0px 0px;" valign="top" align="center">
          <img class="max-width" style="display:block;color:#000000;text-decoration:none;font-family:Helvetica, arial, sans-serif;font-size:16px;max-width:100% !important;width:100%;height:auto !important;" src="https://marketing-image-production.s3.amazonaws.com/uploads/5d5fa5656bf5449ae4118fc02d1ec190ed54a2f2948b50af6d0ea3e5cbf8587840de2569bd1c535e9fbed01d6bc008300ee5e314261ed99af9639c6c7d441043.png" alt="" width="300" border="0">
        </td>
      </tr>
    </table>
  
        </td>
      </tr>
    </table>

    <!--[if (gte mso 9)|(IE)]>
      </td>
    <![endif]-->
    <!--[if (gte mso 9)|(IE)]>
      <td width="300.000px" valign="top" style="padding: 0px 0px 0px 0px;border-collapse: collapse;" >
    <![endif]-->

    <table  width="300.000"
            style="width:300.000px;border-spacing:0;border-collapse:collapse;margin:0px 0px 0px 0px;"
            cellpadding="0"
            cellspacing="0"
            align="left"
            border="0"
            bgcolor=""
            class="column column-1 of-2
                  empty"
      >
      <tr>
        <td style="padding:0px;margin:0px;border-spacing:0;">
            
    <table class="module" role="module" data-type="text" border="0" cellpadding="0" cellspacing="0" width="100%" style="table-layout: fixed;">
      <tr>
        <td style="padding:18px 0px 18px 0px;line-height:22px;text-align:inherit;"
            height="100%"
            valign="top"
            bgcolor="">
            <div class="im">
<p>Please confirm your subscription to CDP PRO notifications by clicking on the following link: <a data-saferedirecturl="https://www.google.com/url?q=http://cdp-pro-alerts.mainframe.com/confirm?id%3Dd383abc9-efc0-46c4-aa2e-cce371b87c6b&amp;source=gmail&amp;ust=1553873085730000&amp;usg=AFQjCNE2wERU6d9Lpf4paZI-CZnnSWV3GA" href="http://cdp-pro-alerts.mainframe.com/confirm?id=d383abc9-efc0-46c4-aa2e-cce371b87c6b" target="_blank"><strong>Confirm Subscription</strong></a></p>
</div>
        </td>
      </tr>
    </table>
  
        </td>
      </tr>
    </table>

    <!--[if (gte mso 9)|(IE)]>
      </td>
    <![endif]-->
            <!--[if (gte mso 9)|(IE)]>
                  <tr>
                </table>
              </center>
            <![endif]-->
        </td>
      </tr>
    </table>
  <div data-role="module-unsubscribe" class="module unsubscribe-css__unsubscribe___2CDlR" role="module" data-type="unsubscribe" style="color:#444444;font-size:12px;line-height:20px;padding:16px 16px 16px 16px;text-align:center"><p style="font-family:[Sender_Name];font-size:12px;line-height:20px"><a class="Unsubscribe--unsubscribeLink" href="<%asm_group_unsubscribe_raw_url%>">Unsubscribe</a> - <a class="Unsubscribe--unsubscribePreferences" href="<%asm_preferences_raw_url%>">Unsubscribe Preferences</a></p></div>
                              </td>
                            </tr>
                          </table>
                          <!--[if mso]>
                          </td></tr></table>
                          </center>
                          <![endif]-->
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </div>
    </center>
  </body>
</html>
      """
      text_body: text <> url
    )
  end
end

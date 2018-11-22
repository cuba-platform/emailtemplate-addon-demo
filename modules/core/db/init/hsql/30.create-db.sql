insert into REPORT_REPORT
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOCALE_NAMES, CODE, GROUP_ID, DEFAULT_TEMPLATE_ID, REPORT_TYPE, DESCRIPTION, XML, ROLES_IDX, SCREENS_IDX, INPUT_ENTITY_TYPES_IDX, REST_ACCESS, IS_SYSTEM)
values ('bfd2cdcb-bb7c-47b5-de6d-9b5b8121de1d', 24, '2018-11-15 11:18:38', 'admin', '2018-11-22 11:11:15', 'admin', null, null, 'Created subscription', null, null, '4e083530-0b9c-11e1-9b41-6bdaa41bff94', null, 10, null, '{"metaClass":"report$Report","id":"bfd2cdcb-bb7c-47b5-de6d-9b5b8121de1d","roles":[],"defaultTemplate":{"metaClass":"report$ReportTemplate","id":"7eabeb5f-9341-4e90-642c-825d92a1ceb6","code":"DEFAULT","customDefinedBy":"100","custom":"false","version":"6","outputNamePattern":"Created subscription.html","reportOutputType":"30","customDefinition":"","report":{"metaClass":"report$Report","id":"bfd2cdcb-bb7c-47b5-de6d-9b5b8121de1d"},"name":"Template for report \"Created subscription\".html","alterable":"false"},"bands":[{"metaClass":"report$BandDefinition","id":"fbb59c99-8b36-b068-7a17-a1adb6f6a841","orientation":"","childrenBandDefinitions":[{"metaClass":"report$BandDefinition","id":"282a0ae2-aa33-5bd0-f479-21e864d79f24","orientation":"0","childrenBandDefinitions":[],"name":"Customer","parentBandDefinition":{"metaClass":"report$BandDefinition","id":"fbb59c99-8b36-b068-7a17-a1adb6f6a841"},"report":{"metaClass":"report$Report","id":"bfd2cdcb-bb7c-47b5-de6d-9b5b8121de1d"},"dataSets":[{"metaClass":"report$DataSet","id":"7af42e63-44d1-811d-8d37-c8e474869413","entityParamName":"customer","type":"40","jsonSourceType":"10","name":"Dataset","useExistingView":"false","bandDefinition":{"metaClass":"report$BandDefinition","id":"282a0ae2-aa33-5bd0-f479-21e864d79f24"},"text":"return [[:]]","view":"{\"entityClass\":\"yetdemo$Customer\",\"name\":\"\",\"properties\":{\"name\":{\"name\":\"name\",\"fetchMode\":\"AUTO\"}},\"loadPartialEntities\":false}"}],"position":"0"},{"metaClass":"report$BandDefinition","id":"86c6c717-a8cc-33b6-2944-129c68b76e21","orientation":"0","childrenBandDefinitions":[],"name":"Subscription","parentBandDefinition":{"metaClass":"report$BandDefinition","id":"fbb59c99-8b36-b068-7a17-a1adb6f6a841"},"report":{"metaClass":"report$Report","id":"bfd2cdcb-bb7c-47b5-de6d-9b5b8121de1d"},"dataSets":[{"metaClass":"report$DataSet","id":"25732613-c227-4447-a18b-fdee8b971222","entityParamName":"subscription","type":"40","jsonSourceType":"10","name":"Dataset","useExistingView":"false","bandDefinition":{"metaClass":"report$BandDefinition","id":"86c6c717-a8cc-33b6-2944-129c68b76e21"},"text":"return [[:]]","view":"{\"entityClass\":\"yetdemo$Subscription\",\"name\":\"\",\"properties\":{\"name\":{\"name\":\"name\",\"fetchMode\":\"AUTO\"}},\"loadPartialEntities\":false}"}],"position":"1"}],"name":"Root","report":{"metaClass":"report$Report","id":"bfd2cdcb-bb7c-47b5-de6d-9b5b8121de1d"},"dataSets":[],"position":"0"},{"metaClass":"report$BandDefinition","id":"282a0ae2-aa33-5bd0-f479-21e864d79f24"},{"metaClass":"report$BandDefinition","id":"86c6c717-a8cc-33b6-2944-129c68b76e21"}],"inputParameters":[{"metaClass":"report$ReportInputParameter","id":"d0ef0ca7-bc62-1c31-21e3-5003e1d7ca98","entityMetaClass":"yetdemo$Subscription","parameterClassName":"com.haulmont.demo.emailtemplates.entity.Subscription","predefinedTransformation":"","type":"30","required":"true","validationOn":"false","defaultDateIsCurrent":"false","report":{"metaClass":"report$Report","id":"bfd2cdcb-bb7c-47b5-de6d-9b5b8121de1d"},"name":"Subscription","alias":"subscription","position":"0"},{"metaClass":"report$ReportInputParameter","id":"846e857d-aad7-d9c1-a6f7-7ee38d3f93db","entityMetaClass":"yetdemo$Customer","parameterClassName":"com.haulmont.demo.emailtemplates.entity.Customer","predefinedTransformation":"","type":"30","required":"false","validationOn":"false","defaultDateIsCurrent":"false","report":{"metaClass":"report$Report","id":"bfd2cdcb-bb7c-47b5-de6d-9b5b8121de1d"},"name":"Customer","alias":"customer","position":"1"}],"validationOn":"false","reportType":"10","reportScreens":[],"group":{"metaClass":"report$ReportGroup","id":"4e083530-0b9c-11e1-9b41-6bdaa41bff94","localeNames":"en\u003dGeneral\r\nru\u003dОбщие","code":"ReportGroup.default","title":"General","version":"0"},"inputEntityTypesIdx":",yetdemo$Subscription,yetdemo$Customer,","valuesFormats":[],"templates":[{"metaClass":"report$ReportTemplate","id":"7eabeb5f-9341-4e90-642c-825d92a1ceb6"}],"version":"22","system":"false","name":"Created subscription"}', null, null, ',yetdemo$Subscription,yetdemo$Customer,', null, false);

insert into REPORT_TEMPLATE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, REPORT_ID, OUTPUT_TYPE, CODE, IS_CUSTOM, IS_ALTERABLE_OUTPUT, CUSTOM_CLASS, CUSTOM_DEFINED_BY, OUTPUT_NAME_PATTERN, NAME, CONTENT)
values ('7eabeb5f-9341-4e90-642c-825d92a1ceb6', 6, '2018-11-15 11:18:38', 'admin', '2018-11-22 11:07:22', 'admin', null, null, 'bfd2cdcb-bb7c-47b5-de6d-9b5b8121de1d', 30, 'DEFAULT', false, false, '', 100, 'Created subscription.html', 'Template for report "Created subscription".html', '3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d227574662d38223f3e0a3c21444f43545950452068746d6c205055424c494320222d2f2f5733432f2f445444205848544d4c20312e312f2f454e222022687474703a2f2f7777772e77332e6f72672f54522f7868746d6c31312f4454442f7868746d6c31312e647464223e0a3c68746d6c20786d6c6e733d22687474703a2f2f7777772e77332e6f72672f313939392f7868746d6c2220786d6c3a6c616e673d227275223e0a202020203c686561643e0a20202020202020203c7469746c653e204e6f74696669636174696f6e203c2f7469746c653e0a20202020202020203c7374796c6520747970653d22746578742f637373223e0a20202020202020202020202020626f647920207b666f6e742d66616d696c793a20274368617269732053494c272c2073616e732d73657269663b7d0a2074626f6479207472207b6865696768743a323070783b206d696e2d6865696768743a323070787d0a0a20202020202020203c2f7374796c653e0a202020203c2f686561643e0a202020203c626f64793e0a20202020202020200a3c2361737369676e20437573746f6d6572203d20526f6f742e62616e64732e437573746f6d65723e3c62722f3e0a3c2361737369676e20537562736372697074696f6e203d20526f6f742e62616e64732e537562736372697074696f6e3e3c62722f3e0a3c2373657474696e6720626f6f6c65616e5f666f726d61743d22547275652c46616c7365223e0a3c703e537562736372697074696f6e20247b28537562736372697074696f6e5b305d2e6669656c647328276e616d65272929213f737472696e67217d3c2f703e0a3c703e666f7220637573746f6d657220247b28437573746f6d65725b305d2e6669656c647328276e616d65272929213f737472696e67217d3c2f703e0a3c703e77617320637265617465643c2f703e0a202020203c2f626f64793e0a3c2f68746d6c3e');

update REPORT_REPORT
set DEFAULT_TEMPLATE_ID='7eabeb5f-9341-4e90-642c-825d92a1ceb6'
where ID='bfd2cdcb-bb7c-47b5-de6d-9b5b8121de1d';

insert into REPORT_REPORT
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOCALE_NAMES, CODE, GROUP_ID, DEFAULT_TEMPLATE_ID, REPORT_TYPE, DESCRIPTION, XML, ROLES_IDX, SCREENS_IDX, INPUT_ENTITY_TYPES_IDX, REST_ACCESS, IS_SYSTEM)
values ('7080df93-9e0a-6433-5953-a1d30fee6a2b', 12, '2018-11-15 14:07:13', 'admin', '2018-11-22 11:13:10', 'admin', null, null, 'Updated subscription', null, null, '4e083530-0b9c-11e1-9b41-6bdaa41bff94', null, 10, null, '{"metaClass":"report$Report","id":"7080df93-9e0a-6433-5953-a1d30fee6a2b","roles":[],"defaultTemplate":{"metaClass":"report$ReportTemplate","id":"efb56f7d-07de-da94-4432-29a8b86f82bc","code":"DEFAULT","customDefinedBy":"100","custom":"false","version":"2","outputNamePattern":"Updated subscription.html","reportOutputType":"30","customDefinition":"","report":{"metaClass":"report$Report","id":"7080df93-9e0a-6433-5953-a1d30fee6a2b"},"name":"Template for report \"Updated subscription\".html","alterable":"false"},"bands":[{"metaClass":"report$BandDefinition","id":"ec8cf0f6-0172-193c-c487-c3b955067d09","orientation":"","childrenBandDefinitions":[{"metaClass":"report$BandDefinition","id":"f0def119-a3be-89f1-a637-92985610ecd9","orientation":"0","childrenBandDefinitions":[],"name":"Subscription","parentBandDefinition":{"metaClass":"report$BandDefinition","id":"ec8cf0f6-0172-193c-c487-c3b955067d09"},"report":{"metaClass":"report$Report","id":"7080df93-9e0a-6433-5953-a1d30fee6a2b"},"dataSets":[{"metaClass":"report$DataSet","id":"44a46557-e74b-548c-8f11-e9b91fed8baf","entityParamName":"subscription","type":"40","jsonSourceType":"10","name":"Dataset","useExistingView":"false","bandDefinition":{"metaClass":"report$BandDefinition","id":"f0def119-a3be-89f1-a637-92985610ecd9"},"text":"return [[:]]","view":"{\"entityClass\":\"yetdemo$Subscription\",\"name\":\"\",\"properties\":{\"name\":{\"name\":\"name\",\"fetchMode\":\"AUTO\"}},\"loadPartialEntities\":false}"}],"position":"0"},{"metaClass":"report$BandDefinition","id":"84170306-4d8b-8612-835b-f4e82dd0f028","orientation":"0","childrenBandDefinitions":[],"name":"Customer","parentBandDefinition":{"metaClass":"report$BandDefinition","id":"ec8cf0f6-0172-193c-c487-c3b955067d09"},"report":{"metaClass":"report$Report","id":"7080df93-9e0a-6433-5953-a1d30fee6a2b"},"dataSets":[{"metaClass":"report$DataSet","id":"0820ae86-91e4-d098-0d9b-9a56755bb416","entityParamName":"customer","type":"40","jsonSourceType":"10","name":"Dataset","useExistingView":"false","bandDefinition":{"metaClass":"report$BandDefinition","id":"84170306-4d8b-8612-835b-f4e82dd0f028"},"text":"return [[:]]","view":"{\"entityClass\":\"yetdemo$Customer\",\"name\":\"\",\"properties\":{\"name\":{\"name\":\"name\",\"fetchMode\":\"AUTO\"}},\"loadPartialEntities\":false}"}],"position":"1"}],"name":"Root","report":{"metaClass":"report$Report","id":"7080df93-9e0a-6433-5953-a1d30fee6a2b"},"dataSets":[],"position":"0"},{"metaClass":"report$BandDefinition","id":"f0def119-a3be-89f1-a637-92985610ecd9"},{"metaClass":"report$BandDefinition","id":"84170306-4d8b-8612-835b-f4e82dd0f028"}],"inputParameters":[{"metaClass":"report$ReportInputParameter","id":"fb4d905b-6864-f4fe-ebaa-caf84d3657ef","entityMetaClass":"yetdemo$Subscription","parameterClassName":"com.haulmont.demo.emailtemplates.entity.Subscription","predefinedTransformation":"","type":"30","required":"true","validationOn":"false","defaultDateIsCurrent":"false","report":{"metaClass":"report$Report","id":"7080df93-9e0a-6433-5953-a1d30fee6a2b"},"name":"Subscription","alias":"subscription","position":"0"},{"metaClass":"report$ReportInputParameter","id":"ec8490ce-772e-4114-e9d1-e88980b7b05c","entityMetaClass":"yetdemo$Customer","parameterClassName":"com.haulmont.demo.emailtemplates.entity.Customer","predefinedTransformation":"","type":"30","required":"false","validationOn":"false","defaultDateIsCurrent":"false","report":{"metaClass":"report$Report","id":"7080df93-9e0a-6433-5953-a1d30fee6a2b"},"name":"Customer","alias":"customer","position":"1"}],"validationOn":"false","reportType":"10","reportScreens":[],"group":{"metaClass":"report$ReportGroup","id":"4e083530-0b9c-11e1-9b41-6bdaa41bff94","localeNames":"en\u003dGeneral\r\nru\u003dОбщие","code":"ReportGroup.default","title":"General","version":"0"},"inputEntityTypesIdx":",yetdemo$Customer,sec$User,","valuesFormats":[],"templates":[{"metaClass":"report$ReportTemplate","id":"efb56f7d-07de-da94-4432-29a8b86f82bc"}],"version":"10","system":"false","name":"Updated subscription"}', null, null, ',yetdemo$Subscription,yetdemo$Customer,', null, false);

insert into REPORT_TEMPLATE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, REPORT_ID, OUTPUT_TYPE, CODE, IS_CUSTOM, IS_ALTERABLE_OUTPUT, CUSTOM_CLASS, CUSTOM_DEFINED_BY, OUTPUT_NAME_PATTERN, NAME, CONTENT)
values ('efb56f7d-07de-da94-4432-29a8b86f82bc', 3, '2018-11-15 14:07:13', 'admin', '2018-11-22 11:13:10', 'admin', null, null, '7080df93-9e0a-6433-5953-a1d30fee6a2b', 30, 'DEFAULT', false, false, '', 100, 'Updated subscription.html', 'Template for report "Updated subscription".html', '3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d227574662d38223f3e0a3c21444f43545950452068746d6c205055424c494320222d2f2f5733432f2f445444205848544d4c20312e312f2f454e222022687474703a2f2f7777772e77332e6f72672f54522f7868746d6c31312f4454442f7868746d6c31312e647464223e0a3c68746d6c20786d6c6e733d22687474703a2f2f7777772e77332e6f72672f313939392f7868746d6c2220786d6c3a6c616e673d227275223e0a202020203c686561643e0a20202020202020203c7469746c653e204e6f74696669636174696f6e203c2f7469746c653e0a20202020202020203c7374796c6520747970653d22746578742f637373223e0a20202020202020202020202020626f647920207b666f6e742d66616d696c793a20274368617269732053494c272c2073616e732d73657269663b7d0a2074626f6479207472207b6865696768743a323070783b206d696e2d6865696768743a323070787d0a0a20202020202020203c2f7374796c653e0a202020203c2f686561643e0a202020203c626f64793e0a20202020202020200a3c2361737369676e20437573746f6d6572203d20526f6f742e62616e64732e437573746f6d65723e3c62722f3e0a3c2361737369676e20537562736372697074696f6e203d20526f6f742e62616e64732e537562736372697074696f6e3e3c62722f3e0a3c2373657474696e6720626f6f6c65616e5f666f726d61743d22547275652c46616c7365223e0a3c703e537562736372697074696f6e20247b28537562736372697074696f6e5b305d2e6669656c647328276e616d65272929213f737472696e67217d3c2f703e0a3c703e666f7220637573746f6d657220247b28437573746f6d65725b305d2e6669656c647328276e616d65272929213f737472696e67217d3c2f703e0a3c703e77617320757064617465643c2f703e0a202020203c2f626f64793e0a3c2f68746d6c3e');

update REPORT_REPORT
set DEFAULT_TEMPLATE_ID='efb56f7d-07de-da94-4432-29a8b86f82bc'
where ID='7080df93-9e0a-6433-5953-a1d30fee6a2b';



insert into YETDEMO_CUSTOMER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, SURNAME, EMAIL)
values ('4847ec8d-f990-1ccb-634b-0e7e1513493d', 1, '2018-11-15 15:59:42', 'admin', '2018-11-15 15:59:42', null, null, null, 'Homer', 'Simpson', 'test@haulmont.com');



insert into EMAILTEMPLATES_EMAIL_TEMPLATE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, DTYPE, NAME, GROUP_ID, TYPE_, CODE, FROM_, TO_, CC, BCC, SUBJECT, USE_REPORT_SUBJECT, EMAIL_BODY_REPORT_ID)
values ('1b6b7378-b46c-0ebe-b1fa-7fc7b3d823e5', 1, '2018-11-15 16:00:42', 'admin', '2018-11-15 16:00:42', null, null, null, 'emailtemplates$ReportEmailTemplate', 'Subscription created', null, 'report', 'subscription_created', null, null, null, null, 'Subscription created', null, null);

insert into EMAILTEMPLATES_TEMPLATE_REPORT
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, REPORT_ID, EMAIL_TEMPLATE_ID)
values ('eb141845-00ce-27e5-545a-ac6eafe50d71', 1, '2018-11-15 16:00:42', 'admin', '2018-11-15 16:00:42', null, null, null, 'bfd2cdcb-bb7c-47b5-de6d-9b5b8121de1d', null);

update EMAILTEMPLATES_EMAIL_TEMPLATE
set EMAIL_BODY_REPORT_ID='eb141845-00ce-27e5-545a-ac6eafe50d71'
where ID='1b6b7378-b46c-0ebe-b1fa-7fc7b3d823e5';



insert into EMAILTEMPLATES_EMAIL_TEMPLATE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, DTYPE, NAME, GROUP_ID, TYPE_, CODE, FROM_, TO_, CC, BCC, SUBJECT, USE_REPORT_SUBJECT, EMAIL_BODY_REPORT_ID)
values ('439d7ea3-16ce-269d-d125-42a6617e764b', 1, '2018-11-16 11:11:13', 'admin', '2018-11-16 11:11:13', 'admin', null, null, 'emailtemplates$ReportEmailTemplate', 'Subscription updated', null, 'report', 'subscription_updated', null, null, null, null, 'Subscription updated', null, null);

insert into EMAILTEMPLATES_TEMPLATE_REPORT
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, REPORT_ID, EMAIL_TEMPLATE_ID)
values ('98c1db94-bcc1-03ab-412a-c664cb2cf883', 1, '2018-11-16 11:11:13', 'admin', '2018-11-16 11:11:13', 'admin', null, null, '7080df93-9e0a-6433-5953-a1d30fee6a2b', null);

update EMAILTEMPLATES_EMAIL_TEMPLATE
set EMAIL_BODY_REPORT_ID='98c1db94-bcc1-03ab-412a-c664cb2cf883'
where ID='439d7ea3-16ce-269d-d125-42a6617e764b';



insert into EMAILTEMPLATES_EMAIL_TEMPLATE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, DTYPE, NAME, GROUP_ID, TYPE_, CODE, FROM_, TO_, CC, BCC, SUBJECT, JSON_TEMPLATE, HTML, REPORT_XML)
values ('ccf08525-f87b-f29c-bb3a-05a111798e32', 2, '2018-11-22 09:59:24', 'admin', '2018-11-22 10:00:03', 'admin', null, null, 'emailtemplates$JsonEmailTemplate', 'Subscription renewed', null, 'json', 'subscription_renewed', null, null, null, null, 'Subscription renewed', '{"counters":{"u_column":2,"u_row":2,"u_content_text":1,"u_content_html":1},"body":{"rows":[{"cells":[1],"columns":[{"contents":[{"type":"html","values":{"containerPadding":"10px","_meta":{"htmlID":"u_content_html_1","htmlClassNames":"u_content_html"},"selectable":true,"draggable":true,"deletable":true,"html":"<strong>Notification!</strong>\n<p>Subscription is ended for customer ${subscription}</p>"}}],"values":{"_meta":{"htmlID":"u_column_1","htmlClassNames":"u_column"}}}],"values":{"backgroundColor":"","backgroundImage":{"url":"","fullWidth":true,"repeat":false,"center":true,"cover":false},"padding":"10px","noStackMobile":false,"columnsBackgroundColor":"","_meta":{"htmlID":"u_row_1","htmlClassNames":"u_row"},"selectable":true,"draggable":true,"deletable":true}}],"values":{"backgroundColor":"#e7e7e7","backgroundImage":{"url":"","fullWidth":true,"repeat":false,"center":true,"cover":false},"contentWidth":"500px","fontFamily":{"label":"Arial","value":"arial,helvetica,sans-serif"},"_meta":{"htmlID":"u_body","htmlClassNames":"u_body"}}}}', '
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">

<head>
  <title></title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="x-apple-disable-message-reformatting">
  <style type="text/css">
    #outlook a {
  padding: 0; }

.ReadMsgBody {
  width: 100%; }

.ExternalClass {
  width: 100%; }

.ExternalClass * {
  line-height: 100%; }

body {
  margin: 0;
  padding: 0;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%; }

table,
td {
  border-collapse: collapse;
  mso-table-lspace: 0pt;
  mso-table-rspace: 0pt; }

img {
  border: 0;
  height: auto;
  line-height: 100%;
  outline: none;
  text-decoration: none;
  -ms-interpolation-mode: bicubic; }

p, ul {
  display: block;
  margin: 0; }

@media only screen and (min-width: 480px) {
  .email-col-17 {
    width: 17% !important; }
  .email-col-25 {
    width: 25% !important; }
  .email-col-33 {
    width: 33% !important; }
  .email-col-50 {
    width: 50% !important; }
  .email-col-67 {
    width: 67% !important; }
  .email-col-100 {
    width: 100% !important; } }

@media only screen and (max-width: 480px) {
  img.fullwidth {
    max-width: 100% !important; }
  .no-stack .email-col-17 {
    width: 17% !important; }
  .no-stack .email-col-25 {
    width: 25% !important; }
  .no-stack .email-col-33 {
    width: 33% !important; }
  .no-stack .email-col-50 {
    width: 50% !important; }
  .no-stack .email-col-67 {
    width: 67% !important; }
  .no-stack .email-col-100 {
    width: 100% !important; } }

  </style>

<!--[if mso]>
<xml>
  <o:OfficeDocumentSettings>
    <o:AllowPNG/>
    <o:PixelsPerInch>96</o:PixelsPerInch>
  </o:OfficeDocumentSettings>
</xml>
<![endif]-->
<!--[if mso]>
<style type="text/css">
  ul li {
    list-style:disc inside;
    mso-special-format:bullet;
  }
</style>
<![endif]-->
<!--[if lte mso 11]>
<style type="text/css">
  .outlook-group-fix {
    width:100% !important;
  }
</style>
<![endif]-->

</head>

<body id="u_body" class="u_body" width="100%" bgcolor="#e7e7e7" style="margin: 0; mso-line-height-rule: exactly; background-color: #e7e7e7;">
  <div style="background-color: #e7e7e7; font-family: arial,helvetica,sans-serif;">

<table id="u_row_1" class="u_row" align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="margin: 0; padding: 0">
  <tr>
    <td align="center" valign="top" bgcolor="" style="padding: 10px; background-color: ;">
      <!--[if mso | IE]>
      <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="500" align="center" style="width:500px;"><tr><td style="line-height:0px;font-size:0px;mso-line-height-rule:exactly;">
      <![endif]-->
      <div style="margin:0px auto;max-width:500px;">
        <table role="presentation" cellpadding="0" cellspacing="0" style="font-size:0px;width:100%;" align="center" border="0">
          <tbody>
            <tr>
              <td style="text-align:center;vertical-align:top;direction:ltr;font-size:0px;" bgcolor="">
                <!--[if mso | IE]>
                <table role="presentation" border="0" cellpadding="0" cellspacing="0"><tr><td style="vertical-align:top;width:500px;">
  <![endif]-->
  <div id="u_column_1" class="email-col-100 outlook-group-fix u_column" style="vertical-align:top;display:inline-block;direction:ltr;font-size:13px;text-align:left;width:100%;">

<table id="u_content_html_1" class="u_content_html" style="font-family:arial,helvetica,sans-serif;" role="presentation" cellpadding="0" cellspacing="0" width="100%" border="0">
  <tbody>
    <tr>
      <td style="overflow-wrap: break-word;padding:10px;font-family:arial,helvetica,sans-serif;" align="left">

  <div>
    <strong>Notification!</strong>
<p>Subscription is ended for customer ${subscription}</p>
  </div>

      </td>
    </tr>
  </tbody>
</table>

  </div>
  <!--[if mso | IE]>
  </td>
</tr></table>
                <![endif]-->
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <!--[if mso | IE]>
      </td></tr></table>
      <![endif]-->
    </td>
  </tr>
</table>

  </div>
</body>

</html>
', '{"metaClass":"report$Report","id":"9ada190e-8da6-a377-9c2f-4f416b8035ff","roles":[],"defaultTemplate":{"metaClass":"report$ReportTemplate","id":"290b720e-d4e6-bf60-0453-f23c8102ffdf","code":"DEFAULT","customDefinedBy":"100","custom":"false","reportOutputType":"30","report":{"metaClass":"report$Report","id":"9ada190e-8da6-a377-9c2f-4f416b8035ff"},"name":"template.html","alterable":"false"},"bands":[{"metaClass":"report$BandDefinition","id":"4aad659c-c2a8-43fb-5ab8-2ba28309e46b","orientation":"","childrenBandDefinitions":[],"name":"Root","report":{"metaClass":"report$Report","id":"9ada190e-8da6-a377-9c2f-4f416b8035ff"},"dataSets":[{"metaClass":"report$DataSet","id":"8265667b-b9dc-764e-7ad9-5d3e90b9abdc","type":"30","jsonSourceType":"10","name":"Root","useExistingView":"false","bandDefinition":{"metaClass":"report$BandDefinition","id":"4aad659c-c2a8-43fb-5ab8-2ba28309e46b"},"text":"return [[\"__REPORT_FILE_NAME\": \"Subscription renewed\"]]","view":"null"}],"position":"0"}],"inputParameters":[{"metaClass":"report$ReportInputParameter","id":"d5feedf9-cc52-dcb7-454d-63dc2d23d721","parameterClassName":"java.lang.String","predefinedTransformation":"","type":"20","required":"true","validationOn":"false","defaultDateIsCurrent":"false","report":{"metaClass":"report$Report","id":"9ada190e-8da6-a377-9c2f-4f416b8035ff"},"name":"subscription","alias":"subscription","position":"0"}],"validationOn":"false","reportType":"10","reportScreens":[],"valuesFormats":[],"templates":[{"metaClass":"report$ReportTemplate","id":"290b720e-d4e6-bf60-0453-f23c8102ffdf"}],"system":"false","name":"Subscription renewed"}');

insert into EMAILTEMPLATES_EMAIL_TEMPLATE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, DTYPE, NAME, GROUP_ID, TYPE_, CODE, FROM_, TO_, CC, BCC, SUBJECT, JSON_TEMPLATE, HTML, REPORT_XML)
values ('c617511b-17e6-c6a8-c677-ede5b17e54a4', 7, '2018-11-21 17:34:14', 'admin', '2018-11-22 10:01:15', 'admin', null, null, 'emailtemplates$JsonEmailTemplate', 'Subscription ended', null, 'json', 'subscription_ended', null, null, null, null, 'Subscription ended', '{"counters":{"u_column":2,"u_row":2,"u_content_html":1},"body":{"rows":[{"cells":[1],"columns":[{"contents":[{"type":"html","values":{"containerPadding":"10px","_meta":{"htmlID":"u_content_html_1","htmlClassNames":"u_content_html"},"selectable":true,"draggable":true,"deletable":true,"html":"<strong>Notification!</strong>\n<p>Subscription is ended for customer ${subscription}</p>"}}],"values":{"_meta":{"htmlID":"u_column_1","htmlClassNames":"u_column"}}}],"values":{"backgroundColor":"","backgroundImage":{"url":"","fullWidth":true,"repeat":false,"center":true,"cover":false},"padding":"10px","noStackMobile":false,"columnsBackgroundColor":"","_meta":{"htmlID":"u_row_1","htmlClassNames":"u_row"},"selectable":true,"draggable":true,"deletable":true}}],"values":{"backgroundColor":"#e7e7e7","backgroundImage":{"url":"","fullWidth":true,"repeat":false,"center":true,"cover":false},"contentWidth":"500px","fontFamily":{"label":"Arial","value":"arial,helvetica,sans-serif"},"_meta":{"htmlID":"u_body","htmlClassNames":"u_body"}}}}', '
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">

<head>
  <title></title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="x-apple-disable-message-reformatting">
  <style type="text/css">
    #outlook a {
  padding: 0; }

.ReadMsgBody {
  width: 100%; }

.ExternalClass {
  width: 100%; }

.ExternalClass * {
  line-height: 100%; }

body {
  margin: 0;
  padding: 0;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%; }

table,
td {
  border-collapse: collapse;
  mso-table-lspace: 0pt;
  mso-table-rspace: 0pt; }

img {
  border: 0;
  height: auto;
  line-height: 100%;
  outline: none;
  text-decoration: none;
  -ms-interpolation-mode: bicubic; }

p, ul {
  display: block;
  margin: 0; }

@media only screen and (min-width: 480px) {
  .email-col-17 {
    width: 17% !important; }
  .email-col-25 {
    width: 25% !important; }
  .email-col-33 {
    width: 33% !important; }
  .email-col-50 {
    width: 50% !important; }
  .email-col-67 {
    width: 67% !important; }
  .email-col-100 {
    width: 100% !important; } }

@media only screen and (max-width: 480px) {
  img.fullwidth {
    max-width: 100% !important; }
  .no-stack .email-col-17 {
    width: 17% !important; }
  .no-stack .email-col-25 {
    width: 25% !important; }
  .no-stack .email-col-33 {
    width: 33% !important; }
  .no-stack .email-col-50 {
    width: 50% !important; }
  .no-stack .email-col-67 {
    width: 67% !important; }
  .no-stack .email-col-100 {
    width: 100% !important; } }

  </style>

<!--[if mso]>
<xml>
  <o:OfficeDocumentSettings>
    <o:AllowPNG/>
    <o:PixelsPerInch>96</o:PixelsPerInch>
  </o:OfficeDocumentSettings>
</xml>
<![endif]-->
<!--[if mso]>
<style type="text/css">
  ul li {
    list-style:disc inside;
    mso-special-format:bullet;
  }
</style>
<![endif]-->
<!--[if lte mso 11]>
<style type="text/css">
  .outlook-group-fix {
    width:100% !important;
  }
</style>
<![endif]-->

</head>

<body id="u_body" class="u_body" width="100%" bgcolor="#e7e7e7" style="margin: 0; mso-line-height-rule: exactly; background-color: #e7e7e7;">
  <div style="background-color: #e7e7e7; font-family: arial,helvetica,sans-serif;">

<table id="u_row_1" class="u_row" align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="margin: 0; padding: 0">
  <tr>
    <td align="center" valign="top" bgcolor="" style="padding: 10px; background-color: ;">
      <!--[if mso | IE]>
      <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="500" align="center" style="width:500px;"><tr><td style="line-height:0px;font-size:0px;mso-line-height-rule:exactly;">
      <![endif]-->
      <div style="margin:0px auto;max-width:500px;">
        <table role="presentation" cellpadding="0" cellspacing="0" style="font-size:0px;width:100%;" align="center" border="0">
          <tbody>
            <tr>
              <td style="text-align:center;vertical-align:top;direction:ltr;font-size:0px;" bgcolor="">
                <!--[if mso | IE]>
                <table role="presentation" border="0" cellpadding="0" cellspacing="0"><tr><td style="vertical-align:top;width:500px;">
  <![endif]-->
  <div id="u_column_1" class="email-col-100 outlook-group-fix u_column" style="vertical-align:top;display:inline-block;direction:ltr;font-size:13px;text-align:left;width:100%;">

<table id="u_content_html_1" class="u_content_html" style="font-family:arial,helvetica,sans-serif;" role="presentation" cellpadding="0" cellspacing="0" width="100%" border="0">
  <tbody>
    <tr>
      <td style="overflow-wrap: break-word;padding:10px;font-family:arial,helvetica,sans-serif;" align="left">

  <div>
    <strong>Notification!</strong>
<p>Subscription is ended for customer ${subscription}</p>
  </div>

      </td>
    </tr>
  </tbody>
</table>

  </div>
  <!--[if mso | IE]>
  </td>
</tr></table>
                <![endif]-->
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <!--[if mso | IE]>
      </td></tr></table>
      <![endif]-->
    </td>
  </tr>
</table>

  </div>
</body>

</html>
', '{"metaClass":"report$Report","id":"0b255273-b6f1-2e3f-cbca-c0bd8e72a6df","roles":[],"defaultTemplate":{"metaClass":"report$ReportTemplate","id":"af177d93-8c0a-4f43-efef-ae9ee92b58f8","code":"DEFAULT","customDefinedBy":"100","custom":"false","reportOutputType":"30","report":{"metaClass":"report$Report","id":"0b255273-b6f1-2e3f-cbca-c0bd8e72a6df"},"name":"template.html","alterable":"false"},"bands":[{"metaClass":"report$BandDefinition","id":"c409e6c9-cc8b-f5e9-1567-1a74241c02d2","orientation":"","childrenBandDefinitions":[],"name":"Root","report":{"metaClass":"report$Report","id":"0b255273-b6f1-2e3f-cbca-c0bd8e72a6df"},"dataSets":[{"metaClass":"report$DataSet","id":"92c68eec-2922-f874-4a38-737c6e48285a","type":"30","jsonSourceType":"10","name":"Root","useExistingView":"false","bandDefinition":{"metaClass":"report$BandDefinition","id":"c409e6c9-cc8b-f5e9-1567-1a74241c02d2"},"text":"return [[\"__REPORT_FILE_NAME\": \"Subscription ended\"]]","view":"null"}],"position":"0"}],"inputParameters":[{"metaClass":"report$ReportInputParameter","id":"d3e6b6fa-4642-0dd0-134a-f4e6f7e40626","parameterClassName":"java.lang.String","predefinedTransformation":"","type":"20","required":"true","validationOn":"false","defaultDateIsCurrent":"false","report":{"metaClass":"report$Report","id":"0b255273-b6f1-2e3f-cbca-c0bd8e72a6df"},"name":"subscription","alias":"subscription","position":"0"}],"validationOn":"false","reportType":"10","reportScreens":[],"valuesFormats":[],"templates":[{"metaClass":"report$ReportTemplate","id":"af177d93-8c0a-4f43-efef-ae9ee92b58f8"}],"system":"false","name":"Subscription ended"}');


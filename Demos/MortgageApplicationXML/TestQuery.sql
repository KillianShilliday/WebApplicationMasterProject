USE jwang;
SELECT * FROM MortgageApplicationXML

SELECT * FROM MortgageApplicationXML
WHERE AppID = 1


INSERT INTO MortgageApplicationXML VALUES ('Jeremy Wang','jwang@flagler.edu','281-88-8888',100000,'');


INSERT INTO MortgageApplicationXML VAlUES ('John Doe','jd@flagler.edu','299-99-9999',200000,'<!--Application Form for John Doe-->\r\n<DataForm CustomerSSN=\"299-99-9999\">\r\n  <Field ID=\"ApprovalStatus\" Type=\"RadioButtonList\">Pending</Field>\r\n  <Field ID=\"CustomerName\" Type=\"TextBox\">John Doe</Field>\r\n  <Field ID=\"CustomerEmail\" Type=\"TextBox\">jd@flagler.edu</Field>\r\n  <Field ID=\"CustomerSSN\" Type=\"TextBox\">299-99-9999</Field>\r\n  <Field ID=\"CustomerGender\" Type=\"RadioButtonList\">Male</Field>\r\n  <Field ID=\"CustomerState\" Type=\"DropDownList\">FL</Field>\r\n  <Field ID=\"CustomerLoanAmount\" Type=\"TextBox\">200000</Field>\r\n  <Field ID=\"CustomerComments\" Type=\"TextBox\">Give me the money! </Field>\r\n</DataForm>'); SELECT CAST(scope_identity() AS INT);

INSERT INTO MortgageApplicationXML VAlUES ('John Doe','jd@flagler.edu','299-99-9999',200000,'<!--Application Form for John Doe-->\r\n<DataForm CustomerSSN=\"299-99-9999\">\r\n  <Field ID=\"ApprovalStatus\" Type=\"RadioButtonList\">Pending</Field>\r\n  <Field ID=\"CustomerName\" Type=\"TextBox\">John Doe</Field>\r\n  <Field ID=\"CustomerEmail\" Type=\"TextBox\">jd@flagler.edu</Field>\r\n  <Field ID=\"CustomerSSN\" Type=\"TextBox\">299-99-9999</Field>\r\n  <Field ID=\"CustomerGender\" Type=\"RadioButtonList\">Male</Field>\r\n  <Field ID=\"CustomerState\" Type=\"DropDownList\">FL</Field>\r\n  <Field ID=\"CustomerLoanAmount\" Type=\"TextBox\">200000</Field>\r\n  <Field ID=\"CustomerComments\" Type=\"TextBox\">Give me the money! </Field>\r\n</DataForm>'); SELECT CAST(scope_identity() AS INT);
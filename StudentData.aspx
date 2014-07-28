<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentData.aspx.cs" Inherits="JTemplatePractice.StudentData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script src="JavaScript/jquery-1.11.1.min.js"></script>
    <script src="JavaScript/jquery-jtemplates.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script type="text/javascript">
        $(document).ready(function () {
            var dataSource = {
                students: [
                    //學生1
                    {
                        "name": "Andrew",
                        "age": "18",
                        "classRoom": "3-A"
                    },
                    //學生2
                    {
                        "name": "Ann",
                        "age": "16",
                        "classRoom": "1-A"
                    }

                ]
            };
            $("#studentList").setTemplateElement("Template-student").processTemplate(dataSource);
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <!--Template-->
        <p style="display: none">
            <textarea id="Template-student" rows="0" cols="0">

                    <table border="1">
                        <!--標題列-->
                        <tr>
                            <td>學生姓名</td>
                            <td>年齡</td>
                            <td>教室</td>
                        </tr>
                         <!--內容-->
                        {#foreach $T.students as stu}
                            <tr>
                                <td>{$T.stu.name}</td>
                                <td>{$T.stu.age}</td>
                                <td>{$T.stu.classRoom}</td>
                            </tr>
                        {/#for}
                    </table>
                </textarea>
        </p>
        <!--輸出的部份，就是要秀在頁面的部份-->
        <div id="studentList"></div>
    </form>
</body>
</html>

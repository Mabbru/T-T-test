<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <title>URL傅农搬力 积己</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <script>
        $(document).ready(function() {
            $("#linkRegAct").on("click", function(event) {
                var formData = new FormData($("#LinkRegForm")[0]);

                $.ajax({
                    type: "POST",
                    cache: false,
                    processData: false,
                    contentType: false,
                    //async : false,
                    url: "/linkReg",
                    dataType: "json",
                    data: formData,
                    success: function(data) {
                        console.log(data);

                        alert(data.PCD_LINK_MSG);

                        var $_table = $('<table style="border: 1px solid black"></table>');
                        var table_data = "";

                        $.each(data, function(key, value) {
                            table_data +=
                                "<tr><td>" + key + "</td><td>: " + value + "</td><tr>";
                        });

                        $_table.append(table_data);
                        $_table.appendTo("#linkRegResult");
                    },
                    error: function(jqxhr, status, error) {
                        console.log(jqxhr);

                        alert(jqxhr.statusText + ",  " + status + ",   " + error);
                        alert(jqxhr.status);
                        alert(jqxhr.responseText);
                    },
                });
            });
            
            /* 
	            #PCD_PAY_TYPE: 搬力荐窜
	            #card_ver_view: 墨靛 技何 搬力规侥 view
	        */
	        $("#PCD_PAY_TYPE").on("change", function(e) {
	            e.preventDefault();
	
	            var this_val = $(this).val();
	
	            if (this_val == "card") {
	                $("#card_ver_view").css("display", "");
	            } else {
	                $("#card_ver_view").css("display", "none");
	            }
	        });
        });
    </script>
    <style>
        #form_area {
            width: 600px;
            margin-bottom: 5px;
        }

        input {
            width: 300px;
            height: 20px;
            border: 1px solid gray;
        }

        button {
            width: 100px;
            float: right;
            margin-top: 5px;
            margin-left: 5px;
        }
    </style>
</head>

<body>
    <h3>URL傅农搬力 积己</h3>
    <div id="form_area">
        <form id="LinkRegForm" name="LinkRegForm">
            <table>
                <tr>
                    <td>*搬力荐窜</td>
                    <td>
                        :
                        <span>
                            <select id="PCD_PAY_TYPE" name="PCD_PAY_TYPE">
                                <option value="transfer|card">拌谅+墨靛</option>
                                <option value="transfer">拌谅捞眉搬力</option>
                                <option value="card">脚侩墨靛</option>
                            </select>
                        </span>
                        <span id="card_ver_view" style="display: none">
                            <select id="PCD_CARD_VER" name="PCD_CARD_VER">
                                <option value="01+02">埃祈/沥扁+聚墨靛</option>
                                <option value="01">埃祈/沥扁(呼傅虐搬力)</option>
                                <option value="02">聚墨靛</option>
                            </select>
                        </span>
                     </td>
                </tr>
                <tr>
                    <td>*惑前疙</td>
                    <td> :
                        <input type="text" name="PCD_PAY_GOODS" id="PCD_PAY_GOODS" value="" required="required" />
                    </td>
                </tr>
                <tr>
                    <td>*搬力夸没陛咀</td>
                    <td> :
                        <input type="number" name="PCD_PAY_TOTAL" id="PCD_PAY_TOTAL" value="" required="required" />
                    </td>
                </tr>
                <tr>
                    <td>泅陛康荐刘 惯青咯何</td>
                    <td> :
                        <select id="PCD_TAXSAVE_FLAG" name="PCD_TAXSAVE_FLAG">
                            <option value="N">N</option>
                            <option value="Y">Y</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>URL 搬力 父丰老</td>
                    <td> :
                        <input type="number" name="PCD_LINK_EXPIREDATE" id="PCD_LINK_EXPIREDATE" value="" />
                    </td>
                </tr>
            </table>
        </form>
        <button id="linkRegAct">傅农积己 夸没</button>
    </div>
    <br />
    <hr />
    <div id="linkRegResult"></div>
</body>

</html>
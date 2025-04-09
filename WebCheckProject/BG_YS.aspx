<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BG_YS.aspx.cs" Inherits="WebCheckProject.BG_YS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/handsontable@latest/dist/handsontable.full.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/handsontable@8.4.0/dist/handsontable.full.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/Scripts/handsontable.full.js"></script>
        <style>
 .handsontable table.htCore col.htDimmed {
  white-space: normal;
  overflow: visible;
  text-overflow: clip;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div><button type="submit" id="submitButton" onclick="sendData()">提交</button>&nbsp;
        </div>
        <div id="grid"></div>
    </form>
    <div id = "output"></div>
     <script type="text/javascript" src="Scripts/jquery-3.4.1.min.js"></script>
    <script>
        let data = [
            ['', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '']
        ]
        var hot = new Handsontable(document.getElementById("grid"), {
            data: data,
            minSpareRows: 0,   // 指定下边余白即表格最少行数  
            manualColumnResize: true,
            colHeaders: true,//显示表头
            licenseKey: 'non-commercial-and-evaluation',
            rowHeaders: false,//不显示列头
            manualColumnResize: true,
            contextMenu: true,
            width: '2000',
            colWidths: '50',
            height: '500',
            readOnly: false,//关闭表格只读模式
            outsideClickDeselects: false,
            rowHeights: 28,
            columnHeaderHeight: 32,
            className: 'htMiddle htCenter',
            nestedHeaders: [
                ['室内编号', '野外编号', '取土地址', '样品种类', '样品数量', '取样深度（m）', '岩性名称', '颗粒分析（%）', '含水率（%）', '天然密度（g/cm3）', '堆积密度（g/cm3）', '紧密密度（g/cm3）', '表观密度（g/cm3）', '含泥量（%）',
                    {
                        label: "自然休止角",
                        colspan: 2
                    },  "有机质含量（%）", '水溶盐含量（%）','相对密度',
                    {
                        label: "渗透",
                        colspan: 3
                    },],
                ['', '', '', '', '', '', '', '', '', '', '', '', '', '', '水上', '水下', "有机质含量（%）", '水溶盐含量（%）', '相对密度', '渗透系数', '临界坡降', '破坏坡降', '', '', ''],
                ['', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''],
            ],
            columns: [
                { data: 'Snno', type: 'text', readOnly: false },
                { data: 'Ywno', type: 'text', readOnly: false },
                { data: 'Qtdz', type: 'text', readOnly: false },
                { data: 'Ypzl', type: 'text', readOnly: false },
                { data: 'Ypsl', type: 'text', readOnly: false },
                { data: 'Qtsd', type: 'numeric', readOnly: false },
                { data: 'Yxmc', type: 'text', readOnly: false },
                { data: 'Klfx', type: 'checkbox', default: false, readOnly: false },
                { data: 'Hsl', type: 'checkbox', default: false, readOnly: false },
                { data: 'Trmd', type: 'checkbox', default: false, readOnly: false },
                { data: 'Djmd', type: 'checkbox', default: false, readOnly: false },
                { data: 'Jmmd', type: 'checkbox', default: false, readOnly: false },
                { data: 'Bgmd', type: 'checkbox', default: false, readOnly: false },
                { data: 'Hnl', type: 'checkbox', default: false, readOnly: false },
                { data: 'Zrxzjss', type: 'checkbox', default: false, readOnly: false },
                { data: 'Zrxzjsx', type: 'checkbox', default: false, readOnly: false },
                { data: 'Yjzhl', type: 'checkbox', default: false, readOnly: false },
                { data: 'Sryhl', type: 'checkbox', default: false, readOnly: false },
                { data: 'Xdmd', type: 'checkbox', default: false, readOnly: false },
                { data: 'Ststxs', type: 'checkbox', default: false, readOnly: false },
                { data: 'Stljpj', type: 'checkbox', default: false, readOnly: false },
                { data: 'Stphpj', type: 'checkbox', default: false, readOnly: false },
               
                //{
                // type: 'numeric',
                // validator: function (value, callback) {
                //  if (value < 0) {
                //  callback(new Error('数值必须大于或等于0'));
                // } else {
                //  callback();
                //}
                // }
                // }
                // ... 对其他列进行类似配置
            ],
            //表头合并形成二级及三级表头
            afterGetColHeader: function (col, th) {
                setTimeout(() => {
                    if (col === 0) {
                        const theads = th.parentNode.parentNode // 获取当前表头的thead对象
                        const trs = theads.getElementsByTagName('tr') // 获取所有行
                        const trCols1 = trs[0].getElementsByTagName('th') // 获取第一行所有列
                        const trCols2 = trs[1].getElementsByTagName('th') // 获取第二行所有列
                        const trCols3 = trs[2].getElementsByTagName('th') // 获取第二行所有列
                        if (trCols1.length === trCols2.length) {
                            // 行号表头将第一行的底部边框去除掉，符合合并单元格样式
                            // 此处不能执行rowSpan属性，否则出现第二行合表头数据错位
                            // 将第二行表格隐藏，并将第一行的底部边框去除
                            trCols1[0].style.borderBottom = 'none'
                            trCols2[0].style.borderBottom = 'none'
                            trCols2[0].className = 'hiddenHeader'
                            trCols3[0].className = 'hiddenHeader'
                            trCols1[0].style.verticalAlign = 'middle'
                            for (let i = 1; i < trCols1.length; i++) {
                                // 如果单元格不包含colSpan属性且不是隐藏的单元格，则表明需要合并行，否则，则表明不需要合并行
                                if (!trCols1[i].getAttribute('colSpan') && trCols1[i].className !== 'hiddenHeader') {
                                    trCols1[i].rowSpan = 3
                                    trCols1[i].style.verticalAlign = 'middle'
                                    trCols1[i].style.height = '64px'
                                    // 将第二行表格隐藏，并将第一行的底部边框去除
                                    trCols2[i].className = 'hiddenHeader'
                                    trCols3[i].className = 'hiddenHeader'
                                    trCols1[i].style.borderBottom = 'none'
                                }
                            }
                        }
                        if (trCols2.length === trCols3.length) {
                            for (let i = 1; i < trCols1.length; i++) {
                                // 如果单元格不包含colSpan属性且不是隐藏的单元格，则表明需要合并行，否则，则表明不需要合并行
                                if (!trCols2[i].getAttribute('colSpan') && trCols3[i].className !== 'hiddenHeader') {
                                    trCols2[i].rowSpan = 2
                                    trCols2[i].style.verticalAlign = 'middle'
                                    trCols2[i].style.height = '64px'
                                    // 将第二行表格隐藏，并将第一行的底部边框去除
                                    trCols3[i].className = 'hiddenHeader'
                                    trCols2[i].style.borderBottom = 'none'
                                }
                            }
                        }
                    }
                }, 100)
            },
        });

        /*  function getData() {
              return grid.getData();
          }
          document.getElementById('saveData').addEventListener('click', function () {
              var data = getData();
              $.ajax({
                  url: '/api/data/save', // 后端API的URL
                  type: 'POST',
                  contentType: 'application/json',
                  data: JSON.stringify(data),
                  success: function (response) {
                      // 成功回调
                      console.log(response);
                  },
                  error: function (error) {
                      // 错误回调
                      console.error(error);
                  }
              });*/

        function sendData() {
            console.log("sendData()")
            var submittedData = hot.getData();
            console.log(submittedData);
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "handsontable1.aspx?method=ReceiveJsonData", true);
            xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
            console.log("request...")
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    console.log(xhr.responseText);
                }
            };
            console.log("sendData...")
            //xhr.send(jsonData);
            //sendata = [['a', 'b', 'c'], ['d', 'e', 'f']];
            let jsonarry =  submittedData
            xhr.send(JSON.stringify(jsonarry));
            //console.log(sendata)
            console.log(JSON.stringify(jsonarry))
            console.log("sendData...end")

        }

        document.getElementById('submitButton').addEventListener('click', function (event) {
            // 阻止表单默认提交
            event.preventDefault();
            // TODO:验证输入内容
            // 转换数据为JSON
            console.log("开始转换数据为JSON");
        }, { passive: false });

    </script>

</body>
</html>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<tiles:insertTemplate template="/WEB-INF/views/common/layout.jsp" flush="true">
<tiles:putAttribute name="title"  value="作業時間一括登録" />
<tiles:putAttribute name="content" type="string">

  <script>
      $(function() {
          var droppable = $("#droppable");

          // File API が使用できない場合は諦めます.
          if(!window.FileReader) {
            alert("File API がサポートされていません。");
            return false;
          }

          // イベントをキャンセルするハンドラです.
          var cancelEvent = function(event) {
              event.preventDefault();
              event.stopPropagation();
              return false;
          }

          // dragenter, dragover イベントのデフォルト処理をキャンセルします.
          droppable.bind("dradenter", cancelEvent);
          droppable.bind("dragover", cancelEvent);

          // ドロップ時のイベントハンドラを設定します.
          var handleDroppedFile = function(event) {
            // ファイルは複数ドロップされる可能性がありますが, ここでは 1 つ目のファイルを扱います.
//            var files = event.originalEvent.dataTransfer.files;
            var file = event.originalEvent.dataTransfer.files[0];

            var formData = new FormData();
            formData.append('file', file);

//            for (var i = 0; i < files.length; i++) {
//                formData.append('files', file[i]);
//            }

            // ファイルの内容は FileReader で読み込みます.
            var fileReader = new FileReader();
            fileReader.onload = function(event) {
              // event.target.result に読み込んだファイルの内容が入っています.
              // ドラッグ＆ドロップでファイルアップロードする場合は result の内容を Ajax でサーバに送信しましょう!
              $.ajax('/kanri/workTimeUpload/doUpload/', {
                method: 'POST',
                contentType: false,
                processData: false,
                data: formData,
                dataType: 'json',
                error: function() {
                  console.log('error');
                },
                success: function() {
                  console.log('success');
                }
              });

            };
            fileReader.readAsText(file);

            // デフォルトの処理をキャンセルします.
            cancelEvent(event);
            return false;
          }

          // ドロップ時のイベントハンドラを設定します.
          droppable.bind("drop", handleDroppedFile);      });
  </script>

        <div class="col-sm-5 col-sm-offset-3 col-md-5 col-md-offset-2 main">
          <h4>ファイル選択</h4>
          <input id="form" type="file" multiple="multiple" />
          <br />

          <h4>ドラッグ アンド ドロップ</h4>
          <div id="droppable">
           <pre>
             <br />
              <span>Drop File(s)</span>
              <br />
          </pre>
          </div>
        </div>

</tiles:putAttribute>
</tiles:insertTemplate>

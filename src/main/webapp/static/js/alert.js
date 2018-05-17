function alertErrorCode(result) {
    msg = "错误码：" + result.code + "；msg: "
    result.msg;
    alertErrorMsg(msg);
}

function alertErrorMsg(msg) {
    alertMsg("发生错误", msg);
}

function alertMsg(msgHead, msgBody) {
    $("#msg-body").text(msgBody);
    $("#msg-head").text(msgHead);
    $("#msg-alert").modal({
        relatedTarget: this,
        onConfirm: function () {

        }
    });
}

function ajaxErrorAlert(XMLHttpRequest, textStatus, errorThrown) {
    var msg = "状态码:" + XMLHttpRequest.status + "\n"
        + "ready state:" + XMLHttpRequest.readyState + "\n"
        + "text status:" + textStatus + "\n"
        + "error thrown" + errorThrown;
    alertErrorMsg(msg);
}

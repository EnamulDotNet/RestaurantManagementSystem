//Search Username

$(function () {
    $('#txtUserName').autocomplete({
        source: function (request, response) {
            $.ajax({
                url: "../WebServices/AutoCompleteService.asmx/SearchUserInfo",
                data: "{'searchText': '" + request.term + "'}",
                type: "POST",
                dataType: "Json",
                contentType: "application/json;charset=utf-8",
                success: function (data) {
                    response(data.d);
                },
                error: function (result) {
                    alert('Not Match');
                }
            });
        }
    });
    $('#txtDesignationSearch').autocomplete({
        source: function (request, response) {
            $.ajax({
                url: "../WebServices/AutoCompleteService.asmx/SearchDesignation",
                data: "{'searchText': '" + request.term + "'}",
                type: "POST",
                dataType: "Json",
                contentType: "application/json;charset=utf-8",
                success: function (data) {
                    response(data.d);
                },
                error: function (result) {
                    alert('Not Match');
                }
            });
        }
    });
    
}); 
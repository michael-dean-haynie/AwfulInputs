function formatOutputPhone(outputID) {
    var element = $("#" + outputID);
    var input = element.attr("data-output");
    var errMsg = "";

    // Format output
    var input = input.substr(0, 20);
    var allNums = ""
    for (var i = 0; i < input.length; i++) {
        allNums += "0123456789".indexOf(input[i]) == -1 ? "" : input[i];
    }
    output = "(" + allNums.substr(0, 3) + ") " + allNums.substr(3, 3) + "-" + allNums.substr(6);

    // check for and set errors
    if (allNums.length != 10) errMsg = "Please enter a 10 digit phone number";

    // Replace "data-output" attribute with formatted output or error message
    if (errMsg != "") {
        $("#" + outputID).attr("data-output", errMsg);
        element.attr("data-format-status", "error");
    } else {
        $("#" + outputID).attr("data-output", output);
        element.attr("data-format-status", "success");

    }
}
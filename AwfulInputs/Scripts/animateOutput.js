function animateOutput(id){
    var output = $("#" + id);
    if (output.attr("data-is-visible") == 'true') {
        output.fadeOut(500, function () {
            output.empty();
            if (output.attr("data-format-status") == "error") { output.removeClass("output-error"); output.addClass("output-success"); }
            if (output.attr("data-format-status") == "success") { output.removeClass("output-success"); output.addClass("output-error"); }
            output.append(output.attr("data-output"));
            output.fadeIn(500, function () {
                output.attr("data-is-visible", "true");
            });
        });
    } else if (output.attr("data-is-visible") == 'false') {
        output.fadeOut(0);
        output.empty();
        if (output.attr("data-format-status") == "error") { output.removeClass("output-error"); output.addClass("output-success"); }
        if (output.attr("data-format-status") == "success") { output.removeClass("output-success"); output.addClass("output-error"); }
        output.append(output.attr("data-output"));
        output.fadeIn(500, function () {
            output.attr("data-is-visible", "true");
        });
    }
}
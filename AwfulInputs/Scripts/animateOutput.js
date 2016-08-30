function animateOutput(id){
    var output = $("#" + id);
    if (output.attr("data-is-visible") == 'true') {
        output.fadeOut(500, function () {
            output.empty();
            output.append(output.attr("data-output"));
            output.fadeIn(500, function () {
                output.attr("data-is-visible", "true");
            });
        });
    } else if (output.attr("data-is-visible") == 'false') {
        output.fadeOut(0);
        output.empty();
        output.append(output.attr("data-output"));
        output.fadeIn(500, function () {
            output.attr("data-is-visible", "true");
        });
    }
}
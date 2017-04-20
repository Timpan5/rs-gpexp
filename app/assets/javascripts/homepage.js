function loadPlan() {
    $.ajax({
        url: "storage",
        method: "GET",
        data: {"plan_name" : $("#loadName").val()}
    }).done(function(jsondata){
        var $section = $("#existing");
        $section.empty();

        for (var i = 0; i < jsondata.length; i++) {
            var skill = jsondata[i]["skill"];
            var $button = $("<button>").html(skill);
            $button.click(loadSkill($("#loadName").val(), skill));
            $section.append($button);
        }
    });
}

function loadSkill(name, skill) {
    return function() {
        document.location.href = '/' + skill + '?' + $.param({"plan_name" : name, "skill" : skill});
    };
}

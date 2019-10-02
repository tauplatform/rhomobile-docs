$(document).ready(function () {
    //console.log("Document is ready", new Date().valueOf());
/*    $(document).pjax('a', {
        container: "#t_content",
        fragment: "#rendered_topic",
        timeout: 4000
    });*/
    // Update the current topic
/*    $("#t_content").on('pjax:end', function (e, xhr, err) {
        // Enable previous anchor
        var prevAnchor = $('li.active a');
        console.log(prevAnchor);
        prevAnchor.removeAttr('onclick');
        prevAnchor.attr('class', 'js-pjax');

        // Remove style of previous topic
        $('ul.nav-list > li.active').removeClass('active');

        // Update style of current topic
        var cur = $('a[href$="' + $(location).attr("pathname") + '"]');
        cur.attr('onclick', 'return false');
        cur.parent().attr('class', 'active');
        $(window).scrollTop(0);
    });
    $('.accordion-heading > li').on('click', function () {
        $(this).find('i').toggleClass('icon-chevron-right').toggleClass('icon-chevron-down');
    });*/

    //Change url to include version
    $('#version-selector a.dropdown-item').click(function (event) {
        event.preventDefault();
        var ver = $(this).attr('data-version'); // get selected value
        console.log(ver);
        var loc = window.location.pathname;
        var url = loc.replace(/\/(.[^\/]*)\/(.[^\/]*)(.*)/, '$1/' + ver + '$3');
        $.ajax({
            type: "GET",
            url: "/exists",
            data: {'doc': url},
            success: function () {
                var newUrl = window.location.protocol + "//" + window.location.host + "/" + url;
                console.log('success', newurl);
                window.location = newUrl;
            },
            error: function () {
                var newUrl = window.location.protocol + "//" + window.location.host + "/" + loc.replace(/\/(.[^\/]*)\/(.[^\/]*)(.*)/, '$1/' + ver);
                console.log('error', newUrl);
                window.location = newUrl;
            }
        });
    });

    $('.bxslider').bxSlider({
        video: true,
        useCSS: false
    });

    sizeContent();
    $(".apiCheckbox").bind('change', function () {
        $('.property').hide();
        $('.method').hide();
        $(".apiCheckbox").each(function (index) {
            console.log(index + ": " + this.checked + ":" + this.value);
            var cbClass = '.' + this.value;
            if (this.checked) {
                $(cbClass).show();
            }
        });
    });
    $(".apiFilter").bind('change', function () {

        // console.log(this);
        if ($(".apiFilter option:selected").text() == "All") {
            $("#apiFilterBtn").html('<i class="icon-filter "></i> Show');

        } else {
            $("#apiFilterBtn").html('<i class="icon-filter "></i>' + $(".apiFilter option:selected").text());

        }
        if (this.value == 'all') {
            $('.property').show();
            $('.method').show();

        } else {
            $('.property').hide();
            $('.method').hide();
            // console.log(this.value);
            var cbClass = '.' + this.value;

            $(cbClass).show();

        }


    });

    $("[data-action=report-doc-issue]").on('click', function () {
        //var url = "http://github.com/rhomobile/rhomobile-docs/issues/new?title=Doc Issue:" + document.title + '&body=' + encodeURIComponent('Bad Link: ' + window.location.href + ' came from: ' + document.referrer);
        var url = "https://tautechnologies.zendesk.com/hc/en-us/requests/new";
        window.open(url);
    });


    //search handler for filtering
    $('#facets > .filter').click(function (e) {
        var docCatKey = $(this).attr('data-id');
        var docCat = $(this).attr('data-type');
        var sCats = [];

        if ($(this).attr('data-selected') == 'true') {
            $(this).attr('data-selected', 'false');
        } else {
            $(this).attr('data-selected', 'true');
        }
        $('#facets > span[data-selected="true"][data-type="category"]').each(function () {
            // do something
            sCats.push($(this).attr('data-id'));
        });
        var sVers = [$("#versions option:selected").val()];


        window.location = window.location.protocol + '//' + window.location.host + window.location.pathname + '?q=' + $('#facets').attr('data-query') + '&c=' + sCats.join(",") + '&v=' + sVers.join(",");
    });

    //search handler for filtering
    $('#versions').change(function (e) {
        //console.log("version is changed", new Date().valueOf());
        var sVers = [$("#versions option:selected").val()];
        var sCats = [];
        $('#facets > span[data-selected="true"][data-type="category"]').each(function () {
            // do something
            sCats.push($(this).attr('data-id'));
        });
        window.location = window.location.protocol + '//' + window.location.host + window.location.pathname + '?q=' + $('#facets').attr('data-query') + '&c=' + sCats.join(",") + '&v=' + sVers.join(",");
    });


    $('#facets > span[data-type="all"]').click(function (e) {
        var sVers = [$("#versions option:selected").val()];
        window.location = window.location.protocol + '//' + window.location.host + window.location.pathname + '?q=' + $('#facets').attr('data-query') + '&v=' + sVers.join(",");
    });

    $("#searchForm").indextank_Ize('http://rd4f.api.searchify.com', 'rhodocs');
    // let the query box have autocomplete
    $("#query").indextank_Autocomplete();

});


//Every resize of window
$(window).resize(sizeContent);

//Dynamically assign height
function sizeContent() {
    var newHeight = $("html").height() - $("#top_navbar").height() - 130;
    // $("#apibody").css("height", newHeight);
}

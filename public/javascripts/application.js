// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})

jQuery.fn.submitWithAjax = function() {
  this.submit(function() {
    $.post(this.action, $(this).serialize(), null, "script");
    return false;
  })
  return this;
};

function colorizeTable() {
    var number_td = $(".number_color");

    number_td.each(function() {
       if ($(this).html() >= 7)
            $(this).addClass("high_score");
       if ($(this).html() <= 3)
            $(this).addClass("low_score");
       if ($(this).html() > 3 && $(this).html() < 7)
            $(this).addClass("medium_score");
    });
};


$(document).ready(function() {  
  
	$(".time_graph_trigger").click(function () {
		$("#time_graph_container").toggle();
	});
	$(".time_chart_trigger").click(function () {
		$("#time_chart_container").toggle();
	});
	
	//Hide edit and delete links on Timecard Form unless hovered over
	$(".time_log_box .time_log").live({
		 mouseenter: function () {
			$(this).find(".inline_links").fadeIn();
		},
		  mouseleave: function () {
			$(this).find(".inline_links").hide();
		}
	});
	
	//Check and Remove Checkmark if Accomplishments Field Data
	$("#timecard_done").keyup(function() {
		var check_img = $(".fill_accomplishments").find(".check");
		if ($(this).val() != "")
			check_img.addClass("check_hover");
		else
			check_img.removeClass("check_hover");
	});
	
	//Check and Remove Checkmark if Issues Field Data
	$("#timecard_issues").keyup(function() {
		var check_img = $(".fill_issues").find(".check");
		if ($(this).val() != "")
			check_img.addClass("check_hover");
		else
			check_img.removeClass("check_hover");
	});
	
	//Check and Remove Checkmark if Accomplishments Field Data
	$("#timecard_todo").keyup(function() {
		var check_img = $(".fill_todos").find(".check");
		if ($(this).val() != "")
			check_img.addClass("check_hover");
		else
			check_img.removeClass("check_hover");
	});
	
	
	var time_log_actual_selector = $(".new_time_log #time_log_actual");
	$(time_log_actual_selector).change(function() {
		var time_log_day_selector = $(".new_time_log #time_log_day");
		time_log_day_selector.html('');
		time_log_day_selector.append("<option value=''>Choose Date</option>");
		if (time_log_actual_selector.val() == "true") {
			$.each(available_days_for_actuals, function(index) {
				time_log_day_selector.append('<option value=' + available_days_for_actuals[index][1] + '>' + available_days_for_actuals[index][0] + '</option>');
			});
		} else {
			$.each(available_days_for_estimates, function(index) {
				time_log_day_selector.append('<option value=' + available_days_for_estimates[index][1] + '>' + available_days_for_estimates[index][0] + '</option>');
			});
		}
	});
	
	var inline_edit_trigger = ".inline_edit .inline_edit_trigger";
	$(document).on("click", inline_edit_trigger, function() {
		var inline_edit = $(this).closest('.inline_edit');
		var inline_content = inline_edit.find('.inline_content');
		var inline_form = inline_edit.find('.inline_form');
		inline_content.hide();
		inline_form.show();
		return false;
	});
	
	var inline_edit_cancel = ".inline_edit .inline_edit_cancel";
	$(document).on("click", inline_edit_cancel, function() {
		var inline_edit = $(this).closest('.inline_edit');
		var inline_content = inline_edit.find('.inline_content');
		var inline_form = inline_edit.find('.inline_form');
		inline_form.hide();
		inline_content.show();
	});
	
    //Peer Review Viewer
    //Show or hide the individual selector based on the selected tab.
    var individual_selector = $("#individual_selector");
    individual_selector.hide();
    $(".team_overview").click(function () {
        $(individual_selector).fadeOut('fast');
    });
    $(".individual_overview").click(function () {
        $(individual_selector).fadeIn('fast');
    });

    $("#tabs").tabs();

    $("#accordion").accordion({
        autoHeight: false,
        navigation: true
    });

    $(".section_box .section_content").hide();
    $(".section_header .section_icon").addClass('right_arrow');
    $(".section_header").live("click", function () {
        var obj = $(this).parent();
        var obj_icon = obj.find(".section_icon");
        obj.find(".section_content").toggle();
        obj_icon.toggleClass('down_arrow');
        obj_icon.toggleClass('right_arrow');
    });

    $(".toggle .toggle_content").hide();
    //$(".toggle .header .icon").addClass('right_arrow');
    $(".toggle .trigger").live("click", function () {
        var obj = $(this).closest('.toggle');
        obj.find(".toggle_content").fadeToggle('fast');
        var link_text = obj.find(".trigger span");
        link_text.toggle();
		$(this).closest(".header").toggleClass("no_border");
        //obj_icon.toggleClass('down_arrow');
        //obj_icon.toggleClass('right_arrow');
    });

    $(".toggle_box .toggle_content").hide();
    $(".toggle_trigger").live("click", function () {
        var obj = $(this).closest('.toggle_box');
        obj.find(".toggle_content").slideToggle('fast');
    });

    /* Set the height of the column to 100% */
    if ($('#main_navigation_sidebar').height() < $(document).height()) {
        $('#main_navigation_sidebar').css('height', $(document).height() + 'px');
    }

    // Set Right Column ONLY if Shorter than Document Height //
    if ($('#application_container').height() < $(document).height()) {
        $('#application_container').css('height', $(document).height() + 'px');
    }

    /* Inline Field Labels */
    $("#simple_form label").inFieldLabels();

    /* Sliders for Information_step.rb */
    $('.slider').slider({
        range: "min",
        min: 0,
        max: 10,
        step: 1,
        value: 0,
        slide: function(event, ui) {
            $(this).parent().find("input").val(ui.value);
        }
    });

    var language_vals = $("#programming_languages .language input");
    $(language_vals).each(function() {
        var number = 0;
        if ($(this).val() != "") {
            number = this.value;
        }
        this.value = number;
        $(this).parent().find(".slider").slider("option", "value", parseInt(number));
    });

    $(language_vals).change(function () {
        console.log($(this));
        $(this).parent().find(".slider").slider("option", "value", $(this).val());
    });

    /* Uniform Form UI */
    //$("select, input:checkbox, input:radio, input:file").uniform();

    /* Peer Review Viewer */

    /* Serializes search form and executes GET request via AJAX. */
    function ajaxSubmit() {
        $.get($("#peer_review_search").attr("action"), $("#peer_review_search").serialize(), null, "script");
        return false;
    }

    $("#group_select").live("change", function() {
        ajaxSubmit();
    });

    $("#user_select").live("change", function() {
        ajaxSubmit();
    });

    $('.dropdown .dropdown_trigger').hover(function() {
            $(this).parent().parent().find('.subnav').show();
        },
        function () {
        }
    );

    $('.dropdown .subnav').mouseout(function() {
        $(this).fadeOut('fast');
    });

    $("#review_submit").click(function() {
        $(this).parent('#new_review').fadeOut();
    });

    $(".new_review").submitWithAjax();

    // Code for the Nested Replies on the show post page
    $('.comment_link').click(function() {
        $('.comment_form, .edit_form, .edit_comment').hide();
        $(this).parent().find(".comment_form").show();
    });

    $('.edit_comment_link').click(function() {
        $('.comment_form, .edit_form').hide();
        $(this).parent().find(".edit_comment").show();
        $(this).parent().find(".comment_body").hide();
    });

    $('.main_reply').click(function() {
        $('.comment_form, .edit_form').hide();
        $('.comment_form_main').show();
    });


    /* Registration form Step 2 */

    $(".closable").live("click", function() {
        var teammateEmail = $(this).parent().attr("id");
        var value_to_remove = $(this).parent().find(".friend_info").text();
        removeTeammate(teammateEmail);
        removeTeammateStore(value_to_remove);

        $(this).parent().remove();
    });


    /* configure_grouping_algorithm.html.erb */

    $('#number_of_groups').live("keyup", function() {
        var users = $('#number_of_users').text();
        var groups = $(this).val();
        var size = Math.round(users / groups);
        $('#group_size').val(size);
    });

    $('#group_size').live("keyup", function() {
        var users = $('#number_of_users').text();
        var size = $(this).val();
        var groups = Math.round(users / size);
        $('#number_of_groups').val(groups);
    });


    /* Peer Reviews */

    // AJAX form submit handling
    $("form.new_peer_review").submitWithAjax();
    $("form.edit_peer_review").submitWithAjax();

    // In user show page
    $('.review_period_toggle').click(function() {
        $('#peer_reviews_' + $(this).attr('id')).toggle();
    });

    // In dashboard peer review viewer
    $('#peer_reviews_data .review_period_toggle').live("click", function() {
        $('#review_period_' + $(this).attr('id')).toggle();
    });


    /* Pages dashboard */

    $('#dashboard #peer_reviews .trigger').click(function() {
        $('#' + $(this).attr('target-id')).toggle();
    });


    var restore_names = $("#user_preferred_teammates_store").val();
    if (restore_names && restore_names != "") {
        var info_string = restore_names.split(',');

        for (var i = 0; i < info_string.length; i++) {
            var teammateEmail = parseEmail(info_string[i]);
            if (teammateEmail != "") {
                var li = $("<li />", {
                    id: teammateEmail,
                });

                var span = $("<span />", {
                    text: info_string[i].trim(),
                    "class": "friend_info floatLeft"
                });

                var a = $("<a />", {
                    "class": "closable floatRight",
                    href: "#friends_section",
                    text: "x"
                });

                var clear_div = $("<div />", {
                    "class": "clear"
                });

                li.append(span);
                li.append(a);
                li.append(clear_div);
                $(".target").append(li);
            }
        }
    }

    $(".teammate_trigger").click(function() {
        var autocompleteValue = $(".autocomplete").val();
        var teammateEmail = parseEmail(autocompleteValue);
        var teammates_str = $("#user_preferred_teammates").val();
        var teammates_arr = teammates_str.split(",");

        if ((teammateEmail.indexOf("@") != -1) && ($.inArray(teammateEmail, teammates_arr) == -1)) {
            addTeammate(teammateEmail);
            var li = $("<li />", {
                id: teammateEmail,
            });

            var span = $("<span />", {
                text: autocompleteValue,
                "class": "friend_info floatLeft"
            });

            var a = $("<a />", {
                "class": "closable floatRight",
                href: "#friends_section",
                text: "x"
            });

            var clear_div = $("<div />", {
                "class": "clear"
            });

            li.append(span);
            li.append(a);
            li.append(clear_div);
            $(".target").append(li);
        }

        $(".autocomplete").val("");
        $('#user_preferred_teammates_store').val(function(index, val) {
            return val + autocompleteValue + ", ";
        });
    });

    $(".team_select").change(function() {
        var selectValue = $(this).val();
        var teammateEmail = parseEmail(selectValue);
        var teammates_str = $("#user_preferred_teammates").val();
        var teammates_arr = teammates_str.split(",");

        if ((teammateEmail.indexOf("@") != -1) && ($.inArray(teammateEmail, teammates_arr) == -1)) {
            addTeammate(teammateEmail);
            var li = $("<li />", {
                id: teammateEmail,
            });

            var span = $("<span />", {
                text: selectValue,
                "class": "friend_info floatLeft"
            });

            var a = $("<a />", {
                "class": "closable floatRight",
                href: "#friends_section",
                text: "x"
            });

            var clear_div = $("<div />", {
                "class": "clear"
            });

            li.append(span);
            li.append(a);
            li.append(clear_div);
            $(".target").append(li);
            $('#user_preferred_teammates_store').val(function(index, val) {
                return val + selectValue + ", ";
            });
        }
    });

    // Populating autocomplete array
    var availableNames = [];
    $(".team_select > option").each(function() {
        if (this.value.indexOf("@") != -1)
            availableNames.push(this.value);
    });

    $(".autocomplete").autocomplete({
        source: availableNames
    });

    function addTeammate(email) {
        var teammates_str = $("#user_preferred_teammates").val();
        var teammates_arr = teammates_str.split(",");

        if ($.inArray(email, teammates_arr) == -1) {
            if (teammates_str != "")
                teammates_str = teammates_str + "," + email;
            else
                teammates_str = email;

            $("#user_preferred_teammates").val(teammates_str);
        }
    }

    function removeTeammate(email) {
        var teammates_str = $("#user_preferred_teammates").val();
        var teammates_arr = teammates_str.split(",");

        if ($.inArray(email, teammates_arr) != -1) {
            teammates_arr.remove(email);
            teammates_str = teammates_arr.join(",");

            $("#user_preferred_teammates").val(teammates_str);
        }
    }

    function removeTeammateStore(value_to_remove) {
        var element = $("#user_preferred_teammates_store");
        var teammates_str = element.val();
        var teammates_arr = teammates_str.split(",");

        for (var i = 0; i < teammates_arr.length; i++) {
            teammates_arr[i] = teammates_arr[i].trim();
        }


        if ($.inArray(value_to_remove.trim(), teammates_arr) != -1) {
            teammates_arr.remove(value_to_remove.trim());
            teammates_str = teammates_arr.join(",");

            element.val(teammates_str);
        }
    }

    function parseEmail(teammate) {
        var start = teammate.indexOf("<") + 1;
        var end = teammate.indexOf(">");
        return teammate.substring(start, end);
    }

    /* Remove <tt>value</tt> from Array. */
    Array.prototype.remove = function (value) {
        for (var i = 0; i < this.length;) {
            if (this[i] === value)
                this.splice(i, 1);
            else
                ++i;
        }
    }


});


/* add and remove nested fields dynamically using JQuery*/
function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id))
}

function toggle_visibility(id) {
  var e = document.getElementById(id);
  if (e.style.display == 'block')
    e.style.display = 'none';
  else 
    e.style.display = 'block';
}

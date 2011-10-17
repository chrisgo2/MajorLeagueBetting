/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * @Content Slide												 			 *
 *																			 *
 * - User clicks button and respective content area beneath it	 			 *
 *	 collapses or expands depending on the content's current	 			 *
 *	 state. Previous content that may have been clicked is also	 			 *
 *	 collapsed as the new content is expanded.					 			 *
 *																			 *
 * - jQuery 1.2.6												 			 *
 *																			 *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

// We need to keep track of previous content
// area outside of our functions scope
var $previous_content = "NO_OPEN_CONTENT";
var $previous_button  = "NO_OPEN_BUTTON";

// Content slides up, set new attributes
function slides_up($button, $content)
{
	$content.removeClass("content_open");
	$button.removeClass("button_open");
	$previous_content = "NO_OPEN_CONTENT";
	$previous_button  = "NO_OPEN_BUTTON";
}

// Content slides down, set new attributes
function slides_down($button, $content)
{
	$content.addClass("content_open");
	$button.addClass("button_open");
	$previous_content = $content;
	$previous_button  = $button;
}

// When new button is clicked, previous content collapses
function previous_content_collapse($prev_button, $prev_content)
{
	$prev_content.slideUp("fast", function() {
		// Animation done
		$prev_content.removeClass("content_open");
		$prev_button.removeClass("button_open");
		$previous_content = "NO_OPEN_CONTENT";
		$previous_button  = "NO_OPEN_BUTTON";
	});
}

// If button is clicked, should content slide up or down?
function content_clicked ($button, $content)
{
	$button.click(function() {
		// check to see if other content
		// blocks are open and collapse them
		if ( $previous_content != "NO_OPEN_CONTENT" ) {
			previous_content_collapse($previous_button, $previous_content);
		}
		// content area collapsed
		if ( $content.hasClass("content_open") == false ) {
			// check to see which buttons need to collapse
			$content.slideDown("fast", function() {
				// Animation done
				/*slide_down($button, $content);*/
				$content.addClass("content_open");
	$button.addClass("button_open");
	$previous_content = $content;
	$previous_button  = $button;
			});
		}
		// content area is expanded
		if ( $content.hasClass("content_open") == true ) {
			$content.slideUp("fast", function() {
				// Animation done
				/*slide_up($button, $content);*/
				$prev_content.removeClass("content_open");
		$prev_button.removeClass("button_open");
		$previous_content = "NO_OPEN_CONTENT";
		$previous_button  = "NO_OPEN_BUTTON";
			});
		}
	});
}

/* ********************************** MAIN ********************************* */

// Captures all our buttons and & their
// respective content areas beneath them
$(function ()
{
	var $profile_button      = $("#profile_button a");
	var $games_button        = $("#games_button a");
	var $statistics_button   = $("#statistics_button a");
	var $leaderboards_button = $("#leaderboards_button a");
	var $achievements_button = $("#achievements_button a");
	
	var $profile	  = $("#profile");
	var $games        = $("#games");
	var $statistics   = $("#statistics");
	var $leaderboards = $("#leaderboards");
	var $achievements = $("#achievements");
	
	// Are any of these buttons clicked?
	content_clicked($profile_button, $profile);
	content_clicked($games_button, $games);
	content_clicked($statistics_button, $statistics);
	content_clicked($leaderboards_button, $leaderboards);
	content_clicked($achievements_button, $achievements);
	
});

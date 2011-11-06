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
var $previous_feed    = "NO_OPEN_FEED";
var $previous_stream  = "NO_OPEN_STREAM"

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
		if ( $previous_content != "NO_OPEN_CONTENT") {
			previous_content_collapse($previous_button, $previous_content);
		}
		// content area collapsed
		if ( $content.hasClass("content_open") == false ) {			
			$content.slideDown("slow", function() {
				// Animation done
				$content.removeClass("initially_closed")
				$content.addClass("content_open");
				$button.addClass("button_open");
				$previous_content = $content;
				$previous_button  = $button;
			});
		}
		// content area is expanded
		else {
			$content.slideUp("slow", function() {
				// Animation done
				$content.removeClass("content_open");
				$button.removeClass("button_open");
				$previous_content = "NO_OPEN_CONTENT";
				$previous_button  = "NO_OPEN_BUTTON";
			});
		}
	});
}

function content_stream_clicked ($stream_button, $stream_content)
{
	$stream_button.click(function() {
		// If previous feed open, check to see if 
		// new feed is same as old feed. If new feed
		// is different from old feed, then hide old
		// feed and show new feed.
		if ( $previous_feed != "NO_OPEN_FEED" ) {
			if ($previous_feed != $stream_content) {
				$previous_feed.slideUp('fast', function(){});
				$previous_feed.removeClass("content_open");
				$previous_stream.removeClass("feed_open");
				$previous_feed = $stream_content;
			}
		}
		// stream feed is hidden
		if ( $stream_content.hasClass("content_open") == false ) {
			$stream_content.slideDown('fast', function(){});
			$stream_content.removeClass("initially_closed")
			$stream_content.addClass("content_open");
            $stream_button.addClass("feed_open");
			$previous_feed = $stream_content;
			$previous_stream = $stream_button;
		}
		// stream feed is displayed
		else {
			$stream_content.slideUp('fast', function(){});
			$stream_content.removeClass("content_open");
			$stream_button.removeClass("feed_open");
			$previous_feed = "NO_OPEN_FEED";
			$previous_stream = "NO_OPEN_STREAM";
		}
	});
}

/* ********************************** MAIN ********************************* */

// Captures all our buttons and & their
// respective content areas beneath them
$(function ()
{
	var $profile_button      = $("#profile_button a.button");
	var $games_button        = $("#games_button a.button");
	var $statistics_button   = $("#statistics_button a.button");
	var $leaderboards_button = $("#leaderboards_button a.button");
	var $achievements_button = $("#achievements_button a.button");
	
	var $profile	  = $("#profile");
	var $games        = $("#games");
	var $statistics   = $("#statistics");
	var $leaderboards = $("#leaderboards");
	var $achievements = $("#achievements");
	
	var $profile_stream      = $("#profile_button a.feed");
	var $games_stream        = $("#games_button a.feed");
	var $statistics_stream   = $("#statistics_button a.feed");
	var $leaderboards_stream = $("#leaderboards_button a.feed");
	var $achievements_stream = $("#achievements_button a.feed");
	
	var $profile_content      = $("#profile_content");
	var $games_content        = $("#games_content");
	var $statistics_content   = $("#statistics_content");
	var $leaderboards_content = $("#leaderboards_content");
	var $achievements_content = $("#achievements_content");
	
	// Are any of these buttons clicked?
    // If so, must collapse previous, and expand new
	content_clicked($profile_button, $profile);
	content_clicked($games_button, $games);
	content_clicked($statistics_button, $statistics);
	content_clicked($leaderboards_button, $leaderboards);
	content_clicked($achievements_button, $achievements);
	
	// Is the content stream button clicked?
	// If so, must load appropriate content stream
	content_stream_clicked($profile_stream, $profile_content);
	content_stream_clicked($games_stream, $games_content);
	content_stream_clicked($statistics_stream, $statistics_content);
	content_stream_clicked($leaderboards_stream, $leaderboards_content);
	content_stream_clicked($achievements_stream, $achievements_content);
	
});

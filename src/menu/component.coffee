###
The marquee
###

# Deps
require './style.styl'

# Component definition
module.exports =
	# template: require './template.haml'
	inherit: true

	data: () ->
		classes:
			open: false

	ready: () ->
		$(window).on 'scroll', @onScroll
		return

	methods:
		toggle: () ->
			@classes.open = !@classes.open
			return

		close: () ->
			@classes.open = false

		open: () ->
			@classes.open = true

		onClick: (e) ->
			$cur = $ e.currentTarget
			target = $cur.attr 'href'
			$(target).velocity 'scroll', duration: 1000

		onScroll: ->
			$(@$el).toggleClass 'bg', $(window).scrollTop() > 500

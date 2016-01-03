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
		routes:
			home: 'Home'
			about: 'About'
			sponsorship: 'Sponsors'
		classes:
			open: false

	ready: () ->
		console.log @
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
			return

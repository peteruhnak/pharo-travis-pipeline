baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'PharoTravisPipeline'.
			spec group: 'default' with: #('PharoTravisPipeline') ]
baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'PharoTravisPipeline'.
			spec
				package: 'PharoTravisPipelineExtensions'
				with: [ spec requires: #('PharoTravisPipeline') ].
			spec group: 'default' with: #('PharoTravisPipeline') ]
baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Mocketry'
				with: [ spec repository: 'github://dionisiydk/Mocketry:v4.0.x' ].
			spec package: 'PharoTravisPipeline' with: [ spec requires: #('Mocketry') ].
			spec
				package: 'PharoTravisPipelineExtensions'
				with: [ spec requires: #('PharoTravisPipeline') ].
			spec group: 'default' with: #('PharoTravisPipeline' 'PharoTravisPipelineExtensions') ]
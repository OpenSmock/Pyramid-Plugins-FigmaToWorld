# Pyramid-Plugins-FigmaToWorld

FigmaToWorld is a plugin for [Pyramid](https://github.com/OpenSmock/Pyramid) UI builder.
This Pyramid plugin exploit capacities from the Figma plugin [Figma To World](https://github.com/OpenSmock/FigmaToWorld) to import Figma design into Pyramid.

This plugin generate Bloc and Toplo elements.

## Installation

```st
[ Metacello new
	baseline: 'PyramidFigma';
	repository: 'github://OpenSmock/Pyramid-Plugins-FigmaToWorld:dev/src';
	onConflictUseIncoming;
	ignoreImage;
	load ]
		on: MCMergeOrLoadWarning
		do: [ :warning | warning load ]
```

## Dependencies

- [Figma To World](https://github.com/OpenSmock/FigmaToWorld) Figma plugin
- [Pyramid](https://github.com/OpenSmock/Pyramid) UI builder
- [Bloc-Figma](https://github.com/OpenSmock/Bloc-Figma)

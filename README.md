[![License](https://img.shields.io/github/license/openSmock/Pyramid.svg)](./LICENSE)

# "FigmaToWorld" plugin for Pyramid  

FigmaToWorld is a plugin for [Pyramid](https://github.com/OpenSmock/Pyramid) UI builder.
This Pyramid plugin exploit capacities from the Figma plugin [Figma To World](https://github.com/OpenSmock/FigmaToWorld) to import Figma design into Pyramid.

This plugin generate Bloc and Toplo elements.

## How it works ?

The plugin install a new capacity in Pyramid editor to import a FigmaToWorld exporting file.

![image](https://github.com/OpenSmock/Pyramid-Plugins-FigmaToWorld/assets/49183340/bcaf535a-6168-45b2-9982-12063f77154b)

## Installation

To install this plugin, use the following scripts inside a playground:

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

- [Figma To World](https://github.com/OpenSmock/FigmaToWorld)
- [Pyramid](https://github.com/OpenSmock/Pyramid)
- [Bloc-Figma](https://github.com/OpenSmock/Bloc-Figma)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

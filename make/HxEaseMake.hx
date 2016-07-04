import hxmake.idea.IdeaPlugin;
import hxmake.haxelib.HaxelibPlugin;

using hxmake.haxelib.HaxelibPlugin;

class HxEaseMake extends hxmake.Module {

	function new() {
		config.description = "Easing functions for Haxe";
		config.version = "0.0.1";
		config.classPath = ["src"];
		config.devDependencies = [
			"utest" => "haxelib"
		];

		apply(HaxelibPlugin);
		apply(IdeaPlugin);

		library();
	}
}
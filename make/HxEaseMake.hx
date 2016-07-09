import hxmake.test.TestTask;
import hxmake.idea.IdeaPlugin;
import hxmake.haxelib.HaxelibPlugin;

using hxmake.haxelib.HaxelibPlugin;

class HxEaseMake extends hxmake.Module {

	function new() {
		config.description = "Easing functions for Haxe";
		config.version = "0.0.1";
		config.classPath = ["src"];
		config.testPath = ["test"];
		config.devDependencies = [
			"utest" => "haxelib"
		];

		apply(HaxelibPlugin);
		apply(IdeaPlugin);

		library();

		var tt = new TestTask();
		tt.targets = ["neko", "flash", "js", "cpp", "java", "php"];//, "lua", "python"];
		tt.libraries = ["hxease"];
		task("test", tt);
	}
}
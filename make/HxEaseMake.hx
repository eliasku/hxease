import hxmake.test.TestTask;
import hxmake.idea.IdeaPlugin;
import hxmake.haxelib.HaxelibPlugin;

using hxmake.haxelib.HaxelibPlugin;

class HxEaseMake extends hxmake.Module {

	function new() {
		config.classPath = ["src"];
		config.testPath = ["test"];
		config.devDependencies = [
			"utest" => "haxelib"
		];

		apply(HaxelibPlugin);
		apply(IdeaPlugin);

		var cfg = library().config;
		cfg.description = "Easing functions for Haxe";
		cfg.contributors = ["eliasku"];
		cfg.url = "https://github.com/eliasku/hxease";
		cfg.license = "MIT";
		cfg.version = "0.0.1";
		cfg.tags = ["easing", "ease", "math", "function", "motion", "tween", "cross"];

		var tt = new TestTask();
		tt.targets = ["neko", "flash", "js", "cpp", "java", "php"];//, "lua", "python"];
		tt.libraries = ["hxease"];
		task("test", tt);
	}
}
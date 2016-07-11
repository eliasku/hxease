import js.Browser;
import utest.Runner;
import utest.ui.Report;
import utest.TestResult;

class TestAll {

    public static function addTests(runner:Runner) {
        runner.addCase(new hxease.EaseTest());
    }

    public static function main() {
        var runner = new Runner();

        addTests(runner);

        Report.create(runner);

        // get test result to determine exit status
        var isOk:Bool = true;
        runner.onProgress.add(function(o) {
            isOk = isAllOk(o.result) && isOk;
        });
        runner.onComplete.add(function(r) {
            var exitCode = isOk ? 0 : -1;

            #if flash
            flash.system.System.exit(exitCode);
            #end

            #if js
            if(exitCode == 0) {
                js.Browser.window.close();
            }
            else {
                throw "EXIT CODE: " + exitCode;
            }
            #end
        });
        runner.run();
    }

    static function isAllOk(result:TestResult):Bool {
        for(l in result.assertations) {
            switch (l){
                case Success(_):
                default: return false;
            }
        }
        return true;
    }
}
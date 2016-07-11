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
        var r:TestResult = null;
        runner.onProgress.add(function(o) { if (o.done == o.totals) r = o.result;});
        runner.run();

        var exitCode = r.allOk() ? 0 : -1;
        #if flash
        flash.system.System.exit(exitCode);
        #end
    }
}
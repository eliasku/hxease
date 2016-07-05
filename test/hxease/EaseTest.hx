package hxease;

import utest.Assert;

using hxease.Tools;

class EaseTest {

    inline static var STEPS:Int = 100;

    public function new() {}

    @:generic
    function checkEquation<T:IEasing>(easeInstance:T, ?toolFunc:Float->Float, inBounds:Bool = true) {
        Assert.notNull(easeInstance);
        var easeFunc:Float->Float = easeInstance.calculate;
        Assert.equals(0, easeFunc(0));
        Assert.equals(1, easeFunc(1));
        for(i in 0...(STEPS + 1)) {
            var x = i / STEPS;
            if(!Math.isFinite(easeFunc(x))) {
                Assert.fail("Easing must provide finite float value in 0..1 interval");
            }
            if(toolFunc != null) {
                Assert.equals(easeFunc(x), toolFunc(x));
            }
            if(inBounds) {
                Assert.isTrue(0 <= easeFunc(x));
                Assert.isTrue(1 >= easeFunc(x));
            }
        }
    }

    public function testLinear() {
        checkEquation(Linear.easeNone);
    }

    public function testQuad() {
        checkEquation(Quad.easeIn, Tools.quadIn);
        checkEquation(Quad.easeOut, Tools.quadOut);
        checkEquation(Quad.easeInOut, Tools.quadInOut);
    }

    public function testCubic() {
        checkEquation(Cubic.easeIn, Tools.cubicIn);
        checkEquation(Cubic.easeOut, Tools.cubicOut);
        checkEquation(Cubic.easeInOut, Tools.cubicInOut);
    }

    public function testQuart() {
        checkEquation(Quart.easeIn, Tools.quartIn);
        checkEquation(Quart.easeOut, Tools.quartOut);
        checkEquation(Quart.easeInOut, Tools.quartInOut);
    }

    public function testQuint() {
        checkEquation(Quint.easeIn, Tools.quintIn);
        checkEquation(Quint.easeOut, Tools.quintOut);
        checkEquation(Quint.easeInOut, Tools.quintInOut);
    }

    public function testCirc() {
        checkEquation(Circ.easeIn, Tools.circIn);
        checkEquation(Circ.easeOut, Tools.circOut);
        checkEquation(Circ.easeInOut, Tools.circInOut);
    }

    public function testExpo() {
        checkEquation(Expo.easeIn, Tools.expoIn);
        checkEquation(Expo.easeOut, Tools.expoOut);
        checkEquation(Expo.easeInOut, Tools.expoInOut);
    }

    public function testSine() {
        checkEquation(Sine.easeIn, Tools.sineIn);
        checkEquation(Sine.easeOut, Tools.sineOut);
        checkEquation(Sine.easeInOut, Tools.sineInOut);
    }

    public function testBounce() {
        checkEquation(Bounce.easeIn, Tools.bounceIn);
        checkEquation(Bounce.easeOut, Tools.bounceOut);
        checkEquation(Bounce.easeInOut, Tools.bounceInOut);
    }

    public function testBack() {
        checkEquation(Back.easeIn, Tools.backIn, false);
        checkEquation(Back.easeOut, Tools.backOut, false);
        checkEquation(Back.easeInOut, Tools.backInOut, false);
    }

    public function testElastic() {
        checkEquation(Elastic.easeIn, Tools.elasticIn, false);
        checkEquation(Elastic.easeOut, Tools.elasticOut, false);
        checkEquation(Elastic.easeInOut, Tools.elasticInOut, false);
    }
}
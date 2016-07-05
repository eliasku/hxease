package hxease;

import utest.Assert;

using hxease.EaseTools;

class EaseTest {

    public function new() {}

    @:generic
    function checkEquation<T:IEasing>(easeInstance:T, ?toolFunc:Float->Float, inBounds:Bool = true) {
        Assert.notNull(easeInstance);
        var easeFunc:Float->Float = easeInstance.calculate;
        Assert.equals(0, easeFunc(0));
        Assert.equals(1, easeFunc(1));
        for(i in 0...101) {
            var x = i / 100;
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
        checkEquation(Quad.easeIn, EaseTools.quadIn);
        checkEquation(Quad.easeOut, EaseTools.quadOut);
        checkEquation(Quad.easeInOut, EaseTools.quadInOut);
    }

    public function testCubic() {
        checkEquation(Cubic.easeIn, EaseTools.cubicIn);
        checkEquation(Cubic.easeOut, EaseTools.cubicOut);
        checkEquation(Cubic.easeInOut, EaseTools.cubicInOut);
    }

    public function testQuart() {
        checkEquation(Quart.easeIn, EaseTools.quartIn);
        checkEquation(Quart.easeOut, EaseTools.quartOut);
        checkEquation(Quart.easeInOut, EaseTools.quartInOut);
    }

    public function testQuint() {
        checkEquation(Quint.easeIn, EaseTools.quintIn);
        checkEquation(Quint.easeOut, EaseTools.quintOut);
        checkEquation(Quint.easeInOut, EaseTools.quintInOut);
    }

    public function testCirc() {
        checkEquation(Circ.easeIn, EaseTools.circIn);
        checkEquation(Circ.easeOut, EaseTools.circOut);
        checkEquation(Circ.easeInOut, EaseTools.circInOut);
    }

    public function testExpo() {
        checkEquation(Expo.easeIn, EaseTools.expoIn);
        checkEquation(Expo.easeOut, EaseTools.expoOut);
        checkEquation(Expo.easeInOut, EaseTools.expoInOut);
    }

    public function testSine() {
        checkEquation(Sine.easeIn, EaseTools.sineIn);
        checkEquation(Sine.easeOut, EaseTools.sineOut);
        checkEquation(Sine.easeInOut, EaseTools.sineInOut);
    }

    public function testBack() {
        checkEquation(Back.easeIn, EaseTools.backIn);
        checkEquation(Back.easeOut, EaseTools.backOut);
        checkEquation(Back.easeInOut, EaseTools.backInOut);
    }

    public function testBounce() {
        checkEquation(Bounce.easeIn, EaseTools.bounceIn);
        checkEquation(Bounce.easeOut, EaseTools.bounceOut);
        checkEquation(Bounce.easeInOut, EaseTools.bounceInOut);
    }

    public function testElastic() {
        checkEquation(Elastic.easeIn, EaseTools.elasticIn);
        checkEquation(Elastic.easeOut, EaseTools.elasticOut);
        checkEquation(Elastic.easeInOut, EaseTools.elasticInOut);
    }
}
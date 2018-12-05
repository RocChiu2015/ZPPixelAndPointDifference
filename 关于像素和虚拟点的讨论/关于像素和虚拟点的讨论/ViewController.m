//
//  ViewController.m
//  关于像素和虚拟点的讨论
//
//  Created by apple on 15/11/13.
//  Copyright © 2015年 SUNCO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

/*
 *PPI(Pixels Per Inch)所表示的是每英寸所拥有的像素（Pixel）数目;DPI(Dots Per Inch)每英寸所打印的点数,这是衡量打印机打印精度的主要参数之一，一般来说，该值越大，表明打印机的打印精度越高。一个dot对应iOS上的一个逻辑point。
 *
 *各尺寸手机屏幕的参数比较：
 *(1)iPhone3G/3GS:
 *屏幕尺寸：3.5英寸
 *屏幕像素(pixel):320*480
 *逻辑点(point):320*480
 *scale:@1x
 *PPI:163
 *DPI:163
 *
 *(2)iPhone4/4S
 *屏幕尺寸：3.5英寸
 *屏幕像素(pixel):640*960
 *逻辑点(point):320*480
 *scale:@2x
 *PPI:326
 *DPI:163
 *
 *(3)iPhone5/5S/5C
 *屏幕尺寸：4英寸
 *屏幕像素(pixel):640*1136
 *逻辑点(point):320*568
 *scale:@2x
 *PPI:326
 *DPI:163
 *
 *(4)iPhone6/6S
 *屏幕尺寸：4.7英寸
 *屏幕像素(pixel):750*1334
 *逻辑点(point):375*667
 *scale:@2x
 *PPI:326
 *DPI:163
 *
 *(5)iPhone6 Plus/6S Plus
 *屏幕尺寸：5.5英寸
 *理论屏幕像素(pixel):1242*2208
 *实际屏幕像素(pixel):1080*1920
 *逻辑点(point):414*736
 *scale:@3x
 *PPI:401
 *DPI:154
 *
 *视网膜屏(Retina):当像素太密，超过300ppi的时候，人眼也就不能区分出每个像素，这个标准的屏幕就叫做视网膜屏幕，iPhone4及以上的手机都采用的是视网膜屏。
 *假设图片example.png，大小为30 x40像素（这个图片是按照PPI为163的标准做的。这里的单位是像素，数字图片的单位通常都为像素）。当这张example.png在iPhone3GS和iPhone4中使用时候，都占据屏幕上30 x 40个点。而因为iPhone4中1个点等于2个像素，也就是30x40像素的图片，占据了60 x 80像素的屏幕，因此这图片在iPhone4中看起来就会模糊。
 *由于手机屏幕的PPI不尽相同，即单位尺寸上的像素点的个数不一样，所以不同PPI的屏幕上面的像素的物理尺寸也是不一样的。但是不同PPI屏幕的虚拟点的物理尺寸是一样的，固定不变的。例如，在开发的时候在storyboard上面指定控件的坐标为(20, 30, 40, 50),代表着控件的X坐标为20个虚拟点，Y坐标为30个虚拟点，长度为40个虚拟点的距离，高度为50个虚拟点的距离。在storyboard上面不管ViewController改变成什么样的手机尺寸，之前确定的控件的大小都不会改变，依然保持在(20, 30, 40, 50)。在真机运行的时候iPhone3G/3GS、iPhone4/4S、iPhone5/5S/5C、iPhone6/6S上面的控件的物理尺寸也能保持和当初在storyboard上面设置的一样，但是在iPhone6/6SPlus上面运行的时候图片会被放大。
 *在新项目进行设计图绘制的时候，应该分别依照iPhone6和iPhone6Plus的屏幕尺寸和PPI进行1：1的绘图；切图的时候也应该按照设计图上面控件的尺寸进行切图。理论上@3x是@2x图片尺寸的1.5倍。
 *在制作设计图的时候尽量使用点这个单位进行思考，而不要使用像素。比如，你需要做44 x 66个点的按钮，2x模式，就乘以2, 3x模式就乘以3。这样的思考方式可以大致估计到真实的物理长度。44个点，就是手机上导航栏，工具栏的高度。假如用像素思考，容易使得做出的图片过大或者过小。
 *iOS界面指南写着，人类的手指有一定大小，点击区域低于44个点的时候，就难以点中，所以按钮的点击区域，不应该少于44像素，就算按钮的图片看起来比较小，也应该使得点按钮周围的透明区也有反应。
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  TriangleView.m
//  demo14_CoreGraphics
//
//  Created by LuoShimei on 16/5/15.
//  Copyright © 2016年 罗仕镁. All rights reserved.
//

#import "TriangleView.h"

@implementation TriangleView

/**
 *  使用CoreGraphics C语言的函数 绘制三角形
 *
 *  需要注意的要点：
 *  1.这个方法是什么时候执行的？在创建view的实例对象的时候，系统会自定调用一次。
 *  2.绝对不能手动调用该方法。
 *  3.上下文对象只能该方法中获取，绘制图的路径可以在这个方法的外部。但是绘图一定
 *    要在这个方法内进行实现。
 */
- (void)drawRect:(CGRect)rect{
    //1.获取系统的当前上下文对象
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //2.勾勒图形
    /** 设置图的起点 */
    CGContextMoveToPoint(context, 50, 50);
    /** 从标记的开始起点添加一条直线到点 (250, 50) */
    CGContextAddLineToPoint(context, 250, 50);
    CGContextAddLineToPoint(context, 250, 150);
    CGContextAddLineToPoint(context, 50, 150);
    CGContextAddLineToPoint(context, 50, 50);
    
    //3.设置图性格边框的颜色
    CGContextSetStrokeColorWithColor(context, [[UIColor blackColor] CGColor]);
    
    //4.设置图形边框的宽度
    CGContextSetLineWidth(context, 1);
    
    //5.绘制图片
    CGContextStrokePath(context);
}

@end

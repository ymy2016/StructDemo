//
//  SecViewController.m
//  Struct_Array
//
//  Created by 伟华 on 2017/6/6.
//  Copyright © 2017年 伟华. All rights reserved.
//

#import "SecViewController.h"
#import "Struct_Array-Swift.h"

@interface SecViewController ()

@end


@implementation SecViewController

- (instancetype)init{
 
    if (self = [super init]) {
        
        Stu s = {"谭伟华",321};
        self.stuType = s;
    }
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // OC中使用swift枚举
    ViewController *vc = [[ViewController alloc] init];
    vc.compassPoint = 2;
    
}




@end

//
//  SecViewController.h
//  Struct_Array
//
//  Created by 伟华 on 2017/6/6.
//  Copyright © 2017年 伟华. All rights reserved.
//

#import <UIKit/UIKit.h>

// 枚举
typedef NS_ENUM(NSInteger,UserType){
    
    A,
    B,
    C
};

// 结构体
typedef struct Student{
    
    char *name;
    NSInteger age;
    
}Stu;

@interface SecViewController : UIViewController

@property(nonatomic,assign)UserType userType;

@property(nonatomic,assign)Stu stuType;

@property(nonatomic,copy)NSString *name;

@end

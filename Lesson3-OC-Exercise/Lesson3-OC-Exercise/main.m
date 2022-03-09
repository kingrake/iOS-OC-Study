//
//  main.m
//  Lesson3-OC-Exercise
//
//  Created by lo on 2022/3/7.
//

#import <Foundation/Foundation.h>

@interface Phone : NSObject
{
    @public
    NSString *_color;
    NSString *_size;
    NSString *_cpu;
    
}

- (void)aboutMyPhone;

- (void)call:(NSString *)PhoneNumber;

- (void)sendMessage:(NSString *)content To: (NSString *)PhoneNumber;

@end

@implementation Phone

- (void)aboutMyPhone
{
    NSLog(@"该机为%@色，大小为%@寸，cpu为%@！"
          ,_color
          ,_size
          ,_cpu);
}

- (void)call:(NSString *)PhoneNumber
{
    NSLog(@"打电话给%@！",PhoneNumber);
}

- (void)sendMessage:(NSString *)content To:(NSString *)PhoneNumber
{
    NSLog(@"发消息%@，给%@！",content,PhoneNumber);
}

@end

@interface Book : NSObject
{
    @public
    NSString *_title;
    NSString *_ISBN;
    NSString *_writer;
    float _price;
    int _pageNumber;
}

- (void)book;

@end

@implementation Book

- (void)book
{
    NSLog(@"%@的ISBN号为：%@，作者为：%@，价格为%.2f,一共有%d页。"
          ,_title
          ,_ISBN
          ,_writer
          ,_price
          ,_pageNumber);
}

@end

@interface Computer : NSObject
{
    @public
    NSString *_brand;
    NSString *_system;
    NSString *_feature;
    int _power;
}

- (void)setup;

@end

@implementation Computer

- (void)setup
{
    NSLog(@"%@牌的电脑，操作系统是%@，配置是%@，电源功率是%d！"
          ,_brand
          ,_system
          ,_feature
          ,_power);
}

@end

@interface Team : NSObject
{
    @public
    NSString *_name;
    int _player;
    int _coach;
    int _victory;
    int _fail;
}

- (void)show;

@end

@implementation Team

- (void)show
{
    NSLog(@"%@球队的信息是：球员%d名，教练%d名，胜利%d场，失败%d场！"
          ,_name
          ,_player
          ,_coach
          ,_victory
          ,_fail);
}

@end


@interface Car : NSObject
{
    @public
    NSString *_brand;
    NSString *_model;
    NSString *_color;
    int _seatNumber;
    int _wheelNumber;
    float _oilMass;
}

- (void)drive;
- (void)stop;
- (void)tankUp;

@end

@implementation Car

- (void)drive
{
    _oilMass -= 1.00f;
    NSLog(@"现在的汽油是%.2f升",_oilMass);
}
- (void)stop
{
    NSLog(@"%@牌的汽车停下了！",_brand);
}
- (void)tankUp
{
    _oilMass += 5.00f;
    NSLog(@"加油后现在的油量是%.2f",_oilMass);
}

@end

@interface Student : NSObject
{
    @public
    NSString *_name;
    NSString *_birthday;
    int _age;
    float _height;
    float _weight;
    NSString *_sex;
    int _CScore;
    int _OCScore;
    int _iOSScore;
    
}

- (void)run;
- (void)eat;
- (void)study;
- (void)sleep;
- (int)sum;
- (int)average;

@end

@implementation Student

    - (void)run
    {
        NSLog(@"%@说跑步有益健康，身高增加，体重减小！",_name);
        _height += 1.0f;
        _weight -= 0.5f;
        NSLog(@"跑完步，%@的身高是%.2f,体重是%.2f!"
              ,_name
              ,_height
              ,_weight);
        
    }
    - (void)eat
        {
            NSLog(@"%@说吃饭有益健康，身高增加，体重增加！",_name);
            _height += 1.0f;
            _weight += 0.5f;
            NSLog(@"吃完饭，%@的身高是%.2f,体重是%.2f!"
                  ,_name
                  ,_height
                  ,_weight);        }
    - (void)study
            {
                NSLog(@"学习使人进步，我的成绩要提高！");
                _CScore +=  1;
                _OCScore += 1;
                _iOSScore +=1;
                NSLog(@"学习完，%@的C语言成绩是%d,OC语言成绩是%d，iOS成绩是%d！"
                      ,_name
                      ,_CScore
                      ,_OCScore
                      ,_iOSScore);
            }
    - (void)sleep
                {
                    NSLog(@"我是%@，我是%@人，我要睡觉了，我的身高是%.2f，我的体重是%.2f，我的C语言成绩是%d，我的OC语言成绩是%d，我的iOS成绩是%d。"
                          ,_name
                          ,_sex
                          ,_height
                          ,_weight
                          ,_CScore
                          ,_OCScore
                          ,_iOSScore);
                }
    - (int)sum
                {
                    return (_CScore + _OCScore + _iOSScore);
                }

    - (int)average
                {
                    return ((_CScore + _OCScore + _iOSScore)/3);
                }

@end

@interface Dog : NSObject
{
    @public
    NSString *_name;
    NSString *_bodyColor;
    float _speed;
    NSString *_sex;
    float _weight;
}

- (void)eat;
- (void)shout;
- (void)run;

@end

@implementation Dog

    - (void)eat
    {
        NSLog(@"小狗%@喜欢吃吃吃！",_name);
        _weight += 0.5f;
        NSLog(@"小狗%@又重了0.5达到%.2f",_name,_weight);
        
    }
    - (void)shout
    {
        NSLog(@"喜欢对人叫叫叫的小狗%@颜色是%@,速度是%.2f,性别是%@，体重是%.2f！"
              ,_name
              ,_bodyColor
              ,_speed
              ,_sex
              ,_weight);
    }
    - (void)run
    {
        NSLog(@"小狗喜欢跑跑跑！");
        _weight -= 0.5f;
        NSLog(@"小狗狗又轻了0.5，体重剩下%.2f",_weight);
    }
    
@end

int main(int argc, const char * argv[]) {
    
    Phone *iPhone = [Phone new];
    iPhone -> _color = @"红";
    iPhone -> _size = @"5.8";
    iPhone -> _cpu = @"A10";
    
    NSString *Number = @"13766257778";
    NSString *content = @"'快来吃饭'";
    
    [iPhone aboutMyPhone];
    [iPhone call:Number];
    [iPhone sendMessage:content To:Number];
    
    
//    Book *newBook = [Book new];
//    newBook -> _title = @"《底层逻辑》";
//    newBook -> _ISBN = @"9787572603174";
//    newBook -> _writer = @"吕白";
//    newBook -> _price = 23.00f;
//    newBook -> _pageNumber = 259;
//
//    [newBook book];
    
//    Computer *myComputer = [Computer new];
//    myComputer -> _brand = @"组装";
//    myComputer -> _system = @"Windows11";
//    myComputer -> _feature = @"i7,16G,XR580";
//    myComputer -> _power = 500;
//
//    [myComputer setup];
//
//    Team *redTeam = [Team new];
//    redTeam -> _name = @"红队";
//    redTeam -> _player = 12;
//    redTeam -> _coach = 3;
//    redTeam -> _victory = 20;
//    redTeam -> _fail = 18;
//
//    [redTeam show];
//
//    Car *dongDongCar = [Car new];
//
//    dongDongCar -> _brand = @"宝马";
//    dongDongCar -> _model = @"X3";
//    dongDongCar -> _color = @"白色";
//    dongDongCar -> _seatNumber = 6;
//    dongDongCar -> _wheelNumber = 4;
//    dongDongCar -> _oilMass = 125.00f;
//
//    [dongDongCar drive];
//    [dongDongCar drive];
//    [dongDongCar drive];
//    [dongDongCar stop];
//    [dongDongCar tankUp];
//
    
    
//    Student *wangPai = [Student new];
//
//    wangPai -> _name = @"王牌学生";
//    wangPai -> _birthday = @"1975-12-05";
//    wangPai -> _age = 26;
//    wangPai -> _height = 170.00f;
//    wangPai -> _weight = 170.00f;
//    wangPai -> _sex = @"男";
//    wangPai -> _CScore = 90;
//    wangPai -> _OCScore = 85;
//    wangPai -> _iOSScore = 92;
//
//
//    [wangPai eat];
//    [wangPai run];
//    [wangPai study];
//
//    [wangPai run];
//    [wangPai run];
//    [wangPai eat];
//    [wangPai study];
//
//    [wangPai sleep];
//    int sum = [wangPai sum];
//    int average = [wangPai average];
//
//    NSLog(@"%@的成绩总分为%d",wangPai->_name
//          ,sum);
//    NSLog(@"%@的平均分为%d",wangPai->_name
//        ,average);
    
    
//    Dog *laiFu = [Dog new];
//
//    laiFu -> _name =@"来福";
//    laiFu -> _bodyColor = @"白色";
//    laiFu -> _speed = 15.0f;
//    laiFu -> _sex = @"公狗";
//    laiFu -> _weight = 20.0f;
//
//    [laiFu eat];
//    [laiFu shout];
//    [laiFu run];
//    [laiFu eat];
//    [laiFu eat];
//    [laiFu eat];
//    [laiFu run];
//    [laiFu shout];
//    [laiFu run];
//
    
    
    return 0;
}

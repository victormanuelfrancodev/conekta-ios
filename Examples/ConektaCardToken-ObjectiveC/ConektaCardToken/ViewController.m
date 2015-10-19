//
//  ViewController.m
//  ConektaCardToken
//
//  Created by Julian Ceballos on 10/16/15.
//  Copyright © 2015 Conekta. All rights reserved.
//

#import "ViewController.h"
#import "Conekta.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    Conekta *conekta = [[Conekta alloc] init];
    
    [conekta setPublicKey:@"key_KJysdbf6PotS2ut2"];
    
    Card *card = [conekta.Card initWithNumber: @"4242424242424242" name: @"Julian Ceballos" cvc: @"123" expMonth: @"10" expYear: @"2018"];
    
    Token *token = [conekta.Token initWithCard:card];
    
    [token createWithSuccess: ^(NSDictionary *data) {
        NSLog(@"%@", data);
    } andError: ^(NSError *error) {
        NSLog(@"%@", error);
    }];
    
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

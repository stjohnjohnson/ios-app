//
//  GFMenuViewControllerTests.m
//  Geofancy
//
//  Created by Marcus Kida on 12.04.14.
//  Copyright (c) 2014 Marcus Kida. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GFMenuViewController.h"

SpecBegin(GFMenuViewControllerTestsSpec)

__block GFMenuViewController *sut = nil;

beforeEach(^{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle bundleForClass:[GFMenuViewController class]]];
    sut = [storyboard instantiateViewControllerWithIdentifier:@"Menu"];
});

afterEach(^{
    sut = nil;
});

describe(@"the viewcontroller for the menu", ^{
    it(@"should be instance of correct class", ^{
        expect(sut).to.beInstanceOf(GFMenuViewController.class);
    });
    
    it(@"should have a data source", ^{
        expect(sut.tableView.dataSource).toNot.beNil;
    });
    
    it(@"should have a delegate", ^{
        expect(sut.tableView.delegate).toNot.beNil;
    });
});

SpecEnd

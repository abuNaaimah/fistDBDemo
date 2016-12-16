//
//  DataService.h
//  fistDBDemo
//
//  Created by tops on 8/30/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
#import "AppDelegate.h"


@interface DataService : NSObject
{
    AppDelegate *appDel;
    sqlite3 *sqLite;
}

@property (strong, nonatomic) NSString *strDBConnection;

-(BOOL) IUDOperations:(NSString *)strQuery;
-(NSMutableArray *) SOperations:(NSString *)strQuery;


@end

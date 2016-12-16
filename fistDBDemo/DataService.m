//
//  DataService.m
//  fistDBDemo
//
//  Created by tops on 8/30/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import "DataService.h"

@implementation DataService
@synthesize strDBConnection;

-(id)init{
    
    appDel = [[UIApplication sharedApplication]delegate];
    strDBConnection = appDel.connectionPath;
    return self;
}

-(BOOL) IUDOperations:(NSString *)strQuery{
    
    BOOL status = false;
    
    if (sqlite3_open([strDBConnection UTF8String], &sqLite) == SQLITE_OK) {
        
        sqlite3_stmt *nonQuery;
        if (sqlite3_prepare_v2(sqLite, [strQuery UTF8String], -1, &nonQuery, nil) == SQLITE_OK) {
            
            sqlite3_step(nonQuery);
            status = true;
        }
        sqlite3_finalize(nonQuery);
    }
    sqlite3_close(sqLite);
    return status;
}

-(NSMutableArray *)SOperations:(NSString *)strQuery{
    
    NSMutableArray *resultArr = [[NSMutableArray alloc]init];
    
    if (sqlite3_open([strDBConnection UTF8String], &sqLite) == SQLITE_ROW) {
        <#statements#>
    }
}

@end

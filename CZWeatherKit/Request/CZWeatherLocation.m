//
//  CZWeatherLocation.m
//  Copyright (c) 2014, Comyar Zaheri, http://comyar.io
//  All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are met:
//
//  * Redistributions of source code must retain the above copyright notice, this
//    list of conditions and the following disclaimer.
//
//  * Redistributions in binary form must reproduce the above copyright notice,
//    this list of conditions and the following disclaimer in the documentation
//    and/or other materials provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


#pragma mark - Imports

#import "CZWeatherLocation.h"


#pragma mark - Constants

NSString * const CZWeatherLocationCityName          = @"CZWeatherLocationCityName";
NSString * const CZWeatherLocationStateName         = @"CZWeatherLocationStateName";
NSString * const CZWeatherLocationCountryName       = @"CZWeatherLocationCountryName";
NSString * const CZWeatherLocationZipcodeName       = @"CZWeatherLocationZipcodeName";
NSString * const CZWeatherLocationCoordinateName    = @"CZWeatherLocationCoordinateName";


#pragma mark - CZWeatherLocation Class Extension

@interface CZWeatherLocation ()

//
@property (nonatomic) NSDictionary          *userData;

//
@property (nonatomic) CZWeatherLocationType locationType;

@end


#pragma mark - CZWeatherLocation Implementation

@implementation CZWeatherLocation

- (instancetype)initWithType:(CZWeatherLocationType)locationType
{
    if (self = [super init]) {
        self.locationType = locationType;
    }
    return self;
}

+ (CZWeatherLocation *)locationWithAutoIP
{
    CZWeatherLocation *location = [[CZWeatherLocation alloc]initWithType:CZWeatherLocationAutoIPType];
    return location;
}

+ (CZWeatherLocation *)locationWithZipcode:(NSString *)zipcode
{
    CZWeatherLocation *location = [[CZWeatherLocation alloc]initWithType:CZWeatherLocationZipcodeType];
    location.userData = @{CZWeatherLocationZipcodeName: zipcode};
    return location;
}

@end

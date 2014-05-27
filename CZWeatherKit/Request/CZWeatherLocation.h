//
//  CZWeatherLocation.h
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

@import Foundation;
@import CoreLocation;


#pragma mark - CZWeatherLocation Interface

@interface CZWeatherLocation : NSObject

// -----
// @name Creating a Weather Location
// -----

#pragma mark Creating a Weather Location

/**
 Creates a location object with the user's current IP address.
 @return Newly created location object.
 */
+ (CZWeatherLocation *)locationWithAutoIP;

/**
 Creates a location object with a U.S. zipcode.
 @return Newly created location object.
 */
+ (CZWeatherLocation *)locationWithZipcode:(NSString *)zipcode;

/**
 Creates a location object with a CLLocation object.
 @return Newly created location object.
 */
+ (CZWeatherLocation *)locationWithCLLocation:(CLLocation *)location;

/**
 Creates a location object with a CLPlacemark object.
 @return Newly created location object.
 */
+ (CZWeatherLocation *)locationWithCLPlacemark:(CLPlacemark *)placemark;

/**
 Creates a location object with a city and U.S. state name.
 @return Newly created location object.
 */
+ (CZWeatherLocation *)locationWithCity:(NSString *)city state:(NSString *)state;

/**
 Creates a location object with a city and country name.
 @return Newly created location object.
 */
+ (CZWeatherLocation *)locationWithCity:(NSString *)city country:(NSString *)country;

/**
 Creates a location object with a CLLocationCoordinate2D.
 @return Newly created location object.
 */
+ (CZWeatherLocation *)locationWithCLLocationCoordinate2D:(CLLocationCoordinate2D)coordinate;

@end

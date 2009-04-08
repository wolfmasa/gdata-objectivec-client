/* Copyright (c) 2008 Google Inc.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

//
//  GDataFeedYouTubeUserProfile.m
//

#import "GDataFeedYouTubeUserProfile.h"
#import "GDataEntryYouTubeVideo.h"

@implementation GDataFeedYouTubeUserProfile

+ (GDataFeedYouTubeUserProfile *)userProfileFeed {
  
  GDataFeedYouTubeUserProfile *feed = [[[self alloc] init] autorelease];
  
  [feed setNamespaces:[GDataEntryYouTubeVideo youTubeNamespaces]];
  
  return feed;
}

+ (NSString *)standardFeedKind {
  return kGDataCategoryYouTubeUserProfile;
}

+ (void)load {
  [self registerFeedClass];
}

- (Class)classForEntries {
  return kUseRegisteredEntryClass;
}

+ (NSString *)defaultServiceVersion {
  return kGDataYouTubeDefaultServiceVersion;
}

@end
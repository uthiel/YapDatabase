#import "YapDatabaseCloudKitOptions.h"

@implementation YapDatabaseCloudKitOptions

- (instancetype)init
{
	self = [super init];
	if (self) {
		_savePolicy = CKRecordSaveIfServerRecordUnchanged;
	}
	return self;
}

@synthesize allowedCollections = allowedCollections;

- (id)copyWithZone:(NSZone *)zone
{
	YapDatabaseCloudKitOptions *copy = [[[self class] alloc] init]; // [self class] required to support subclassing
	copy->allowedCollections = allowedCollections;
	copy.savePolicy	= _savePolicy;

	return copy;
}

@end

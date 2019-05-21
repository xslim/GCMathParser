#import "GCExpressionController.h"
#import "GCMathParser.h"

@implementation GCExpressionController

- (IBAction)	evaluate:(id) sender
{
	NSString*	input = [expInputTextField stringValue];
	
	if([input length] > 0 )
	{
		if ( _parser == nil )
			[expResultTextField setDoubleValue:[input evaluateMath]];
		else
			[expResultTextField setDoubleValue:[_parser evaluate:input]];
	}
}


- (IBAction)	retainParserAction:(id) sender
{
	if ([sender intValue] == 1 && _parser == nil )
	{
		_parser = [[GCMathParser alloc] init];
	}
	else if ([sender intValue] == 0 && _parser != nil )
	{
		[_parser release];
		_parser = nil;
	}
}

@end

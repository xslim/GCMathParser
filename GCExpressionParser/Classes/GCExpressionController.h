/* GCExpressionController */

#import <Cocoa/Cocoa.h>

@class GCMathParser;

@interface GCExpressionController : NSObject
{
    IBOutlet id expEvaluateButton;
    IBOutlet id expInputTextField;
    IBOutlet id expResultTextField;
	IBOutlet id	retainParserCheckbox;
	
	GCMathParser*	_parser;
}


- (IBAction)	evaluate:(id) sender;
- (IBAction)	retainParserAction:(id) sender;

@end
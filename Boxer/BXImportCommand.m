/* 
 Boxer is copyright 2010 Alun Bestor and contributors.
 Boxer is released under the GNU General Public License 2.0. A full copy of this license can be
 found in this XCode project at Resources/English.lproj/GNU General Public License.txt, or read
 online at [http://www.gnu.org/licenses/gpl-2.0.txt].
 */


#import "BXImportCommand.h"
#import "BXAppController.h"

@implementation BXImportCommand

- (id) performDefaultImplementation
{
	NSURL *fileURL = [self directParameter];
	NSError *importError = nil;
	[[NSApp delegate] openImportSessionWithContentsOfURL: fileURL display: YES error: &importError];
	
	if (importError)
	{
		[self setScriptErrorNumber: [importError code]];
		[self setScriptErrorString: [importError localizedDescription]];
	}
	return nil;
}
@end

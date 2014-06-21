@interface RootViewController (SegueWorkaround)
- (IBAction)settingsDone: (UIStoryboardSegue *)segue;
- (IBAction)settingsCancel: (UIStoryboardSegue *)segue;

- (IBAction)roll: (NSObject *)sender;
@end

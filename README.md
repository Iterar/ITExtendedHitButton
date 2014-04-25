# ITExtendedButton

An UIButton subclass with extended and custom hit area.

## Instructions

Just use it as a normal UIButton. The only difference is that you can set the hitEdge property which enlarges the tappable area that surrounds it.

``` objective-c
@interface ITViewController ()

@property (nonatomic, strong) IBOutlet ITExtendedHitButton *extendedStoryBoardButton;
@property (nonatomic, strong) ITExtendedHitButton *extendedButton;

@end

@implementation ITViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Created in storyboard
    self.extendedStoryBoardButton.hitEdge = 50.0f;
    
    // Created programmatically
    self.extendedButton = [ITExtendedHitButton buttonWithType:UIButtonTypeSystem];
    [self.extendedButton setFrame:CGRectMake(100, 450, 140, 20)];
    [self.extendedButton setTitle:@"Extended button" forState:UIControlStateNormal];
    self.extendedButton.hitEdge = 70.0f;
    [self.view addSubview:self.extendedButton];
}

@end
```

## Contact

- http://github.com/andresousa
- http://twitter.com/_andre_sousa
- andre@iterar.co

## License

ITExtendedButton is available under the MIT license. See the LICENSE file for more info.
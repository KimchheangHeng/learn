/*
 Copyright (C) 2017 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 The detail view controller for editing the title and notes of an item.
 */

#import "MyViewController.h"
#import "DataSource.h"
#import "Item.h"

static NSString *kUnsavedItemKey = @"unsavedItemKey";

#ifdef MANUALLY_CREATE_VC_FOR_RESTORATION
@interface MyViewController () <UIViewControllerRestoration>
#else
@interface MyViewController ()
#endif

// note that the UITextField and UITextView have restoration identifiers in the storyboard,
// which will help save their selection and scroll position
//
@property (nonatomic, weak) IBOutlet UITextField *editField;
@property (nonatomic, weak) IBOutlet UITextView *textView;

@property (nonatomic, strong) IBOutlet UIBarButtonItem *saveButton;

@end


#pragma mark -

@implementation MyViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    // note: usually we set the restoration identifier in the storyboard, but if you want
    // to do it in code, do it here
    //
#ifdef MANUALLY_CREATE_VC_FOR_RESTORATION
    self.restorationClass = [self class];
#endif
}

- (void)setupWithItem
{
    if (self.item != nil)
    {
        self.editField.text = self.item.title;
        self.textView.text = self.item.notes;
        self.title = self.item.title;
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(editFieldChanged:)
                                                 name:UITextFieldTextDidChangeNotification
                                               object:self.editField];
    
    [self.textView becomeFirstResponder];  // we want the keyboard up when this view appears
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];

    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UITextFieldTextDidChangeNotification
                                                  object:self.editField];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupWithItem];
}


#pragma mark - UIStateRestoration

// this is called when the app is suspended to the background
- (void)encodeRestorableStateWithCoder:(NSCoder *)coder
{
    NSLog(@"MyViewController: encodeRestorableStateWithCoder");
    
    [super encodeRestorableStateWithCoder:coder];
    
    // save off any recent changes first since we are about to be suspended
    self.item.notes = self.textView.text;
    self.item.title = self.editField.text;
    
    [[DataSource sharedInstance] save];
    
    // encode only its UUID (identifier), and later we get back the item by searching for its UUID
    [coder encodeObject:self.item.identifier forKey:kUnsavedItemKey];
}

// this is called when the app is re-launched
- (void)decodeRestorableStateWithCoder:(NSCoder *)coder
{
    // important: don't affect our views just yet, we might not visible or we aren't the current
    // view controller, save off our ivars and restore our text view in viewWillAppear
    //
    NSLog(@"MyViewController: decodeRestorableStateWithCoder");
    
    [super decodeRestorableStateWithCoder:coder];
    
    // decode the edited item
    if ([coder containsValueForKey:kUnsavedItemKey])
    {
        // unarchive the UUID (identifier) and search for the item by its UUID
        NSString *identifier = [coder decodeObjectForKey:kUnsavedItemKey];
        self.item = [[DataSource sharedInstance] itemWithIdentifier:identifier];
        [self setupWithItem];
    }
}


#pragma mark - UIViewControllerRestoration

#ifdef MANUALLY_CREATE_VC_FOR_RESTORATION
+ (UIViewController *)viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents coder:(NSCoder *)coder
{
    NSLog(@"MyViewController: viewControllerWithRestorationIdentifierPath called for %@", identifierComponents);
    
    MyViewController *vc = nil;
    
    // get our main storyboard to obtain our view controller
    UIStoryboard *storyboard = [coder decodeObjectForKey:UIStateRestorationViewControllerStoryboardKey];
    if (storyboard)
    {
        vc = (MyViewController *)[storyboard instantiateViewControllerWithIdentifier:@"viewController"];
        vc.restorationIdentifier = [identifierComponents lastObject];
        vc.restorationClass = [MyViewController class];
    }
    return vc;
}
#endif


#pragma mark - Actions

- (IBAction)saveAction:(id)sender
{
    // user tapped the Save button, save the contents
    //
    [self.textView resignFirstResponder];
    
    [self dismissViewControllerAnimated:YES completion:^{
            
        self.item.notes = self.textView.text;
        self.item.title = self.editField.text;
        
        [self.delegate editHasEnded:self withItem:self.item];
    }];
}

- (IBAction)cancelAction:(id)sender
{
    // user tapped the Cancel button, don't save
    //
    [self.textView resignFirstResponder];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)editFieldChanged:(NSNotification *)notif
{
    // disable the Save button if there is no text for the title
    UITextField *textField = [notif object];
    self.saveButton.enabled = textField.text.length > 0;
}

@end


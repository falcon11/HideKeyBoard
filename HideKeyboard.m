-(void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UITextField *textField=[[UITextField alloc]initWithFrame:CGRectMake(10, 100, 200, 200)];
    textField.backgroundColor=[UIColor redColor];
    [self.view addSubview:textField];
    
}

//第一种收起键盘的方法
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

//第二种收起键盘的方法
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}

//第三种收起键盘的方法
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[[UIApplication sharedApplication] keyWindow] endEditing:YES];
}

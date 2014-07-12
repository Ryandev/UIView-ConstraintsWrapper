UIView-ConstraintsWrapper
=========

UIView category that allows save on writing of boiler plate code and makes for more readable constraints layout too.


Before
```
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:myview
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:1.0f
                                                           constant:0.0f]];
```

After
```
    [self.view addConstraint:[myview constraintWidthEqualToSuperView]];
```


Example
--------------

```
    UIView *red = [UIView new];
    red.backgroundColor = [UIColor redColor];
    red.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:red];
    
    [self.view addConstraint:[red constraintX:0.0f]];
    [self.view addConstraint:[red constraintY:0.0f]];
    [self.view addConstraint:[red constraintPinRightToCenterOfSuperview]];
    [self.view addConstraint:[red constraintPinBottomToCenterOfSuperview]];

    
    UIView *green = [UIView new];
    green.backgroundColor = [UIColor greenColor];
    green.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:green];
    
    [self.view addConstraint:[green constraintY:0.0f]];
    [self.view addConstraint:[green constraintPinRightToSuperview]];
    [self.view addConstraint:[green constraintPinLeftToCenterOfSuperview]];
    [self.view addConstraint:[green constraintPinBottomToCenterOfSuperview]];

    
    UIView *blue = [UIView new];
    blue.backgroundColor = [UIColor blueColor];
    blue.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:blue];
    
    [self.view addConstraint:[blue constraintX:0.0f]];
    [self.view addConstraint:[blue constraintPinTopToCenterOfSuperview]];
    [self.view addConstraint:[blue constraintPinRightToCenterOfSuperview]];
    [self.view addConstraint:[blue constraintPinBottomToSuperview]];

    
    UIView *yellow = [UIView new];
    yellow.backgroundColor = [UIColor yellowColor];
    yellow.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:yellow];
    
    [self.view addConstraint:[yellow constraintPinLeftToCenterOfSuperview]];
    [self.view addConstraint:[yellow constraintPinRightToSuperview]];
    [self.view addConstraint:[yellow constraintPinTopToCenterOfSuperview]];
    [self.view addConstraint:[yellow constraintPinBottomToSuperview]];
```

Output of above example
![Example Image](/example.png?raw=true "Example Image")


License
----

[BSD 3-Clause](http://www.opensource.org/licenses/BSD-3-Clause)

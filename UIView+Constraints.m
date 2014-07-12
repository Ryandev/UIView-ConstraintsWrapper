/**
 @file
 Wrapper for NSLayoutConstraints
 
 @author Ryan Powell
 @date 07-10-14
 @copyright Copyright (c) 2014  Ryan Powell
 @licence http://www.opensource.org/licenses/BSD-3-Clause
 */


#import "UIView+Constraints.h"


@implementation UIView (Constraints)


+ (CGFloat)standardSpacingBetweenSiblings
{
    /* http://stackoverflow.com/questions/14055900/what-constant-can-i-use-for-the-default-aqua-space-in-autolayout */
    static CGFloat value;
    
    if ( !isnormal(value) )
    {
        UIView *view = [[UIView alloc] initWithFrame:CGRectZero];

        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintsWithVisualFormat:@"[view]-[view]"
                                                                                 options:0
                                                                                 metrics:nil
                                                                                   views:NSDictionaryOfVariableBindings(view)][0];

        value = constraint.constant; /* 8.0 expected */

#if !__has_feature(objc_arc)
        [view release];
#endif
    }
    return value;
}


+ (CGFloat)standardSpacingBetweenSuperview
{
    static CGFloat value;
    
    if ( !isnormal(value) )
    {
        UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
        UIView *superview = [[UIView alloc] initWithFrame:CGRectZero];

        [superview addSubview:view];
        
        NSLayoutConstraint* constraint = [NSLayoutConstraint constraintsWithVisualFormat:@"[view]-|"
                                                                                 options:0
                                                                                 metrics:nil
                                                                                   views:NSDictionaryOfVariableBindings(view)][0] ;

        value = constraint.constant; /* 20.0 expected */
        
#if !__has_feature(objc_arc)
        [view release];
        [superview release];
#endif
    }

    return value;
}


-(NSArray*) constraintsForFrame
{
    NSLayoutConstraint *constrX = [self constraintX:self.frame.origin.x];
    NSLayoutConstraint *constrY = [self constraintY:self.frame.origin.y];
    NSLayoutConstraint *constrWidth = [self constraintWidth:self.frame.size.width];
    NSLayoutConstraint *constrHeight = [self constraintHeight:self.frame.size.height];
    
    return @[constrX,constrY,constrWidth,constrHeight];
}


#pragma mark - constraint center x


-(NSLayoutConstraint*) constraintCenterXToSuperview
{
    assert(self.superview!=nil);
    return [self constraintCenterXToView:self.superview withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintCenterXToSuperviewWithPadding:(CGFloat)padding
{
    assert(self.superview!=nil);
    return [self constraintCenterXToView:self.superview withPadding:padding];
}

-(NSLayoutConstraint*) constraintCenterXToView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintCenterXToView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintCenterXToView:(UIView*)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint center y


-(NSLayoutConstraint*) constraintCenterYToSuperview
{
    assert(self.superview!=nil);
    return [self constraintCenterYToView:self.superview withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintCenterYToSuperviewWithPadding:(CGFloat)padding
{
    assert(self.superview!=nil);
    return [self constraintCenterYToView:self.superview withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintCenterYToView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintCenterYToView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintCenterYToView:(UIView*)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeCenterY
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeCenterY
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint x


-(NSLayoutConstraint*) constraintX:(CGFloat)x
{
    assert(self.superview!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeLeading
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.superview
                                              attribute:NSLayoutAttributeLeft
                                             multiplier:1.0f
                                               constant:x];
    
    return constraint;
}

-(NSLayoutConstraint*) constraintXEqualToSuperView
{
    assert(self.superview!=nil);
    return [self constraintXEqualToView:self.superview withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintXEqualToSuperViewWithPadding:(CGFloat)padding
{
    assert(self.superview!=nil);
    return [self constraintXEqualToView:self.superview withPadding:padding];
}

-(NSLayoutConstraint*) constraintXEqualToView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintXEqualToView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintXEqualToView:(UIView*)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeLeft
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeLeft
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint y


-(NSLayoutConstraint*) constraintY:(CGFloat)y
{
    assert(self.superview!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.superview
                                              attribute:NSLayoutAttributeTop
                                             multiplier:1.0f
                                               constant:y];
    
    return constraint;
}

-(NSLayoutConstraint*) constraintYEqualToSuperView
{
    assert(self.superview!=nil);
    return [self constraintYEqualToView:self.superview withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintYEqualToSuperViewWithPadding:(CGFloat)padding
{
    assert(self.superview!=nil);
    return [self constraintYEqualToView:self.superview withPadding:padding];
}

-(NSLayoutConstraint*) constraintYEqualToView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintYEqualToView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintYEqualToView:(UIView*)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeTop
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint width


-(NSLayoutConstraint*) constraintWidth:(CGFloat)width
{
    NSLayoutConstraint *constraint = nil;

    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:NSLayoutAttributeNotAnAttribute
                                             multiplier:1.0f
                                               constant:width];

    return constraint;
}

-(NSLayoutConstraint*) constraintWidthEqualToSuperView
{
    assert(self.superview!=nil);
    return [self constraintWidthEqualToView:self.superview withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintWidthEqualToSuperViewWithPadding:(CGFloat)padding
{
    assert(self.superview!=nil);
    return [self constraintWidthEqualToView:self.superview withPadding:padding];
}

-(NSLayoutConstraint*) constraintWidthEqualToView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintWidthEqualToView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintWidthEqualToView:(UIView*)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeWidth
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint height


-(NSLayoutConstraint*) constraintHeight:(CGFloat)height
{
    NSLayoutConstraint *constraint = nil;

    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:NSLayoutAttributeNotAnAttribute
                                             multiplier:1.0f
                                               constant:height];
    
    return constraint;
}

-(NSLayoutConstraint*) constraintHeightEqualToSuperView
{
    assert(self.superview!=nil);
    return [self constraintHeightEqualToView:self.superview withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintHeightEqualToSuperViewWithPadding:(CGFloat)padding
{
    assert(self.superview!=nil);
    return [self constraintHeightEqualToView:self.superview withPadding:padding];
}

-(NSLayoutConstraint*) constraintHeightEqualToView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintHeightEqualToView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintHeightEqualToView:(UIView*)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeHeight
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint pin left of


-(NSLayoutConstraint*) constraintPinLeftOfView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintPinLeftOfView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinLeftOfView:(UIView*)view withPadding:(CGFloat)padding
{
    NSLayoutConstraint *constraint = nil;
    
    assert(view!=nil);
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeRight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeLeft
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint pin right of


-(NSLayoutConstraint*) constraintPinRightOfView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintPinRightOfView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinRightOfView:(UIView*)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeLeft
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeRight
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint pin above


-(NSLayoutConstraint*) constraintPinAboveView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintPinAboveView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinAboveView:(UIView*)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeTop
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint pin below


-(NSLayoutConstraint*) constraintPinBelowView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintPinBelowView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinBelowView:(UIView*)view withPadding:(CGFloat)padding
{
    NSLayoutConstraint *constraint = nil;
    
    assert(view!=nil);
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint pin right


-(NSLayoutConstraint*) constraintPinRightToSuperview
{
    assert(self.superview!=nil);
    return [self constraintRightEqualToView:self.superview withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinRightToSuperviewWithPadding:(CGFloat)padding
{
    assert(self.superview!=nil);
    return [self constraintRightEqualToView:self.superview withPadding:padding];
}

-(NSLayoutConstraint*) constraintRightEqualToView:(UIView *)view
{
    assert(view!=nil);
    return [self constraintRightEqualToView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintRightEqualToView:(UIView *)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeRight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeRight
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint pin bottom


-(NSLayoutConstraint*) constraintPinBottomToSuperview
{
    assert(self.superview!=nil);
    return [self constraintBottomEqualToView:self.superview withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinBottomToSuperviewWithPadding:(CGFloat)padding
{
    assert(self.superview!=nil);
    return [self constraintBottomEqualToView:self.superview withPadding:padding];
}

-(NSLayoutConstraint*) constraintBottomEqualToView:(UIView *)view
{
    assert(view!=nil);
    return [self constraintBottomEqualToView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintBottomEqualToView:(UIView *)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint pin self.top to view.center


-(NSLayoutConstraint*) constraintPinTopToCenterOfSuperview
{
    assert(self.superview!=nil);
    return [self constraintPinTopToCenterOfView:self.superview withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinTopToCenterOfSuperviewWithPadding:(CGFloat)padding
{
    assert(self.superview!=nil);
    return [self constraintPinTopToCenterOfView:self.superview withPadding:padding];
}

-(NSLayoutConstraint*) constraintPinTopToCenterOfView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintPinTopToCenterOfView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinTopToCenterOfView:(UIView*)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeCenterY
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint pin self.bottom to view.center


-(NSLayoutConstraint*) constraintPinBottomToCenterOfSuperview;
{
    assert(self.superview!=nil);
    return [self constraintPinBottomToCenterOfView:self.superview withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinBottomToCenterOfSuperviewWithPadding:(CGFloat)padding
{
    assert(self.superview!=nil);
    return [self constraintPinBottomToCenterOfView:self.superview withPadding:padding];
}

-(NSLayoutConstraint*) constraintPinBottomToCenterOfView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintPinBottomToCenterOfView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinBottomToCenterOfView:(UIView*)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeCenterY
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint pin self.left to view.center


-(NSLayoutConstraint*) constraintPinLeftToCenterOfSuperview
{
    assert(self.superview!=nil);
    return [self constraintPinLeftToCenterOfView:self.superview withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinLeftToCenterOfSuperviewWithPadding:(CGFloat)padding
{
    assert(self.superview!=nil);
    return [self constraintPinLeftToCenterOfView:self.superview withPadding:padding];
}

-(NSLayoutConstraint*) constraintPinLeftToCenterOfView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintPinLeftToCenterOfView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinLeftToCenterOfView:(UIView*)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeLeft
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


#pragma mark - constraint pin self.right to view.center


-(NSLayoutConstraint*) constraintPinRightToCenterOfSuperview
{
    assert(self.superview!=nil);
    return [self constraintPinRightToCenterOfView:self.superview withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinRightToCenterOfSuperviewWithPadding:(CGFloat)padding
{
    assert(self.superview!=nil);
    return [self constraintPinRightToCenterOfView:self.superview withPadding:padding];
}

-(NSLayoutConstraint*) constraintPinRightToCenterOfView:(UIView*)view
{
    assert(view!=nil);
    return [self constraintPinRightToCenterOfView:view withPadding:0.0f];
}

-(NSLayoutConstraint*) constraintPinRightToCenterOfView:(UIView*)view withPadding:(CGFloat)padding
{
    assert(view!=nil);
    
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeRight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:view
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1.0f
                                               constant:padding];
    
    return constraint;
}


@end

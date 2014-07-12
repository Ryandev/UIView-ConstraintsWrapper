/**
 @file
 Wrapper for NSLayoutConstraints
 
 @author Ryan Powell
 @date 03-10-11
 @copyright Copyright (c) 2014  Ryan Powell
 @licence http://www.opensource.org/licenses/BSD-3-Clause
 */


#import <UIKit/UIKit.h>


@interface UIView (ConstraintsFacade)


/**
 @brief retrieve the standard spacing between sibling views
 */
+(CGFloat) systemSpacingBetweenSiblings;


/**
 @brief retrieve the standard spacing between views and their parents
 */
+(CGFloat) systemSpacingBetweenSuperview;


/**
 @brief using the frame property construct a constraint for each attribute
 */
-(NSArray*) constraintsForFrame;


/**
 @brief center this view within the superview on the horizontal axis
 */
-(NSLayoutConstraint*) constraintCenterXToSuperview;


/**
 @brief center this view within the superview on the horizontal axis and add #padding
 */
-(NSLayoutConstraint*) constraintCenterXToSuperviewWithPadding:(CGFloat)padding;


/**
 @brief center this view to #view on the horizontal axis
 */
-(NSLayoutConstraint*) constraintCenterXToView:(UIView*)view;


/**
 @brief center this view to #view on the horizontal axis and add padding
 */
-(NSLayoutConstraint*) constraintCenterXToView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief center this view to the superview on the vertical axis
 */
-(NSLayoutConstraint*) constraintCenterYToSuperview;


/**
 @brief center this view to the superview on the vertical axis and add #padding
 */
-(NSLayoutConstraint*) constraintCenterYToSuperviewWithPadding:(CGFloat)padding;


/**
 @brief center this view to #view on the vertical axis
 */
-(NSLayoutConstraint*) constraintCenterYToView:(UIView*)view;


/**
 @brief center this view to #view on the vertical axis and add padding
 */
-(NSLayoutConstraint*) constraintCenterYToView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief fix the horizontal position of this view equal to x relative to superview
 */
-(NSLayoutConstraint*) constraintX:(CGFloat)x;


/**
 @brief align the left edge of this view equal to the superview
 */
-(NSLayoutConstraint*) constraintXEqualToSuperView;


/**
 @brief align the left edge of this view equal to the superview and add padding
 */
-(NSLayoutConstraint*) constraintXEqualToSuperViewWithPadding:(CGFloat)padding;


/**
 @brief align the left edge of this view equal to view
 */
-(NSLayoutConstraint*) constraintXEqualToView:(UIView*)view;


/**
 @brief align the left edge of this view equal to view and add padding
 */
-(NSLayoutConstraint*) constraintXEqualToView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief fix the veritcal position of this view equal to y relative to superview
 */
-(NSLayoutConstraint*) constraintY:(CGFloat)y;


/**
 @brief fix the top edge of this view equal to the superview
 */
-(NSLayoutConstraint*) constraintYEqualToSuperView;


/**
 @brief fix the top edge of this view equal to the superview and add padding
 */
-(NSLayoutConstraint*) constraintYEqualToSuperViewWithPadding:(CGFloat)padding;


/**
 @brief fix the top edge of this view equal to view
 */
-(NSLayoutConstraint*) constraintYEqualToView:(UIView*)view;


/**
 @brief fix the top edge of this view equal to view and add padding
 */
-(NSLayoutConstraint*) constraintYEqualToView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief fix the width of this view equal to width
 */
-(NSLayoutConstraint*) constraintWidth:(CGFloat)width;


/**
 @brief fix the width of this view equal to the superview
 */
-(NSLayoutConstraint*) constraintWidthEqualToSuperView;


/**
 @brief fix the width of this view equal to the superview and add padding
 */
-(NSLayoutConstraint*) constraintWidthEqualToSuperViewWithPadding:(CGFloat)padding;

/**
 @brief fix the width of this view equal to view
 */
-(NSLayoutConstraint*) constraintWidthEqualToView:(UIView*)view;

/**
 @brief fix the width of this view equal to view and add padding
 */
-(NSLayoutConstraint*) constraintWidthEqualToView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief fix the height of this view equal to height
 */
-(NSLayoutConstraint*) constraintHeight:(CGFloat)height;


/**
 @brief fix the height of this view equal to the superview
 */
-(NSLayoutConstraint*) constraintHeightEqualToSuperView;


/**
 @brief fix the height of this view equal to the superview and add padding
 */
-(NSLayoutConstraint*) constraintHeightEqualToSuperViewWithPadding:(CGFloat)padding;


/**
 @brief fix the height of this view equal to view
 */
-(NSLayoutConstraint*) constraintHeightEqualToView:(UIView*)view;


/**
 @brief fix the height of this view equal to view and add padding
 */
-(NSLayoutConstraint*) constraintHeightEqualToView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief pin the right edge of this view equal to the left edge of view
 */
-(NSLayoutConstraint*) constraintPinLeftOfView:(UIView*)view;


/**
 @brief pin the right edge of this view equal to the left edge of view and add padding
 */
-(NSLayoutConstraint*) constraintPinLeftOfView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief pin the left edge of this view equal to the right edge of view
 */
-(NSLayoutConstraint*) constraintPinRightOfView:(UIView*)view;


/**
 @brief pin the left edge of this view equal to the right edge of view and add padding
 */
-(NSLayoutConstraint*) constraintPinRightOfView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief pin the bottom edge of this view equal to the top edge of view
 */
-(NSLayoutConstraint*) constraintPinAboveView:(UIView*)view;


/**
 @brief pin the bottom edge of this view equal to the top edge of view and add padding
 */
-(NSLayoutConstraint*) constraintPinAboveView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief pin the top edge of this view equal to the bottom edge of view
 */
-(NSLayoutConstraint*) constraintPinBelowView:(UIView*)view;


/**
 @brief pin the top edge of this view equal to the bottom edge of view and add padding
 */
-(NSLayoutConstraint*) constraintPinBelowView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief align the right edge of this view equal to the superview
 */
-(NSLayoutConstraint*) constraintPinRightToSuperview;


/**
 @brief align the right edge of this view equal to the superview and add padding
 */
-(NSLayoutConstraint*) constraintPinRightToSuperviewWithPadding:(CGFloat)padding;


/**
 @brief align the right edge of this view equal to view
 */
-(NSLayoutConstraint*) constraintRightEqualToView:(UIView*)view;


/**
 @brief align the right edge of this view equal to view and add padding
 */
-(NSLayoutConstraint*) constraintRightEqualToView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief align the bottom edge of this view equal to the superview
 */
-(NSLayoutConstraint*) constraintPinBottomToSuperview;


/**
 @brief align the bottom edge of this view equal to the superview and add padding
 */
-(NSLayoutConstraint*) constraintPinBottomToSuperviewWithPadding:(CGFloat)padding;


/**
 @brief align the bottom edge of this view equal to the view
 */
-(NSLayoutConstraint*) constraintBottomEqualToView:(UIView*)view;


/**
 @brief align the bottom edge of this view equal to the view and add padding
 */
-(NSLayoutConstraint*) constraintBottomEqualToView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief align the top edge of this view to the center of the superview
 */
-(NSLayoutConstraint*) constraintPinTopToCenterOfSuperview;


/**
 @brief align the top edge of this view to the center of the superview and add padding
 */
-(NSLayoutConstraint*) constraintPinTopToCenterOfSuperviewWithPadding:(CGFloat)padding;


/**
 @brief align the top edge of this view to the center of view
 */
-(NSLayoutConstraint*) constraintPinTopToCenterOfView:(UIView*)view;


/**
 @brief align the top edge of this view to the center of view and add padding
 */
-(NSLayoutConstraint*) constraintPinTopToCenterOfView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief align the bottom edge of this view to the center of the superview
 */
-(NSLayoutConstraint*) constraintPinBottomToCenterOfSuperview;


/**
 @brief align the bottom edge of this view to the center of the superview and add padding
 */
-(NSLayoutConstraint*) constraintPinBottomToCenterOfSuperviewWithPadding:(CGFloat)padding;


/**
 @brief align the bottom edge of this view to the center of view
 */
-(NSLayoutConstraint*) constraintPinBottomToCenterOfView:(UIView*)view;


/**
 @brief align the bottom edge of this view to the center of view and add padding
 */
-(NSLayoutConstraint*) constraintPinBottomToCenterOfView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief align the left edge of this view to the center of the superview
 */
-(NSLayoutConstraint*) constraintPinLeftToCenterOfSuperview;


/**
 @brief align the left edge of this view to the center of the superview and add padding
 */
-(NSLayoutConstraint*) constraintPinLeftToCenterOfSuperviewWithPadding:(CGFloat)padding;


/**
 @brief align the left edge of this view to the center of view
 */
-(NSLayoutConstraint*) constraintPinLeftToCenterOfView:(UIView*)view;


/**
 @brief align the left edge of this view to the center of view and add padding
 */
-(NSLayoutConstraint*) constraintPinLeftToCenterOfView:(UIView*)view withPadding:(CGFloat)padding;


/**
 @brief align the right edge of this view to the center of the superview
 */
-(NSLayoutConstraint*) constraintPinRightToCenterOfSuperview;


/**
 @brief align the right edge of this view to the center of the superview and add padding
 */
-(NSLayoutConstraint*) constraintPinRightToCenterOfSuperviewWithPadding:(CGFloat)padding;

/**
 @brief align the right edge of this view to the center of view
 */
-(NSLayoutConstraint*) constraintPinRightToCenterOfView:(UIView*)view;


/**
 @brief align the right edge of this view to the center of view and add padding
 */
-(NSLayoutConstraint*) constraintPinRightToCenterOfView:(UIView*)view withPadding:(CGFloat)padding;


@end

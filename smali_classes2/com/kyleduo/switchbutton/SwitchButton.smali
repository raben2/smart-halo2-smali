.class public Lcom/kyleduo/switchbutton/SwitchButton;
.super Landroid/widget/CompoundButton;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
    }
.end annotation


# static fields
.field private static CHECKED_PRESSED_STATE:[I = null

.field public static final DEFAULT_ANIMATION_DURATION:I = 0xfa

.field public static final DEFAULT_BACK_MEASURE_RATIO:F = 1.8f

.field public static final DEFAULT_TEXT_MARGIN_DP:I = 0x2

.field public static final DEFAULT_THUMB_MARGIN_DP:I = 0x2

.field public static final DEFAULT_THUMB_SIZE_DP:I = 0x14

.field public static final DEFAULT_TINT_COLOR:I = 0x327fc2

.field private static UNCHECKED_PRESSED_STATE:[I


# instance fields
.field private mAnimationDuration:J

.field private mAutoAdjustTextPosition:Z

.field private mBackColor:Landroid/content/res/ColorStateList;

.field private mBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackMeasureRatio:F

.field private mBackRadius:F

.field private mBackRectF:Landroid/graphics/RectF;

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mClickTimeout:I

.field private mCurrBackColor:I

.field private mCurrThumbColor:I

.field private mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawDebugRect:Z

.field private mFadeBack:Z

.field private mIsBackUseDrawable:Z

.field private mIsThumbUseDrawable:Z

.field private mLastX:F

.field private mNextBackColor:I

.field private mNextBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mOffLayout:Landroid/text/Layout;

.field private mOffTextColor:I

.field private mOnLayout:Landroid/text/Layout;

.field private mOnTextColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPresentThumbRectF:Landroid/graphics/RectF;

.field private mProcess:F

.field private mProcessAnimator:Landroid/animation/ObjectAnimator;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mRestoring:Z

.field private mSafeRectF:Landroid/graphics/RectF;

.field private mStartX:F

.field private mStartY:F

.field private mTextHeight:F

.field private mTextMarginH:F

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOffRectF:Landroid/graphics/RectF;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextOnRectF:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextWidth:F

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbMargin:Landroid/graphics/RectF;

.field private mThumbRadius:F

.field private mThumbRectF:Landroid/graphics/RectF;

.field private mThumbSizeF:Landroid/graphics/PointF;

.field private mTintColor:I

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 47
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    .line 48
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

    return-void

    :array_0
    .array-data 4
        0x10100a0
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        -0x10100a0
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 103
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    .line 88
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    const/4 p1, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    .line 88
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    .line 99
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    const/4 p3, 0x1

    .line 85
    iput-boolean p3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    .line 88
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    .line 94
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private catchView()V
    .locals 2

    .line 631
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 633
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private ceil(D)I
    .locals 0

    .line 343
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method private getStatusBasedOnPos()Z
    .locals 2

    .line 586
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    .line 109
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mClickTimeout:I

    .line 111
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    .line 112
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    .line 118
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    .line 119
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    .line 120
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    .line 121
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    .line 122
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    .line 123
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    .line 124
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    const-string v2, "process"

    const/4 v4, 0x2

    .line 126
    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0xfa

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    .line 127
    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v2, v5

    const/high16 v7, 0x41a00000    # 20.0f

    mul-float v2, v2, v7

    div-float v7, v2, v5

    if-nez v1, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton:[I

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_1

    .line 158
    sget v7, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbDrawable:I

    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 159
    sget v14, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbColor:I

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 160
    sget v15, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMargin:I

    invoke-virtual {v9, v15, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 161
    sget v8, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginLeft:I

    invoke-virtual {v9, v8, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 162
    sget v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginRight:I

    invoke-virtual {v9, v11, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 163
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginTop:I

    invoke-virtual {v9, v4, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 164
    sget v10, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginBottom:I

    invoke-virtual {v9, v10, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 165
    sget v15, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbWidth:I

    invoke-virtual {v9, v15, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 166
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbHeight:I

    invoke-virtual {v9, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 167
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbRadius:I

    invoke-static {v15, v2}, Ljava/lang/Math;->min(FF)F

    move-result v18

    div-float v13, v18, v5

    invoke-virtual {v9, v3, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 168
    sget v13, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackRadius:I

    add-float v5, v3, v6

    invoke-virtual {v9, v13, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 169
    sget v13, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackDrawable:I

    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 170
    sget v12, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackColor:I

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move/from16 v21, v2

    .line 171
    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackMeasureRatio:I

    move/from16 v22, v3

    const v3, 0x3fe66666    # 1.8f

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 172
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswAnimationDuration:I

    move/from16 v20, v2

    const/16 v2, 0xfa

    invoke-virtual {v9, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 173
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswFadeBack:I

    move/from16 v19, v2

    const/4 v2, 0x1

    invoke-virtual {v9, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 174
    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTintColor:I

    move/from16 v23, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 175
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextOn:I

    invoke-virtual {v9, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v24, v2

    .line 176
    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextOff:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    const/high16 v18, 0x40000000    # 2.0f

    div-float v2, v5, v18

    .line 177
    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 178
    sget v6, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextMarginH:I

    invoke-virtual {v9, v6, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 179
    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswAutoAdjustTextPosition:I

    move-object/from16 v18, v3

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 180
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v28, v5

    move v9, v10

    move-object/from16 v3, v18

    move/from16 v29, v19

    move/from16 v26, v20

    move/from16 v27, v22

    move/from16 v30, v23

    move/from16 v5, v24

    move v10, v4

    move/from16 v18, v8

    move/from16 v8, v21

    move-object/from16 v4, v25

    goto :goto_1

    :cond_1
    move v4, v2

    const/16 v2, 0xfa

    const v3, 0x3fe66666    # 1.8f

    move v8, v4

    move v15, v8

    move/from16 v27, v7

    move/from16 v28, v27

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const v26, 0x3fe66666    # 1.8f

    const/16 v29, 0xfa

    const/16 v30, 0x1

    :goto_1
    if-nez v1, :cond_2

    move/from16 v16, v9

    move/from16 v19, v10

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    move/from16 v16, v9

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v9

    move/from16 v19, v10

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_1

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    move/from16 v17, v11

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 186
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 188
    invoke-virtual {v1, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 189
    invoke-virtual {v0, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->setFocusable(Z)V

    .line 190
    invoke-virtual {v0, v10}, Lcom/kyleduo/switchbutton/SwitchButton;->setClickable(Z)V

    .line 191
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_3
    move/from16 v17, v11

    .line 195
    :goto_3
    iput-object v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 196
    iput-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 197
    iput v6, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextMarginH:F

    .line 198
    iput-boolean v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    .line 201
    iput-object v7, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    iput-object v14, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 203
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    .line 204
    iput v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    .line 205
    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    if-nez v1, :cond_6

    .line 206
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/kyleduo/switchbutton/R$attr;->colorAccent:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    iget v1, v1, Landroid/util/TypedValue;->data:I

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    goto :goto_5

    :cond_5
    const v1, 0x327fc2

    .line 211
    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    goto :goto_5

    :cond_6
    const/4 v4, 0x1

    .line 214
    :goto_5
    iget-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_7

    .line 215
    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {v1}, Lcom/kyleduo/switchbutton/ColorUtils;->generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 216
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    .line 218
    :cond_7
    iget-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v1, :cond_8

    .line 219
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 220
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 222
    :cond_8
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    invoke-virtual {v1, v15, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 225
    iput-object v13, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 226
    iput-object v12, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 227
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    iput-boolean v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    .line 228
    iget-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_a

    .line 229
    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {v1}, Lcom/kyleduo/switchbutton/ColorUtils;->generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 230
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    .line 231
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    iget v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    .line 235
    :cond_a
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move/from16 v10, v16

    move/from16 v11, v17

    move/from16 v8, v18

    move/from16 v4, v19

    invoke-virtual {v1, v8, v4, v11, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 238
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_b

    move/from16 v3, v26

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v26

    :cond_b
    move/from16 v3, v26

    iput v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    move/from16 v7, v27

    .line 240
    iput v7, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    move/from16 v5, v28

    .line 241
    iput v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    move/from16 v1, v29

    int-to-long v3, v1

    .line 242
    iput-wide v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    move/from16 v1, v30

    .line 243
    iput-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    .line 245
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    iget-wide v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 249
    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    :cond_c
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x10100da
        0x10100e5
    .end array-data
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 9

    .line 255
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method private measureHeight(I)I
    .locals 6

    .line 306
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 307
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 310
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-direct {p0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v1

    .line 311
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 312
    :goto_0
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    cmpl-float v5, v2, v3

    if-nez v5, :cond_3

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_2

    goto :goto_2

    .line 317
    :cond_2
    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    goto :goto_3

    .line 314
    :cond_3
    :goto_2
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    int-to-float v1, v1

    .line 315
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-direct {p0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v1

    .line 319
    :goto_3
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 320
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_4

    .line 323
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4

    :cond_4
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_5

    .line 327
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_5
    :goto_4
    return v1
.end method

.method private measureWidth(I)I
    .locals 6

    .line 270
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 271
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 274
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-direct {p0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v1

    .line 275
    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 278
    :cond_0
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 279
    :goto_0
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    cmpl-float v5, v2, v3

    if-nez v5, :cond_4

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_3

    goto :goto_2

    .line 287
    :cond_3
    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    goto :goto_3

    .line 281
    :cond_4
    :goto_2
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextMarginH:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    int-to-float v2, v1

    .line 282
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v2, v3

    .line 283
    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    cmpg-float v5, v3, v4

    if-gez v5, :cond_5

    sub-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v1, v2

    :cond_5
    :goto_3
    int-to-float v2, v1

    .line 289
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 290
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 291
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_6

    .line 294
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4

    :cond_6
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_7

    .line 298
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    :goto_4
    return v1
.end method

.method private setDrawableState(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v0

    .line 712
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 713
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    :cond_0
    return-void
.end method

.method private setup()V
    .locals 11

    .line 350
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v0, v1

    .line 351
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v1, v3

    .line 353
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v5

    cmpl-float v3, v3, v2

    if-lez v3, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 361
    :cond_0
    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v3, :cond_1

    .line 362
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 363
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v3, Landroid/graphics/PointF;->y:F

    .line 366
    :cond_1
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v0

    invoke-virtual {v3, v1, v0, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 368
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 369
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    mul-float v1, v1, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    add-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 370
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 371
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    add-float/2addr v7, v3

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    mul-float v8, v8, v9

    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    add-float/2addr v9, v10

    .line 373
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float/2addr v0, v8

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v8

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v8

    sub-float/2addr v1, v3

    .line 371
    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 376
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 378
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v4

    .line 379
    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    .line 381
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 382
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-double v5, v5

    invoke-direct {p0, v5, v6}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v5

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    invoke-direct {p0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v6

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    const/high16 v1, 0x40800000    # 4.0f

    if-eqz v0, :cond_5

    .line 386
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/high16 v5, -0x41000000    # -0.5f

    mul-float v3, v3, v5

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    add-float/2addr v0, v3

    .line 387
    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    if-eqz v3, :cond_4

    .line 388
    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    .line 390
    :cond_4
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 391
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v3

    invoke-virtual {v5, v0, v3, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v0, :cond_8

    .line 395
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_6

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    :cond_6
    add-float/2addr v0, v2

    .line 396
    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    if-eqz v2, :cond_7

    .line 397
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 399
    :cond_7
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 400
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected animateToState(Z)V
    .locals 4

    .line 615
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    return-void

    .line 618
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    iget-wide v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    .line 623
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [F

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    aput v3, v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 625
    :cond_2
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [F

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    aput v3, v2, v1

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 627
    :goto_0
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 494
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 496
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v1

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    .line 502
    :goto_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    .line 503
    :goto_1
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 505
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 506
    sget-object v3, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnTextColor:I

    .line 507
    sget-object v3, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffTextColor:I

    .line 509
    :cond_2
    iget-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    .line 510
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    .line 511
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    goto :goto_3

    .line 513
    :cond_3
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v2, :cond_4

    .line 514
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 515
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 517
    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 519
    :goto_2
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    .line 520
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 521
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    :cond_5
    :goto_3
    return-void
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 727
    iget-wide v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    return-wide v0
.end method

.method public getBackColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackMeasureRatio()F
    .locals 1

    .line 800
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    return v0
.end method

.method public getBackRadius()F
    .locals 1

    .line 868
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    return v0
.end method

.method public getBackSizeF()Landroid/graphics/PointF;
    .locals 3

    .line 864
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getProcess()F
    .locals 1

    .line 590
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    return v0
.end method

.method public getThumbColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbHeight()F
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public getThumbMargin()Landroid/graphics/RectF;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getThumbRadius()F
    .locals 1

    .line 853
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    return v0
.end method

.method public getThumbSizeF()Landroid/graphics/PointF;
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getThumbWidth()F
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .line 887
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    return v0
.end method

.method public isDrawDebugRect()Z
    .locals 1

    .line 718
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    return v0
.end method

.method public isFadeBack()Z
    .locals 1

    .line 879
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 406
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 409
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    const/high16 v1, 0x437f0000    # 255.0f

    const/16 v2, 0xff

    if-eqz v0, :cond_3

    .line 410
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 414
    :goto_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 416
    :goto_1
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    .line 417
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 418
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    rsub-int v0, v4, 0xff

    .line 420
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 421
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 424
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 427
    :cond_3
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v0, :cond_6

    .line 432
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    .line 433
    :goto_2
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    goto :goto_3

    :cond_5
    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    .line 436
    :goto_3
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    .line 437
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    mul-int v5, v5, v4

    .line 438
    div-int/2addr v5, v2

    .line 439
    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {v6, v5, v7, v8, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 440
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    rsub-int v0, v4, 0xff

    .line 444
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    mul-int v4, v4, v0

    .line 445
    div-int/2addr v4, v2

    .line 446
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 447
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 449
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    .line 451
    :cond_6
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 457
    :goto_4
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    .line 458
    :goto_5
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v3

    float-to-double v3, v3

    cmpl-double v7, v3, v5

    if-lez v7, :cond_8

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    goto :goto_6

    :cond_8
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    :goto_6
    const/4 v4, 0x0

    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    .line 460
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    const/high16 v11, 0x40800000    # 4.0f

    cmpl-double v12, v7, v9

    if-ltz v12, :cond_9

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v7

    mul-float v7, v7, v11

    const/high16 v8, 0x40400000    # 3.0f

    :goto_7
    sub-float/2addr v7, v8

    goto :goto_8

    :cond_9
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    cmpg-double v12, v7, v9

    if-gez v12, :cond_a

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v8

    mul-float v8, v8, v11

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_8
    mul-float v7, v7, v1

    float-to-int v1, v7

    .line 461
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v7

    float-to-double v7, v7

    cmpl-double v9, v7, v5

    if-lez v9, :cond_b

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnTextColor:I

    goto :goto_9

    :cond_b
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffTextColor:I

    .line 462
    :goto_9
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    mul-int v8, v8, v1

    .line 463
    div-int/2addr v8, v2

    .line 464
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-virtual {v1, v8, v2, v9, v7}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 465
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 466
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v2, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 467
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 468
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 472
    :cond_c
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 473
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 474
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v0, :cond_d

    .line 475
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-direct {p0, v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v3

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v4

    invoke-direct {p0, v7, v8}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 476
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a

    .line 478
    :cond_d
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 482
    :goto_a
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    if-eqz v0, :cond_f

    .line 483
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v1, "#AA0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 484
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 485
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v1, "#0000FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 486
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 487
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v1, "#00CC00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v2, v0, v5

    if-lez v2, :cond_e

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    goto :goto_b

    :cond_e
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    :goto_b
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 264
    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    .line 266
    :cond_1
    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->measureWidth(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->measureHeight(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 924
    check-cast p1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    .line 925
    iget-object v0, p1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 926
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    .line 927
    invoke-virtual {p1}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 928
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 915
    invoke-super {p0}, Landroid/widget/CompoundButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 916
    new-instance v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    invoke-direct {v1, v0}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 917
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    .line 918
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 529
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 533
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    sub-float/2addr v2, v3

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartY:F

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 551
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 552
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 553
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    goto :goto_0

    .line 558
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    .line 559
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getStatusBasedOnPos()Z

    move-result v0

    .line 560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-float p1, v5

    .line 561
    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v6, v5

    cmpg-float v2, v2, v6

    if-gez v2, :cond_1

    int-to-float v2, v5

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mClickTimeout:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    .line 562
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->performClick()Z

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result p1

    if-eq v0, p1, :cond_2

    .line 565
    invoke-virtual {p0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->playSoundEffect(I)V

    .line 566
    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->animateToState(Z)V

    goto :goto_0

    .line 543
    :pswitch_2
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->catchView()V

    .line 544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    .line 545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartY:F

    .line 546
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    .line 547
    invoke-virtual {p0, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    :goto_0
    return v4

    :cond_3
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .line 606
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAnimationDuration(J)V
    .locals 0

    .line 731
    iput-wide p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    return-void
.end method

.method public setBackColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 774
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 775
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setBackColorRes(I)V
    .locals 1

    .line 781
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 757
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    .line 758
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 759
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 760
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 761
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setBackDrawableRes(I)V
    .locals 1

    .line 765
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackMeasureRatio(F)V
    .locals 0

    .line 804
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    .line 805
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    return-void
.end method

.method public setBackRadius(F)V
    .locals 0

    .line 872
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    .line 873
    iget-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez p1, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 640
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 641
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->animateToState(Z)V

    .line 643
    :cond_0
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    goto :goto_0

    .line 646
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 1

    .line 697
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 698
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 701
    :goto_0
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 702
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setCheckedImmediatelyNoEvent(Z)V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 662
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 664
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 665
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 666
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method public setCheckedNoEvent(Z)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 652
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 654
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 655
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 656
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method public setDrawDebugRect(Z)V
    .locals 0

    .line 722
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    .line 723
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setFadeBack(Z)V
    .locals 0

    .line 883
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 692
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 693
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public final setProcess(F)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 600
    :cond_1
    :goto_0
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    .line 601
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 903
    iput-object p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 905
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 906
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    .line 908
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 909
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 790
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 791
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setThumbColorRes(I)V
    .locals 1

    .line 796
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 740
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    .line 741
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 742
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 743
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 744
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setThumbDrawableRes(I)V
    .locals 1

    .line 748
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbMargin(FFFF)V
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 822
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    return-void
.end method

.method public setThumbMargin(Landroid/graphics/RectF;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 814
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbMargin(FFFF)V

    goto :goto_0

    .line 816
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbMargin(FFFF)V

    :goto_0
    return-void
.end method

.method public setThumbRadius(F)V
    .locals 0

    .line 857
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    .line 858
    iget-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-nez p1, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbSize(FF)V
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 827
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 828
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    return-void
.end method

.method public setThumbSize(Landroid/graphics/PointF;)V
    .locals 1

    if-nez p1, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float p1, p1, v0

    .line 842
    invoke-virtual {p0, p1, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbSize(FF)V

    goto :goto_0

    .line 844
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbSize(FF)V

    :goto_0
    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .line 891
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    .line 892
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {p1}, Lcom/kyleduo/switchbutton/ColorUtils;->generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 893
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {p1}, Lcom/kyleduo/switchbutton/ColorUtils;->generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 894
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    .line 895
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    .line 897
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 898
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public toggleImmediately()V
    .locals 1

    .line 706
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    return-void
.end method

.method public toggleImmediatelyNoEvent()V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggleImmediately()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 684
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 685
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggleImmediately()V

    .line 686
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method public toggleNoEvent()V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggle()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 674
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 675
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggle()V

    .line 676
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

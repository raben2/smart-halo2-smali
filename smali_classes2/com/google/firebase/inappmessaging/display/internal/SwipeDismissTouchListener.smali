.class public Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mDismissCallbacks:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;

.field private mDownX:F

.field private mDownY:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mSlop:I

.field private mSwiping:Z

.field private mSwipingSlop:I

.field private mToken:Ljava/lang/Object;

.field private mTranslationX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mView:Landroid/view/View;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 76
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mViewWidth:I

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSlop:I

    .line 115
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mMinFlingVelocity:I

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mAnimationTime:J

    .line 119
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    .line 120
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    .line 121
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDismissCallbacks:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->performDismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)Ljava/lang/Object;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDismissCallbacks:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;

    return-object p0
.end method

.method private animateTo(FFLandroid/animation/AnimatorListenerAdapter;)V
    .locals 6
    .param p3    # Landroid/animation/AnimatorListenerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 279
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->getTranslationX()F

    move-result v2

    sub-float v3, p1, v2

    .line 282
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    sub-float v5, p2, v4

    const/4 p1, 0x2

    .line 285
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 286
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 288
    new-instance p2, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;-><init>(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p3, :cond_0

    .line 301
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private performDismiss()V
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    .line 315
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v3, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 317
    new-instance v3, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$3;-><init>(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 330
    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$4;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$4;-><init>(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 339
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected getTranslationX()F
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 128
    iget p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mTranslationX:F

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 130
    iget p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mViewWidth:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mViewWidth:I

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    .line 194
    :pswitch_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_1

    goto/16 :goto_7

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->startCancelAnimation()V

    .line 198
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 199
    iput-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 200
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mTranslationX:F

    .line 201
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownX:F

    .line 202
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownY:F

    .line 203
    iput-boolean v4, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_7

    .line 209
    :pswitch_1
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_2

    goto/16 :goto_7

    .line 213
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownX:F

    sub-float/2addr p1, v1

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownY:F

    sub-float/2addr v1, v2

    .line 216
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSlop:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v6

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 217
    iput-boolean v3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    .line 218
    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSlop:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSlop:I

    neg-int v1, v1

    :goto_0
    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwipingSlop:I

    .line 219
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 222
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/lit8 p2, p2, 0x3

    .line 223
    invoke-virtual {v1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 226
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 227
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 230
    :cond_4
    iget-boolean p2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz p2, :cond_11

    .line 231
    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mTranslationX:F

    .line 232
    iget p2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwipingSlop:I

    int-to-float p2, p2

    sub-float p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->setTranslationX(F)V

    .line 234
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float p1, p1, v6

    iget p2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->setAlpha(F)V

    return v3

    .line 149
    :pswitch_2
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_5

    goto/16 :goto_7

    .line 153
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v5, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownX:F

    sub-float/2addr p1, v5

    .line 154
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 155
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {p2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 156
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 157
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 158
    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 161
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mViewWidth:I

    div-int/2addr v8, v1

    int-to-float v1, v8

    cmpl-float v1, v7, v1

    if-lez v1, :cond_7

    iget-boolean v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v1, :cond_7

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    move v3, p1

    const/4 p1, 0x1

    goto :goto_5

    .line 164
    :cond_7
    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mMinFlingVelocity:I

    int-to-float v1, v1

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_c

    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    int-to-float v1, v1

    cmpg-float v1, v5, v1

    if-gtz v1, :cond_c

    cmpg-float v1, v6, v5

    if-gez v1, :cond_c

    if-gez v1, :cond_c

    iget-boolean v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v1, :cond_c

    cmpg-float p2, p2, v0

    if-gez p2, :cond_8

    const/4 p2, 0x1

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    :goto_2
    cmpg-float p1, p1, v0

    if-gez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    if-ne p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    .line 171
    :goto_4
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_b

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    :cond_c
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_5
    if-eqz p1, :cond_d

    .line 175
    invoke-virtual {p0, v3}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->startDismissAnimation(Z)V

    goto :goto_6

    .line 176
    :cond_d
    iget-boolean p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz p1, :cond_e

    .line 178
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->startCancelAnimation()V

    .line 181
    :cond_e
    :goto_6
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_f

    .line 182
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 184
    :cond_f
    iput-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 185
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mTranslationX:F

    .line 186
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownX:F

    .line 187
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownY:F

    .line 188
    iput-boolean v4, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mSwiping:Z

    goto :goto_7

    .line 138
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownX:F

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDownY:F

    .line 140
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mDismissCallbacks:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;->canDismiss(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 141
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 142
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_10
    return v4

    :cond_11
    :goto_7
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setAlpha(F)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected setTranslationX(F)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method protected startCancelAnimation()V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 273
    invoke-direct {p0, v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->animateTo(FFLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method protected startDismissAnimation(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 257
    iget p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mViewWidth:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->mViewWidth:I

    neg-int p1, p1

    :goto_0
    int-to-float p1, p1

    const/4 v0, 0x0

    .line 260
    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$1;-><init>(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->animateTo(FFLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

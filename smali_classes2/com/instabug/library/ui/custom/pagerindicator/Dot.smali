.class public final Lcom/instabug/library/ui/custom/pagerindicator/Dot;
.super Landroid/widget/RelativeLayout;
.source "Dot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVE_COLOR:I = -0x1

.field private static final DEFAULT_ACTIVE_DIAMETER_DP:I = 0x9

.field private static final DEFAULT_INACTIVE_COLOR:I = -0x1

.field private static final DEFAULT_INACTIVE_DIAMETER_DP:I = 0x6

.field private static final DEFAULT_INITIALLY_ACTIVE:Z = false

.field private static final DEFAULT_TRANSITION_DURATION_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "DOT"


# instance fields
.field private activeColor:I

.field private activeDiameterPx:I

.field private currentAnimator:Landroid/animation/AnimatorSet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private drawableHolder:Landroid/widget/ImageView;

.field private inactiveColor:I

.field private inactiveDiameterPx:I

.field private shape:Landroid/graphics/drawable/ShapeDrawable;

.field private state:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private transitionDurationMs:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->currentAnimator:Landroid/animation/AnimatorSet;

    .line 18
    invoke-direct {p0, p2, p3}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/ui/custom/pagerindicator/Dot;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->state:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    return-object p0
.end method

.method static synthetic access$002(Lcom/instabug/library/ui/custom/pagerindicator/Dot;Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->state:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/instabug/library/ui/custom/pagerindicator/Dot;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->changeSize(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/instabug/library/ui/custom/pagerindicator/Dot;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->changeColor(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/instabug/library/ui/custom/pagerindicator/Dot;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->currentAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private animateDotChange(IIIII)V
    .locals 7

    if-ltz p1, :cond_4

    if-ltz p2, :cond_3

    if-ltz p5, :cond_2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->currentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->currentAnimator:Landroid/animation/AnimatorSet;

    int-to-long v1, p5

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 8
    iget-object p5, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->currentAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p4

    move v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;-><init>(Lcom/instabug/library/ui/custom/pagerindicator/Dot;IIII)V

    invoke-virtual {p5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p3, 0x2

    .line 50
    new-array p5, p3, [I

    const/4 v0, 0x0

    aput p1, p5, v0

    const/4 p1, 0x1

    aput p2, p5, p1

    invoke-static {p5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 51
    new-instance p5, Lcom/instabug/library/ui/custom/pagerindicator/Dot$2;

    invoke-direct {p5, p0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot$2;-><init>(Lcom/instabug/library/ui/custom/pagerindicator/Dot;)V

    invoke-virtual {p2, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    new-array p5, p3, [F

    fill-array-data p5, :array_0

    invoke-static {p5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p5

    .line 60
    new-instance v1, Lcom/instabug/library/ui/custom/pagerindicator/Dot$3;

    invoke-direct {v1, p0, p4}, Lcom/instabug/library/ui/custom/pagerindicator/Dot$3;-><init>(Lcom/instabug/library/ui/custom/pagerindicator/Dot;I)V

    invoke-virtual {p5, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    iget-object p4, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->currentAnimator:Landroid/animation/AnimatorSet;

    if-eqz p4, :cond_1

    .line 68
    new-array p3, p3, [Landroid/animation/Animator;

    aput-object p2, p3, v0

    aput-object p5, p3, p1

    invoke-virtual {p4, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 69
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->currentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration cannot be less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endSize cannot be less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startSize cannot be less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private changeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private changeSize(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 3
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->drawableHolder:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->drawableHolder:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE",
            "CustomViewStyleable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/R$styleable;->IBDot:[I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p2, v0}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p2

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v0

    .line 11
    sget v1, Lcom/instabug/library/R$styleable;->IBDot_ibViewPagerInactiveDiameter:I

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveDiameterPx:I

    .line 14
    sget v0, Lcom/instabug/library/R$styleable;->IBDot_ibViewPagerActiveDiameter:I

    .line 15
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeDiameterPx:I

    .line 16
    sget p2, Lcom/instabug/library/R$styleable;->IBDot_ibViewPagerInactiveColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveColor:I

    .line 17
    sget p2, Lcom/instabug/library/R$styleable;->IBDot_ibViewPagerActiveColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeColor:I

    .line 18
    sget p2, Lcom/instabug/library/R$styleable;->IBDot_ibViewPagerTransitionDuration:I

    const/16 v0, 0xc8

    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->transitionDurationMs:I

    .line 20
    sget p2, Lcom/instabug/library/R$styleable;->IBDot_ibViewPagerInitiallyActive:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->INACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    :goto_0
    iput-object p2, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->state:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->reflectParametersInView()V

    return-void
.end method

.method private reflectParametersInView()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 4
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveDiameterPx:I

    iget v1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeDiameterPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 11
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->state:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    sget-object v1, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeDiameterPx:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveDiameterPx:I

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->state:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    sget-object v2, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeColor:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveColor:I

    .line 13
    :goto_1
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v2, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->shape:Landroid/graphics/drawable/ShapeDrawable;

    .line 14
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 15
    iget-object v2, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 16
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->drawableHolder:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->drawableHolder:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->drawableHolder:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getActiveColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeColor:I

    return v0
.end method

.method public getActiveDiameter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeDiameterPx:I

    return v0
.end method

.method public getInactiveColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveColor:I

    return v0
.end method

.method public getInactiveDiameter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveDiameterPx:I

    return v0
.end method

.method public getTransitionDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->transitionDurationMs:I

    return v0
.end method

.method public setActive(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->currentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->state:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    sget-object v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->transitionDurationMs:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 11
    iget v1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveDiameterPx:I

    iget v2, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeDiameterPx:I

    iget v3, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveColor:I

    iget v4, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeColor:I

    iget v5, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->transitionDurationMs:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->animateDotChange(IIIII)V

    goto :goto_1

    .line 15
    :cond_2
    iget p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeDiameterPx:I

    invoke-direct {p0, p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->changeSize(I)V

    .line 16
    iget p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeColor:I

    invoke-direct {p0, p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->changeColor(I)V

    .line 17
    sget-object p1, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    iput-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->state:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    :goto_1
    return-void
.end method

.method public setActiveColor(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeColor:I

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->reflectParametersInView()V

    return-object p0
.end method

.method public setActiveDiameterDp(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->setActiveDiameterPx(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "activeDiameterDp cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setActiveDiameterPx(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeDiameterPx:I

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->reflectParametersInView()V

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "activeDiameterPx cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInactive(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->currentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->state:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    sget-object v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->INACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->transitionDurationMs:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 10
    iget v1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeDiameterPx:I

    iget v2, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveDiameterPx:I

    iget v3, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->activeColor:I

    iget v4, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveColor:I

    iget v5, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->transitionDurationMs:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->animateDotChange(IIIII)V

    goto :goto_1

    .line 14
    :cond_2
    iget p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveDiameterPx:I

    invoke-direct {p0, p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->changeSize(I)V

    .line 15
    iget p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveColor:I

    invoke-direct {p0, p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->changeColor(I)V

    .line 16
    sget-object p1, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->INACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    iput-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->state:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    :goto_1
    return-void
.end method

.method public setInactiveColor(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveColor:I

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->reflectParametersInView()V

    return-object p0
.end method

.method public setInactiveDiameterDp(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->setInactiveDiameterPx(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inactiveDiameterDp cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInactiveDiameterPx(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->inactiveDiameterPx:I

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->reflectParametersInView()V

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inactiveDiameterPx cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTransitionDuration(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->transitionDurationMs:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "transitionDurationMs cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toggleState(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->currentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->state:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    sget-object v1, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->setActive(Z)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->INACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    if-eq v0, v1, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->setInactive(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "DOT"

    const-string v0, "[Animation trying to start from illegal state]"

    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

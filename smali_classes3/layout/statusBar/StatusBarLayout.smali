.class public Llayout/statusBar/StatusBarLayout;
.super Landroid/widget/FrameLayout;
.source "StatusBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;
    }
.end annotation


# static fields
.field private static final SWIPE_MIN_DISTANCE:I = 0x78

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0xc8


# instance fields
.field private binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private helpCardAdapter:Llayout/statusBar/StatusBarHelpCardAdapter;

.field private helpCardDescriptionId:I

.field private helpCardTitleId:I

.field private helpCardVisibilitySubscribers:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

.field private isAnimating:Z

.field private offColor:I

.field private offIcon:I

.field private offStatusText:Ljava/lang/String;

.field private onIcon:I

.field private onStatusText:Ljava/lang/String;

.field private themeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "layout_inflater"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    .line 67
    invoke-static {v0, p0, v1}, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    move-result-object v0

    iput-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    .line 69
    invoke-direct {p0, p1, p2}, Llayout/statusBar/StatusBarLayout;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance p1, Llayout/statusBar/StatusBarHelpCardAdapter;

    invoke-direct {p1}, Llayout/statusBar/StatusBarHelpCardAdapter;-><init>()V

    iput-object p1, p0, Llayout/statusBar/StatusBarLayout;->helpCardAdapter:Llayout/statusBar/StatusBarHelpCardAdapter;

    return-void
.end method

.method static synthetic access$000(Llayout/statusBar/StatusBarLayout;)Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;
    .locals 0

    .line 39
    iget-object p0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    return-object p0
.end method

.method static synthetic access$100(Llayout/statusBar/StatusBarLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->animateHelpCardButtonEntrance()V

    return-void
.end method

.method static synthetic access$202(Llayout/statusBar/StatusBarLayout;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Llayout/statusBar/StatusBarLayout;->isAnimating:Z

    return p1
.end method

.method static synthetic access$300(Llayout/statusBar/StatusBarLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->animateHelpCardButtonExit()V

    return-void
.end method

.method static synthetic access$400(Llayout/statusBar/StatusBarLayout;)Llayout/statusBar/StatusBarHelpCardAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Llayout/statusBar/StatusBarLayout;->helpCardAdapter:Llayout/statusBar/StatusBarHelpCardAdapter;

    return-object p0
.end method

.method static synthetic access$500(Llayout/statusBar/StatusBarLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->updatePagerButtonsVisibility()V

    return-void
.end method

.method static synthetic access$600(Llayout/statusBar/StatusBarLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->setOnVisuals()V

    return-void
.end method

.method static synthetic access$700(Llayout/statusBar/StatusBarLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->setOffVisuals()V

    return-void
.end method

.method private animateHelpCardButtonEntrance()V
    .locals 2

    .line 242
    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010025

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 244
    new-instance v1, Llayout/statusBar/StatusBarLayout$6;

    invoke-direct {v1, p0}, Llayout/statusBar/StatusBarLayout$6;-><init>(Llayout/statusBar/StatusBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 261
    iget-object v1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardStatusButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateHelpCardButtonExit()V
    .locals 2

    .line 220
    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010026

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 222
    new-instance v1, Llayout/statusBar/StatusBarLayout$5;

    invoke-direct {v1, p0}, Llayout/statusBar/StatusBarLayout$5;-><init>(Llayout/statusBar/StatusBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 238
    iget-object v1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardStatusButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private getHelpCardBackgroundEntranceListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 201
    new-instance v0, Llayout/statusBar/StatusBarLayout$4;

    invoke-direct {v0, p0}, Llayout/statusBar/StatusBarLayout$4;-><init>(Llayout/statusBar/StatusBarLayout;)V

    return-object v0
.end method

.method private getHelpCardBackgroundExitListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 161
    new-instance v0, Llayout/statusBar/StatusBarLayout$2;

    invoke-direct {v0, p0}, Llayout/statusBar/StatusBarLayout$2;-><init>(Llayout/statusBar/StatusBarLayout;)V

    return-object v0
.end method

.method private getHelpCardEntranceListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 179
    new-instance v0, Llayout/statusBar/StatusBarLayout$3;

    invoke-direct {v0, p0}, Llayout/statusBar/StatusBarLayout$3;-><init>(Llayout/statusBar/StatusBarLayout;)V

    return-object v0
.end method

.method private getHelpCardExitListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 141
    new-instance v0, Llayout/statusBar/StatusBarLayout$1;

    invoke-direct {v0, p0}, Llayout/statusBar/StatusBarLayout$1;-><init>(Llayout/statusBar/StatusBarLayout;)V

    return-object v0
.end method

.method private getLightThemeColor()I
    .locals 2

    .line 566
    iget v0, p0, Llayout/statusBar/StatusBarLayout;->themeColor:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0
.end method

.method private getPagerArrowDrawable(Landroid/graphics/drawable/ShapeDrawable;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 3

    .line 562
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private getStatusText(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const-string v0, "#%06X"

    const/4 v1, 0x1

    .line 427
    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget p3, p0, Llayout/statusBar/StatusBarLayout;->themeColor:I

    goto :goto_0

    :cond_0
    iget p3, p0, Llayout/statusBar/StatusBarLayout;->offColor:I

    :goto_0
    const v2, 0xffffff

    and-int/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p1, :cond_1

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 429
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<b><font color="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font></b>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hidePagerArrow(Landroid/widget/ImageView;)V
    .locals 2

    .line 292
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 298
    new-instance v1, Llayout/statusBar/StatusBarLayout$8;

    invoke-direct {v1, p0, p1}, Llayout/statusBar/StatusBarLayout$8;-><init>(Llayout/statusBar/StatusBarLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 315
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 378
    sget-object v0, Lbike/smarthalo/app/R$styleable;->StatusBarLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const v0, 0x7f0602bb

    .line 381
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Llayout/statusBar/StatusBarLayout;->offColor:I

    const/4 p1, 0x7

    const v0, -0xff01

    .line 382
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Llayout/statusBar/StatusBarLayout;->themeColor:I

    const/4 p1, 0x3

    .line 384
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Llayout/statusBar/StatusBarLayout;->offIcon:I

    const/4 p1, 0x5

    .line 385
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Llayout/statusBar/StatusBarLayout;->onIcon:I

    const/16 p1, 0x8

    .line 387
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    .line 388
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 389
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 391
    invoke-direct {p0, p1, v0, v3}, Llayout/statusBar/StatusBarLayout;->getStatusText(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llayout/statusBar/StatusBarLayout;->onStatusText:Ljava/lang/String;

    .line 392
    invoke-direct {p0, p1, v2, v1}, Llayout/statusBar/StatusBarLayout;->getStatusText(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Llayout/statusBar/StatusBarLayout;->offStatusText:Ljava/lang/String;

    .line 394
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Llayout/statusBar/StatusBarLayout;->helpCardTitleId:I

    .line 395
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Llayout/statusBar/StatusBarLayout;->helpCardDescriptionId:I

    .line 397
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initGestureListener(Landroid/content/Context;)V
    .locals 2

    .line 595
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Llayout/statusBar/StatusBarLayout$16;

    invoke-direct {v1, p0}, Llayout/statusBar/StatusBarLayout$16;-><init>(Llayout/statusBar/StatusBarLayout;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Llayout/statusBar/StatusBarLayout;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private initHelpButtons()V
    .locals 15

    .line 433
    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v0

    .line 434
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v3, 0x8

    new-array v4, v3, [F

    int-to-float v0, v0

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v0, v4, v6

    const/4 v7, 0x2

    aput v0, v4, v7

    const/4 v8, 0x3

    aput v0, v4, v8

    const/4 v9, 0x4

    const/4 v10, 0x0

    aput v10, v4, v9

    const/4 v11, 0x5

    aput v10, v4, v11

    const/4 v12, 0x6

    aput v10, v4, v12

    aput v10, v4, v1

    const/4 v13, 0x0

    invoke-direct {v2, v4, v13, v13}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 435
    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-array v14, v3, [F

    aput v10, v14, v5

    aput v10, v14, v6

    aput v10, v14, v7

    aput v10, v14, v8

    aput v0, v14, v9

    aput v0, v14, v11

    aput v0, v14, v12

    aput v0, v14, v1

    invoke-direct {v4, v14, v13, v13}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 437
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 438
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 439
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 440
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->getLightThemeColor()I

    move-result v8

    .line 444
    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v9, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 445
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 446
    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v8, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v8, v5

    aput-object v9, v8, v6

    invoke-direct {v4, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 450
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v7, v5

    aput-object v2, v7, v6

    invoke-direct {v0, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 452
    iget-object v1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardStatusButtonBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 453
    iget-object v1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardButtonBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 455
    iget v0, p0, Llayout/statusBar/StatusBarLayout;->helpCardTitleId:I

    if-gtz v0, :cond_0

    .line 456
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardStatusButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initHelpCard()V
    .locals 7

    .line 461
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 462
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->getLightThemeColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    iget-object v1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardBorder:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget v0, p0, Llayout/statusBar/StatusBarLayout;->helpCardTitleId:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const-string v0, "#%06X"

    .line 466
    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0xffffff

    iget v4, p0, Llayout/statusBar/StatusBarLayout;->themeColor:I

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Llayout/statusBar/StatusBarLayout;->helpCardTitleId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</font>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    iget-object v2, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v2, v2, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f110186

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    :cond_0
    iget v0, p0, Llayout/statusBar/StatusBarLayout;->helpCardDescriptionId:I

    if-lez v0, :cond_1

    .line 472
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardDescription:Landroid/widget/TextView;

    iget v2, p0, Llayout/statusBar/StatusBarLayout;->helpCardDescriptionId:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 475
    :cond_1
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardDots:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v2, v2, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 477
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Llayout/statusBar/StatusBarLayout;->helpCardAdapter:Llayout/statusBar/StatusBarHelpCardAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 479
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->initPagerButtons()V

    .line 481
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Llayout/statusBar/StatusBarLayout$13;

    invoke-direct {v1, p0}, Llayout/statusBar/StatusBarLayout$13;-><init>(Llayout/statusBar/StatusBarLayout;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private initPagerButtons()V
    .locals 3

    .line 503
    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v0

    .line 505
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 506
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 507
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 508
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v2, p0, Llayout/statusBar/StatusBarLayout;->themeColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 510
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->leftPagerArrow:Landroid/widget/ImageView;

    const v2, 0x7f080104

    invoke-direct {p0, v1, v2}, Llayout/statusBar/StatusBarLayout;->getPagerArrowDrawable(Landroid/graphics/drawable/ShapeDrawable;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 511
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->rightPagerArrow:Landroid/widget/ImageView;

    const v2, 0x7f08010b

    invoke-direct {p0, v1, v2}, Llayout/statusBar/StatusBarLayout;->getPagerArrowDrawable(Landroid/graphics/drawable/ShapeDrawable;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 513
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->leftPagerArrow:Landroid/widget/ImageView;

    new-instance v1, Llayout/statusBar/StatusBarLayout$14;

    invoke-direct {v1, p0}, Llayout/statusBar/StatusBarLayout$14;-><init>(Llayout/statusBar/StatusBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->rightPagerArrow:Landroid/widget/ImageView;

    new-instance v1, Llayout/statusBar/StatusBarLayout$15;

    invoke-direct {v1, p0}, Llayout/statusBar/StatusBarLayout$15;-><init>(Llayout/statusBar/StatusBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;Z)V
    .locals 9

    if-eqz p3, :cond_0

    .line 402
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->setOnVisuals()V

    goto :goto_0

    .line 404
    :cond_0
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->setOffVisuals()V

    .line 407
    :goto_0
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->initHelpButtons()V

    .line 409
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->initHelpCard()V

    if-nez p2, :cond_1

    .line 412
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->statusBarContainer:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 414
    :cond_1
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v1, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->statusSwitch:Llayout/statusBar/StatusBarSwitch;

    iget v3, p0, Llayout/statusBar/StatusBarLayout;->offColor:I

    iget v4, p0, Llayout/statusBar/StatusBarLayout;->themeColor:I

    iget v5, p0, Llayout/statusBar/StatusBarLayout;->offIcon:I

    iget v6, p0, Llayout/statusBar/StatusBarLayout;->onIcon:I

    move-object v2, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Llayout/statusBar/StatusBarSwitch;->initialize(Landroid/content/Context;IIIILlayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;Z)V

    :goto_1
    return-void
.end method

.method private setOffVisuals()V
    .locals 2

    .line 419
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->statusText:Landroid/widget/TextView;

    iget-object v1, p0, Llayout/statusBar/StatusBarLayout;->offStatusText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setOnVisuals()V
    .locals 2

    .line 423
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->statusText:Landroid/widget/TextView;

    iget-object v1, p0, Llayout/statusBar/StatusBarLayout;->onStatusText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showPagerArrow(Landroid/widget/ImageView;)V
    .locals 2

    .line 265
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 271
    new-instance v1, Llayout/statusBar/StatusBarLayout$7;

    invoke-direct {v1, p0, p1}, Llayout/statusBar/StatusBarLayout$7;-><init>(Llayout/statusBar/StatusBarLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 288
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private updatePagerButtonsVisibility()V
    .locals 4

    .line 535
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 536
    iget-object v1, p0, Llayout/statusBar/StatusBarLayout;->helpCardAdapter:Llayout/statusBar/StatusBarHelpCardAdapter;

    invoke-virtual {v1}, Llayout/statusBar/StatusBarHelpCardAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-ne v1, v2, :cond_0

    .line 540
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->leftPagerArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Llayout/statusBar/StatusBarLayout;->hidePagerArrow(Landroid/widget/ImageView;)V

    .line 541
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->rightPagerArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Llayout/statusBar/StatusBarLayout;->hidePagerArrow(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-le v1, v2, :cond_1

    .line 545
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->leftPagerArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Llayout/statusBar/StatusBarLayout;->hidePagerArrow(Landroid/widget/ImageView;)V

    .line 546
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->rightPagerArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Llayout/statusBar/StatusBarLayout;->showPagerArrow(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    if-le v1, v2, :cond_2

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_2

    .line 550
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->leftPagerArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Llayout/statusBar/StatusBarLayout;->showPagerArrow(Landroid/widget/ImageView;)V

    .line 551
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->rightPagerArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Llayout/statusBar/StatusBarLayout;->showPagerArrow(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    if-le v1, v2, :cond_3

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    .line 555
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->leftPagerArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Llayout/statusBar/StatusBarLayout;->showPagerArrow(Landroid/widget/ImageView;)V

    .line 556
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->rightPagerArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Llayout/statusBar/StatusBarLayout;->hidePagerArrow(Landroid/widget/ImageView;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 579
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04e9

    if-ne v0, v1, :cond_0

    .line 580
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 582
    :cond_0
    iget-object p2, p0, Llayout/statusBar/StatusBarLayout;->helpCardAdapter:Llayout/statusBar/StatusBarHelpCardAdapter;

    invoke-virtual {p2, p1}, Llayout/statusBar/StatusBarHelpCardAdapter;->addView(Landroid/view/View;)I

    .line 583
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->helpCardAdapter:Llayout/statusBar/StatusBarHelpCardAdapter;

    invoke-virtual {p1}, Llayout/statusBar/StatusBarHelpCardAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public initialize(Landroid/content/Context;Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;ZLlayout/StatusBarFragment$IHelpCardListener;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 326
    new-instance v0, Llayout/statusBar/StatusBarLayout$9;

    invoke-direct {v0, p0, p2}, Llayout/statusBar/StatusBarLayout$9;-><init>(Llayout/statusBar/StatusBarLayout;Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 341
    :goto_0
    iget-object p2, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardButton:Landroid/widget/FrameLayout;

    new-instance v1, Llayout/statusBar/StatusBarLayout$10;

    invoke-direct {v1, p0}, Llayout/statusBar/StatusBarLayout$10;-><init>(Llayout/statusBar/StatusBarLayout;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object p2, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardStatusButton:Landroid/widget/FrameLayout;

    new-instance v1, Llayout/statusBar/StatusBarLayout$11;

    invoke-direct {v1, p0, p4}, Llayout/statusBar/StatusBarLayout$11;-><init>(Llayout/statusBar/StatusBarLayout;Llayout/StatusBarFragment$IHelpCardListener;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object p2, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->grayInnerOverlay:Landroid/widget/ImageView;

    new-instance p4, Llayout/statusBar/StatusBarLayout$12;

    invoke-direct {p4, p0}, Llayout/statusBar/StatusBarLayout$12;-><init>(Llayout/statusBar/StatusBarLayout;)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    invoke-direct {p0, p1}, Llayout/statusBar/StatusBarLayout;->initGestureListener(Landroid/content/Context;)V

    .line 368
    invoke-direct {p0, p1, v0, p3}, Llayout/statusBar/StatusBarLayout;->initView(Landroid/content/Context;Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;Z)V

    return-void
.end method

.method public initializeHelpCardVisibilitySubscriber(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V
    .locals 1

    .line 372
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->helpCardVisibilitySubscribers:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    if-nez v0, :cond_0

    .line 373
    iput-object p1, p0, Llayout/statusBar/StatusBarLayout;->helpCardVisibilitySubscribers:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 589
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->gestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setHelpCardVisibility(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, p1, v0, v0}, Llayout/statusBar/StatusBarLayout;->setHelpCardVisibility(ZZZ)V

    return-void
.end method

.method public setHelpCardVisibility(ZZZ)V
    .locals 5

    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCard:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/16 v0, 0x8

    if-nez p1, :cond_1

    iget-object v1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCard:Landroid/widget/RelativeLayout;

    .line 80
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    :cond_1
    iget-boolean v1, p0, Llayout/statusBar/StatusBarLayout;->isAnimating:Z

    if-eqz v1, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_4

    .line 87
    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010025

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 89
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->getHelpCardEntranceListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 91
    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f01000c

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 93
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->getHelpCardBackgroundEntranceListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 95
    iput-boolean v1, p0, Llayout/statusBar/StatusBarLayout;->isAnimating:Z

    .line 96
    iget-object v3, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v3, v3, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCard:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->grayInnerOverlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 99
    :cond_4
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCard:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->helpCardAdapter:Llayout/statusBar/StatusBarHelpCardAdapter;

    iget-object v3, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v3, v3, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Llayout/statusBar/StatusBarHelpCardAdapter;->playVideoAtIndex(ILandroid/content/Context;)V

    .line 101
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardStatusButton:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 102
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->updatePagerButtonsVisibility()V

    .line 105
    :goto_0
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->helpCardVisibilitySubscribers:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    .line 106
    invoke-interface {p1, v1, p2}, Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;->onHelpCardVisibilityChanged(ZZ)V

    .line 109
    :cond_5
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->grayInnerOverlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 111
    :cond_6
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->helpCardAdapter:Llayout/statusBar/StatusBarHelpCardAdapter;

    invoke-virtual {p1}, Llayout/statusBar/StatusBarHelpCardAdapter;->stopAllVideos()V

    if-eqz p2, :cond_7

    .line 114
    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f010026

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 116
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->getHelpCardExitListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 118
    invoke-virtual {p0}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f01000d

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 120
    invoke-direct {p0}, Llayout/statusBar/StatusBarLayout;->getHelpCardBackgroundExitListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 122
    iput-boolean v1, p0, Llayout/statusBar/StatusBarLayout;->isAnimating:Z

    .line 123
    iget-object v1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->grayInnerOverlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    iget-object v1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCard:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 126
    :cond_7
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->grayInnerOverlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCard:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardStatusButton:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 131
    :goto_1
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->helpCardVisibilitySubscribers:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    if-eqz p1, :cond_8

    if-eqz p3, :cond_8

    .line 132
    invoke-interface {p1, v2, p2}, Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;->onHelpCardVisibilityChanged(ZZ)V

    .line 135
    :cond_8
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->grayInnerOverlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setStatus(Z)V
    .locals 1

    .line 570
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout;->binding:Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->statusSwitch:Llayout/statusBar/StatusBarSwitch;

    invoke-virtual {v0, p1}, Llayout/statusBar/StatusBarSwitch;->setChecked(Z)V

    return-void
.end method

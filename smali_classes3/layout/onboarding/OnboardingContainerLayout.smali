.class public Llayout/onboarding/OnboardingContainerLayout;
.super Landroid/widget/FrameLayout;
.source "OnboardingContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;
    }
.end annotation


# instance fields
.field private backButton:Landroid/widget/ImageView;

.field private bubbleAnimatorContainer:Landroid/widget/ImageView;

.field private bubbleTriangle:Landroid/widget/ImageView;

.field private closeButton:Landroid/widget/ImageView;

.field private context:Landroid/content/Context;

.field private isAnimating:Z

.field private layoutContainer:Landroid/widget/FrameLayout;

.field private layoutPagerContainer:Landroid/widget/FrameLayout;

.field private nextButton:Landroid/widget/ImageView;

.field private smartHaloError:Landroid/widget/ImageView;

.field private smartHaloIcon:Landroid/widget/ImageView;

.field private smartHaloThinking:Landroid/widget/ImageView;

.field private transitionAnimatorContainer:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0, p1}, Llayout/onboarding/OnboardingContainerLayout;->initializeView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0, p1}, Llayout/onboarding/OnboardingContainerLayout;->initializeView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Llayout/onboarding/OnboardingContainerLayout;->transitionAnimatorContainer:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$102(Llayout/onboarding/OnboardingContainerLayout;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Llayout/onboarding/OnboardingContainerLayout;->isAnimating:Z

    return p1
.end method

.method static synthetic access$200(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Llayout/onboarding/OnboardingContainerLayout;->smartHaloThinking:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Llayout/onboarding/OnboardingContainerLayout;->smartHaloIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Llayout/onboarding/OnboardingContainerLayout;->bubbleTriangle:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Llayout/onboarding/OnboardingContainerLayout;->bubbleAnimatorContainer:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Llayout/onboarding/OnboardingContainerLayout;->layoutPagerContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Llayout/onboarding/OnboardingContainerLayout;->smartHaloError:Landroid/widget/ImageView;

    return-object p0
.end method

.method private createButtonDrawable(I)Landroid/graphics/drawable/ShapeDrawable;
    .locals 3

    .line 203
    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout;->context:Landroid/content/Context;

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v0

    .line 205
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 206
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 207
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 208
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v1
.end method

.method private getPagerArrowDrawable(Landroid/graphics/drawable/ShapeDrawable;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 3

    .line 199
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private initializeView(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    iput-object p1, p0, Llayout/onboarding/OnboardingContainerLayout;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    const v1, 0x7f0d00cf

    .line 66
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0335

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Llayout/onboarding/OnboardingContainerLayout;->layoutContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0a00bc

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Llayout/onboarding/OnboardingContainerLayout;->bubbleTriangle:Landroid/widget/ImageView;

    const v1, 0x7f0a00ba

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Llayout/onboarding/OnboardingContainerLayout;->bubbleAnimatorContainer:Landroid/widget/ImageView;

    const v1, 0x7f0a0588

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Llayout/onboarding/OnboardingContainerLayout;->transitionAnimatorContainer:Landroid/widget/ImageView;

    const v1, 0x7f0a04c3

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Llayout/onboarding/OnboardingContainerLayout;->smartHaloThinking:Landroid/widget/ImageView;

    const v1, 0x7f0a04c2

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Llayout/onboarding/OnboardingContainerLayout;->smartHaloIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a04c0

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Llayout/onboarding/OnboardingContainerLayout;->smartHaloError:Landroid/widget/ImageView;

    const v1, 0x7f0a0337

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Llayout/onboarding/OnboardingContainerLayout;->layoutPagerContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0a03b2

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Llayout/onboarding/OnboardingContainerLayout;->nextButton:Landroid/widget/ImageView;

    const v1, 0x7f0a0086

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Llayout/onboarding/OnboardingContainerLayout;->backButton:Landroid/widget/ImageView;

    const v1, 0x7f0a00f5

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Llayout/onboarding/OnboardingContainerLayout;->closeButton:Landroid/widget/ImageView;

    .line 79
    invoke-static {v0, p1}, Lbike/smarthalo/app/helpers/ActivityHelper;->initializeStatusBar(Landroid/view/View;Landroid/content/Context;)V

    const v1, 0x7f0a00f6

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHDimensionsHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout;->nextButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Llayout/onboarding/OnboardingContainerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Llayout/onboarding/OnboardingContainerLayout;->createButtonDrawable(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    const v1, 0x7f0801b2

    invoke-direct {p0, v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->getPagerArrowDrawable(Landroid/graphics/drawable/ShapeDrawable;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Llayout/onboarding/OnboardingContainerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Llayout/onboarding/OnboardingContainerLayout;->createButtonDrawable(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    const v1, 0x7f0801b0

    invoke-direct {p0, v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->getPagerArrowDrawable(Landroid/graphics/drawable/ShapeDrawable;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$playEntranceAnimation$3(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/animation/Animation;)V
    .locals 2

    .line 327
    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout;->smartHaloThinking:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout;->smartHaloThinking:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic lambda$setOnBackClickListener$1(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1

    .line 111
    iget-boolean v0, p0, Llayout/onboarding/OnboardingContainerLayout;->isAnimating:Z

    if-nez v0, :cond_0

    .line 112
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setOnCloseClickListener$2(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1

    .line 121
    iget-boolean v0, p0, Llayout/onboarding/OnboardingContainerLayout;->isAnimating:Z

    if-nez v0, :cond_0

    .line 122
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setOnNextClickListener$0(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Llayout/onboarding/OnboardingContainerLayout;->isAnimating:Z

    if-nez v0, :cond_0

    .line 102
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0453

    if-eq v0, v1, :cond_1

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00f6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object p2, p0, Llayout/onboarding/OnboardingContainerLayout;->layoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V
    .locals 6

    .line 147
    iget-boolean v0, p0, Llayout/onboarding/OnboardingContainerLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Llayout/onboarding/OnboardingContainerLayout;->isAnimating:Z

    .line 152
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0xc8

    .line 153
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 155
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 156
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 158
    new-instance v1, Llayout/onboarding/OnboardingContainerLayout$1;

    invoke-direct {v1, p0, p1, v5}, Llayout/onboarding/OnboardingContainerLayout$1;-><init>(Llayout/onboarding/OnboardingContainerLayout;Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    new-instance p1, Llayout/onboarding/OnboardingContainerLayout$2;

    invoke-direct {p1, p0}, Llayout/onboarding/OnboardingContainerLayout$2;-><init>(Llayout/onboarding/OnboardingContainerLayout;)V

    invoke-virtual {v5, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout;->transitionAnimatorContainer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout;->transitionAnimatorContainer:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public playEntranceAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V
    .locals 19

    move-object/from16 v0, p0

    .line 214
    iget-boolean v1, v0, Llayout/onboarding/OnboardingContainerLayout;->isAnimating:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 218
    iput-boolean v1, v0, Llayout/onboarding/OnboardingContainerLayout;->isAnimating:Z

    .line 220
    new-instance v9, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v2, 0x1f4

    .line 227
    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 229
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v7, 0x3e8

    .line 230
    invoke-virtual {v4, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 232
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v6, 0x0

    .line 233
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 234
    invoke-virtual {v5, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 236
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    const v11, 0x3dcccccd    # 0.1f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3dcccccd    # 0.1f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 245
    invoke-virtual {v7, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 246
    invoke-virtual {v7, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 247
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 249
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const v11, 0x3e99999a    # 0.3f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v10, v6

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 258
    invoke-virtual {v6, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 259
    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 260
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 262
    new-instance v1, Llayout/onboarding/OnboardingContainerLayout$3;

    invoke-direct {v1, v0, v4, v6, v7}, Llayout/onboarding/OnboardingContainerLayout$3;-><init>(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 286
    new-instance v1, Llayout/onboarding/OnboardingContainerLayout$4;

    invoke-direct {v1, v0, v5}, Llayout/onboarding/OnboardingContainerLayout$4;-><init>(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/animation/Animation;)V

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 305
    new-instance v1, Llayout/onboarding/OnboardingContainerLayout$5;

    move-object/from16 v2, p1

    invoke-direct {v1, v0, v2}, Llayout/onboarding/OnboardingContainerLayout$5;-><init>(Llayout/onboarding/OnboardingContainerLayout;Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    invoke-virtual {v5, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 326
    iget-object v1, v0, Llayout/onboarding/OnboardingContainerLayout;->context:Landroid/content/Context;

    const-wide/16 v2, 0x12c

    new-instance v4, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$Fo2GG9Cq8QNzyD9M3hRaLADY3yA;

    invoke-direct {v4, v0, v9}, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$Fo2GG9Cq8QNzyD9M3hRaLADY3yA;-><init>(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/animation/Animation;)V

    invoke-static {v1, v2, v3, v4}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    return-void
.end method

.method public playErrorAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V
    .locals 4

    .line 333
    iget-boolean v0, p0, Llayout/onboarding/OnboardingContainerLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Llayout/onboarding/OnboardingContainerLayout;->isAnimating:Z

    .line 338
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v1, 0x0

    .line 339
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v2, 0xc8

    .line 340
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v2, 0x4

    .line 341
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x2

    .line 342
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 344
    new-instance v2, Llayout/onboarding/OnboardingContainerLayout$6;

    invoke-direct {v2, p0, p1}, Llayout/onboarding/OnboardingContainerLayout$6;-><init>(Llayout/onboarding/OnboardingContainerLayout;Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 366
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout;->smartHaloIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout;->smartHaloError:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout;->smartHaloError:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public playExitAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V
    .locals 21

    move-object/from16 v0, p0

    .line 373
    iget-boolean v1, v0, Llayout/onboarding/OnboardingContainerLayout;->isAnimating:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 376
    iput-boolean v1, v0, Llayout/onboarding/OnboardingContainerLayout;->isAnimating:Z

    .line 378
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3dcccccd    # 0.1f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x1f4

    .line 387
    invoke-virtual {v11, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 388
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v11, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 390
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3e99999a    # 0.3f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    const/high16 v18, 0x3f000000    # 0.5f

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v12, v4

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 399
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 400
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 402
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 403
    invoke-virtual {v5, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 404
    invoke-virtual {v5, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    const/4 v1, 0x0

    .line 405
    invoke-virtual {v5, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    const-wide/16 v8, 0x12c

    .line 406
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 408
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 409
    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 411
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 412
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 413
    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 415
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 416
    invoke-virtual {v3, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 417
    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 419
    new-instance v4, Llayout/onboarding/OnboardingContainerLayout$7;

    invoke-direct {v4, v0, v2, v3}, Llayout/onboarding/OnboardingContainerLayout$7;-><init>(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/animation/AnimationSet;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v5, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 439
    new-instance v2, Llayout/onboarding/OnboardingContainerLayout$8;

    move-object/from16 v4, p1

    invoke-direct {v2, v0, v4}, Llayout/onboarding/OnboardingContainerLayout$8;-><init>(Llayout/onboarding/OnboardingContainerLayout;Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 462
    iget-object v2, v0, Llayout/onboarding/OnboardingContainerLayout;->bubbleAnimatorContainer:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iget-object v1, v0, Llayout/onboarding/OnboardingContainerLayout;->bubbleAnimatorContainer:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setBackButtonVisibility(Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout;->backButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 130
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setCloseButtonVisibility(Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout;->closeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 142
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setNextButtonVisibility(Z)V
    .locals 1

    .line 135
    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout;->nextButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 136
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 109
    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout;->backButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 110
    new-instance v1, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$ZPHIjua44X3C4P5H9yWr6DTQIxs;

    invoke-direct {v1, p0, p1}, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$ZPHIjua44X3C4P5H9yWr6DTQIxs;-><init>(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 119
    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout;->closeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 120
    new-instance v1, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$2TMzAssQAr2FMdGWnm3gajFVcVI;

    invoke-direct {v1, p0, p1}, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$2TMzAssQAr2FMdGWnm3gajFVcVI;-><init>(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnNextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 99
    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout;->nextButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 100
    new-instance v1, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$tIby-vItGPbISEUPfjetjo3bfbU;

    invoke-direct {v1, p0, p1}, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$tIby-vItGPbISEUPfjetjo3bfbU;-><init>(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public showWithoutAnimation()V
    .locals 2

    .line 467
    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout;->smartHaloIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout;->bubbleTriangle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout;->layoutPagerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

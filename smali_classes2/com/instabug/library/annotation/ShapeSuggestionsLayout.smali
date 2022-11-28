.class public Lcom/instabug/library/annotation/ShapeSuggestionsLayout;
.super Landroid/widget/LinearLayout;
.source "ShapeSuggestionsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/annotation/ShapeSuggestionsLayout$e;,
        Lcom/instabug/library/annotation/ShapeSuggestionsLayout$d;
    }
.end annotation


# instance fields
.field private a:F

.field private b:Lcom/instabug/library/annotation/ShapeSuggestionsLayout$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/lang/Runnable;

.field private e:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$a;

    invoke-direct {p2, p0}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$a;-><init>(Lcom/instabug/library/annotation/ShapeSuggestionsLayout;)V

    iput-object p2, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->d:Ljava/lang/Runnable;

    .line 11
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->e:Landroid/os/Handler;

    .line 25
    invoke-direct {p0, p1}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/annotation/ShapeSuggestionsLayout;)Lcom/instabug/library/annotation/ShapeSuggestionsLayout$d;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->b:Lcom/instabug/library/annotation/ShapeSuggestionsLayout$d;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 56
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/AttrResolver;->getDividerColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x11

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x40800000    # 4.0f

    .line 9
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->a:F

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 15
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/library/util/AttrResolver;->getBackgroundColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 17
    iget v1, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->a:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/library/util/AttrResolver;->getDividerColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/library/annotation/ShapeSuggestionsLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/library/annotation/ShapeSuggestionsLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->a:F

    return p0
.end method


# virtual methods
.method a()V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->c:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->c:Z

    .line 34
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$b;

    invoke-direct {v1, p0}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$b;-><init>(Lcom/instabug/library/annotation/ShapeSuggestionsLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public a(Landroid/graphics/Path;)V
    .locals 3

    .line 35
    new-instance v0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$e;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/library/util/AttrResolver;->getTintingColor(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$e;-><init>(Lcom/instabug/library/annotation/ShapeSuggestionsLayout;Landroid/content/Context;Landroid/graphics/Path;I)V

    .line 37
    new-instance p1, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$c;

    invoke-direct {p1, p0}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$c;-><init>(Lcom/instabug/library/annotation/ShapeSuggestionsLayout;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->a(I)V

    return-void
.end method

.method public b()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->c:Z

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 10
    iget-object v0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->e:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-boolean p1, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->c:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->a()V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->b()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->e:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public setOnShapeSelectedListener(Lcom/instabug/library/annotation/ShapeSuggestionsLayout$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->b:Lcom/instabug/library/annotation/ShapeSuggestionsLayout$d;

    return-void
.end method

.class public final Lcom/instabug/featuresrequest/ui/custom/c;
.super Ljava/lang/Object;
.source "InstaToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/featuresrequest/ui/custom/c$k;
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "RCN_REDUNDANT_NULLCHECK_OF_NONNULL_VALUE"
    }
.end annotation


# static fields
.field public static final g:Landroid/view/animation/Interpolator;

.field private static final h:Landroid/os/Handler;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

.field private d:I

.field private e:Lcom/instabug/featuresrequest/ui/custom/c$k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lcom/instabug/featuresrequest/ui/custom/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/instabug/featuresrequest/ui/custom/c;->g:Landroid/view/animation/Interpolator;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/instabug/featuresrequest/ui/custom/c$c;

    invoke-direct {v2}, Lcom/instabug/featuresrequest/ui/custom/c$c;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/instabug/featuresrequest/ui/custom/c;->h:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->e:Lcom/instabug/featuresrequest/ui/custom/c$k;

    .line 242
    new-instance v0, Lcom/instabug/featuresrequest/ui/custom/c$e;

    invoke-direct {v0, p0}, Lcom/instabug/featuresrequest/ui/custom/c$e;-><init>(Lcom/instabug/featuresrequest/ui/custom/c;)V

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->f:Lcom/instabug/featuresrequest/ui/custom/d$b;

    .line 243
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->a:Landroid/view/ViewGroup;

    .line 244
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->b:Landroid/content/Context;

    .line 245
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 246
    sget v0, Lcom/instabug/featuresrequest/R$layout;->ib_fr_insta_toast_layout:I

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    return-void
.end method

.method public static a(FLandroid/content/Context;)F
    .locals 1

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 27
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    mul-float p0, p0, p1

    return p0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2

    .line 35
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_1

    .line 38
    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    invoke-static {p0}, Lcom/instabug/featuresrequest/ui/custom/c;->a(Landroid/graphics/drawable/VectorDrawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported drawable type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroid/graphics/drawable/VectorDrawable;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 30
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->setBounds(IIII)V

    .line 34
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 18
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 20
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 21
    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/custom/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {p1, p2, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v0

    :cond_1
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0, v0, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p1
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/instabug/featuresrequest/ui/custom/c;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    new-instance v0, Lcom/instabug/featuresrequest/ui/custom/c;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-direct {v0, p0}, Lcom/instabug/featuresrequest/ui/custom/c;-><init>(Landroid/view/ViewGroup;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/instabug/featuresrequest/ui/custom/c;->a(Ljava/lang/CharSequence;)Lcom/instabug/featuresrequest/ui/custom/c;

    .line 5
    invoke-virtual {v0, p2}, Lcom/instabug/featuresrequest/ui/custom/c;->c(I)Lcom/instabug/featuresrequest/ui/custom/c;

    return-object v0
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/custom/c;)Lcom/instabug/featuresrequest/ui/custom/d$b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->f:Lcom/instabug/featuresrequest/ui/custom/d$b;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/custom/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/c;->f(I)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/featuresrequest/ui/custom/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/custom/c;->g()V

    return-void
.end method

.method static synthetic b(Lcom/instabug/featuresrequest/ui/custom/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/c;->g(I)V

    return-void
.end method

.method static synthetic c(Lcom/instabug/featuresrequest/ui/custom/c;)Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/instabug/featuresrequest/ui/custom/c;)Lcom/instabug/featuresrequest/ui/custom/c$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->e:Lcom/instabug/featuresrequest/ui/custom/c$k;

    return-object p0
.end method

.method private e(I)V
    .locals 4

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0xfa

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    .line 67
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v3, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    .line 68
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v3, Lcom/instabug/featuresrequest/ui/custom/c;->g:Landroid/view/animation/Interpolator;

    .line 69
    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/c$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/featuresrequest/ui/custom/c$a;-><init>(Lcom/instabug/featuresrequest/ui/custom/c;I)V

    .line 71
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/instabug/featuresrequest/R$anim;->ib_fr_top_out:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 85
    sget-object v3, Lcom/instabug/featuresrequest/ui/custom/c;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/c$b;

    invoke-direct {v1, p0, p1}, Lcom/instabug/featuresrequest/ui/custom/c$b;-><init>(Lcom/instabug/featuresrequest/ui/custom/c;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 101
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method static synthetic f()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/ui/custom/c;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private f(I)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/d;->a()Lcom/instabug/featuresrequest/ui/custom/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->f:Lcom/instabug/featuresrequest/ui/custom/d$b;

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/instabug/featuresrequest/ui/custom/d;->a(Lcom/instabug/featuresrequest/ui/custom/d$b;I)V

    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0xfa

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v3, Lcom/instabug/featuresrequest/ui/custom/c;->g:Landroid/view/animation/Interpolator;

    .line 5
    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/c$i;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/custom/c$i;-><init>(Lcom/instabug/featuresrequest/ui/custom/c;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/instabug/featuresrequest/R$anim;->ib_fr_top_in:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 27
    sget-object v3, Lcom/instabug/featuresrequest/ui/custom/c;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 29
    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/c$j;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/custom/c$j;-><init>(Lcom/instabug/featuresrequest/ui/custom/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 47
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method private g(I)V
    .locals 2

    .line 48
    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/d;->a()Lcom/instabug/featuresrequest/ui/custom/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->f:Lcom/instabug/featuresrequest/ui/custom/d$b;

    .line 49
    invoke-virtual {v0, v1}, Lcom/instabug/featuresrequest/ui/custom/d;->c(Lcom/instabug/featuresrequest/ui/custom/d$b;)V

    .line 51
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->e:Lcom/instabug/featuresrequest/ui/custom/c$k;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p0, p1}, Lcom/instabug/featuresrequest/ui/custom/c$k;->a(Lcom/instabug/featuresrequest/ui/custom/c;I)V

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 56
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 57
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 5
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->getDragState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public a(IF)Lcom/instabug/featuresrequest/ui/custom/c;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->b:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/instabug/featuresrequest/ui/custom/c;->a(FLandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/instabug/featuresrequest/ui/custom/c;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v1, 0x1

    .line 14
    aget-object v1, p2, v1

    const/4 v2, 0x2

    aget-object v2, p2, v2

    const/4 v3, 0x3

    aget-object p2, p2, v3

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "resource_id is not a valid drawable!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/instabug/featuresrequest/ui/custom/c;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x3

    .line 43
    invoke-direct {p0, v0}, Lcom/instabug/featuresrequest/ui/custom/c;->f(I)V

    return-void
.end method

.method final a(I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/custom/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/c;->e(I)V

    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/c;->g(I)V

    :goto_1
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    return-object v0
.end method

.method public b(I)Lcom/instabug/featuresrequest/ui/custom/c;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public b(IF)Lcom/instabug/featuresrequest/ui/custom/c;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->b:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/instabug/featuresrequest/ui/custom/c;->a(FLandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/instabug/featuresrequest/ui/custom/c;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 10
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v1, 0x0

    .line 11
    aget-object v1, p2, v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    const/4 v3, 0x3

    aget-object p2, p2, v3

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "resource_id is not a valid drawable!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(I)Lcom/instabug/featuresrequest/ui/custom/c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->d:I

    return-object p0
.end method

.method public c()Z
    .locals 2

    .line 3
    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/d;->a()Lcom/instabug/featuresrequest/ui/custom/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->f:Lcom/instabug/featuresrequest/ui/custom/d$b;

    .line 4
    invoke-virtual {v0, v1}, Lcom/instabug/featuresrequest/ui/custom/d;->b(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z

    move-result v0

    return v0
.end method

.method public d(I)Lcom/instabug/featuresrequest/ui/custom/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    iput p1, v0, Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;->c:I

    return-object p0
.end method

.method public d()V
    .locals 3

    .line 3
    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/d;->a()Lcom/instabug/featuresrequest/ui/custom/d;

    move-result-object v0

    iget v1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->d:I

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/custom/c;->f:Lcom/instabug/featuresrequest/ui/custom/d$b;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/instabug/featuresrequest/ui/custom/d;->a(ILcom/instabug/featuresrequest/ui/custom/d$b;)V

    .line 5
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/custom/c;->b()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/c$d;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/custom/c$d;-><init>(Lcom/instabug/featuresrequest/ui/custom/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/a;

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/custom/c;->f:Lcom/instabug/featuresrequest/ui/custom/d$b;

    invoke-direct {v1, v2}, Lcom/instabug/featuresrequest/ui/custom/a;-><init>(Lcom/instabug/featuresrequest/ui/custom/d$b;)V

    const v2, 0x3dcccccd    # 0.1f

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setStartAlphaSwipeDistance(F)V

    const v2, 0x3f19999a    # 0.6f

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setEndAlphaSwipeDistance(F)V

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setSwipeDirection(I)V

    .line 11
    new-instance v2, Lcom/instabug/featuresrequest/ui/custom/c$f;

    invoke-direct {v2, p0}, Lcom/instabug/featuresrequest/ui/custom/c$f;-><init>(Lcom/instabug/featuresrequest/ui/custom/c;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setListener(Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;)V

    .line 35
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/c$g;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/custom/c$g;-><init>(Lcom/instabug/featuresrequest/ui/custom/c;)V

    invoke-virtual {v0, v1}, Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;->setOnAttachStateChangeListener(Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout$a;)V

    .line 60
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/custom/c;->g()V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c;->c:Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/c$h;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/custom/c$h;-><init>(Lcom/instabug/featuresrequest/ui/custom/c;)V

    invoke-virtual {v0, v1}, Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;->setOnLayoutChangeListener(Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout$b;)V

    :goto_0
    return-void
.end method

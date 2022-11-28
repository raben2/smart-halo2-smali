.class public Lcom/instabug/library/invocation/d/b;
.super Ljava/lang/Object;
.source "FloatingButtonInvoker.java"

# interfaces
.implements Lcom/instabug/library/invocation/d/a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/invocation/d/b$g;,
        Lcom/instabug/library/invocation/d/b$d;,
        Lcom/instabug/library/invocation/d/b$e;,
        Lcom/instabug/library/invocation/d/b$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/invocation/d/a<",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field static final synthetic n:Z


# instance fields
.field private a:Landroid/widget/FrameLayout$LayoutParams;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:I

.field c:I

.field private d:I

.field private e:I

.field f:I

.field g:I

.field h:F

.field private i:Lcom/instabug/library/invocation/a;

.field private j:Lcom/instabug/library/invocation/d/b$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/instabug/library/invocation/d/b$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:I

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/invocation/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/instabug/library/invocation/d/b;->n:Z

    return-void
.end method

.method public constructor <init>(Lcom/instabug/library/invocation/a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/instabug/library/invocation/d/b;->c:I

    .line 3
    iput v0, p0, Lcom/instabug/library/invocation/d/b;->e:I

    .line 4
    iput v0, p0, Lcom/instabug/library/invocation/d/b;->f:I

    .line 5
    iput v0, p0, Lcom/instabug/library/invocation/d/b;->g:I

    .line 18
    iput-object p1, p0, Lcom/instabug/library/invocation/d/b;->i:Lcom/instabug/library/invocation/a;

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/b;Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/instabug/library/invocation/d/b;->a:Landroid/widget/FrameLayout$LayoutParams;

    return-object p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 11
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 8
    new-instance v0, Lcom/instabug/library/invocation/d/b$f;

    invoke-direct {v0, p1}, Lcom/instabug/library/invocation/d/b$f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/b;->j:Lcom/instabug/library/invocation/d/b$f;

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/instabug/library/invocation/d/b;->g:I

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/instabug/library/invocation/d/b;->h:F

    .line 13
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    iget v1, p0, Lcom/instabug/library/invocation/d/b;->d:I

    .line 17
    iget v2, p0, Lcom/instabug/library/invocation/d/b;->e:I

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/instabug/library/invocation/d/b;->e:I

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/instabug/library/invocation/d/b;->d:I

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 24
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/instabug/library/invocation/d/b;->f:I

    .line 27
    :cond_0
    iget v0, p0, Lcom/instabug/library/invocation/d/b;->h:F

    const/high16 v3, 0x42600000    # 56.0f

    mul-float v0, v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/instabug/library/invocation/d/b;->l:I

    .line 28
    new-instance v0, Lcom/instabug/library/invocation/d/b$e;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/invocation/d/b$e;-><init>(Lcom/instabug/library/invocation/d/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    .line 30
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 31
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 33
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x2

    .line 36
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v0, v4, v3

    .line 37
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    .line 39
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    .line 40
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 42
    iget-object v4, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/instabug/library/R$drawable;->ibg_core_ic_floating_btn:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    sget-boolean v4, Lcom/instabug/library/invocation/d/b;->n:Z

    if-nez v4, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 48
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->a:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_4

    .line 49
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInvocationSettings()Lcom/instabug/library/invocation/InvocationSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationSettings;->getFloatingButtonParams()Lcom/instabug/library/invocation/d/b$g;

    move-result-object v0

    iget-object v0, v0, Lcom/instabug/library/invocation/d/b$g;->a:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    sget-object v1, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;->LEFT:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    if-ne v0, v1, :cond_3

    .line 50
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/instabug/library/invocation/d/b;->l:I

    const/16 v2, 0x33

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/b;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    iget-object v1, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    invoke-virtual {v1, v0}, Lcom/instabug/library/invocation/d/b$e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInvocationSettings()Lcom/instabug/library/invocation/InvocationSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/invocation/InvocationSettings;->getFloatingButtonParams()Lcom/instabug/library/invocation/d/b$g;

    move-result-object v1

    iget v1, v1, Lcom/instabug/library/invocation/d/b$g;->b:I

    const/16 v2, -0xa

    invoke-virtual {v0, v2, v1}, Lcom/instabug/library/invocation/d/b$e;->a(II)V

    goto :goto_1

    .line 54
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/instabug/library/invocation/d/b;->l:I

    const/16 v2, 0x35

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/b;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    iget-object v1, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    invoke-virtual {v1, v0}, Lcom/instabug/library/invocation/d/b$e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    iget v1, p0, Lcom/instabug/library/invocation/d/b;->d:I

    add-int/lit8 v1, v1, 0xa

    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInvocationSettings()Lcom/instabug/library/invocation/InvocationSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/library/invocation/InvocationSettings;->getFloatingButtonParams()Lcom/instabug/library/invocation/d/b$g;

    move-result-object v2

    iget v2, v2, Lcom/instabug/library/invocation/d/b$g;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/invocation/d/b$e;->a(II)V

    goto :goto_1

    .line 60
    :cond_4
    iget v0, p0, Lcom/instabug/library/invocation/d/b;->b:I

    iget v4, p0, Lcom/instabug/library/invocation/d/b;->d:I

    mul-int v0, v0, v4

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 61
    iget v1, p0, Lcom/instabug/library/invocation/d/b;->c:I

    iget v4, p0, Lcom/instabug/library/invocation/d/b;->e:I

    mul-int v1, v1, v4

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 65
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/instabug/library/invocation/d/b;->b:I

    .line 66
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/instabug/library/invocation/d/b;->c:I

    .line 69
    iget-object v1, p0, Lcom/instabug/library/invocation/d/b;->a:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/instabug/library/invocation/d/b;->b:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 70
    iget v4, p0, Lcom/instabug/library/invocation/d/b;->d:I

    sub-int/2addr v4, v2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 71
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 72
    iget v2, p0, Lcom/instabug/library/invocation/d/b;->e:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 74
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/d/b$e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/b$e;->a(Lcom/instabug/library/invocation/d/b$e;)V

    .line 80
    :goto_1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->j:Lcom/instabug/library/invocation/d/b$f;

    iget-object v1, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->j:Lcom/instabug/library/invocation/d/b$f;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iput-boolean v3, p0, Lcom/instabug/library/invocation/d/b;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/b;->f()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/d/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/library/invocation/d/b;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/d/b;->a:Landroid/widget/FrameLayout$LayoutParams;

    return-object p0
.end method

.method static synthetic c(Lcom/instabug/library/invocation/d/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/b;->d:I

    return p0
.end method

.method static synthetic d(Lcom/instabug/library/invocation/d/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/b;->l:I

    return p0
.end method

.method static synthetic e(Lcom/instabug/library/invocation/d/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/b;->e:I

    return p0
.end method

.method private f()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->j:Lcom/instabug/library/invocation/d/b$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->j:Lcom/instabug/library/invocation/d/b$f;

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->j:Lcom/instabug/library/invocation/d/b$f;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    iget-object v1, p0, Lcom/instabug/library/invocation/d/b;->j:Lcom/instabug/library/invocation/d/b$f;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    instance-of v1, v0, Lcom/instabug/library/_InstabugActivity;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/instabug/library/invocation/d/b$a;

    invoke-direct {v1, p0, v0}, Lcom/instabug/library/invocation/d/b$a;-><init>(Lcom/instabug/library/invocation/d/b;Landroid/app/Activity;)V

    invoke-static {v1}, Lcom/instabug/library/util/threading/PoolProvider;->postMainThreadTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/instabug/library/invocation/d/b;->m:Z

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/b;->m:Z

    .line 3
    new-instance v0, Lcom/instabug/library/invocation/d/b$b;

    invoke-direct {v0, p0}, Lcom/instabug/library/invocation/d/b$b;-><init>(Lcom/instabug/library/invocation/d/b;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postMainThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Landroid/graphics/Rect;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/instabug/library/invocation/d/b$e;->e:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/instabug/library/invocation/d/b$e;->f:F

    cmpl-float v2, v3, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 8
    iget-object v2, p0, Lcom/instabug/library/invocation/d/b;->k:Lcom/instabug/library/invocation/d/b$e;

    iget v4, v2, Lcom/instabug/library/invocation/d/b$e;->f:F

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    .line 9
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v1, v1

    float-to-int v3, v3

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-direct {v2, v1, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 10
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 2
    new-instance v0, Lcom/instabug/library/invocation/d/b$c;

    invoke-direct {v0, p0}, Lcom/instabug/library/invocation/d/b$c;-><init>(Lcom/instabug/library/invocation/d/b;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postMainThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/b;->f()V

    .line 2
    iget-object p1, p0, Lcom/instabug/library/invocation/d/b;->i:Lcom/instabug/library/invocation/a;

    invoke-interface {p1}, Lcom/instabug/library/invocation/a;->a()V

    .line 3
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/instabug/library/invocation/InvocationManager;->setLastUsedInvoker(Lcom/instabug/library/invocation/d/a;)V

    return-void
.end method

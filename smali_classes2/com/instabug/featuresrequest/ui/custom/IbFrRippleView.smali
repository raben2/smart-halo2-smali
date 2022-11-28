.class public Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;
.super Landroid/widget/LinearLayout;
.source "IbFrRippleView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$c;,
        Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:F

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:I

.field private p:F

.field private q:Landroid/view/animation/ScaleAnimation;

.field private r:Ljava/lang/Boolean;

.field private s:Ljava/lang/Boolean;

.field private t:Ljava/lang/Integer;

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/Bitmap;

.field private w:I

.field private x:I

.field private y:Landroid/view/GestureDetector;

.field private z:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$a;

    invoke-direct {p1, p0}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$a;-><init>(Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;)V

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a:Ljava/lang/Runnable;

    const/16 p1, 0xa

    .line 10
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->d:I

    const/16 p1, 0xc8

    .line 11
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->e:I

    const/16 v0, 0x5a

    .line 12
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->f:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->h:F

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->i:Z

    .line 16
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->j:I

    .line 17
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->k:I

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->l:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 19
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->m:F

    .line 20
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->n:F

    .line 21
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->o:I

    const/4 p1, 0x2

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->t:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$a;

    invoke-direct {v0, p0}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$a;-><init>(Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;)V

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a:Ljava/lang/Runnable;

    const/16 v0, 0xa

    .line 36
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->d:I

    const/16 v0, 0xc8

    .line 37
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->e:I

    const/16 v1, 0x5a

    .line 38
    iput v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->f:I

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->h:F

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->i:Z

    .line 42
    iput v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->j:I

    .line 43
    iput v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->k:I

    const/4 v1, -0x1

    .line 44
    iput v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->l:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 45
    iput v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->m:F

    .line 46
    iput v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->n:F

    .line 47
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->o:I

    const/4 v0, 0x2

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->t:Ljava/lang/Integer;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance p3, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$a;

    invoke-direct {p3, p0}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$a;-><init>(Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;)V

    iput-object p3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a:Ljava/lang/Runnable;

    const/16 p3, 0xa

    .line 76
    iput p3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->d:I

    const/16 p3, 0xc8

    .line 77
    iput p3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->e:I

    const/16 v0, 0x5a

    .line 78
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->f:I

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->h:F

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->i:Z

    .line 82
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->j:I

    .line 83
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->k:I

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->l:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 85
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->m:F

    .line 86
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->n:F

    .line 87
    iput p3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->o:I

    const/4 p3, 0x2

    .line 92
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->t:Ljava/lang/Integer;

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(I)Landroid/graphics/Bitmap;
    .locals 8

    .line 94
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->v:Landroid/graphics/Bitmap;

    .line 95
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 96
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 99
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 100
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->m:F

    int-to-float p1, p1

    sub-float v5, v4, p1

    float-to-int v5, v5

    iget v6, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->n:F

    sub-float v7, v6, p1

    float-to-int v7, v7

    add-float/2addr v4, p1

    float-to-int v4, v4

    add-float/2addr v6, p1

    float-to-int v6, v6

    invoke-direct {v3, v5, v7, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    .line 103
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, 0x0

    .line 104
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 105
    iget v4, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->m:F

    iget v5, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->n:F

    invoke-virtual {v1, v4, v5, p1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 107
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 108
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private a(FF)V
    .locals 3

    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->i:Z

    if-nez v0, :cond_5

    .line 54
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->q:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    :cond_0
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->b:I

    iget v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->h:F

    .line 59
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    .line 60
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->h:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->h:F

    .line 62
    :cond_1
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->h:F

    iget v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->h:F

    .line 64
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->m:F

    .line 69
    iput p2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->n:F

    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->m:F

    .line 71
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->n:F

    .line 77
    :goto_1
    iput-boolean v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->i:Z

    .line 79
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->t:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->v:Landroid/graphics/Bitmap;

    if-nez p1, :cond_4

    .line 80
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->v:Landroid/graphics/Bitmap;

    .line 82
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_5
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/instabug/featuresrequest/R$styleable;->IbFrRippleView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    sget v0, Lcom/instabug/featuresrequest/R$styleable;->IbFrRippleView_ib_fr_rv_color:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/featuresrequest/R$color;->ib_fr_ripple_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->w:I

    .line 10
    sget v0, Lcom/instabug/featuresrequest/R$styleable;->IbFrRippleView_ib_fr_rv_type:I

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->t:Ljava/lang/Integer;

    .line 11
    sget v0, Lcom/instabug/featuresrequest/R$styleable;->IbFrRippleView_ib_fr_rv_zoom:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->r:Ljava/lang/Boolean;

    .line 12
    sget v0, Lcom/instabug/featuresrequest/R$styleable;->IbFrRippleView_ib_fr_rv_centered:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->s:Ljava/lang/Boolean;

    .line 13
    sget v0, Lcom/instabug/featuresrequest/R$styleable;->IbFrRippleView_ib_fr_rv_rippleDuration:I

    const/16 v2, 0xc8

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->e:I

    .line 15
    sget v0, Lcom/instabug/featuresrequest/R$styleable;->IbFrRippleView_ib_fr_rv_framerate:I

    iget v3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->d:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->d:I

    .line 16
    sget v0, Lcom/instabug/featuresrequest/R$styleable;->IbFrRippleView_ib_fr_rv_alpha:I

    iget v3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->f:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->f:I

    .line 17
    sget v0, Lcom/instabug/featuresrequest/R$styleable;->IbFrRippleView_ib_fr_rv_ripplePadding:I

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->x:I

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->g:Landroid/os/Handler;

    .line 20
    sget v0, Lcom/instabug/featuresrequest/R$styleable;->IbFrRippleView_ib_fr_rv_zoomScale:I

    const v4, 0x3f83d70a    # 1.03f

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->p:F

    .line 21
    sget v0, Lcom/instabug/featuresrequest/R$styleable;->IbFrRippleView_ib_fr_rv_zoomDuration:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->o:I

    .line 22
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->u:Landroid/graphics/Paint;

    .line 24
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->u:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->u:Landroid/graphics/Paint;

    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->w:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->u:Landroid/graphics/Paint;

    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->f:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 28
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 30
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$b;

    invoke-direct {v0, p0}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$b;-><init>(Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->y:Landroid/view/GestureDetector;

    .line 50
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 51
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 7

    .line 83
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/AdapterView;

    .line 85
    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 86
    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 87
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a(FF)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->i:Z

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->e:I

    iget v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->j:I

    iget v2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->d:I

    mul-int v1, v1, v2

    const/4 v3, -0x1

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->i:Z

    .line 6
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->j:I

    .line 7
    iput v3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->l:I

    .line 8
    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->k:I

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 16
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->z:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$c;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$c;->a(Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;)V

    :cond_1
    return-void

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a:Ljava/lang/Runnable;

    int-to-long v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->j:I

    if-nez v0, :cond_3

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    :cond_3
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->m:F

    iget v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->n:F

    iget v2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->h:F

    iget v4, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->j:I

    int-to-float v4, v4

    iget v5, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->d:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget v5, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->e:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v2, v2, v4

    iget-object v4, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 28
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->u:Landroid/graphics/Paint;

    const-string v1, "#ffff4444"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->j:I

    int-to-float v2, v0

    iget v4, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->d:I

    int-to-float v5, v4

    mul-float v2, v2, v5

    iget v5, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->e:I

    int-to-float v6, v5

    div-float/2addr v2, v6

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_5

    .line 32
    iget v2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->l:I

    if-ne v2, v3, :cond_4

    mul-int v0, v0, v4

    sub-int/2addr v5, v0

    .line 33
    iput v5, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->l:I

    .line 35
    :cond_4
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->k:I

    .line 36
    iget v2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->h:F

    int-to-float v0, v0

    iget v3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->d:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    iget v3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->l:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-direct {p0, v0}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->u:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    :cond_5
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->u:Landroid/graphics/Paint;

    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->w:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->t:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 45
    iget p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->j:I

    int-to-float p1, p1

    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->d:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget v2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->e:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    const v2, 0x3f19999a    # 0.6f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    .line 46
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->u:Landroid/graphics/Paint;

    iget v2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->f:I

    int-to-float v2, v2

    iget v3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->k:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->l:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    mul-float v3, v3, v2

    sub-float/2addr v2, v3

    float-to-int v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 49
    :cond_6
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->u:Landroid/graphics/Paint;

    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->f:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 51
    :cond_7
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->u:Landroid/graphics/Paint;

    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->f:I

    int-to-float v0, v0

    iget v2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->j:I

    int-to-float v2, v2

    iget v3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->d:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget v3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->e:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v2, v2, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 54
    :goto_0
    iget p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->j:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->j:I

    :cond_8
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    return-void
.end method

.method public getFrameRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->d:I

    return v0
.end method

.method public getRippleAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->f:I

    return v0
.end method

.method public getRippleColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->w:I

    return v0
.end method

.method public getRippleDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->e:I

    return v0
.end method

.method public getRipplePadding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->x:I

    return v0
.end method

.method public getRippleType()Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;->values()[Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->t:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getZoomDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->o:I

    return v0
.end method

.method public getZoomScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->p:F

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->b:I

    .line 3
    iput p2, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->c:I

    .line 5
    new-instance p3, Landroid/view/animation/ScaleAnimation;

    iget v4, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->p:F

    int-to-float p1, p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float v5, p1, p4

    int-to-float p1, p2

    div-float v6, p1, p4

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p3

    move v2, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object p3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->q:Landroid/view/animation/ScaleAnimation;

    .line 6
    iget p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->o:I

    int-to-long p1, p1

    invoke-virtual {p3, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 7
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->q:Landroid/view/animation/ScaleAnimation;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 8
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->q:Landroid/view/animation/ScaleAnimation;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->y:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a(Ljava/lang/Boolean;)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCentered(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->s:Ljava/lang/Boolean;

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->d:I

    return-void
.end method

.method public setOnRippleCompleteListener(Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->z:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$c;

    return-void
.end method

.method public setRippleAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->f:I

    return-void
.end method

.method public setRippleColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->w:I

    return-void
.end method

.method public setRippleDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->e:I

    return-void
.end method

.method public setRipplePadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->x:I

    return-void
.end method

.method public setRippleType(Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->t:Ljava/lang/Integer;

    return-void
.end method

.method public setZoomDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->o:I

    return-void
.end method

.method public setZoomScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->p:F

    return-void
.end method

.method public setZooming(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->r:Ljava/lang/Boolean;

    return-void
.end method

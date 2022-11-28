.class public Lcom/instabug/library/l/f/b/a;
.super Lcom/instabug/library/view/IconView;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/l/f/b/a$b;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private f:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:I

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/library/l/f/b/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/library/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/l/f/b/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(IF)I
    .locals 3

    const/4 v0, 0x3

    .line 66
    new-array v0, v0, [F

    .line 67
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 69
    aget v2, v0, v1

    mul-float v2, v2, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    aput p2, v0, v1

    .line 71
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private a(F)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 56
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    .line 57
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, -0x101009e

    aput v4, v2, v3

    iget v4, p0, Lcom/instabug/library/l/f/b/a;->c:I

    .line 58
    invoke-direct {p0, v4, p1}, Lcom/instabug/library/l/f/b/a;->b(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 59
    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 61
    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    iget v2, p0, Lcom/instabug/library/l/f/b/a;->b:I

    .line 62
    invoke-direct {p0, v2, p1}, Lcom/instabug/library/l/f/b/a;->b(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 65
    new-array v1, v3, [I

    iget v2, p0, Lcom/instabug/library/l/f/b/a;->a:I

    invoke-direct {p0, v2, p1}, Lcom/instabug/library/l/f/b/a;->b(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private b(F)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 21
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 23
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, -0x1000000

    .line 27
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    const p1, 0x3ca3d70a    # 0.02f

    .line 28
    invoke-direct {p0, p1}, Lcom/instabug/library/l/f/b/a;->c(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-object v0
.end method

.method private b(IF)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 4
    invoke-direct {p0, p1}, Lcom/instabug/library/l/f/b/a;->f(I)I

    move-result p1

    .line 6
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 8
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/l/f/b/a;->c(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v2, v3

    const/16 p1, 0xff

    if-eq v0, p1, :cond_1

    .line 16
    iget-boolean p1, p0, Lcom/instabug/library/l/f/b/a;->l:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/instabug/library/l/f/b/a$b;

    invoke-direct {p1, v0, v2}, Lcom/instabug/library/l/f/b/a$b;-><init>(I[Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    float-to-int v8, p2

    const/4 v4, 0x1

    move-object v3, p1

    move v5, v8

    move v6, v8

    move v7, v8

    .line 20
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-object p1
.end method

.method private b()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->g:I

    if-nez v0, :cond_0

    sget v0, Lcom/instabug/library/R$dimen;->instabug_fab_size_normal:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/instabug/library/R$dimen;->instabug_fab_size_mini:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/instabug/library/l/f/b/a;->b(I)F

    move-result v0

    iput v0, p0, Lcom/instabug/library/l/f/b/a;->h:F

    return-void
.end method

.method private c(F)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private c(I)I
    .locals 1

    const v0, 0x3f666666    # 0.9f

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/l/f/b/a;->a(IF)I

    move-result p1

    return p1
.end method

.method private c(IF)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 3
    iget-boolean v0, p0, Lcom/instabug/library/l/f/b/a;->l:Z

    if-nez v0, :cond_0

    .line 4
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/instabug/library/l/f/b/a;->c(I)I

    move-result v8

    .line 10
    invoke-direct {p0, v8}, Lcom/instabug/library/l/f/b/a;->d(I)I

    move-result v7

    .line 11
    invoke-direct {p0, p1}, Lcom/instabug/library/l/f/b/a;->e(I)I

    move-result v4

    .line 12
    invoke-direct {p0, v4}, Lcom/instabug/library/l/f/b/a;->d(I)I

    move-result v5

    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    new-instance p2, Lcom/instabug/library/l/f/b/a$a;

    move-object v2, p2

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/instabug/library/l/f/b/a$a;-><init>(Lcom/instabug/library/l/f/b/a;IIIII)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    return-object v0
.end method

.method private c()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->h:F

    iget v1, p0, Lcom/instabug/library/l/f/b/a;->i:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/instabug/library/l/f/b/a;->k:I

    return-void
.end method

.method private d(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private e(I)I
    .locals 1

    const v0, 0x3f8ccccd    # 1.1f

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/l/f/b/a;->a(IF)I

    move-result p1

    return p1
.end method

.method private f(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method a(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 24
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method a()V
    .locals 12

    .line 25
    sget v0, Lcom/instabug/library/R$dimen;->instabug_fab_stroke_width:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/l/f/b/a;->b(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 28
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/instabug/library/l/f/b/a;->g:I

    if-nez v4, :cond_0

    sget v4, Lcom/instabug/library/R$drawable;->ibg_core_fab_bg_normal:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/instabug/library/R$drawable;->ibg_core_fab_bg_mini:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 30
    invoke-direct {p0, v0}, Lcom/instabug/library/l/f/b/a;->a(F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 31
    invoke-direct {p0, v0}, Lcom/instabug/library/l/f/b/a;->b(F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/a;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v2, v4

    invoke-direct {v8, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->g:I

    if-nez v0, :cond_1

    .line 36
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->h:F

    sget v2, Lcom/instabug/library/R$dimen;->instabug_fab_icon_size_normal:I

    invoke-virtual {p0, v2}, Lcom/instabug/library/l/f/b/a;->b(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    div-int/2addr v0, v3

    goto :goto_1

    .line 38
    :cond_1
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->h:F

    sget v2, Lcom/instabug/library/R$dimen;->instabug_fab_icon_size_mini:I

    invoke-virtual {p0, v2}, Lcom/instabug/library/l/f/b/a;->b(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    div-int/2addr v0, v3

    .line 41
    :goto_1
    iget v2, p0, Lcom/instabug/library/l/f/b/a;->i:F

    float-to-int v9, v2

    .line 42
    iget v3, p0, Lcom/instabug/library/l/f/b/a;->j:F

    sub-float v4, v2, v3

    float-to-int v10, v4

    add-float/2addr v2, v3

    float-to-int v11, v2

    const/4 v3, 0x1

    move-object v2, v8

    move v4, v9

    move v5, v10

    move v6, v9

    move v7, v11

    .line 45
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    int-to-float v2, v9

    sub-float/2addr v2, v1

    float-to-int v6, v2

    int-to-float v2, v10

    sub-float/2addr v2, v1

    float-to-int v5, v2

    int-to-float v2, v11

    sub-float/2addr v2, v1

    float-to-int v7, v2

    const/4 v3, 0x2

    move-object v2, v8

    move v4, v6

    .line 48
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    add-int v6, v9, v0

    add-int v5, v10, v0

    add-int v7, v11, v0

    const/4 v3, 0x3

    move v4, v6

    .line 52
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 55
    invoke-direct {p0, v8}, Lcom/instabug/library/l/f/b/a;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/R$styleable;->FloatingActionButton:[I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Lcom/instabug/library/R$styleable;->FloatingActionButton_instabug_fab_colorNormal:I

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/l/f/b/a;->a:I

    .line 5
    sget p2, Lcom/instabug/library/R$styleable;->FloatingActionButton_instabug_fab_colorPressed:I

    const v0, -0x333334

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/l/f/b/a;->b:I

    .line 7
    sget p2, Lcom/instabug/library/R$styleable;->FloatingActionButton_instabug_fab_colorDisabled:I

    const-string v0, "#EFEFF4"

    .line 8
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/l/f/b/a;->c:I

    .line 11
    sget p2, Lcom/instabug/library/R$styleable;->FloatingActionButton_instabug_fab_size:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/l/f/b/a;->g:I

    .line 12
    sget p2, Lcom/instabug/library/R$styleable;->FloatingActionButton_instabug_fab_icon:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/l/f/b/a;->e:I

    .line 13
    sget p2, Lcom/instabug/library/R$styleable;->FloatingActionButton_instabug_fab_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/library/l/f/b/a;->d:Ljava/lang/String;

    .line 14
    sget p2, Lcom/instabug/library/R$styleable;->FloatingActionButton_instabug_fab_stroke_visible:I

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/instabug/library/l/f/b/a;->l:Z

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    invoke-direct {p0}, Lcom/instabug/library/l/f/b/a;->b()V

    .line 19
    sget p1, Lcom/instabug/library/R$dimen;->instabug_fab_shadow_radius:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/l/f/b/a;->b(I)F

    move-result p1

    iput p1, p0, Lcom/instabug/library/l/f/b/a;->i:F

    .line 20
    sget p1, Lcom/instabug/library/R$dimen;->instabug_fab_shadow_offset:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/l/f/b/a;->b(I)F

    move-result p1

    iput p1, p0, Lcom/instabug/library/l/f/b/a;->j:F

    .line 21
    invoke-direct {p0}, Lcom/instabug/library/l/f/b/a;->c()V

    .line 23
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/a;->a()V

    return-void
.end method

.method b(I)F
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method public getColorDisabled()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->c:I

    return v0
.end method

.method public getColorNormal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->a:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->b:I

    return v0
.end method

.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/f/b/a;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->e:I

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/instabug/library/l/f/b/a;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method getLabelView()Landroid/widget/TextView;
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$id;->instabug_fab_label:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->g:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/f/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/instabug/library/l/f/b/a;->k:I

    invoke-virtual {p0, p1, p1}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColorDisabled(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->c:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/instabug/library/l/f/b/a;->c:I

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/a;->a()V

    :cond_0
    return-void
.end method

.method public setColorDisabledResId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/library/l/f/b/a;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/l/f/b/a;->setColorDisabled(I)V

    return-void
.end method

.method public setColorNormal(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->a:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/instabug/library/l/f/b/a;->a:I

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/a;->a()V

    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/library/l/f/b/a;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/l/f/b/a;->setColorNormal(I)V

    return-void
.end method

.method public setColorPressed(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->b:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/instabug/library/l/f/b/a;->b:I

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/a;->a()V

    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/library/l/f/b/a;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/l/f/b/a;->setColorPressed(I)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->e:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/instabug/library/l/f/b/a;->e:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/instabug/library/l/f/b/a;->f:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/a;->a()V

    :cond_0
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/f/b/a;->f:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/instabug/library/l/f/b/a;->e:I

    .line 3
    iput-object p1, p0, Lcom/instabug/library/l/f/b/a;->f:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/a;->a()V

    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use @FAB_SIZE constants only!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Lcom/instabug/library/l/f/b/a;->g:I

    if-eq v0, p1, :cond_2

    .line 5
    iput p1, p0, Lcom/instabug/library/l/f/b/a;->g:I

    .line 6
    invoke-direct {p0}, Lcom/instabug/library/l/f/b/a;->b()V

    .line 7
    invoke-direct {p0}, Lcom/instabug/library/l/f/b/a;->c()V

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/a;->a()V

    :cond_2
    return-void
.end method

.method public setStrokeVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/l/f/b/a;->l:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/library/l/f/b/a;->l:Z

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/a;->a()V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/instabug/library/l/f/b/a;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/a;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/a;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

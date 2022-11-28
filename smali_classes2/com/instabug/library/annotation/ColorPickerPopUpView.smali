.class public Lcom/instabug/library/annotation/ColorPickerPopUpView;
.super Landroid/view/View;
.source "ColorPickerPopUpView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/annotation/ColorPickerPopUpView$a;,
        Lcom/instabug/library/annotation/ColorPickerPopUpView$b;,
        Lcom/instabug/library/annotation/ColorPickerPopUpView$c;
    }
.end annotation


# static fields
.field private static final h:I


# instance fields
.field private a:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

.field private c:I

.field private d:Lcom/instabug/library/annotation/ColorPickerPopUpView$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:[I
    .annotation build Landroidx/annotation/Size;
        value = 0x7L
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/annotation/ColorPickerPopUpView$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xf7

    const/16 v1, 0xff

    .line 1
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/annotation/ColorPickerPopUpView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/library/annotation/ColorPickerPopUpView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x7

    .line 4
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->e:[I

    .line 23
    invoke-direct {p0, p2, p3}, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a(Landroid/util/AttributeSet;I)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xf300ff
        -0xfe04
        -0xf28501
        -0x8200
        -0x400
        -0x484849
    .end array-data
.end method

.method private static a([II)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 19
    aget v2, p0, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 71
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    .line 73
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 74
    iget-object v1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    iget-object v1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x43480000    # 200.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    iget-object v1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    iget-object v1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 81
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 82
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget v2, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 89
    iget-object v0, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;

    .line 91
    invoke-direct {p0, p1, v1}, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/ColorPickerPopUpView$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/ColorPickerPopUpView$a;)V
    .locals 10

    .line 20
    iget-object v0, p2, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;->a:Landroid/graphics/RectF;

    .line 21
    iget v1, p2, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;->b:I

    .line 26
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 27
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v5, v7

    add-float/2addr v5, v3

    iget v7, v0, Landroid/graphics/RectF;->top:F

    .line 29
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    add-float/2addr v8, v6

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v6, v8

    add-float/2addr v7, v6

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 30
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 31
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 33
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 34
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 39
    iget-boolean p2, p2, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;->c:Z

    if-eqz p2, :cond_0

    .line 40
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 41
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3e500150    # 0.20313f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 42
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    const v6, 0x3f04801f

    mul-float v5, v5, v6

    add-float/2addr v2, v5

    .line 43
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 45
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v5, 0x3ecc0054    # 0.39844f

    mul-float v2, v2, v5

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 46
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x3f380000    # 0.71875f

    mul-float v7, v7, v8

    add-float/2addr v2, v7

    .line 47
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v7, 0x3f4b7fe1

    mul-float v2, v2, v7

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 50
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    const v8, 0x3ea9003f    # 0.33008f

    mul-float v7, v7, v8

    add-float/2addr v2, v7

    .line 51
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v7, 0x3f3f8034

    mul-float v2, v2, v7

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 54
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x3e900000    # 0.28125f

    mul-float v7, v7, v8

    add-float/2addr v2, v7

    .line 55
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 57
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, v5

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v7, 0x3f200000    # 0.625f

    mul-float v5, v5, v7

    add-float/2addr v2, v5

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float v2, v2, v5

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    const v7, 0x3ef2007e    # 0.47266f

    mul-float v5, v5, v7

    add-float/2addr v2, v5

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 61
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 62
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v0, v0, v6

    add-float/2addr v2, v0

    .line 63
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 68
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, -0x1

    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/R$styleable;->ColorPickerPopUpView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lcom/instabug/library/annotation/ColorPickerPopUpView;->getScreenOrientation()Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

    move-result-object p2

    sget-object v0, Lcom/instabug/library/annotation/ColorPickerPopUpView$c;->PORTRAIT:Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/instabug/library/annotation/ColorPickerPopUpView$c;->LANDSCAPE:Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

    :goto_0
    iput-object v0, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->b:Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    sget p1, Lcom/instabug/library/annotation/ColorPickerPopUpView;->h:I

    iput p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->c:I

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    .line 13
    iget-object p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->e:[I

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget v1, p1, v0

    .line 14
    iget-object v3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    new-instance v4, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;

    invoke-direct {v4, v1}, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-direct {p0, v2}, Lcom/instabug/library/annotation/ColorPickerPopUpView;->setSelectedColor(I)V

    return-void
.end method

.method private getScreenOrientation()Lcom/instabug/library/annotation/ColorPickerPopUpView$c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/instabug/library/annotation/ColorPickerPopUpView$c;->LANDSCAPE:Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lcom/instabug/library/annotation/ColorPickerPopUpView$c;->PORTRAIT:Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

    return-object v0
.end method

.method private setSelectedColor(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->e:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->f:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v2, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;->c:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    iget-object v0, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->d:Lcom/instabug/library/annotation/ColorPickerPopUpView$b;

    if-eqz v0, :cond_2

    .line 9
    iget v1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->f:I

    invoke-interface {v0, v1, p1}, Lcom/instabug/library/annotation/ColorPickerPopUpView$b;->a(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getSelectedColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->f:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/annotation/ColorPickerPopUpView;->getScreenOrientation()Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/annotation/ColorPickerPopUpView$c;->PORTRAIT:Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/instabug/library/annotation/ColorPickerPopUpView$c;->LANDSCAPE:Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

    :goto_0
    iput-object v0, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->b:Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    mul-int/lit8 p2, p1, 0x37

    .line 6
    div-int/lit16 p2, p2, 0x1aa

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "selected_color"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->f:I

    const-string v0, "instabug_color_picker"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->e:[I

    iget v1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->f:I

    invoke-static {v0, v1}, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a([II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instabug/library/annotation/ColorPickerPopUpView;->setSelectedColor(I)V

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instabug_color_picker"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget v1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->f:I

    const-string v2, "selected_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 3
    iget-object p2, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->b:Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

    sget-object p3, Lcom/instabug/library/annotation/ColorPickerPopUpView$c;->LANDSCAPE:Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

    const/4 p4, 0x0

    if-ne p2, p3, :cond_1

    mul-int/lit8 p2, p1, 0x37

    int-to-float p2, p2

    const/high16 p3, 0x43cb0000    # 406.0f

    div-float/2addr p2, p3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->isTablet(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    new-instance p3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42dc0000    # 110.0f

    invoke-static {v0, v1}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-direct {p3, p4, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-direct {p3, p4, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    mul-int/lit8 p2, p1, 0x37

    int-to-float p2, p2

    const/high16 p3, 0x43d20000    # 420.0f

    div-float/2addr p2, p3

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->isTablet(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 13
    new-instance p3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-direct {p3, p4, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    goto :goto_0

    .line 15
    :cond_2
    new-instance p3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-direct {p3, p4, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->left:F

    .line 20
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v0, 0x3d35696e    # 0.04429f

    mul-float p3, p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p3, v1

    add-float/2addr p4, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->top:F

    .line 21
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    const v2, 0x3e4ccccd    # 0.2f

    mul-float p3, p3, v2

    add-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr v1, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    .line 22
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v4, 0x3dc9df11    # 0.09857f

    mul-float p3, p3, v4

    add-float/2addr p3, v0

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float p3, v4

    add-float/2addr v3, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v4, p3, Landroid/graphics/RectF;->top:F

    .line 23
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    const v5, 0x3f2a4010

    mul-float p3, p3, v5

    add-float/2addr p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float p3, v6

    add-float/2addr v4, p3

    invoke-direct {p2, p4, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;->a:Landroid/graphics/RectF;

    .line 26
    iget-object p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->left:F

    .line 27
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v1, 0x3e3fa1a1    # 0.18714f

    mul-float p3, p3, v1

    add-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr p4, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->top:F

    .line 28
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, v2

    add-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr v1, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    .line 29
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v4, 0x3e77396d    # 0.24143f

    mul-float p3, p3, v4

    add-float/2addr p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float p3, v6

    add-float/2addr v3, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v4, p3, Landroid/graphics/RectF;->top:F

    .line 30
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, v5

    add-float/2addr p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float p3, v6

    add-float/2addr v4, p3

    invoke-direct {p2, p4, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;->a:Landroid/graphics/RectF;

    .line 33
    iget-object p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->left:F

    .line 34
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float p3, p3, v1

    add-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr p4, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->top:F

    .line 35
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, v2

    add-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr v1, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    .line 36
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v4, 0x3ec4c1a9    # 0.38429f

    mul-float p3, p3, v4

    add-float/2addr p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float p3, v6

    add-float/2addr v3, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v4, p3, Landroid/graphics/RectF;->top:F

    .line 37
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, v5

    add-float/2addr p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float p3, v6

    add-float/2addr v4, p3

    invoke-direct {p2, p4, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;->a:Landroid/graphics/RectF;

    .line 40
    iget-object p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->left:F

    .line 41
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v1, 0x3ef21ab5    # 0.47286f

    mul-float p3, p3, v1

    add-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr p4, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->top:F

    .line 42
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, v2

    add-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr v1, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    .line 43
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v4, 0x3f06f2a6

    mul-float p3, p3, v4

    add-float/2addr p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float p3, v6

    add-float/2addr v3, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v4, p3, Landroid/graphics/RectF;->top:F

    .line 44
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, v5

    add-float/2addr p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float p3, v6

    add-float/2addr v4, p3

    invoke-direct {p2, p4, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;->a:Landroid/graphics/RectF;

    .line 47
    iget-object p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->left:F

    .line 48
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v1, 0x3f1d9f2c

    mul-float p3, p3, v1

    add-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr p4, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->top:F

    .line 49
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, v2

    add-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr v1, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    .line 50
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v4, 0x3f2b851f    # 0.67f

    mul-float p3, p3, v4

    add-float/2addr p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float p3, v6

    add-float/2addr v3, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v4, p3, Landroid/graphics/RectF;->top:F

    .line 51
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, v5

    add-float/2addr p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float p3, v6

    add-float/2addr v4, p3

    invoke-direct {p2, p4, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;->a:Landroid/graphics/RectF;

    .line 54
    iget-object p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    const/4 p2, 0x5

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->left:F

    .line 55
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v1, 0x3f4231a5

    mul-float p3, p3, v1

    add-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr p4, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->top:F

    .line 56
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, v2

    add-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr v1, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    .line 57
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v4, 0x3f501798

    mul-float p3, p3, v4

    add-float/2addr p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float p3, v6

    add-float/2addr v3, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v4, p3, Landroid/graphics/RectF;->top:F

    .line 58
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, v5

    add-float/2addr p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float p3, v6

    add-float/2addr v4, p3

    invoke-direct {p2, p4, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;->a:Landroid/graphics/RectF;

    .line 61
    iget-object p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    const/4 p2, 0x6

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->left:F

    .line 62
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v1, 0x3f66c41e

    mul-float p3, p3, v1

    add-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr p4, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->top:F

    .line 63
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, v2

    add-float/2addr p3, v0

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float p3, v2

    add-float/2addr v1, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v2, p3, Landroid/graphics/RectF;->left:F

    .line 64
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const v3, 0x3f74a969    # 0.95571f

    mul-float p3, p3, v3

    add-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr v2, p3

    iget-object p3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->a:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->top:F

    .line 65
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, v5

    add-float/2addr p3, v0

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float p3, v4

    add-float/2addr v3, p3

    invoke-direct {p2, p4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p1, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;->a:Landroid/graphics/RectF;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;

    invoke-virtual {v3}, Lcom/instabug/library/annotation/ColorPickerPopUpView$a;->a()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-direct {p0, v0}, Lcom/instabug/library/annotation/ColorPickerPopUpView;->setSelectedColor(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public setColors([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/Size;
            value = 0x7L
        .end annotation
    .end param

    .line 1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->e:[I

    return-void
.end method

.method public setOnColorSelectionListener(Lcom/instabug/library/annotation/ColorPickerPopUpView$b;)V
    .locals 0
    .param p1    # Lcom/instabug/library/annotation/ColorPickerPopUpView$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->d:Lcom/instabug/library/annotation/ColorPickerPopUpView$b;

    return-void
.end method

.method public setOrientation(Lcom/instabug/library/annotation/ColorPickerPopUpView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->b:Lcom/instabug/library/annotation/ColorPickerPopUpView$c;

    return-void
.end method

.method public setPopUpBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/annotation/ColorPickerPopUpView;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

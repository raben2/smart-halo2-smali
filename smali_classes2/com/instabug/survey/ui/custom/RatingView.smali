.class public Lcom/instabug/survey/ui/custom/RatingView;
.super Landroid/view/View;
.source "RatingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/survey/ui/custom/RatingView$c;,
        Lcom/instabug/survey/ui/custom/RatingView$b;,
        Lcom/instabug/survey/ui/custom/RatingView$a;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:Landroid/graphics/Paint;

.field private C:Landroid/graphics/Paint;

.field private D:F

.field private E:I

.field private F:F

.field private G:F

.field private H:F

.field private a:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private b:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private c:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private d:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private e:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private f:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private g:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private h:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private i:F

.field private j:F

.field private k:Lcom/instabug/survey/ui/custom/RatingView$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private l:F

.field private m:F

.field private n:Z

.field private o:F

.field private p:Lcom/instabug/survey/ui/custom/RatingView$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Z

.field private s:[F
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:Landroid/graphics/Canvas;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Landroid/graphics/Path;

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/graphics/CornerPathEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    const/high16 p1, 0x4f000000

    .line 3
    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->F:F

    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->G:F

    const/high16 p1, 0x40800000    # 4.0f

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/instabug/survey/ui/custom/RatingView;->a(FI)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    .line 9
    invoke-direct {p0}, Lcom/instabug/survey/ui/custom/RatingView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x5

    .line 11
    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    const/high16 p1, 0x4f000000

    .line 12
    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->F:F

    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->G:F

    const/high16 p1, 0x40800000    # 4.0f

    const/4 p2, 0x0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/instabug/survey/ui/custom/RatingView;->a(FI)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    .line 23
    invoke-direct {p0}, Lcom/instabug/survey/ui/custom/RatingView;->a()V

    .line 24
    invoke-direct {p0}, Lcom/instabug/survey/ui/custom/RatingView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    .line 26
    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    const/high16 p1, 0x4f000000

    .line 27
    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->F:F

    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->G:F

    const/high16 p1, 0x40800000    # 4.0f

    const/4 p2, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/instabug/survey/ui/custom/RatingView;->a(FI)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    .line 44
    invoke-direct {p0}, Lcom/instabug/survey/ui/custom/RatingView;->a()V

    .line 45
    invoke-direct {p0}, Lcom/instabug/survey/ui/custom/RatingView;->b()V

    return-void
.end method

.method private a(F)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    .line 126
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Assigned rating is less than 0 (%f < 0), I will set it to exactly 0"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RatingView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 128
    :cond_0
    iget v2, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    const/4 v2, 0x2

    .line 129
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v0

    iget p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Assigned rating is greater than numberOfStars (%f > %d), I will set it to exactly numberOfStars"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RatingView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    int-to-float p1, p1

    :cond_1
    return p1
.end method

.method private a(FI)F
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    return p1

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1

    .line 125
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private a(II)F
    .locals 5

    .line 26
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->G:F

    const/high16 v1, 0x4f000000

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 27
    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    iget v2, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/instabug/survey/ui/custom/RatingView;->b(FIFZ)I

    move-result v0

    int-to-float v0, v0

    .line 28
    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->G:F

    iget v2, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    iget v4, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/instabug/survey/ui/custom/RatingView;->a(FIFZ)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    int-to-float v0, p2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->G:F

    return p1

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    mul-float v0, v0, v2

    sub-float/2addr p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    .line 38
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    .line 44
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    mul-float v0, v0, v2

    sub-float/2addr p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    .line 46
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private a(FIFZ)I
    .locals 0

    .line 47
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    add-int/2addr p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-int/2addr p1, p2

    return p1
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->a:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/survey/R$color;->survey_rate_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->b:I

    .line 4
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/survey/R$color;->survey_rate_unselected_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/survey/R$color;->survey_rate_unselected_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->d:I

    .line 7
    iput v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->c:I

    .line 9
    iget v2, p0, Lcom/instabug/survey/ui/custom/RatingView;->a:I

    iput v2, p0, Lcom/instabug/survey/ui/custom/RatingView;->e:I

    .line 10
    iget v2, p0, Lcom/instabug/survey/ui/custom/RatingView;->b:I

    iput v2, p0, Lcom/instabug/survey/ui/custom/RatingView;->f:I

    .line 11
    iput v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->h:I

    .line 12
    iput v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->g:I

    const/4 v1, 0x5

    .line 14
    iput v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    const/high16 v1, 0x41800000    # 16.0f

    .line 16
    invoke-direct {p0, v1, v0}, Lcom/instabug/survey/ui/custom/RatingView;->a(FI)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x42a00000    # 80.0f

    goto :goto_1

    :cond_1
    const/high16 v1, 0x42500000    # 52.0f

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/instabug/survey/ui/custom/RatingView;->a(FI)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->G:F

    const/high16 v1, 0x4f000000

    .line 18
    iput v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->F:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    iput v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->i:F

    const/high16 v2, 0x40a00000    # 5.0f

    .line 20
    iput v2, p0, Lcom/instabug/survey/ui/custom/RatingView;->l:F

    .line 21
    iput v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->m:F

    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    .line 24
    iput-boolean v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->n:Z

    .line 25
    sget-object v0, Lcom/instabug/survey/ui/custom/RatingView$a;->Left:Lcom/instabug/survey/ui/custom/RatingView$a;

    iget v0, v0, Lcom/instabug/survey/ui/custom/RatingView$a;->id:I

    invoke-static {v0}, Lcom/instabug/survey/ui/custom/RatingView$a;->a(I)Lcom/instabug/survey/ui/custom/RatingView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->k:Lcom/instabug/survey/ui/custom/RatingView$a;

    return-void
.end method

.method private a(FF)V
    .locals 3

    .line 92
    iget-object p2, p0, Lcom/instabug/survey/ui/custom/RatingView;->k:Lcom/instabug/survey/ui/custom/RatingView$a;

    sget-object v0, Lcom/instabug/survey/ui/custom/RatingView$a;->Left:Lcom/instabug/survey/ui/custom/RatingView$a;

    if-eq p2, v0, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float p1, p2, p1

    .line 96
    :cond_0
    iget-object p2, p0, Lcom/instabug/survey/ui/custom/RatingView;->t:Landroid/graphics/RectF;

    if-nez p2, :cond_1

    return-void

    .line 99
    :cond_1
    iget v0, p2, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    .line 100
    iput v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    return-void

    .line 102
    :cond_2
    iget v2, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    .line 103
    iget p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    int-to-float p1, p1

    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    return-void

    :cond_3
    sub-float/2addr p1, v0

    .line 109
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr v0, p2

    mul-float v0, v0, p1

    iput v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    .line 112
    iget p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->i:F

    rem-float p2, v0, p1

    const/high16 v2, 0x40800000    # 4.0f

    div-float v2, p1, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_4

    sub-float/2addr v0, p2

    .line 114
    iput v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    .line 115
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    goto :goto_0

    :cond_4
    sub-float/2addr v0, p2

    add-float/2addr v0, p1

    .line 117
    iput v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    .line 118
    iget p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    int-to-float p1, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11

    .line 48
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    .line 49
    iget-object v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->t:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    .line 50
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 51
    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    move v9, v2

    move v2, v0

    const/4 v0, 0x0

    .line 52
    :goto_0
    iget v3, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    if-ge v0, v3, :cond_1

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v10

    if-ltz v3, :cond_0

    .line 54
    sget-object v8, Lcom/instabug/survey/ui/custom/RatingView$a;->Left:Lcom/instabug/survey/ui/custom/RatingView$a;

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p0

    move-object v4, p1

    move v5, v9

    move v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/instabug/survey/ui/custom/RatingView;->a(Landroid/graphics/Canvas;FFFLcom/instabug/survey/ui/custom/RatingView$a;)V

    sub-float/2addr v2, v10

    goto :goto_1

    .line 57
    :cond_0
    sget-object v8, Lcom/instabug/survey/ui/custom/RatingView$a;->Left:Lcom/instabug/survey/ui/custom/RatingView$a;

    move-object v3, p0

    move-object v4, p1

    move v5, v9

    move v6, v1

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/instabug/survey/ui/custom/RatingView;->a(Landroid/graphics/Canvas;FFFLcom/instabug/survey/ui/custom/RatingView$a;)V

    const/4 v2, 0x0

    .line 60
    :goto_1
    iget v3, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    iget v4, p0, Lcom/instabug/survey/ui/custom/RatingView;->o:F

    add-float/2addr v3, v4

    add-float/2addr v9, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFLcom/instabug/survey/ui/custom/RatingView$a;)V
    .locals 10

    .line 61
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->o:F

    mul-float v0, v0, p4

    .line 63
    iget-object p4, p0, Lcom/instabug/survey/ui/custom/RatingView;->s:[F

    if-nez p4, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object p4, p0, Lcom/instabug/survey/ui/custom/RatingView;->x:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 67
    iget-object p4, p0, Lcom/instabug/survey/ui/custom/RatingView;->x:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->s:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    add-float/2addr v2, p2

    const/4 v3, 0x1

    aget v1, v1, v3

    add-float/2addr v1, p3

    invoke-virtual {p4, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 p4, 0x2

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->s:[F

    array-length v2, v1

    if-ge p4, v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/RatingView;->x:Landroid/graphics/Path;

    aget v3, v1, p4

    add-float/2addr v3, p2

    add-int/lit8 v4, p4, 0x1

    aget v1, v1, v4

    add-float/2addr v1, p3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p4, p4, 0x2

    goto :goto_0

    .line 71
    :cond_1
    iget-object p4, p0, Lcom/instabug/survey/ui/custom/RatingView;->x:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    .line 74
    iget-object p4, p0, Lcom/instabug/survey/ui/custom/RatingView;->x:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 77
    sget-object p4, Lcom/instabug/survey/ui/custom/RatingView$a;->Left:Lcom/instabug/survey/ui/custom/RatingView$a;

    const v1, 0x3ca3d70a    # 0.02f

    if-ne p5, p4, :cond_2

    add-float v3, p2, v0

    .line 79
    iget p4, p0, Lcom/instabug/survey/ui/custom/RatingView;->o:F

    mul-float v1, v1, p4

    add-float v7, v3, v1

    add-float v8, p3, p4

    iget-object v9, p0, Lcom/instabug/survey/ui/custom/RatingView;->C:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 81
    iget p4, p0, Lcom/instabug/survey/ui/custom/RatingView;->o:F

    add-float v5, p2, p4

    add-float v6, p3, p4

    iget-object v7, p0, Lcom/instabug/survey/ui/custom/RatingView;->B:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 84
    :cond_2
    iget p4, p0, Lcom/instabug/survey/ui/custom/RatingView;->o:F

    add-float v5, p2, p4

    mul-float v1, v1, p4

    add-float/2addr v1, v0

    sub-float v3, v5, v1

    add-float v6, p3, p4

    iget-object v7, p0, Lcom/instabug/survey/ui/custom/RatingView;->C:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 86
    iget p4, p0, Lcom/instabug/survey/ui/custom/RatingView;->o:F

    add-float p5, p2, p4

    sub-float v4, p5, v0

    add-float v5, p3, p4

    iget-object v6, p0, Lcom/instabug/survey/ui/custom/RatingView;->B:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 90
    :goto_1
    iget-boolean p2, p0, Lcom/instabug/survey/ui/custom/RatingView;->n:Z

    if-eqz p2, :cond_3

    .line 91
    iget-object p2, p0, Lcom/instabug/survey/ui/custom/RatingView;->x:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/instabug/survey/ui/custom/RatingView;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private b(FIFZ)I
    .locals 1

    int-to-float v0, p2

    mul-float p1, p1, v0

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    .line 35
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p4, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    add-int/2addr p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-int/2addr p1, p2

    return p1
.end method

.method private b()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->x:Landroid/graphics/Path;

    .line 2
    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->m:F

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->z:Landroid/graphics/CornerPathEffect;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->y:Landroid/graphics/Paint;

    .line 5
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->y:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 8
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->y:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->y:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 10
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->y:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->y:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/instabug/survey/ui/custom/RatingView;->z:Landroid/graphics/CornerPathEffect;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->A:Landroid/graphics/Paint;

    .line 14
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->A:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 16
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->A:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 17
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->A:Landroid/graphics/Paint;

    iget v3, p0, Lcom/instabug/survey/ui/custom/RatingView;->l:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->A:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/instabug/survey/ui/custom/RatingView;->z:Landroid/graphics/CornerPathEffect;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->B:Landroid/graphics/Paint;

    .line 21
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->B:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->B:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 24
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->B:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 25
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->B:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->C:Landroid/graphics/Paint;

    .line 28
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->C:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->C:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 31
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->C:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 32
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->C:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->D:F

    return-void
.end method

.method private b(II)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 44
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->w:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 47
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/instabug/survey/ui/custom/RatingView;->w:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->v:Landroid/graphics/Canvas;

    :cond_1
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 11

    .line 48
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    .line 49
    iget-object v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->t:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    .line 50
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/instabug/survey/ui/custom/RatingView;->o:F

    sub-float/2addr v2, v3

    .line 51
    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    move v9, v2

    move v2, v0

    const/4 v0, 0x0

    .line 52
    :goto_0
    iget v3, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    if-ge v0, v3, :cond_1

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v10

    if-ltz v3, :cond_0

    .line 54
    sget-object v8, Lcom/instabug/survey/ui/custom/RatingView$a;->Right:Lcom/instabug/survey/ui/custom/RatingView$a;

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p0

    move-object v4, p1

    move v5, v9

    move v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/instabug/survey/ui/custom/RatingView;->a(Landroid/graphics/Canvas;FFFLcom/instabug/survey/ui/custom/RatingView$a;)V

    sub-float/2addr v2, v10

    goto :goto_1

    .line 57
    :cond_0
    sget-object v8, Lcom/instabug/survey/ui/custom/RatingView$a;->Right:Lcom/instabug/survey/ui/custom/RatingView$a;

    move-object v3, p0

    move-object v4, p1

    move v5, v9

    move v6, v1

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/instabug/survey/ui/custom/RatingView;->a(Landroid/graphics/Canvas;FFFLcom/instabug/survey/ui/custom/RatingView$a;)V

    const/4 v2, 0x0

    .line 60
    :goto_1
    iget v3, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    iget v4, p0, Lcom/instabug/survey/ui/custom/RatingView;->o:F

    add-float/2addr v3, v4

    sub-float/2addr v9, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()V
    .locals 3

    .line 20
    iget-boolean v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->r:Z

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->A:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->C:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->f:I

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->C:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->C:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->h:I

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->B:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_2

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->B:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_2

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->A:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->C:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->b:I

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->C:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->C:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 42
    :goto_1
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->d:I

    if-eqz v0, :cond_4

    .line 44
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->B:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_2

    .line 46
    :cond_4
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->B:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_2
    return-void
.end method

.method private c(II)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->o:F

    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    iget v2, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/instabug/survey/ui/custom/RatingView;->b(FIFZ)I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->o:F

    iget v2, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    iget v4, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/instabug/survey/ui/custom/RatingView;->a(FIFZ)I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    div-float v4, v0, v2

    sub-float/2addr p1, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr p1, v4

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr p2, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr p2, v4

    int-to-float p2, p2

    div-float/2addr p2, v2

    div-float v2, v1, v2

    sub-float/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 5
    new-instance v2, Landroid/graphics/RectF;

    add-float/2addr v0, p1

    add-float/2addr v1, p2

    invoke-direct {v2, p1, p2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/instabug/survey/ui/custom/RatingView;->t:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    mul-float p1, p1, p2

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->t:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, p1

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, p1

    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v2, v4, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->u:Landroid/graphics/RectF;

    .line 9
    iget p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->o:F

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, p1

    const v1, 0x3eb33333    # 0.35f

    mul-float v1, v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, p1

    mul-float p2, p2, p1

    const v4, 0x3cf5c28f    # 0.03f

    mul-float v4, v4, p1

    const v5, 0x3ec28f5c    # 0.38f

    mul-float v5, v5, p1

    const v6, 0x3ea3d70a    # 0.32f

    mul-float v6, v6, p1

    const v7, 0x3f19999a    # 0.6f

    mul-float v7, v7, p1

    const v8, 0x3e8a3d71    # 0.27f

    mul-float v8, v8, p1

    const/16 v9, 0x14

    .line 19
    new-array v9, v9, [F

    aput v4, v9, v3

    const/4 v3, 0x1

    aput v5, v9, v3

    add-float v3, v4, v1

    const/4 v10, 0x2

    aput v3, v9, v10

    const/4 v3, 0x3

    aput v5, v9, v3

    const/4 v3, 0x4

    aput v2, v9, v3

    const/4 v3, 0x5

    aput p2, v9, v3

    sub-float v3, p1, v4

    sub-float v1, v3, v1

    const/4 v4, 0x6

    aput v1, v9, v4

    const/4 v1, 0x7

    aput v5, v9, v1

    const/16 v1, 0x8

    aput v3, v9, v1

    const/16 v1, 0x9

    aput v5, v9, v1

    sub-float v1, p1, v6

    const/16 v3, 0xa

    aput v1, v9, v3

    const/16 v1, 0xb

    aput v7, v9, v1

    sub-float v1, p1, v0

    const/16 v3, 0xc

    aput v1, v9, v3

    sub-float p2, p1, p2

    const/16 v1, 0xd

    aput p2, v9, v1

    const/16 v1, 0xe

    aput v2, v9, v1

    sub-float/2addr p1, v8

    const/16 v1, 0xf

    aput p1, v9, v1

    const/16 p1, 0x10

    aput v0, v9, p1

    const/16 p1, 0x11

    aput p2, v9, p1

    const/16 p1, 0x12

    aput v6, v9, p1

    const/16 p1, 0x13

    aput v7, v9, p1

    iput-object v9, p0, Lcom/instabug/survey/ui/custom/RatingView;->s:[F

    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 1

    .line 119
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/custom/RatingView;->a(F)F

    move-result v0

    iput v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p2, :cond_0

    .line 122
    iget-object p2, p0, Lcom/instabug/survey/ui/custom/RatingView;->p:Lcom/instabug/survey/ui/custom/RatingView$b;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 123
    invoke-interface {p2, p0, p1, v0}, Lcom/instabug/survey/ui/custom/RatingView$b;->a(Lcom/instabug/survey/ui/custom/RatingView;FZ)V

    :cond_0
    return-void
.end method

.method public getFillColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->b:I

    return v0
.end method

.method public getGravity()Lcom/instabug/survey/ui/custom/RatingView$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->k:Lcom/instabug/survey/ui/custom/RatingView$a;

    return-object v0
.end method

.method public getRating()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->v:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    return-void

    .line 14
    :cond_1
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 17
    invoke-direct {p0}, Lcom/instabug/survey/ui/custom/RatingView;->c()V

    .line 20
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->k:Lcom/instabug/survey/ui/custom/RatingView$a;

    sget-object v1, Lcom/instabug/survey/ui/custom/RatingView$a;->Left:Lcom/instabug/survey/ui/custom/RatingView$a;

    if-ne v0, v1, :cond_2

    .line 21
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->v:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/instabug/survey/ui/custom/RatingView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->v:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/instabug/survey/ui/custom/RatingView;->b(Landroid/graphics/Canvas;)V

    .line 27
    :goto_0
    iget-boolean v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->r:Z

    if-eqz v0, :cond_3

    .line 28
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->g:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1

    .line 30
    :cond_3
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->c:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 33
    :goto_1
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 5
    iget p3, p0, Lcom/instabug/survey/ui/custom/RatingView;->F:F

    const/high16 p4, 0x4f000000

    cmpl-float p4, p3, p4

    if-nez p4, :cond_0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/instabug/survey/ui/custom/RatingView;->a(II)F

    move-result p3

    iput p3, p0, Lcom/instabug/survey/ui/custom/RatingView;->o:F

    goto :goto_0

    .line 8
    :cond_0
    iput p3, p0, Lcom/instabug/survey/ui/custom/RatingView;->o:F

    .line 10
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/instabug/survey/ui/custom/RatingView;->c(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x4f000000

    const/4 v5, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_3

    .line 15
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->F:F

    cmpl-float v6, v0, v4

    if-eqz v6, :cond_1

    .line 17
    iget v6, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    iget v7, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/instabug/survey/ui/custom/RatingView;->b(FIFZ)I

    move-result v0

    .line 18
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 19
    :cond_1
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->G:F

    cmpl-float v6, v0, v4

    if-eqz v6, :cond_2

    .line 21
    iget v6, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    iget v7, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/instabug/survey/ui/custom/RatingView;->b(FIFZ)I

    move-result v0

    .line 22
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 25
    :cond_2
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->D:F

    iget v6, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    iget v7, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/instabug/survey/ui/custom/RatingView;->b(FIFZ)I

    move-result v0

    .line 26
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 30
    :cond_3
    iget p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->F:F

    cmpl-float v0, p1, v4

    if-eqz v0, :cond_4

    .line 32
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    iget v6, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    invoke-direct {p0, p1, v0, v6, v5}, Lcom/instabug/survey/ui/custom/RatingView;->b(FIFZ)I

    move-result p1

    goto :goto_0

    .line 34
    :cond_4
    iget p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->G:F

    cmpl-float v0, p1, v4

    if-eqz v0, :cond_5

    .line 36
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    iget v6, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    invoke-direct {p0, p1, v0, v6, v5}, Lcom/instabug/survey/ui/custom/RatingView;->b(FIFZ)I

    move-result p1

    goto :goto_0

    .line 40
    :cond_5
    iget p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->D:F

    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    iget v6, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    invoke-direct {p0, p1, v0, v6, v5}, Lcom/instabug/survey/ui/custom/RatingView;->b(FIFZ)I

    move-result p1

    .line 45
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iget v6, p0, Lcom/instabug/survey/ui/custom/RatingView;->H:F

    iget v7, p0, Lcom/instabug/survey/ui/custom/RatingView;->E:I

    add-int/lit8 v8, v7, -0x1

    int-to-float v8, v8

    mul-float v8, v8, v6

    sub-float/2addr v0, v8

    int-to-float v8, v7

    div-float/2addr v0, v8

    if-ne v1, v3, :cond_6

    goto :goto_1

    :cond_6
    if-ne v1, v2, :cond_9

    .line 53
    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->F:F

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_7

    .line 55
    invoke-direct {p0, v1, v7, v6, v5}, Lcom/instabug/survey/ui/custom/RatingView;->a(FIFZ)I

    move-result v0

    .line 56
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 57
    :cond_7
    iget v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->G:F

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_8

    .line 59
    invoke-direct {p0, v1, v7, v6, v5}, Lcom/instabug/survey/ui/custom/RatingView;->a(FIFZ)I

    move-result v0

    .line 60
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 63
    :cond_8
    invoke-direct {p0, v0, v7, v6, v5}, Lcom/instabug/survey/ui/custom/RatingView;->a(FIFZ)I

    move-result v0

    .line 64
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 68
    :cond_9
    iget p2, p0, Lcom/instabug/survey/ui/custom/RatingView;->F:F

    cmpl-float v1, p2, v4

    if-eqz v1, :cond_a

    .line 70
    invoke-direct {p0, p2, v7, v6, v5}, Lcom/instabug/survey/ui/custom/RatingView;->a(FIFZ)I

    move-result p2

    goto :goto_1

    .line 72
    :cond_a
    iget p2, p0, Lcom/instabug/survey/ui/custom/RatingView;->G:F

    cmpl-float v1, p2, v4

    if-eqz v1, :cond_b

    .line 74
    invoke-direct {p0, p2, v7, v6, v5}, Lcom/instabug/survey/ui/custom/RatingView;->a(FIFZ)I

    move-result p2

    goto :goto_1

    .line 78
    :cond_b
    invoke-direct {p0, v0, v7, v6, v5}, Lcom/instabug/survey/ui/custom/RatingView;->a(FIFZ)I

    move-result p2

    .line 84
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Lcom/instabug/survey/ui/custom/RatingView$c;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    invoke-static {p1}, Lcom/instabug/survey/ui/custom/RatingView$c;->a(Lcom/instabug/survey/ui/custom/RatingView$c;)F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/ui/custom/RatingView;->a(FZ)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/instabug/survey/ui/custom/RatingView$c;

    invoke-direct {v1, v0}, Lcom/instabug/survey/ui/custom/RatingView$c;-><init>(Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/survey/ui/custom/RatingView;->getRating()F

    move-result v0

    invoke-static {v1, v0}, Lcom/instabug/survey/ui/custom/RatingView$c;->a(Lcom/instabug/survey/ui/custom/RatingView$c;F)F

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/instabug/survey/ui/custom/RatingView;->b(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 28
    :pswitch_0
    iget-object p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->p:Lcom/instabug/survey/ui/custom/RatingView$b;

    if-eqz p1, :cond_0

    .line 29
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    invoke-interface {p1, p0, v0, v2}, Lcom/instabug/survey/ui/custom/RatingView$b;->a(Lcom/instabug/survey/ui/custom/RatingView;FZ)V

    .line 31
    :cond_0
    iput-boolean v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->r:Z

    goto :goto_0

    .line 32
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/instabug/survey/ui/custom/RatingView;->a(FF)V

    .line 33
    iget-object p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->q:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_1

    .line 34
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->p:Lcom/instabug/survey/ui/custom/RatingView$b;

    if-eqz p1, :cond_2

    .line 37
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    invoke-interface {p1, p0, v0, v2}, Lcom/instabug/survey/ui/custom/RatingView$b;->a(Lcom/instabug/survey/ui/custom/RatingView;FZ)V

    .line 39
    :cond_2
    iput-boolean v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->r:Z

    goto :goto_0

    .line 40
    :pswitch_2
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->u:Landroid/graphics/RectF;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    iput-boolean v2, p0, Lcom/instabug/survey/ui/custom/RatingView;->r:Z

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/instabug/survey/ui/custom/RatingView;->a(FF)V

    goto :goto_0

    .line 44
    :cond_3
    iget-boolean p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->r:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->p:Lcom/instabug/survey/ui/custom/RatingView$b;

    if-eqz p1, :cond_4

    .line 45
    iget v0, p0, Lcom/instabug/survey/ui/custom/RatingView;->j:F

    invoke-interface {p1, p0, v0, v2}, Lcom/instabug/survey/ui/custom/RatingView$b;->a(Lcom/instabug/survey/ui/custom/RatingView;FZ)V

    .line 47
    :cond_4
    iput-boolean v1, p0, Lcom/instabug/survey/ui/custom/RatingView;->r:Z

    return v1

    .line 72
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setFillColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->b:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGravity(Lcom/instabug/survey/ui/custom/RatingView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->k:Lcom/instabug/survey/ui/custom/RatingView$a;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->q:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnRatingBarChangeListener(Lcom/instabug/survey/ui/custom/RatingView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/custom/RatingView;->p:Lcom/instabug/survey/ui/custom/RatingView$b;

    return-void
.end method

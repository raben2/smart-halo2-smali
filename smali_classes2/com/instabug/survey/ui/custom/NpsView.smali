.class public Lcom/instabug/survey/ui/custom/NpsView;
.super Landroid/view/View;
.source "NpsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/survey/ui/custom/NpsView$a;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/CornerPathEffect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private B:F

.field private C:F

.field private D:F

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Lcom/instabug/survey/ui/custom/NpsView$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private h:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private i:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private j:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private k:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private l:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private m:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private n:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private o:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private p:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private q:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private r:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private s:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private t:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private u:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private v:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private w:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private x:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private y:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private z:Landroid/graphics/CornerPathEffect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xb

    .line 2
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->c:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->e:Z

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xb

    .line 9
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->c:I

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->e:Z

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    .line 57
    invoke-direct {p0, p2}, Lcom/instabug/survey/ui/custom/NpsView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xb

    .line 59
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->c:I

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->e:Z

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    .line 112
    invoke-direct {p0, p2}, Lcom/instabug/survey/ui/custom/NpsView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0xb

    .line 114
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->c:I

    const/4 p1, -0x1

    .line 115
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->e:Z

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    .line 175
    invoke-direct {p0, p2}, Lcom/instabug/survey/ui/custom/NpsView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static a(Landroid/content/Context;F)F
    .locals 0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    return p1
.end method

.method private a()V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->n:I

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->c:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->o:I

    .line 70
    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->b:I

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    const/4 v1, 0x0

    .line 71
    :goto_0
    iget v5, p0, Lcom/instabug/survey/ui/custom/NpsView;->c:I

    if-ge v1, v5, :cond_0

    .line 72
    iget v5, p0, Lcom/instabug/survey/ui/custom/NpsView;->o:I

    add-int/2addr v4, v5

    .line 73
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3, v2, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    iget-object v6, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget v5, p0, Lcom/instabug/survey/ui/custom/NpsView;->o:I

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(FF)V
    .locals 4

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->e:Z

    .line 85
    iget v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 88
    :cond_0
    :goto_0
    iget v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->c:I

    if-ge v0, v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    iget-object v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    iget p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    if-eq p1, v0, :cond_1

    .line 91
    iput v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->s:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/instabug/survey/ui/custom/NpsView;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->s:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instabug/survey/ui/custom/NpsView;->getBorderColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->s:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->A:Landroid/graphics/CornerPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 81
    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->n:I

    int-to-float v2, v0

    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-double v0, v0

    const-wide v3, 0x3ffb333333333333L    # 1.7

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v3, v0

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->n:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/instabug/survey/ui/custom/NpsView;->s:Landroid/graphics/Paint;

    move-object v1, p1

    .line 83
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/instabug/survey/R$styleable;->NpsView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget v0, Lcom/instabug/survey/R$styleable;->NpsView_nps_count:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->c:I

    .line 6
    sget v0, Lcom/instabug/survey/R$styleable;->NpsView_nps_num_text_size:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2}, Lcom/instabug/survey/ui/custom/NpsView;->b(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->B:F

    .line 11
    sget v0, Lcom/instabug/survey/R$styleable;->NpsView_nps_selected_view_edge_size:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/instabug/survey/ui/custom/NpsView;->b(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->n:I

    .line 17
    sget v0, Lcom/instabug/survey/R$styleable;->NpsView_nps_selected_num_text_size:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/instabug/survey/ui/custom/NpsView;->b(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->C:F

    .line 23
    sget v0, Lcom/instabug/survey/R$styleable;->NpsView_nps_selected_rect_size:I

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcom/instabug/survey/ui/custom/NpsView;->b(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->q:I

    .line 29
    sget v0, Lcom/instabug/survey/R$styleable;->NpsView_nps_rect_corners_radius:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->D:F

    .line 32
    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->c:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 33
    iput v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->c:I

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/instabug/survey/R$attr;->survey_nps_circles_container_background:I

    .line 38
    invoke-static {v0, v2}, Lcom/instabug/library/util/AttrResolver;->resolveAttributeColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/survey/ui/custom/NpsView;->setCirclesRectColor(I)V

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/instabug/survey/R$attr;->survey_nps_circles_container_border_background:I

    .line 42
    invoke-static {v0, v2}, Lcom/instabug/library/util/AttrResolver;->resolveAttributeColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/survey/ui/custom/NpsView;->setBorderColor(I)V

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/instabug/survey/R$attr;->survey_nps_numbers_color:I

    .line 46
    invoke-static {v0, v2}, Lcom/instabug/library/util/AttrResolver;->resolveAttributeColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/survey/ui/custom/NpsView;->setNumbersColor(I)V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/survey/ui/custom/NpsView;->setIndicatorViewBackgroundColor(I)V

    :cond_2
    const/4 v0, -0x1

    .line 51
    invoke-virtual {p0, v0}, Lcom/instabug/survey/ui/custom/NpsView;->setIndicatorViewTextColor(I)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/instabug/survey/ui/custom/NpsView;->setIndicatorViewCircleColor(I)V

    .line 53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->x:Landroid/graphics/Path;

    .line 56
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->y:Landroid/graphics/Path;

    .line 57
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->w:Landroid/graphics/Path;

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->s:Landroid/graphics/Paint;

    .line 59
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->r:Landroid/graphics/Paint;

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->t:Landroid/graphics/Paint;

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->u:Landroid/graphics/Paint;

    .line 62
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->v:Landroid/graphics/Paint;

    .line 63
    new-instance p1, Landroid/graphics/CornerPathEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/instabug/survey/ui/custom/NpsView;->a(Landroid/content/Context;F)F

    move-result v0

    invoke-direct {p1, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->z:Landroid/graphics/CornerPathEffect;

    .line 64
    new-instance p1, Landroid/graphics/CornerPathEffect;

    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->D:F

    invoke-direct {p1, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->A:Landroid/graphics/CornerPathEffect;

    return-void
.end method

.method public static b(Landroid/content/Context;F)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    return p1
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->e:Z

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 12

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->n:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->c:I

    div-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-double v3, v1

    const-wide v5, 0x3ff4cccccccccccdL    # 1.3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-float v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, Lcom/instabug/survey/ui/custom/NpsView;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 6
    iget-object v3, p0, Lcom/instabug/survey/ui/custom/NpsView;->r:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instabug/survey/ui/custom/NpsView;->getNumbersColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v3, p0, Lcom/instabug/survey/ui/custom/NpsView;->r:Landroid/graphics/Paint;

    iget v4, p0, Lcom/instabug/survey/ui/custom/NpsView;->B:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    iget-object v3, p0, Lcom/instabug/survey/ui/custom/NpsView;->r:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object v3, p0, Lcom/instabug/survey/ui/custom/NpsView;->r:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 10
    iget-object v3, p0, Lcom/instabug/survey/ui/custom/NpsView;->r:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11
    div-int/lit8 v3, v0, 0x2

    .line 12
    iget v6, p0, Lcom/instabug/survey/ui/custom/NpsView;->n:I

    add-int/2addr v3, v6

    .line 13
    iget-object v6, p0, Lcom/instabug/survey/ui/custom/NpsView;->r:Landroid/graphics/Paint;

    const-string v7, "9"

    invoke-virtual {v6, v7, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    float-to-int v3, v3

    move v7, v3

    const/4 v3, 0x0

    .line 15
    :goto_0
    iget v8, p0, Lcom/instabug/survey/ui/custom/NpsView;->c:I

    if-ge v3, v8, :cond_1

    const/16 v8, 0xa

    if-ne v3, v8, :cond_0

    int-to-float v7, v7

    add-float/2addr v7, v4

    float-to-int v7, v7

    int-to-float v7, v7

    .line 18
    iget-object v8, p0, Lcom/instabug/survey/ui/custom/NpsView;->r:Landroid/graphics/Paint;

    const-string v9, "10"

    invoke-virtual {v8, v9, v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v8

    div-float/2addr v8, v6

    sub-float/2addr v7, v8

    float-to-int v7, v7

    .line 20
    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    int-to-float v9, v7

    int-to-float v10, v1

    iget-object v11, p0, Lcom/instabug/survey/ui/custom/NpsView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v7, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->f:Lcom/instabug/survey/ui/custom/NpsView$a;

    if-eqz v0, :cond_0

    .line 15
    iget v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    invoke-interface {v0, v1}, Lcom/instabug/survey/ui/custom/NpsView$a;->c(I)V

    :cond_0
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->w:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->w:Landroid/graphics/Path;

    iget v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->n:I

    int-to-float v1, v1

    iget v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-double v2, v2

    const-wide v4, 0x3ffb333333333333L    # 1.7

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->w:Landroid/graphics/Path;

    iget v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->n:I

    int-to-float v1, v1

    iget v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->w:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->n:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->w:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->n:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->w:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 10
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->s:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instabug/survey/ui/custom/NpsView;->getCirclesRectColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->s:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->A:Landroid/graphics/CornerPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 13
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->w:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->y:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->t:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instabug/survey/ui/custom/NpsView;->getIndicatorViewBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    iget v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 6
    iget-object v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    iget v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 7
    iget v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->o:I

    iget v3, p0, Lcom/instabug/survey/ui/custom/NpsView;->q:I

    if-le v2, v3, :cond_0

    sub-int/2addr v2, v3

    .line 9
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int/2addr v1, v2

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->y:Landroid/graphics/Path;

    int-to-float v3, v0

    iget v4, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v4, v4

    const v5, 0x3fd9999a    # 1.7f

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->y:Landroid/graphics/Path;

    iget v4, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->y:Landroid/graphics/Path;

    int-to-float v3, v1

    iget v4, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->y:Landroid/graphics/Path;

    iget v4, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->y:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 18
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->y:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/instabug/survey/ui/custom/NpsView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20
    iget v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v2, v2

    const v3, 0x3fa66666    # 1.3f

    div-float/2addr v2, v3

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4}, Lcom/instabug/survey/ui/custom/NpsView;->a(Landroid/content/Context;F)F

    move-result v3

    .line 23
    iget-object v6, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    iget v7, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    iget v8, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v7, v7

    div-float/2addr v7, v5

    cmpl-float v5, v6, v7

    if-lez v5, :cond_1

    const/high16 v5, 0x3fc00000    # 1.5f

    div-float/2addr v3, v5

    .line 27
    :cond_1
    iget-object v5, p0, Lcom/instabug/survey/ui/custom/NpsView;->u:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instabug/survey/ui/custom/NpsView;->getIndicatorViewCircleColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    sub-int/2addr v1, v0

    .line 28
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/instabug/survey/ui/custom/NpsView;->a(Landroid/content/Context;F)F

    move-result v1

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->x:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->t:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instabug/survey/ui/custom/NpsView;->getIndicatorViewBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->t:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->z:Landroid/graphics/CornerPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 6
    iget-object v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    iget v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 7
    iget-object v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    iget v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 8
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->g:Ljava/util/ArrayList;

    iget v3, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 10
    iget v3, p0, Lcom/instabug/survey/ui/custom/NpsView;->o:I

    iget v4, p0, Lcom/instabug/survey/ui/custom/NpsView;->q:I

    const/high16 v5, 0x40000000    # 2.0f

    if-le v3, v4, :cond_0

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    sub-float/2addr v1, v3

    .line 16
    :cond_0
    iget v3, p0, Lcom/instabug/survey/ui/custom/NpsView;->n:I

    int-to-float v3, v3

    sub-float v4, v0, v3

    add-float/2addr v3, v1

    .line 19
    iget-object v6, p0, Lcom/instabug/survey/ui/custom/NpsView;->x:Landroid/graphics/Path;

    invoke-virtual {v6, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 20
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->x:Landroid/graphics/Path;

    iget v6, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v6, v6

    const v7, 0x3fd9999a    # 1.7f

    div-float/2addr v6, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 21
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->x:Landroid/graphics/Path;

    iget v4, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v6, p0, Lcom/instabug/survey/ui/custom/NpsView;->n:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->x:Landroid/graphics/Path;

    iget v4, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v4, v4

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 24
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->x:Landroid/graphics/Path;

    iget v4, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v4, v4

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 25
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->x:Landroid/graphics/Path;

    iget v4, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v6, p0, Lcom/instabug/survey/ui/custom/NpsView;->n:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 27
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->x:Landroid/graphics/Path;

    iget v4, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 28
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->x:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->x:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 31
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->x:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/instabug/survey/ui/custom/NpsView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 33
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->v:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instabug/survey/ui/custom/NpsView;->getIndicatorViewTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->v:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 35
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->v:Landroid/graphics/Paint;

    iget v3, p0, Lcom/instabug/survey/ui/custom/NpsView;->C:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    iget-object v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->v:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 38
    iget v2, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sub-float/2addr v1, v0

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    iget v1, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    const/high16 v3, 0x3fc00000    # 1.5f

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/instabug/survey/ui/custom/NpsView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->i:I

    return v0
.end method

.method public getCirclesRectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->h:I

    return v0
.end method

.method public getIndicatorViewBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->j:I

    return v0
.end method

.method public getIndicatorViewCircleColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->m:I

    return v0
.end method

.method public getIndicatorViewTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->l:I

    return v0
.end method

.method public getNumbersColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->k:I

    return v0
.end method

.method public getScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lcom/instabug/survey/ui/custom/NpsView;->a()V

    .line 4
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/custom/NpsView;->c(Landroid/graphics/Canvas;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/custom/NpsView;->a(Landroid/graphics/Canvas;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/custom/NpsView;->b(Landroid/graphics/Canvas;)V

    .line 7
    iget-boolean v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->e:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/custom/NpsView;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/custom/NpsView;->e(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    .line 8
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->a:I

    goto :goto_0

    :cond_0
    const/16 v4, 0x1f4

    if-ne v0, v2, :cond_1

    .line 10
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->a:I

    goto :goto_0

    .line 12
    :cond_1
    iput v4, p0, Lcom/instabug/survey/ui/custom/NpsView;->a:I

    :goto_0
    if-ne v1, v3, :cond_2

    .line 16
    iput p2, p0, Lcom/instabug/survey/ui/custom/NpsView;->b:I

    goto :goto_1

    :cond_2
    const/16 p1, 0x118

    if-ne v0, v2, :cond_3

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->b:I

    goto :goto_1

    .line 20
    :cond_3
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->b:I

    .line 22
    :goto_1
    iget p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->a:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->a:I

    .line 23
    iget p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->b:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->b:I

    add-int/lit8 p2, p1, -0x2

    .line 24
    iput p2, p0, Lcom/instabug/survey/ui/custom/NpsView;->p:I

    .line 25
    iget p2, p0, Lcom/instabug/survey/ui/custom/NpsView;->a:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 16
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/instabug/survey/ui/custom/NpsView;->a(FF)V

    goto :goto_0

    .line 22
    :pswitch_2
    invoke-direct {p0}, Lcom/instabug/survey/ui/custom/NpsView;->b()V

    .line 23
    invoke-direct {p0}, Lcom/instabug/survey/ui/custom/NpsView;->c()V

    goto :goto_0

    .line 24
    :pswitch_3
    invoke-direct {p0, v0, v1}, Lcom/instabug/survey/ui/custom/NpsView;->a(FF)V

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent: NPS view touch rect : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NPS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->i:I

    return-void
.end method

.method public setCirclesRectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->h:I

    return-void
.end method

.method public setIndicatorViewBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->j:I

    return-void
.end method

.method public setIndicatorViewCircleColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->m:I

    return-void
.end method

.method public setIndicatorViewTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->l:I

    return-void
.end method

.method public setNumbersColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->k:I

    return-void
.end method

.method public setOnSelectionListener(Lcom/instabug/survey/ui/custom/NpsView$a;)V
    .locals 0
    .param p1    # Lcom/instabug/survey/ui/custom/NpsView$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->f:Lcom/instabug/survey/ui/custom/NpsView$a;

    return-void
.end method

.method public setScore(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xbL
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->d:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/instabug/survey/ui/custom/NpsView;->e:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

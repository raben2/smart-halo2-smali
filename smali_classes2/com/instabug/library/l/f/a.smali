.class public Lcom/instabug/library/l/f/a;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:Landroid/graphics/PointF;

.field private e:Landroid/graphics/PointF;

.field private f:Landroid/graphics/PointF;

.field private g:Landroid/graphics/Path;

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/l/f/a;->a()V

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/l/f/a;->a:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/instabug/library/l/f/a;->b:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    .line 4
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/instabug/library/l/f/a;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x40e00000    # 7.0f

    .line 9
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/instabug/library/l/f/a;->c:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 11
    iput v1, p0, Lcom/instabug/library/l/f/a;->h:F

    float-to-int v1, v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double v4, v4, v2

    double-to-int v0, v4

    add-double/2addr v4, v2

    double-to-int v2, v4

    .line 16
    invoke-virtual {p0, v0, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/l/f/a;->d:Landroid/graphics/PointF;

    .line 18
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/l/f/a;->e:Landroid/graphics/PointF;

    .line 19
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/l/f/a;->f:Landroid/graphics/PointF;

    .line 20
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/l/f/a;->g:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/f/a;->a:Landroid/graphics/RectF;

    iget v1, p0, Lcom/instabug/library/l/f/a;->h:F

    iget-object v2, p0, Lcom/instabug/library/l/f/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/l/f/a;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/instabug/library/l/f/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    .line 8
    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 10
    iget-object v0, p0, Lcom/instabug/library/l/f/a;->a:Landroid/graphics/RectF;

    int-to-float p2, p2

    iget v1, p0, Lcom/instabug/library/l/f/a;->c:F

    sub-float v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    int-to-float p1, p1

    .line 11
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 13
    iget-object p1, p0, Lcom/instabug/library/l/f/a;->d:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 14
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 16
    iget p1, p0, Lcom/instabug/library/l/f/a;->c:F

    float-to-double p1, p1

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    double-to-float p1, p1

    .line 17
    iget-object p2, p0, Lcom/instabug/library/l/f/a;->d:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/instabug/library/l/f/a;->e:Landroid/graphics/PointF;

    const/high16 v1, 0x43610000    # 225.0f

    invoke-static {p1, v1, p2, v0}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 19
    iget-object p2, p0, Lcom/instabug/library/l/f/a;->d:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/instabug/library/l/f/a;->f:Landroid/graphics/PointF;

    const/high16 v1, 0x43070000    # 135.0f

    invoke-static {p1, v1, p2, v0}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 21
    iget-object p1, p0, Lcom/instabug/library/l/f/a;->g:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/instabug/library/l/f/a;->e:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 22
    iget-object p1, p0, Lcom/instabug/library/l/f/a;->g:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/instabug/library/l/f/a;->d:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    iget-object p1, p0, Lcom/instabug/library/l/f/a;->g:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/instabug/library/l/f/a;->f:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 24
    iget-object p1, p0, Lcom/instabug/library/l/f/a;->g:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.class public Lcom/instabug/library/annotation/f/h;
.super Lcom/instabug/library/annotation/f/c;
.source "ZoomedShape.java"


# instance fields
.field private e:Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v0, -0x10000

    .line 1
    invoke-direct {p0, v0}, Lcom/instabug/library/annotation/f/c;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/annotation/f/c;->d:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/instabug/library/annotation/f/g;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/annotation/b;)Landroid/graphics/Path;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/f/c;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FF)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/instabug/library/annotation/f/h;->h:F

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p3

    iput v0, p0, Lcom/instabug/library/annotation/f/h;->f:F

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr v0, p4

    iput v0, p0, Lcom/instabug/library/annotation/f/h;->g:F

    .line 7
    iget v0, p0, Lcom/instabug/library/annotation/f/h;->h:F

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/instabug/library/annotation/f/h;->f:F

    iget v3, p0, Lcom/instabug/library/annotation/f/h;->g:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v0, v2, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/annotation/f/h;->e:Landroid/graphics/PointF;

    const/16 v0, 0xc8

    .line 10
    invoke-static {p2, v0}, Lcom/instabug/library/annotation/g/b;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 11
    invoke-static {p2}, Lcom/instabug/library/annotation/g/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;[Lcom/instabug/library/annotation/a;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/instabug/library/annotation/f/h;->e:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/instabug/library/annotation/b;->b()Landroid/graphics/PointF;

    move-result-object v0

    :cond_0
    const/4 p2, 0x2

    .line 37
    aget-object v1, p3, p2

    invoke-virtual {v1, v0}, Lcom/instabug/library/annotation/a;->b(Landroid/graphics/PointF;)V

    .line 38
    aget-object v0, p3, p2

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/annotation/a;->a(I)V

    .line 39
    aget-object p2, p3, p2

    invoke-virtual {p2, p1}, Lcom/instabug/library/annotation/a;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public a(Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;Z)V
    .locals 2

    .line 21
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p3, p3, v0

    if-gez p3, :cond_0

    .line 22
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, v0

    if-gez p3, :cond_0

    .line 23
    invoke-virtual {p2, p1}, Lcom/instabug/library/annotation/b;->a(Lcom/instabug/library/annotation/b;)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p3, v0

    .line 27
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p1, v0

    .line 29
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 31
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 33
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p3, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 35
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/PointF;Lcom/instabug/library/annotation/b;)Z
    .locals 6

    .line 12
    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 15
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 16
    iget v2, p0, Lcom/instabug/library/annotation/f/h;->f:F

    iget v3, p0, Lcom/instabug/library/annotation/f/h;->g:F

    iget v4, p0, Lcom/instabug/library/annotation/f/h;->h:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 18
    new-instance v2, Landroid/graphics/Region;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 20
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1
.end method

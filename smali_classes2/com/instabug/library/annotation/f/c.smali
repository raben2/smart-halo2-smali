.class public abstract Lcom/instabug/library/annotation/f/c;
.super Lcom/instabug/library/annotation/f/g;
.source "CroppedRectShape.java"


# instance fields
.field protected d:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/annotation/f/g;-><init>(IF)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FF)V
.end method

.method public a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;)V
    .locals 6

    .line 1
    iget-object p3, p0, Lcom/instabug/library/annotation/f/c;->d:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_6

    .line 2
    iget p3, p2, Landroid/graphics/RectF;->left:F

    .line 3
    iget v0, p2, Landroid/graphics/RectF;->top:F

    .line 4
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 5
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v4, p3, v3

    if-gez v4, :cond_0

    add-float/2addr v1, p3

    const/4 p3, 0x0

    :cond_0
    cmpg-float v4, v0, v3

    if-gez v4, :cond_1

    add-float/2addr v2, v0

    const/4 v0, 0x0

    :cond_1
    add-float v4, p3, v1

    .line 24
    iget-object v5, p0, Lcom/instabug/library/annotation/f/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 25
    iget-object v1, p0, Lcom/instabug/library/annotation/f/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p3

    :cond_2
    add-float v4, v0, v2

    .line 28
    iget-object v5, p0, Lcom/instabug/library/annotation/f/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 29
    iget-object v2, p0, Lcom/instabug/library/annotation/f/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    :cond_3
    cmpl-float v4, v1, v3

    if-lez v4, :cond_6

    cmpl-float v4, v2, v3

    if-lez v4, :cond_6

    .line 34
    iget-object v4, p0, Lcom/instabug/library/annotation/f/c;->d:Landroid/graphics/Bitmap;

    float-to-int p3, p3

    float-to-int v0, v0

    float-to-int v1, v1

    float-to-int v2, v2

    .line 35
    invoke-static {v4, p3, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 38
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 39
    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v3

    if-gez v2, :cond_4

    .line 41
    iget v0, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 44
    :cond_4
    iget v2, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 45
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    .line 48
    :cond_5
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/instabug/library/annotation/f/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FF)V

    :cond_6
    return-void
.end method

.method public a(Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;II)V
    .locals 1

    .line 53
    iget v0, p2, Landroid/graphics/RectF;->left:F

    int-to-float p3, p3

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 54
    iget v0, p2, Landroid/graphics/RectF;->top:F

    int-to-float p4, p4

    add-float/2addr v0, p4

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 55
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 56
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public a(Landroid/graphics/PointF;Lcom/instabug/library/annotation/b;)Z
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/instabug/library/annotation/f/g;->a()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    add-float/2addr v0, v1

    .line 50
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    neg-float p2, v0

    .line 51
    invoke-virtual {v1, p2, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 52
    iget p2, p1, Landroid/graphics/PointF;->x:F

    float-to-int p2, p2

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v1, p2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

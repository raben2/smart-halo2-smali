.class public Lcom/instabug/library/annotation/e/b;
.super Ljava/lang/Object;
.source "PathFactory.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/annotation/e/d;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/annotation/e/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a()Landroid/graphics/Path;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2
    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4
    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v3, v4, v5}, Lcom/instabug/library/annotation/g/c;->a(FFFF)F

    move-result v1

    const/high16 v3, 0x43610000    # 225.0f

    add-float/2addr v3, v1

    const/high16 v4, 0x41100000    # 9.0f

    .line 6
    invoke-static {v4, v3, v2}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    const/high16 v5, 0x43070000    # 135.0f

    add-float/2addr v1, v5

    .line 7
    invoke-static {v4, v1, v2}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 9
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 10
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 11
    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget v0, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v4
.end method

.method public static a(Lcom/instabug/library/annotation/e/e;)Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/annotation/e/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/library/annotation/e/d;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/instabug/library/annotation/e/e;->RECT:Lcom/instabug/library/annotation/e/e;

    if-ne p0, v0, :cond_1

    .line 16
    sget-object v0, Lcom/instabug/library/annotation/e/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/instabug/library/annotation/e/b;->a:Ljava/util/List;

    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Lcom/instabug/library/annotation/e/e;->OVAL:Lcom/instabug/library/annotation/e/e;

    if-ne p0, v0, :cond_3

    .line 22
    sget-object v0, Lcom/instabug/library/annotation/e/b;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    return-object v0

    .line 25
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/instabug/library/annotation/e/b;->b:Ljava/util/List;

    .line 29
    :cond_3
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    :goto_1
    const/16 v3, 0xc

    if-ge v1, v3, :cond_6

    .line 31
    new-instance v3, Lcom/instabug/library/annotation/e/d;

    invoke-direct {v3}, Lcom/instabug/library/annotation/e/d;-><init>()V

    .line 32
    iget v4, v0, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 33
    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 34
    sget-object v4, Lcom/instabug/library/annotation/e/e;->RECT:Lcom/instabug/library/annotation/e/e;

    if-ne p0, v4, :cond_4

    .line 35
    iget-object v4, v3, Lcom/instabug/library/annotation/e/d;->a:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 36
    sget-object v4, Lcom/instabug/library/annotation/e/b;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 37
    :cond_4
    sget-object v4, Lcom/instabug/library/annotation/e/e;->OVAL:Lcom/instabug/library/annotation/e/e;

    if-ne p0, v4, :cond_5

    .line 38
    iget-object v4, v3, Lcom/instabug/library/annotation/e/d;->a:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 39
    sget-object v4, Lcom/instabug/library/annotation/e/b;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_5
    :goto_2
    iget v4, v0, Landroid/graphics/RectF;->left:F

    div-float/2addr v4, v2

    iput v4, v3, Lcom/instabug/library/annotation/e/d;->b:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 44
    :cond_6
    sget-object v0, Lcom/instabug/library/annotation/e/e;->RECT:Lcom/instabug/library/annotation/e/e;

    if-ne p0, v0, :cond_7

    .line 45
    sget-object p0, Lcom/instabug/library/annotation/e/b;->a:Ljava/util/List;

    return-object p0

    .line 46
    :cond_7
    sget-object v0, Lcom/instabug/library/annotation/e/e;->OVAL:Lcom/instabug/library/annotation/e/e;

    if-ne p0, v0, :cond_8

    .line 47
    sget-object p0, Lcom/instabug/library/annotation/e/b;->b:Ljava/util/List;

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

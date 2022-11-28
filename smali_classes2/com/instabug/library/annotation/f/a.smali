.class public Lcom/instabug/library/annotation/f/a;
.super Lcom/instabug/library/annotation/f/g;
.source "ArrowShape.java"


# instance fields
.field private final d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/PointF;

.field private f:Landroid/graphics/PointF;

.field private g:F

.field private h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;IF)V
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/instabug/library/annotation/f/g;-><init>(IF)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/instabug/library/annotation/f/a;->d:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object p3, p0, Lcom/instabug/library/annotation/f/a;->d:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object p3, p0, Lcom/instabug/library/annotation/f/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iput-object p1, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    .line 7
    iput-object p2, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    return-void
.end method

.method private c(Lcom/instabug/library/annotation/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 2
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 3
    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 4
    sget-object v0, Lcom/instabug/library/annotation/b$a;->LEFT:Lcom/instabug/library/annotation/b$a;

    iput-object v0, p1, Lcom/instabug/library/annotation/b;->a:Lcom/instabug/library/annotation/b$a;

    .line 5
    sget-object v0, Lcom/instabug/library/annotation/b$a;->RIGHT:Lcom/instabug/library/annotation/b$a;

    iput-object v0, p1, Lcom/instabug/library/annotation/b;->c:Lcom/instabug/library/annotation/b$a;

    goto :goto_0

    .line 7
    :cond_0
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 8
    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 9
    sget-object v0, Lcom/instabug/library/annotation/b$a;->RIGHT:Lcom/instabug/library/annotation/b$a;

    iput-object v0, p1, Lcom/instabug/library/annotation/b;->a:Lcom/instabug/library/annotation/b$a;

    .line 10
    sget-object v0, Lcom/instabug/library/annotation/b$a;->LEFT:Lcom/instabug/library/annotation/b$a;

    iput-object v0, p1, Lcom/instabug/library/annotation/b;->c:Lcom/instabug/library/annotation/b$a;

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 14
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 15
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 16
    sget-object v0, Lcom/instabug/library/annotation/b$b;->TOP:Lcom/instabug/library/annotation/b$b;

    iput-object v0, p1, Lcom/instabug/library/annotation/b;->b:Lcom/instabug/library/annotation/b$b;

    .line 17
    sget-object v0, Lcom/instabug/library/annotation/b$b;->BOTTOM:Lcom/instabug/library/annotation/b$b;

    iput-object v0, p1, Lcom/instabug/library/annotation/b;->d:Lcom/instabug/library/annotation/b$b;

    goto :goto_1

    .line 19
    :cond_1
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 20
    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 21
    sget-object v0, Lcom/instabug/library/annotation/b$b;->BOTTOM:Lcom/instabug/library/annotation/b$b;

    iput-object v0, p1, Lcom/instabug/library/annotation/b;->b:Lcom/instabug/library/annotation/b$b;

    .line 22
    sget-object v0, Lcom/instabug/library/annotation/b$b;->TOP:Lcom/instabug/library/annotation/b$b;

    iput-object v0, p1, Lcom/instabug/library/annotation/b;->d:Lcom/instabug/library/annotation/b$b;

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/annotation/b;)Landroid/graphics/Path;
    .locals 5

    .line 66
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 68
    iget-object v0, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 69
    invoke-static {v1, v0, v3, v2}, Lcom/instabug/library/annotation/g/c;->a(FFFF)F

    move-result v0

    const/high16 v1, 0x43610000    # 225.0f

    add-float/2addr v1, v0

    .line 71
    iget-object v2, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v3, v1, v2}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    const/high16 v2, 0x43070000    # 135.0f

    add-float/2addr v0, v2

    .line 73
    iget-object v2, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    invoke-static {v3, v0, v2}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 76
    iget-object v2, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 78
    iget-object v2, p0, Lcom/instabug/library/annotation/f/a;->h:Ljava/lang/String;

    const-string v3, "arrow"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 80
    iget-object v1, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    return-object p1
.end method

.method public a(FFLcom/instabug/library/annotation/b;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 53
    invoke-direct {p0, p3}, Lcom/instabug/library/annotation/f/a;->c(Lcom/instabug/library/annotation/b;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    int-to-float p1, p1

    .line 82
    iput p1, p0, Lcom/instabug/library/annotation/f/a;->g:F

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;)V
    .locals 1

    .line 2
    iget-object p3, p2, Lcom/instabug/library/annotation/b;->a:Lcom/instabug/library/annotation/b$a;

    sget-object v0, Lcom/instabug/library/annotation/b$a;->RIGHT:Lcom/instabug/library/annotation/b$a;

    if-ne p3, v0, :cond_0

    .line 3
    iget-object p3, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iput v0, p3, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/annotation/b$a;->LEFT:Lcom/instabug/library/annotation/b$a;

    if-ne p3, v0, :cond_1

    .line 5
    iget-object p3, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iput v0, p3, Landroid/graphics/PointF;->x:F

    .line 8
    :cond_1
    :goto_0
    iget-object p3, p2, Lcom/instabug/library/annotation/b;->b:Lcom/instabug/library/annotation/b$b;

    sget-object v0, Lcom/instabug/library/annotation/b$b;->TOP:Lcom/instabug/library/annotation/b$b;

    if-ne p3, v0, :cond_2

    .line 9
    iget-object p3, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iput v0, p3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 10
    :cond_2
    sget-object v0, Lcom/instabug/library/annotation/b$b;->BOTTOM:Lcom/instabug/library/annotation/b$b;

    if-ne p3, v0, :cond_3

    .line 11
    iget-object p3, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iput v0, p3, Landroid/graphics/PointF;->y:F

    .line 14
    :cond_3
    :goto_1
    iget-object p3, p2, Lcom/instabug/library/annotation/b;->c:Lcom/instabug/library/annotation/b$a;

    sget-object v0, Lcom/instabug/library/annotation/b$a;->RIGHT:Lcom/instabug/library/annotation/b$a;

    if-ne p3, v0, :cond_4

    .line 15
    iget-object p3, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iput v0, p3, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 16
    :cond_4
    sget-object v0, Lcom/instabug/library/annotation/b$a;->LEFT:Lcom/instabug/library/annotation/b$a;

    if-ne p3, v0, :cond_5

    .line 17
    iget-object p3, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iput v0, p3, Landroid/graphics/PointF;->x:F

    .line 20
    :cond_5
    :goto_2
    iget-object p3, p2, Lcom/instabug/library/annotation/b;->d:Lcom/instabug/library/annotation/b$b;

    sget-object v0, Lcom/instabug/library/annotation/b$b;->TOP:Lcom/instabug/library/annotation/b$b;

    if-ne p3, v0, :cond_6

    .line 21
    iget-object p3, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iput v0, p3, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 22
    :cond_6
    sget-object v0, Lcom/instabug/library/annotation/b$b;->BOTTOM:Lcom/instabug/library/annotation/b$b;

    if-ne p3, v0, :cond_7

    .line 23
    iget-object p3, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iput v0, p3, Landroid/graphics/PointF;->y:F

    .line 26
    :cond_7
    :goto_3
    invoke-virtual {p0, p2}, Lcom/instabug/library/annotation/f/a;->a(Lcom/instabug/library/annotation/b;)Landroid/graphics/Path;

    move-result-object p2

    iget-object p3, p0, Lcom/instabug/library/annotation/f/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;[Lcom/instabug/library/annotation/a;)V
    .locals 3

    .line 54
    iget-object p2, p0, Lcom/instabug/library/annotation/f/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    const/4 v0, 0x0

    .line 56
    aget-object v1, p3, v0

    iget-object v2, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Lcom/instabug/library/annotation/a;->b(Landroid/graphics/PointF;)V

    const/4 v1, 0x1

    .line 57
    aget-object v1, p3, v1

    iget-object v2, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Lcom/instabug/library/annotation/a;->b(Landroid/graphics/PointF;)V

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 60
    aget-object v1, p3, v0

    invoke-virtual {v1, p2}, Lcom/instabug/library/annotation/a;->a(I)V

    .line 61
    aget-object v1, p3, v0

    invoke-virtual {v1, p1}, Lcom/instabug/library/annotation/a;->a(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;II)V
    .locals 1

    .line 62
    iget v0, p2, Landroid/graphics/RectF;->left:F

    int-to-float p3, p3

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 63
    iget v0, p2, Landroid/graphics/RectF;->top:F

    int-to-float p4, p4

    add-float/2addr v0, p4

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 64
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 65
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public a(Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;Z)V
    .locals 0

    .line 51
    invoke-virtual {p2, p1}, Lcom/instabug/library/annotation/b;->a(Lcom/instabug/library/annotation/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/f/a;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/graphics/PointF;Lcom/instabug/library/annotation/b;)Z
    .locals 7

    .line 27
    invoke-direct {p0, p2}, Lcom/instabug/library/annotation/f/a;->c(Lcom/instabug/library/annotation/b;)V

    .line 28
    iget-object p2, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 29
    invoke-static {v0, p2, v2, v1}, Lcom/instabug/library/annotation/g/c;->a(FFFF)F

    move-result p2

    const/high16 v0, 0x42b40000    # 90.0f

    add-float/2addr v0, p2

    .line 31
    iget-object v1, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    const/high16 v3, 0x43870000    # 270.0f

    add-float/2addr p2, v3

    .line 32
    iget-object v3, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    invoke-static {v2, p2, v3}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 34
    iget-object v4, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    invoke-static {v2, p2, v4}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 35
    iget-object v4, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    invoke-static {v2, v0, v4}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 37
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 38
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 40
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 41
    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 42
    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    iget p2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    const/4 p2, 0x1

    .line 47
    invoke-virtual {v5, v4, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 48
    new-instance p2, Landroid/graphics/Region;

    iget v0, v4, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, v4, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v3, v4, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {p2, v0, v1, v3, v4}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v2, v5, p2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 50
    iget p2, p1, Landroid/graphics/PointF;->x:F

    float-to-int p2, p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    invoke-virtual {v2, p2, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1
.end method

.method public b(FFLcom/instabug/library/annotation/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 2
    invoke-direct {p0, p3}, Lcom/instabug/library/annotation/f/a;->c(Lcom/instabug/library/annotation/b;)V

    return-void
.end method

.method public b(Lcom/instabug/library/annotation/b;)V
    .locals 5

    .line 3
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    add-float/2addr v2, v0

    .line 8
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 11
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Lcom/instabug/library/annotation/f/a;->g:F

    invoke-static {v2, v3, v4, v0}, Lcom/instabug/library/annotation/g/c;->a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/annotation/f/a;->e:Landroid/graphics/PointF;

    .line 12
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget v2, p0, Lcom/instabug/library/annotation/f/a;->g:F

    invoke-static {v0, p1, v2, v1}, Lcom/instabug/library/annotation/g/c;->a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/annotation/f/a;->f:Landroid/graphics/PointF;

    return-void
.end method

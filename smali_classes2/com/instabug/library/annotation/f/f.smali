.class public Lcom/instabug/library/annotation/f/f;
.super Lcom/instabug/library/annotation/f/g;
.source "RectShape.java"


# instance fields
.field protected d:I

.field protected e:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(IFI)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/annotation/f/g;-><init>(IF)V

    .line 2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    .line 3
    iput p3, p0, Lcom/instabug/library/annotation/f/f;->d:I

    return-void
.end method

.method private a(FFLcom/instabug/library/annotation/b;Z)V
    .locals 4

    .line 75
    iget-object v0, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 77
    iget-object p1, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget-object p2, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    .line 78
    invoke-static {p1, p2, v0}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide p1

    double-to-float p1, p1

    .line 80
    iget-object p2, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_3

    .line 83
    :cond_1
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    add-int/lit16 p2, p2, 0xb4

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 89
    :cond_3
    :goto_1
    iget-object p1, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget-object p2, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    .line 90
    invoke-static {p1, p2, v0}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide p1

    double-to-float p1, p1

    .line 92
    iget-object p2, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_6

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v3, p2, v1

    if-lez v3, :cond_4

    goto :goto_2

    :cond_4
    cmpl-float v0, v0, v2

    if-gtz v0, :cond_5

    cmpg-float p2, p2, v1

    if-gez p2, :cond_7

    .line 95
    :cond_5
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    add-int/lit16 p2, p2, 0x10e

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_3

    .line 96
    :cond_6
    :goto_2
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    add-int/lit8 p2, p2, 0x5a

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_7
    :goto_3
    if-eqz p4, :cond_8

    .line 101
    iget-object p1, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 p4, 0x0

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/instabug/library/annotation/f/f;->c(FFLcom/instabug/library/annotation/b;Z)V

    :cond_8
    return-void
.end method

.method private b(FFLcom/instabug/library/annotation/b;Z)V
    .locals 4

    .line 5
    iget-object v0, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 7
    iget-object p1, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget-object p2, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    .line 8
    invoke-static {p1, p2, v0}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide p1

    double-to-float p1, p1

    .line 10
    iget-object p2, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v0, v2

    if-gtz v3, :cond_2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    cmpg-float p2, p2, v1

    if-gez p2, :cond_3

    .line 13
    :cond_1
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    add-int/lit16 p2, p2, 0xb4

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 19
    :cond_3
    :goto_1
    iget-object p1, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget-object p2, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    .line 20
    invoke-static {p1, p2, v0}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide p1

    double-to-float p1, p1

    .line 22
    iget-object p2, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_6

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v3, p2, v1

    if-lez v3, :cond_4

    goto :goto_2

    :cond_4
    cmpl-float v0, v0, v2

    if-gtz v0, :cond_5

    cmpg-float p2, p2, v1

    if-gez p2, :cond_7

    .line 25
    :cond_5
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    add-int/lit16 p2, p2, 0x10e

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_3

    .line 26
    :cond_6
    :goto_2
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    add-int/lit8 p2, p2, 0x5a

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_7
    :goto_3
    if-eqz p4, :cond_8

    .line 32
    iget-object p1, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 p4, 0x0

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/instabug/library/annotation/f/f;->d(FFLcom/instabug/library/annotation/b;Z)V

    :cond_8
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/instabug/library/annotation/f/f;->a(Lcom/instabug/library/annotation/b;)Landroid/graphics/Path;

    move-result-object p2

    iget-object v0, p0, Lcom/instabug/library/annotation/f/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c(FFLcom/instabug/library/annotation/b;Z)V
    .locals 4

    .line 4
    iget-object v0, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 6
    iget-object p1, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget-object p2, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    .line 7
    invoke-static {p1, p2, v0}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide p1

    double-to-float p1, p1

    .line 9
    iget-object p2, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v0, v2

    if-gtz v3, :cond_2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v3, p2, v1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_3

    .line 12
    :cond_1
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    add-int/lit8 p2, p2, 0x5a

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_1

    .line 13
    :cond_2
    :goto_0
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    add-int/lit16 p2, p2, 0x10e

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 18
    :cond_3
    :goto_1
    iget-object p1, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget-object p2, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    .line 19
    invoke-static {p1, p2, v0}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide p1

    double-to-float p1, p1

    .line 21
    iget-object p2, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v0, v2

    if-gtz v3, :cond_6

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v1

    if-lez v3, :cond_4

    goto :goto_2

    :cond_4
    cmpg-float v0, v0, v2

    if-ltz v0, :cond_5

    cmpg-float p2, p2, v1

    if-gez p2, :cond_7

    .line 24
    :cond_5
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_3

    .line 25
    :cond_6
    :goto_2
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    add-int/lit16 p2, p2, 0xb4

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_7
    :goto_3
    if-eqz p4, :cond_8

    .line 31
    iget-object p1, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 p4, 0x0

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/instabug/library/annotation/f/f;->a(FFLcom/instabug/library/annotation/b;Z)V

    :cond_8
    return-void
.end method

.method private c(Lcom/instabug/library/annotation/b;)V
    .locals 3

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method private c()Z
    .locals 2

    .line 35
    iget v0, p0, Lcom/instabug/library/annotation/f/f;->d:I

    if-eqz v0, :cond_0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d(FFLcom/instabug/library/annotation/b;Z)V
    .locals 4

    .line 4
    iget-object v0, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 6
    iget-object p1, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget-object p2, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    .line 7
    invoke-static {p1, p2, v0}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide p1

    double-to-float p1, p1

    .line 9
    iget-object p2, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v0, v2

    if-gtz v3, :cond_2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v3, p2, v1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_3

    .line 12
    :cond_1
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    add-int/lit8 p2, p2, 0x5a

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_1

    .line 13
    :cond_2
    :goto_0
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    add-int/lit16 p2, p2, 0x10e

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 18
    :cond_3
    :goto_1
    iget-object p1, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget-object p2, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    .line 19
    invoke-static {p1, p2, v0}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide p1

    double-to-float p1, p1

    .line 21
    iget-object p2, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_6

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v1

    if-gez v3, :cond_4

    goto :goto_2

    :cond_4
    cmpl-float v0, v0, v2

    if-gtz v0, :cond_5

    cmpl-float p2, p2, v1

    if-lez p2, :cond_7

    .line 24
    :cond_5
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    add-int/lit16 p2, p2, 0xb4

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_3

    .line 25
    :cond_6
    :goto_2
    iget p2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    int-to-float p2, p2

    iget-object v0, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget-object v1, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1}, Lcom/instabug/library/annotation/g/c;->a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_7
    :goto_3
    if-eqz p4, :cond_8

    .line 31
    iget-object p1, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 p4, 0x0

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/instabug/library/annotation/f/f;->b(FFLcom/instabug/library/annotation/b;Z)V

    :cond_8
    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/annotation/b;)Landroid/graphics/Path;
    .locals 9

    .line 102
    invoke-direct {p0}, Lcom/instabug/library/annotation/f/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-boolean v0, p1, Lcom/instabug/library/annotation/b;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p1, Lcom/instabug/library/annotation/b;->i:Z

    .line 105
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 108
    iget v2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    int-to-float v2, v2

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 109
    invoke-static {v0, v1, v2, v3}, Lcom/instabug/library/annotation/g/c;->a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 110
    iget v3, p0, Lcom/instabug/library/annotation/f/f;->d:I

    int-to-float v3, v3

    new-instance v4, Landroid/graphics/PointF;

    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 111
    invoke-static {v0, v1, v3, v4}, Lcom/instabug/library/annotation/g/c;->a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 112
    iget v4, p0, Lcom/instabug/library/annotation/f/f;->d:I

    int-to-float v4, v4

    new-instance v5, Landroid/graphics/PointF;

    iget v6, p1, Landroid/graphics/RectF;->right:F

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 113
    invoke-static {v0, v1, v4, v5}, Lcom/instabug/library/annotation/g/c;->a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 114
    iget v5, p0, Lcom/instabug/library/annotation/f/f;->d:I

    int-to-float v5, v5

    new-instance v6, Landroid/graphics/PointF;

    iget v7, p1, Landroid/graphics/RectF;->left:F

    iget v8, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 115
    invoke-static {v0, v1, v5, v6}, Lcom/instabug/library/annotation/g/c;->a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 117
    iget-object v1, p1, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 118
    iget-object v1, p1, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 119
    iget-object v1, p1, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    invoke-virtual {v1, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 120
    iget-object v1, p1, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instabug/library/annotation/f/f;->b(Lcom/instabug/library/annotation/b;)V

    .line 126
    iget-object p1, p0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    return-object p1
.end method

.method public a(FFLcom/instabug/library/annotation/b;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/instabug/library/annotation/f/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/instabug/library/annotation/f/f;->a(FFLcom/instabug/library/annotation/b;Z)V

    .line 74
    invoke-direct {p0, p3}, Lcom/instabug/library/annotation/f/f;->c(Lcom/instabug/library/annotation/b;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/annotation/f/f;->b(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/annotation/f/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p2, Lcom/instabug/library/annotation/b;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p3, Lcom/instabug/library/annotation/b;->i:Z

    .line 4
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 7
    iget v2, p0, Lcom/instabug/library/annotation/f/f;->d:I

    int-to-float v2, v2

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8
    invoke-static {v0, v1, v2, v3}, Lcom/instabug/library/annotation/g/c;->a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 9
    iget v3, p0, Lcom/instabug/library/annotation/f/f;->d:I

    int-to-float v3, v3

    new-instance v4, Landroid/graphics/PointF;

    iget v5, p2, Landroid/graphics/RectF;->right:F

    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10
    invoke-static {v0, v1, v3, v4}, Lcom/instabug/library/annotation/g/c;->a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 11
    iget v4, p0, Lcom/instabug/library/annotation/f/f;->d:I

    int-to-float v4, v4

    new-instance v5, Landroid/graphics/PointF;

    iget v6, p2, Landroid/graphics/RectF;->right:F

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12
    invoke-static {v0, v1, v4, v5}, Lcom/instabug/library/annotation/g/c;->a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 13
    iget v5, p0, Lcom/instabug/library/annotation/f/f;->d:I

    int-to-float v5, v5

    new-instance v6, Landroid/graphics/PointF;

    iget v7, p2, Landroid/graphics/RectF;->left:F

    iget v8, p2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 14
    invoke-static {v0, v1, v5, v6}, Lcom/instabug/library/annotation/g/c;->a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 16
    iget-object v1, p3, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 17
    iget-object v1, p3, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 18
    iget-object v1, p3, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    invoke-virtual {v1, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 19
    iget-object p3, p3, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    invoke-virtual {p3, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 22
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/annotation/f/f;->a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;[Lcom/instabug/library/annotation/a;)V
    .locals 7

    .line 45
    invoke-direct {p0}, Lcom/instabug/library/annotation/f/f;->c()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 46
    aget-object v0, p3, v4

    iget v5, p2, Landroid/graphics/RectF;->left:F

    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v5, v6}, Lcom/instabug/library/annotation/a;->a(FF)V

    .line 47
    aget-object v0, p3, v3

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v3, v5}, Lcom/instabug/library/annotation/a;->a(FF)V

    .line 48
    aget-object v0, p3, v2

    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v3}, Lcom/instabug/library/annotation/a;->a(FF)V

    .line 49
    aget-object v0, p3, v1

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, p2}, Lcom/instabug/library/annotation/a;->a(FF)V

    goto :goto_0

    .line 51
    :cond_0
    aget-object v0, p3, v4

    iget-object v5, p2, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v6, v5}, Lcom/instabug/library/annotation/a;->a(FF)V

    .line 52
    aget-object v0, p3, v3

    iget-object v3, p2, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5, v3}, Lcom/instabug/library/annotation/a;->a(FF)V

    .line 53
    aget-object v0, p3, v2

    iget-object v2, p2, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v2}, Lcom/instabug/library/annotation/a;->a(FF)V

    .line 54
    aget-object v0, p3, v1

    iget-object p2, p2, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p2}, Lcom/instabug/library/annotation/a;->a(FF)V

    .line 57
    :goto_0
    iget-object p2, p0, Lcom/instabug/library/annotation/f/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    .line 59
    :goto_1
    array-length v0, p3

    if-ge v4, v0, :cond_1

    .line 60
    aget-object v0, p3, v4

    invoke-virtual {v0, p2}, Lcom/instabug/library/annotation/a;->a(I)V

    .line 61
    aget-object v0, p3, v4

    invoke-virtual {v0, p1}, Lcom/instabug/library/annotation/a;->a(Landroid/graphics/Canvas;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;II)V
    .locals 3

    .line 62
    iget-object v0, p1, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget-object v1, p2, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    int-to-float p3, p3

    add-float/2addr v2, p3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    int-to-float p4, p4

    add-float/2addr v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 64
    iget-object v0, p1, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget-object v1, p2, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, p3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 65
    iget-object v0, p1, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget-object v1, p2, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, p3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 66
    iget-object v0, p1, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget-object v1, p2, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, p3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 68
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 69
    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p4

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 70
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 71
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public a(Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;Z)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/instabug/library/annotation/f/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 44
    :cond_0
    invoke-virtual {p2, p1}, Lcom/instabug/library/annotation/b;->a(Lcom/instabug/library/annotation/b;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/PointF;Lcom/instabug/library/annotation/b;)Z
    .locals 6

    .line 24
    invoke-direct {p0}, Lcom/instabug/library/annotation/f/f;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x42480000    # 50.0f

    if-nez v0, :cond_1

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 26
    invoke-virtual {v0, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 28
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/high16 p2, -0x3db80000    # -50.0f

    .line 29
    invoke-virtual {v3, p2, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 31
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, p2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 32
    invoke-virtual {v0, p2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 36
    :cond_1
    new-instance p2, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float v4, v0, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float v5, p1, v3

    add-float/2addr v0, v3

    add-float/2addr p1, v3

    invoke-direct {p2, v4, v5, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 39
    iget-object p1, p0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    invoke-static {p1}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/Path;)Ljava/util/List;

    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 42
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v3, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method public b(FFLcom/instabug/library/annotation/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/annotation/f/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/instabug/library/annotation/f/f;->b(FFLcom/instabug/library/annotation/b;Z)V

    .line 4
    invoke-direct {p0, p3}, Lcom/instabug/library/annotation/f/f;->c(Lcom/instabug/library/annotation/b;)V

    :cond_0
    return-void
.end method

.method protected b(Lcom/instabug/library/annotation/b;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 34
    invoke-direct {p0}, Lcom/instabug/library/annotation/f/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    iget-object v1, p1, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 38
    iget-object v0, p0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    iget-object v1, p1, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    iget-object v0, p0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    iget-object v1, p1, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 40
    iget-object v0, p0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    iget-object p1, p1, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 41
    iget-object p1, p0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :goto_0
    return-void
.end method

.method public c(FFLcom/instabug/library/annotation/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/annotation/f/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/instabug/library/annotation/f/f;->c(FFLcom/instabug/library/annotation/b;Z)V

    .line 3
    invoke-direct {p0, p3}, Lcom/instabug/library/annotation/f/f;->c(Lcom/instabug/library/annotation/b;)V

    :cond_0
    return-void
.end method

.method public d(FFLcom/instabug/library/annotation/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/annotation/f/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/instabug/library/annotation/f/f;->d(FFLcom/instabug/library/annotation/b;Z)V

    .line 3
    invoke-direct {p0, p3}, Lcom/instabug/library/annotation/f/f;->c(Lcom/instabug/library/annotation/b;)V

    :cond_0
    return-void
.end method

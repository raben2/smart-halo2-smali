.class public Lcom/instabug/library/annotation/e/a;
.super Ljava/lang/Object;
.source "Matcher.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private final g:Landroid/graphics/Path;

.field private h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/e/a;->h:Landroid/graphics/Paint;

    .line 3
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/annotation/e/a;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    invoke-static {p1}, Lcom/instabug/library/annotation/e/f;->a(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/annotation/e/a;->g:Landroid/graphics/Path;

    .line 6
    invoke-direct {p0, p1}, Lcom/instabug/library/annotation/e/a;->a(Landroid/graphics/Path;)V

    return-void
.end method

.method private a(Ljava/util/List;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/annotation/e/g;",
            ">;)F"
        }
    .end annotation

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/annotation/e/g;

    .line 114
    iget v2, v2, Lcom/instabug/library/annotation/e/g;->c:F

    add-float/2addr v1, v2

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1
.end method

.method private a(Landroid/graphics/Path;Landroid/graphics/Path;)Lcom/instabug/library/annotation/e/g;
    .locals 16

    move-object/from16 v0, p0

    .line 26
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x1c

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 27
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    iget-object v3, v0, Lcom/instabug/library/annotation/e/a;->h:Landroid/graphics/Paint;

    const/high16 v11, -0x1000000

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v3, v0, Lcom/instabug/library/annotation/e/a;->h:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/16 v12, 0x310

    .line 32
    new-array v13, v12, [I

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/16 v10, 0x1c

    move-object v3, v1

    move-object v4, v13

    .line 34
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v3, v12, :cond_1

    .line 35
    aget v4, v13, v3

    if-ne v4, v11, :cond_0

    add-int/lit8 v15, v15, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    :cond_1
    iget-object v3, v0, Lcom/instabug/library/annotation/e/a;->h:Landroid/graphics/Paint;

    const v13, -0x7f000001

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v3, v0, Lcom/instabug/library/annotation/e/a;->h:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 44
    new-array v2, v12, [I

    .line 46
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/16 v10, 0x1c

    move-object v3, v1

    move-object v4, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 52
    new-instance v1, Lcom/instabug/library/annotation/e/g;

    invoke-direct {v1}, Lcom/instabug/library/annotation/e/g;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v14, v12, :cond_5

    .line 54
    aget v7, v2, v14

    const v8, -0x7f7f80

    if-ne v7, v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    if-ne v7, v13, :cond_3

    add-float/2addr v4, v6

    goto :goto_2

    :cond_3
    if-ne v7, v11, :cond_4

    add-float/2addr v3, v6

    :cond_4
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 64
    :cond_5
    iput v5, v1, Lcom/instabug/library/annotation/e/g;->a:I

    .line 65
    iget v2, v0, Lcom/instabug/library/annotation/e/a;->a:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    iput v4, v1, Lcom/instabug/library/annotation/e/g;->f:F

    int-to-float v2, v15

    div-float/2addr v3, v2

    .line 67
    iput v3, v1, Lcom/instabug/library/annotation/e/g;->g:F

    sub-float v3, v6, v3

    add-float/2addr v3, v6

    sub-float/2addr v3, v4

    int-to-float v4, v5

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v3, v2

    .line 69
    iput v3, v1, Lcom/instabug/library/annotation/e/g;->c:F

    .line 74
    iget v2, v0, Lcom/instabug/library/annotation/e/a;->b:I

    iput v2, v1, Lcom/instabug/library/annotation/e/g;->h:I

    .line 75
    iget v2, v0, Lcom/instabug/library/annotation/e/a;->c:I

    iput v2, v1, Lcom/instabug/library/annotation/e/g;->i:I

    .line 76
    iget v2, v0, Lcom/instabug/library/annotation/e/a;->d:I

    iput v2, v1, Lcom/instabug/library/annotation/e/g;->j:I

    .line 77
    iget v2, v0, Lcom/instabug/library/annotation/e/a;->e:I

    iput v2, v1, Lcom/instabug/library/annotation/e/g;->k:I

    .line 78
    iget v2, v0, Lcom/instabug/library/annotation/e/a;->f:F

    iput v2, v1, Lcom/instabug/library/annotation/e/g;->l:F

    return-object v1
.end method

.method private a(Lcom/instabug/library/annotation/e/e;III)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/annotation/e/e;",
            "III)",
            "Ljava/util/List<",
            "Lcom/instabug/library/annotation/e/g;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/instabug/library/annotation/e/b;->a(Lcom/instabug/library/annotation/e/e;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 81
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 82
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/annotation/e/d;

    move v3, p2

    :goto_1
    if-ge v3, p3, :cond_0

    mul-int v4, v3, p4

    .line 85
    iget-object v5, v2, Lcom/instabug/library/annotation/e/d;->a:Landroid/graphics/Path;

    invoke-static {v5, v4}, Lcom/instabug/library/annotation/e/f;->a(Landroid/graphics/Path;I)Landroid/graphics/Path;

    move-result-object v5

    iget-object v6, p0, Lcom/instabug/library/annotation/e/a;->g:Landroid/graphics/Path;

    invoke-direct {p0, v5, v6}, Lcom/instabug/library/annotation/e/a;->a(Landroid/graphics/Path;Landroid/graphics/Path;)Lcom/instabug/library/annotation/e/g;

    move-result-object v5

    .line 87
    iput v4, v5, Lcom/instabug/library/annotation/e/g;->b:I

    .line 88
    iget v4, v2, Lcom/instabug/library/annotation/e/d;->b:F

    iput v4, v5, Lcom/instabug/library/annotation/e/g;->e:F

    .line 89
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v4, Lcom/instabug/library/annotation/e/e;->OVAL:Lcom/instabug/library/annotation/e/e;

    if-ne p1, v4, :cond_1

    iget v4, v2, Lcom/instabug/library/annotation/e/d;->b:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private a(Landroid/graphics/Path;)V
    .locals 12

    .line 1
    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 2
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lcom/instabug/library/annotation/e/a;->f:F

    .line 4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x1c

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 5
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object v2, p0, Lcom/instabug/library/annotation/e/a;->h:Landroid/graphics/Paint;

    const/high16 v11, -0x10000

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v2, p0, Lcom/instabug/library/annotation/e/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/16 p1, 0x310

    .line 10
    new-array v0, p1, [I

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/16 v10, 0x1c

    move-object v4, v0

    .line 12
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :goto_0
    if-ge v1, p1, :cond_3

    .line 14
    aget v2, v0, v1

    if-ne v2, v11, :cond_2

    .line 15
    iget v2, p0, Lcom/instabug/library/annotation/e/a;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/instabug/library/annotation/e/a;->a:I

    const/16 v2, 0x188

    if-ge v1, v2, :cond_0

    .line 17
    iget v2, p0, Lcom/instabug/library/annotation/e/a;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/instabug/library/annotation/e/a;->c:I

    goto :goto_1

    .line 19
    :cond_0
    iget v2, p0, Lcom/instabug/library/annotation/e/a;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/instabug/library/annotation/e/a;->e:I

    .line 22
    :goto_1
    rem-int/lit8 v2, v1, 0x1c

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 23
    iget v2, p0, Lcom/instabug/library/annotation/e/a;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/instabug/library/annotation/e/a;->b:I

    goto :goto_2

    .line 25
    :cond_1
    iget v2, p0, Lcom/instabug/library/annotation/e/a;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/instabug/library/annotation/e/a;->d:I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private b(Landroid/graphics/Path;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/library/annotation/e/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/library/annotation/e/b;->a()Landroid/graphics/Path;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x24

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0xa

    .line 5
    invoke-static {v1, v3}, Lcom/instabug/library/annotation/e/f;->a(Landroid/graphics/Path;I)Landroid/graphics/Path;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/instabug/library/annotation/e/a;->a(Landroid/graphics/Path;Landroid/graphics/Path;)Lcom/instabug/library/annotation/e/g;

    move-result-object v4

    .line 6
    iput v3, v4, Lcom/instabug/library/annotation/e/g;->b:I

    .line 7
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/instabug/library/annotation/e/g;
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/instabug/library/annotation/e/a;->g:Landroid/graphics/Path;

    invoke-direct {p0, v0}, Lcom/instabug/library/annotation/e/a;->b(Landroid/graphics/Path;)Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/annotation/e/g;

    .line 101
    iget v2, v1, Lcom/instabug/library/annotation/e/g;->b:I

    if-ltz v2, :cond_0

    const/16 v3, 0x14

    if-le v2, v3, :cond_4

    :cond_0
    iget v2, v1, Lcom/instabug/library/annotation/e/g;->b:I

    const/16 v3, 0x168

    if-gt v2, v3, :cond_1

    const/16 v3, 0x154

    if-ge v2, v3, :cond_4

    :cond_1
    iget v2, v1, Lcom/instabug/library/annotation/e/g;->b:I

    const/16 v3, 0xa0

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_4

    :cond_2
    iget v2, v1, Lcom/instabug/library/annotation/e/g;->b:I

    const/16 v3, 0xb4

    if-le v2, v3, :cond_3

    .line 104
    invoke-virtual {v1}, Lcom/instabug/library/annotation/e/g;->a()Lcom/instabug/library/annotation/e/g$a;

    move-result-object v2

    sget-object v4, Lcom/instabug/library/annotation/e/g$a;->TOP:Lcom/instabug/library/annotation/e/g$a;

    if-eq v2, v4, :cond_4

    :cond_3
    iget v2, v1, Lcom/instabug/library/annotation/e/g;->b:I

    if-ge v2, v3, :cond_5

    .line 105
    invoke-virtual {v1}, Lcom/instabug/library/annotation/e/g;->a()Lcom/instabug/library/annotation/e/g$a;

    move-result-object v2

    sget-object v4, Lcom/instabug/library/annotation/e/g$a;->BOTTOM:Lcom/instabug/library/annotation/e/g$a;

    if-ne v2, v4, :cond_5

    :cond_4
    return-object v1

    .line 107
    :cond_5
    iget v1, v1, Lcom/instabug/library/annotation/e/g;->b:I

    if-ge v1, v3, :cond_6

    add-int/2addr v1, v3

    .line 108
    div-int/lit8 v1, v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/annotation/e/g;

    goto :goto_0

    :cond_6
    sub-int/2addr v1, v3

    .line 110
    div-int/lit8 v1, v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/annotation/e/g;

    .line 112
    :goto_0
    invoke-direct {p0, v0}, Lcom/instabug/library/annotation/e/a;->a(Ljava/util/List;)F

    move-result v0

    iput v0, v1, Lcom/instabug/library/annotation/e/g;->d:F

    return-object v1
.end method

.method public a(Lcom/instabug/library/annotation/e/e;)Lcom/instabug/library/annotation/e/g;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x12

    const/16 v2, 0xa

    .line 92
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/instabug/library/annotation/e/a;->a(Lcom/instabug/library/annotation/e/e;III)Ljava/util/List;

    move-result-object p1

    .line 94
    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/annotation/e/g;

    .line 96
    invoke-direct {p0, p1}, Lcom/instabug/library/annotation/e/a;->a(Ljava/util/List;)F

    move-result p1

    iput p1, v0, Lcom/instabug/library/annotation/e/g;->d:F

    return-object v0
.end method

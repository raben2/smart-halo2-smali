.class public Lcom/instabug/library/annotation/f/d;
.super Lcom/instabug/library/annotation/f/f;
.source "OvalShape.java"


# direct methods
.method public constructor <init>(IFI)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/library/annotation/f/f;-><init>(IFI)V

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


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/library/annotation/f/g;->a:Landroid/graphics/Paint;

    invoke-static {p1, p2, p3, v0}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/annotation/f/g;->a:Landroid/graphics/Paint;

    invoke-static {p1, p2, p5, v0}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Paint;)V

    .line 4
    iget-object p2, p0, Lcom/instabug/library/annotation/f/g;->a:Landroid/graphics/Paint;

    invoke-static {p1, p3, p4, p2}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Paint;)V

    .line 5
    iget-object p2, p0, Lcom/instabug/library/annotation/f/g;->a:Landroid/graphics/Paint;

    invoke-static {p1, p4, p5, p2}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/annotation/f/d;->b(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;)V

    return-void
.end method

.method protected b(Lcom/instabug/library/annotation/b;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget-object v2, v0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 3
    iget v2, v0, Lcom/instabug/library/annotation/f/f;->d:I

    if-eqz v2, :cond_1

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_0

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object v2, v1, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget-object v3, v1, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    invoke-static {v2, v3}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 7
    iget-object v3, v1, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    invoke-static {v3, v2}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 8
    iget-object v4, v1, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    invoke-static {v4, v2}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 10
    iget-object v5, v1, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget-object v6, v1, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    invoke-static {v5, v6}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    .line 11
    iget-object v6, v1, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    invoke-static {v6, v5}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    .line 12
    iget-object v7, v1, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    invoke-static {v7, v5}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    .line 14
    iget-object v8, v1, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget-object v9, v1, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    invoke-static {v8, v9}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v8

    .line 15
    iget-object v9, v1, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    invoke-static {v9, v8}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    .line 16
    iget-object v10, v1, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    invoke-static {v10, v8}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    .line 18
    iget-object v11, v1, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget-object v12, v1, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    invoke-static {v11, v12}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v11

    .line 19
    iget-object v12, v1, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    invoke-static {v12, v11}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v12

    .line 20
    iget-object v1, v1, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    invoke-static {v1, v11}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 23
    iget-object v13, v0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    iget v14, v2, Landroid/graphics/PointF;->x:F

    iget v15, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 24
    iget-object v13, v0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    iget v14, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v15, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move-object/from16 v23, v2

    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v16, v13

    move/from16 v17, v14

    move/from16 v18, v4

    move/from16 v19, v15

    move/from16 v20, v6

    move/from16 v21, v2

    move/from16 v22, v5

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 26
    iget-object v2, v0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    iget v4, v7, Landroid/graphics/PointF;->x:F

    iget v5, v7, Landroid/graphics/PointF;->y:F

    iget v6, v9, Landroid/graphics/PointF;->x:F

    iget v7, v9, Landroid/graphics/PointF;->y:F

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v9

    move/from16 v22, v8

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 28
    iget-object v13, v0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    iget v14, v10, Landroid/graphics/PointF;->x:F

    iget v15, v10, Landroid/graphics/PointF;->y:F

    iget v2, v12, Landroid/graphics/PointF;->x:F

    iget v4, v12, Landroid/graphics/PointF;->y:F

    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v6, v11, Landroid/graphics/PointF;->y:F

    move/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 30
    iget-object v2, v0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v6, v23

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v1

    move/from16 v19, v5

    move/from16 v20, v3

    move/from16 v21, v7

    move/from16 v22, v6

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 32
    iget-object v1, v0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/instabug/library/annotation/f/f;->e:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :goto_1
    return-void
.end method

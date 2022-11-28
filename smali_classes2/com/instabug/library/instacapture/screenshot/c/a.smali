.class public Lcom/instabug/library/instacapture/screenshot/c/a;
.super Ljava/lang/Object;
.source "DialogUiRenderer.java"


# direct methods
.method public static a(Landroid/app/Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/instabug/library/instacapture/screenshot/FieldHelper;->getRootViews(Landroid/app/Activity;[I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    :try_start_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;

    .line 10
    invoke-virtual {v2}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->isDialog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-static {v0, v2}, Lcom/instabug/library/instacapture/screenshot/c/a;->a(Landroid/graphics/Canvas;Lcom/instabug/library/instacapture/screenshot/RootViewInfo;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;

    .line 16
    invoke-virtual {v1}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->isDialog()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v1}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    .line 18
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 19
    invoke-static {v0, v1}, Lcom/instabug/library/instacapture/screenshot/c/a;->a(Landroid/graphics/Canvas;Lcom/instabug/library/instacapture/screenshot/RootViewInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    return-object p1

    :catch_0
    move-exception p0

    const-string v0, "DialogUiRenderer"

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    const-string v1, "Something went wrong while getting root views"

    .line 27
    :goto_2
    invoke-static {v0, v1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    return-object p1
.end method

.method private static a(Landroid/graphics/Canvas;Lcom/instabug/library/instacapture/screenshot/RootViewInfo;)V
    .locals 2
    .param p0    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/instabug/library/instacapture/screenshot/RootViewInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->getView()Landroid/view/View;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 33
    invoke-virtual {p1}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    invoke-virtual {p1}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 35
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

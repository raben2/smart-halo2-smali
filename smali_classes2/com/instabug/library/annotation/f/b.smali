.class public Lcom/instabug/library/annotation/f/b;
.super Lcom/instabug/library/annotation/f/c;
.source "BlurredRectShape.java"


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v0, -0x10000

    .line 1
    invoke-direct {p0, v0}, Lcom/instabug/library/annotation/f/c;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/instabug/library/annotation/f/b;->e:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/16 v0, 0x12

    .line 4
    invoke-static {p1, v0, p2}, Lcom/instabug/library/annotation/g/b;->a(Landroid/graphics/Bitmap;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/annotation/f/c;->d:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/instabug/library/annotation/f/g;->a(Z)V

    :cond_0
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
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/f/b;->e:Landroid/content/Context;

    const/16 v1, 0x12

    invoke-static {p1, v1, v0}, Lcom/instabug/library/annotation/g/b;->a(Landroid/graphics/Bitmap;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/annotation/f/c;->d:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FF)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/instabug/library/annotation/f/g;->a:Landroid/graphics/Paint;

    invoke-static {p1, p2, p3, v0}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Paint;)V

    .line 11
    iget-object v0, p0, Lcom/instabug/library/annotation/f/g;->a:Landroid/graphics/Paint;

    invoke-static {p1, p2, p5, v0}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Paint;)V

    .line 12
    iget-object p2, p0, Lcom/instabug/library/annotation/f/g;->a:Landroid/graphics/Paint;

    invoke-static {p1, p3, p4, p2}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Paint;)V

    .line 13
    iget-object p2, p0, Lcom/instabug/library/annotation/f/g;->a:Landroid/graphics/Paint;

    invoke-static {p1, p4, p5, p2}, Lcom/instabug/library/annotation/g/c;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;[Lcom/instabug/library/annotation/a;)V
    .locals 3

    .line 4
    invoke-virtual {p2}, Lcom/instabug/library/annotation/b;->c()[Landroid/graphics/PointF;

    move-result-object p2

    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 7
    aget-object v1, p3, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/instabug/library/annotation/a;->b(Landroid/graphics/PointF;)V

    .line 8
    aget-object v1, p3, v0

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/annotation/a;->a(I)V

    .line 9
    aget-object v1, p3, v0

    invoke-virtual {v1, p1}, Lcom/instabug/library/annotation/a;->a(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;Z)V
    .locals 0

    .line 3
    invoke-virtual {p2, p1}, Lcom/instabug/library/annotation/b;->a(Lcom/instabug/library/annotation/b;)V

    return-void
.end method

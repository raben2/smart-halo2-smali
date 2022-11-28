.class public abstract Lcom/instabug/library/annotation/f/g;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final a:Landroid/graphics/Paint;

.field protected b:Landroid/graphics/Paint;

.field private c:Z


# direct methods
.method constructor <init>(IF)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/library/annotation/f/g;->c:Z

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/instabug/library/annotation/f/g;->b:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object p1, p0, Lcom/instabug/library/annotation/f/g;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object p1, p0, Lcom/instabug/library/annotation/f/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object p1, p0, Lcom/instabug/library/annotation/f/g;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/instabug/library/annotation/f/g;->a:Landroid/graphics/Paint;

    const/high16 p2, -0x80000000

    .line 13
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/f/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public abstract a(Lcom/instabug/library/annotation/b;)Landroid/graphics/Path;
.end method

.method public abstract a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
.end method

.method public abstract a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;)V
.end method

.method public abstract a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;[Lcom/instabug/library/annotation/a;)V
.end method

.method public abstract a(Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;II)V
.end method

.method public abstract a(Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;Z)V
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/library/annotation/f/g;->c:Z

    return-void
.end method

.method public abstract a(Landroid/graphics/PointF;Lcom/instabug/library/annotation/b;)Z
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/annotation/f/g;->c:Z

    return v0
.end method

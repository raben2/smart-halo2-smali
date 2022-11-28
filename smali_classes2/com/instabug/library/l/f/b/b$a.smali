.class Lcom/instabug/library/l/f/b/b$a;
.super Landroid/graphics/drawable/shapes/Shape;
.source "MuteFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/l/f/b/b;->getIconDrawable()Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/instabug/library/l/f/b/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/l/f/b/b;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/l/f/b/b$a;->e:Lcom/instabug/library/l/f/b/b;

    iput p2, p0, Lcom/instabug/library/l/f/b/b$a;->a:F

    iput p3, p0, Lcom/instabug/library/l/f/b/b$a;->b:F

    iput p4, p0, Lcom/instabug/library/l/f/b/b$a;->c:F

    iput p5, p0, Lcom/instabug/library/l/f/b/b$a;->d:F

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/f/b/b$a;->e:Lcom/instabug/library/l/f/b/b;

    invoke-static {v0}, Lcom/instabug/library/l/f/b/b;->a(Lcom/instabug/library/l/f/b/b;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    const/high16 v0, -0x10000

    .line 2
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget v0, p0, Lcom/instabug/library/l/f/b/b$a;->a:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget v0, p0, Lcom/instabug/library/l/f/b/b$a;->b:F

    iget v2, p0, Lcom/instabug/library/l/f/b/b$a;->c:F

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v0, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    .line 7
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget v2, p0, Lcom/instabug/library/l/f/b/b$a;->a:F

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget v2, p0, Lcom/instabug/library/l/f/b/b$a;->b:F

    iget v3, p0, Lcom/instabug/library/l/f/b/b$a;->c:F

    div-float/2addr v3, v1

    invoke-virtual {p1, v2, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget v0, p0, Lcom/instabug/library/l/f/b/b$a;->a:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    iget v3, p0, Lcom/instabug/library/l/f/b/b$a;->a:F

    iget v4, p0, Lcom/instabug/library/l/f/b/b$a;->d:F

    add-float v5, v4, v3

    const/4 v2, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

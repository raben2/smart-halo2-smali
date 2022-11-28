.class Lcom/instabug/library/l/f/b/c$a;
.super Landroid/graphics/drawable/shapes/Shape;
.source "RecordingFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/l/f/b/c;->getIconDrawable()Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lcom/instabug/library/l/f/b/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/l/f/b/c;FFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/l/f/b/c$a;->d:Lcom/instabug/library/l/f/b/c;

    iput p2, p0, Lcom/instabug/library/l/f/b/c$a;->a:F

    iput p3, p0, Lcom/instabug/library/l/f/b/c$a;->b:F

    iput p4, p0, Lcom/instabug/library/l/f/b/c$a;->c:F

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    const/high16 v0, -0x10000

    .line 1
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget v0, p0, Lcom/instabug/library/l/f/b/c$a;->a:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget v0, p0, Lcom/instabug/library/l/f/b/c$a;->b:F

    iget v1, p0, Lcom/instabug/library/l/f/b/c$a;->c:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v0, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7
    iget-object p1, p0, Lcom/instabug/library/l/f/b/c$a;->d:Lcom/instabug/library/l/f/b/c;

    invoke-static {p1}, Lcom/instabug/library/l/f/b/c;->a(Lcom/instabug/library/l/f/b/c;)Lcom/instabug/library/l/f/b/c$b;

    move-result-object p1

    sget-object p2, Lcom/instabug/library/l/f/b/c$b;->RECORDING:Lcom/instabug/library/l/f/b/c$b;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 8
    iget-object p1, p0, Lcom/instabug/library/l/f/b/c$a;->d:Lcom/instabug/library/l/f/b/c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/instabug/library/l/f/b/c;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/l/f/b/c$a;->d:Lcom/instabug/library/l/f/b/c;

    const-string p2, "\ue900"

    invoke-virtual {p1, p2, v0}, Lcom/instabug/library/l/f/b/c;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.class final Lcom/instabug/library/util/BitmapUtils$f;
.super Ljava/lang/Object;
.source "BitmapUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/util/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Landroid/graphics/Canvas;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;

.field final synthetic f:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;IILcom/instabug/library/util/BitmapUtils$OnBitmapReady;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/util/BitmapUtils$f;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/instabug/library/util/BitmapUtils$f;->b:Landroid/graphics/Canvas;

    iput p3, p0, Lcom/instabug/library/util/BitmapUtils$f;->c:I

    iput p4, p0, Lcom/instabug/library/util/BitmapUtils$f;->d:I

    iput-object p5, p0, Lcom/instabug/library/util/BitmapUtils$f;->e:Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;

    iput-object p6, p0, Lcom/instabug/library/util/BitmapUtils$f;->f:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/util/BitmapUtils$f;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/instabug/library/util/BitmapUtils$f;->b:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/instabug/library/util/BitmapUtils$f;->b:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/util/BitmapUtils$f;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/instabug/library/util/BitmapUtils$f;->b:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    new-instance v0, Lcom/instabug/library/util/BitmapUtils$f$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/util/BitmapUtils$f$a;-><init>(Lcom/instabug/library/util/BitmapUtils$f;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postBitmapTask(Ljava/lang/Runnable;)V

    return-void
.end method

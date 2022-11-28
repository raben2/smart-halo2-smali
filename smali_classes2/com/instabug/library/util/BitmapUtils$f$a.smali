.class Lcom/instabug/library/util/BitmapUtils$f$a;
.super Ljava/lang/Object;
.source "BitmapUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/util/BitmapUtils$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/util/BitmapUtils$f;


# direct methods
.method constructor <init>(Lcom/instabug/library/util/BitmapUtils$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/util/BitmapUtils$f$a;->a:Lcom/instabug/library/util/BitmapUtils$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/util/BitmapUtils$f$a;->a:Lcom/instabug/library/util/BitmapUtils$f;

    iget v1, v0, Lcom/instabug/library/util/BitmapUtils$f;->c:I

    iget v0, v0, Lcom/instabug/library/util/BitmapUtils$f;->d:I

    invoke-static {v1, v0}, Lcom/instabug/library/util/BitmapUtils;->access$400(II)[F

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/instabug/library/util/BitmapUtils$f$a;->a:Lcom/instabug/library/util/BitmapUtils$f;

    iget-object v2, v1, Lcom/instabug/library/util/BitmapUtils$f;->e:Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;

    iget-object v1, v1, Lcom/instabug/library/util/BitmapUtils$f;->f:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v1, v3, v0}, Lcom/instabug/library/util/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;->onBitmapReady(Landroid/graphics/Bitmap;)V

    return-void
.end method

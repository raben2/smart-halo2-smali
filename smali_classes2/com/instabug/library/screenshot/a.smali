.class public Lcom/instabug/library/screenshot/a;
.super Ljava/lang/Object;
.source "BitmapProviderRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/media/ImageReader;


# direct methods
.method constructor <init>(IILandroid/media/ImageReader;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p3    # Landroid/media/ImageReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/instabug/library/screenshot/a;->a:I

    .line 3
    iput p2, p0, Lcom/instabug/library/screenshot/a;->b:I

    .line 4
    iput-object p3, p0, Lcom/instabug/library/screenshot/a;->c:Landroid/media/ImageReader;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/instabug/library/screenshot/a;->a:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/instabug/library/screenshot/a;->b:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/library/screenshot/a;->c:Landroid/media/ImageReader;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 7
    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    iget v6, p0, Lcom/instabug/library/screenshot/a;->a:I

    mul-int v6, v6, v5

    sub-int/2addr v2, v6

    .line 8
    iget v6, p0, Lcom/instabug/library/screenshot/a;->a:I

    div-int/2addr v2, v5

    add-int/2addr v6, v2

    iget v2, p0, Lcom/instabug/library/screenshot/a;->b:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 10
    invoke-virtual {v0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 11
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v2, v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-static {}, Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;->getInstance()Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;

    move-result-object v0

    new-instance v2, Lcom/instabug/library/model/f;

    invoke-direct {v2, v3, v1}, Lcom/instabug/library/model/f;-><init>(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {}, Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;->getInstance()Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;

    move-result-object v0

    new-instance v2, Lcom/instabug/library/model/f;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Failed to capture screenshot using media projection "

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/instabug/library/model/f;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/screenshot/a;->c:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 26
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const-string v1, "BitmapProviderRunnable"

    const-string v2, "Error occurred while processing the taken screenshot "

    .line 27
    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    iget-object v0, p0, Lcom/instabug/library/screenshot/a;->c:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Lcom/instabug/library/screenshot/a;->c:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 32
    throw v0

    :cond_3
    :goto_3
    return-void
.end method

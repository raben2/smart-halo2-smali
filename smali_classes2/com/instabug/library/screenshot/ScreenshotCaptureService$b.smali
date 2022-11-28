.class Lcom/instabug/library/screenshot/ScreenshotCaptureService$b;
.super Ljava/lang/Object;
.source "ScreenshotCaptureService.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/screenshot/ScreenshotCaptureService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/instabug/library/screenshot/ScreenshotCaptureService;


# direct methods
.method constructor <init>(Lcom/instabug/library/screenshot/ScreenshotCaptureService;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/screenshot/ScreenshotCaptureService$b;->c:Lcom/instabug/library/screenshot/ScreenshotCaptureService;

    iput p2, p0, Lcom/instabug/library/screenshot/ScreenshotCaptureService$b;->a:I

    iput p3, p0, Lcom/instabug/library/screenshot/ScreenshotCaptureService$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/screenshot/ScreenshotCaptureService$b;->c:Lcom/instabug/library/screenshot/ScreenshotCaptureService;

    invoke-static {v0}, Lcom/instabug/library/screenshot/ScreenshotCaptureService;->a(Lcom/instabug/library/screenshot/ScreenshotCaptureService;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 2
    new-instance v0, Lcom/instabug/library/screenshot/a;

    iget v1, p0, Lcom/instabug/library/screenshot/ScreenshotCaptureService$b;->a:I

    iget v2, p0, Lcom/instabug/library/screenshot/ScreenshotCaptureService$b;->b:I

    invoke-direct {v0, v1, v2, p1}, Lcom/instabug/library/screenshot/a;-><init>(IILandroid/media/ImageReader;)V

    .line 4
    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postBitmapTask(Ljava/lang/Runnable;)V

    return-void
.end method

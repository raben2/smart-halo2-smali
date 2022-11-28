.class Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b$a;
.super Ljava/lang/Object;
.source "ExtraScreenshotHelper.java"

# interfaces
.implements Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;->onScreenshotCapturedSuccessfully(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;


# direct methods
.method constructor <init>(Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b$a;->a:Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-class v1, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b$a;->a:Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;

    iget-object v0, v0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;->b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;->onExtraScreenshotCaptured(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

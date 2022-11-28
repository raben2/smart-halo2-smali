.class Lcom/instabug/library/screenshot/ExtraScreenshotHelper$c;
.super Ljava/lang/Object;
.source "ExtraScreenshotHelper.java"

# interfaces
.implements Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->captureExtraScreenshot(Landroid/app/Activity;Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;


# direct methods
.method constructor <init>(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;Landroid/app/Activity;Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$c;->b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenshotCapturedSuccessfully(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$c;->a:Landroid/app/Activity;

    new-instance v1, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$c$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$c$a;-><init>(Lcom/instabug/library/screenshot/ExtraScreenshotHelper$c;)V

    invoke-static {p1, v0, v1}, Lcom/instabug/library/util/BitmapUtils;->saveBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V

    return-void
.end method

.method public onScreenshotCapturingFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtraScreenshotHelper"

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

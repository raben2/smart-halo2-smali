.class Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;
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

.field final synthetic c:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;


# direct methods
.method constructor <init>(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;Landroid/app/Activity;Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;->c:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    iput-object p2, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;->b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenshotCapturedSuccessfully(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, p1, v1, v2}, Lcom/instabug/library/util/BitmapUtils;->maskBitmap(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/instabug/library/settings/SettingsManager;Landroid/graphics/Canvas;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;->a:Landroid/app/Activity;

    new-instance v1, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b$a;-><init>(Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;)V

    invoke-static {p1, v0, v1}, Lcom/instabug/library/util/BitmapUtils;->saveBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V

    return-void
.end method

.method public onScreenshotCapturingFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;->b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;->onExtraScreenshotError(Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;->c:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    invoke-static {v0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->access$300(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtraScreenshotHelper"

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.class final Lcom/instabug/library/core/InitialScreenshotHelper$c;
.super Ljava/lang/Object;
.source "InitialScreenshotHelper.java"

# interfaces
.implements Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/core/InitialScreenshotHelper;->saveBitmap(Landroid/graphics/Bitmap;Landroid/app/Activity;Lcom/instabug/library/core/InitialScreenshotHelper$InitialScreenshotCapturingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/core/InitialScreenshotHelper$InitialScreenshotCapturingListener;


# direct methods
.method constructor <init>(Lcom/instabug/library/core/InitialScreenshotHelper$InitialScreenshotCapturingListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/core/InitialScreenshotHelper$c;->a:Lcom/instabug/library/core/InitialScreenshotHelper$InitialScreenshotCapturingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initial screenshot capturing got error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time in MS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/InitialScreenshotHelper$c;->a:Lcom/instabug/library/core/InitialScreenshotHelper$InitialScreenshotCapturingListener;

    invoke-interface {v0, p1}, Lcom/instabug/library/core/InitialScreenshotHelper$InitialScreenshotCapturingListener;->onScreenshotCapturingFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/instabug/library/core/InitialScreenshotHelper;->access$102(Landroid/net/Uri;)Landroid/net/Uri;

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/InitialScreenshotHelper$c;->a:Lcom/instabug/library/core/InitialScreenshotHelper$InitialScreenshotCapturingListener;

    .line 3
    invoke-interface {v0, p1}, Lcom/instabug/library/core/InitialScreenshotHelper$InitialScreenshotCapturingListener;->onScreenshotCapturedSuccessfully(Landroid/net/Uri;)V

    return-void
.end method

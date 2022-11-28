.class public interface abstract Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;
.super Ljava/lang/Object;
.source "ScreenshotProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/screenshot/ScreenshotProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScreenshotCapturingListener"
.end annotation


# virtual methods
.method public abstract onScreenshotCapturedSuccessfully(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onScreenshotCapturingFailed(Ljava/lang/Throwable;)V
.end method

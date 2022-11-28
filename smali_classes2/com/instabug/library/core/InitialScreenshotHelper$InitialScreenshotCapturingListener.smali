.class public interface abstract Lcom/instabug/library/core/InitialScreenshotHelper$InitialScreenshotCapturingListener;
.super Ljava/lang/Object;
.source "InitialScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/core/InitialScreenshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InitialScreenshotCapturingListener"
.end annotation


# virtual methods
.method public abstract onScreenshotCapturedSuccessfully(Landroid/net/Uri;)V
.end method

.method public abstract onScreenshotCapturingFailed(Ljava/lang/Throwable;)V
.end method

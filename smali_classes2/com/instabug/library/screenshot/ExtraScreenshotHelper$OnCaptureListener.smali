.class public interface abstract Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;
.super Ljava/lang/Object;
.source "ExtraScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/screenshot/ExtraScreenshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCaptureListener"
.end annotation


# virtual methods
.method public abstract onExtraScreenshotCaptured(Landroid/net/Uri;)V
.end method

.method public abstract onExtraScreenshotError(Ljava/lang/Throwable;)V
.end method

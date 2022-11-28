.class public interface abstract Lcom/instabug/library/internal/layer/CapturableView$SnapshotPreparationCallback;
.super Ljava/lang/Object;
.source "CapturableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/layer/CapturableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SnapshotPreparationCallback"
.end annotation


# virtual methods
.method public abstract onSnapshotFailed()V
.end method

.method public abstract onSnapshotReady(Landroid/graphics/Bitmap;)V
.end method

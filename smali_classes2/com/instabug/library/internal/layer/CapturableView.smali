.class public interface abstract Lcom/instabug/library/internal/layer/CapturableView;
.super Ljava/lang/Object;
.source "CapturableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/internal/layer/CapturableView$SnapshotPreparationCallback;
    }
.end annotation


# virtual methods
.method public abstract getLocationOnScreen([I)V
    .param p1    # [I
        .annotation build Landroidx/annotation/Size;
            value = 0x2L
        .end annotation
    .end param
.end method

.method public abstract isVisible()Z
.end method

.method public abstract snapshot(Lcom/instabug/library/internal/layer/CapturableView$SnapshotPreparationCallback;)V
.end method

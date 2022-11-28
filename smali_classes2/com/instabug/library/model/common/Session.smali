.class public interface abstract Lcom/instabug/library/model/common/Session;
.super Ljava/lang/Object;
.source "Session.java"


# virtual methods
.method public abstract getAppVersion()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getOs()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getStartNanoTime()J
.end method

.method public abstract getStartTimestampMicros()J
.end method

.method public abstract getUuid()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

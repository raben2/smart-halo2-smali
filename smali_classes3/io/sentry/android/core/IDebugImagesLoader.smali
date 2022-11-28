.class public interface abstract Lio/sentry/android/core/IDebugImagesLoader;
.super Ljava/lang/Object;
.source "IDebugImagesLoader.java"


# annotations
.annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
.end annotation


# virtual methods
.method public abstract clearDebugImages()V
.end method

.method public abstract loadDebugImages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation
.end method

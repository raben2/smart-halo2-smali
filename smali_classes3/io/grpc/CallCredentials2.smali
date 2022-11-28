.class public abstract Lio/grpc/CallCredentials2;
.super Lio/grpc/CallCredentials;
.source "CallCredentials2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/CallCredentials2$MetadataApplier;
    }
.end annotation

.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/4901"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lio/grpc/CallCredentials;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyRequestMetadata(Lio/grpc/CallCredentials$RequestInfo;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;)V
    .locals 1

    .line 58
    new-instance v0, Lio/grpc/CallCredentials2$1;

    invoke-direct {v0, p0, p3}, Lio/grpc/CallCredentials2$1;-><init>(Lio/grpc/CallCredentials2;Lio/grpc/CallCredentials$MetadataApplier;)V

    invoke-virtual {p0, p1, p2, v0}, Lio/grpc/CallCredentials2;->applyRequestMetadata(Lio/grpc/CallCredentials$RequestInfo;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials2$MetadataApplier;)V

    return-void
.end method

.method public abstract applyRequestMetadata(Lio/grpc/CallCredentials$RequestInfo;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials2$MetadataApplier;)V
    .annotation build Lio/grpc/ExperimentalApi;
        value = "https://github.com/grpc/grpc-java/issues/1914"
    .end annotation
.end method

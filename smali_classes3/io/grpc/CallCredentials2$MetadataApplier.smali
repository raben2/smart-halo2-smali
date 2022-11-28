.class public abstract Lio/grpc/CallCredentials2$MetadataApplier;
.super Lio/grpc/CallCredentials$MetadataApplier;
.source "CallCredentials2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/CallCredentials2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MetadataApplier"
.end annotation

.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/1914"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lio/grpc/CallCredentials$MetadataApplier;-><init>()V

    return-void
.end method

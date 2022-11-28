.class final Lio/grpc/internal/RetriableStream$Substream;
.super Ljava/lang/Object;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Substream"
.end annotation


# instance fields
.field bufferLimitExceeded:Z

.field closed:Z

.field final previousAttemptCount:I

.field stream:Lio/grpc/internal/ClientStream;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    iput p1, p0, Lio/grpc/internal/RetriableStream$Substream;->previousAttemptCount:I

    return-void
.end method

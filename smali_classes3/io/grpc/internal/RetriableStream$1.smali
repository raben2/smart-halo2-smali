.class Lio/grpc/internal/RetriableStream$1;
.super Lio/grpc/ClientStreamTracer$Factory;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream;->createSubstream(I)Lio/grpc/internal/RetriableStream$Substream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetriableStream;

.field final synthetic val$bufferSizeTracer:Lio/grpc/ClientStreamTracer;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;Lio/grpc/ClientStreamTracer;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$1;->this$0:Lio/grpc/internal/RetriableStream;

    iput-object p2, p0, Lio/grpc/internal/RetriableStream$1;->val$bufferSizeTracer:Lio/grpc/ClientStreamTracer;

    invoke-direct {p0}, Lio/grpc/ClientStreamTracer$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public newClientStreamTracer(Lio/grpc/ClientStreamTracer$StreamInfo;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;
    .locals 0

    .line 205
    iget-object p1, p0, Lio/grpc/internal/RetriableStream$1;->val$bufferSizeTracer:Lio/grpc/ClientStreamTracer;

    return-object p1
.end method

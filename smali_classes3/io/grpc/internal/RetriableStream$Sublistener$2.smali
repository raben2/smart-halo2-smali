.class Lio/grpc/internal/RetriableStream$Sublistener$2;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream$Sublistener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/RetriableStream$Sublistener;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream$Sublistener;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$Sublistener$2;->this$1:Lio/grpc/internal/RetriableStream$Sublistener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 840
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener$2;->this$1:Lio/grpc/internal/RetriableStream$Sublistener;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$1000(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/RetriableStream$Sublistener$2$1;

    invoke-direct {v1, p0}, Lio/grpc/internal/RetriableStream$Sublistener$2$1;-><init>(Lio/grpc/internal/RetriableStream$Sublistener$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

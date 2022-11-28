.class Lio/grpc/internal/DelayedStream$11;
.super Ljava/lang/Object;
.source "DelayedStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedStream;->setCompressor(Lio/grpc/Compressor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedStream;

.field final synthetic val$compressor:Lio/grpc/Compressor;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedStream;Lio/grpc/Compressor;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lio/grpc/internal/DelayedStream$11;->this$0:Lio/grpc/internal/DelayedStream;

    iput-object p2, p0, Lio/grpc/internal/DelayedStream$11;->val$compressor:Lio/grpc/Compressor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 345
    iget-object v0, p0, Lio/grpc/internal/DelayedStream$11;->this$0:Lio/grpc/internal/DelayedStream;

    invoke-static {v0}, Lio/grpc/internal/DelayedStream;->access$000(Lio/grpc/internal/DelayedStream;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/DelayedStream$11;->val$compressor:Lio/grpc/Compressor;

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->setCompressor(Lio/grpc/Compressor;)V

    return-void
.end method

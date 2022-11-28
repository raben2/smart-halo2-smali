.class Lio/grpc/internal/DelayedClientTransport$5;
.super Ljava/lang/Object;
.source "DelayedClientTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientTransport;->reprocess(Lio/grpc/LoadBalancer$SubchannelPicker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedClientTransport;

.field final synthetic val$stream:Lio/grpc/internal/DelayedClientTransport$PendingStream;

.field final synthetic val$transport:Lio/grpc/internal/ClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/internal/DelayedClientTransport$PendingStream;Lio/grpc/internal/ClientTransport;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport$5;->this$0:Lio/grpc/internal/DelayedClientTransport;

    iput-object p2, p0, Lio/grpc/internal/DelayedClientTransport$5;->val$stream:Lio/grpc/internal/DelayedClientTransport$PendingStream;

    iput-object p3, p0, Lio/grpc/internal/DelayedClientTransport$5;->val$transport:Lio/grpc/internal/ClientTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 300
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$5;->val$stream:Lio/grpc/internal/DelayedClientTransport$PendingStream;

    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport$5;->val$transport:Lio/grpc/internal/ClientTransport;

    invoke-static {v0, v1}, Lio/grpc/internal/DelayedClientTransport$PendingStream;->access$300(Lio/grpc/internal/DelayedClientTransport$PendingStream;Lio/grpc/internal/ClientTransport;)V

    return-void
.end method

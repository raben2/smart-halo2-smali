.class Lio/grpc/internal/InternalSubchannel$TransportListener$1;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/InternalSubchannel$TransportListener;->transportReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;


# direct methods
.method constructor <init>(Lio/grpc/internal/InternalSubchannel$TransportListener;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$1;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 513
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$1;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/internal/InternalSubchannel;->access$1802(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/BackoffPolicy;)Lio/grpc/internal/BackoffPolicy;

    .line 514
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$1;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$1200(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/Status;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$1;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$1000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Unexpected non-null activeTransport"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 518
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$1;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->transport:Lio/grpc/internal/ConnectionClientTransport;

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$1;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v1, v1, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v1}, Lio/grpc/internal/InternalSubchannel;->access$1200(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/ConnectionClientTransport;->shutdown(Lio/grpc/Status;)V

    goto :goto_1

    .line 519
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$1;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$1100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$1;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v2, v2, Lio/grpc/internal/InternalSubchannel$TransportListener;->transport:Lio/grpc/internal/ConnectionClientTransport;

    if-ne v0, v2, :cond_2

    .line 520
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$1;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$1;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v2, v2, Lio/grpc/internal/InternalSubchannel$TransportListener;->transport:Lio/grpc/internal/ConnectionClientTransport;

    invoke-static {v0, v2}, Lio/grpc/internal/InternalSubchannel;->access$1002(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;

    .line 521
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$1;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0, v1}, Lio/grpc/internal/InternalSubchannel;->access$1102(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ConnectionClientTransport;)Lio/grpc/internal/ConnectionClientTransport;

    .line 522
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$1;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    invoke-static {v0, v1}, Lio/grpc/internal/InternalSubchannel;->access$300(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityState;)V

    :cond_2
    :goto_1
    return-void
.end method

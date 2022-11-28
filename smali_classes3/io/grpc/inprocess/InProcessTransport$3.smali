.class Lio/grpc/inprocess/InProcessTransport$3;
.super Ljava/lang/Object;
.source "InProcessTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/inprocess/InProcessTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/inprocess/InProcessTransport;


# direct methods
.method constructor <init>(Lio/grpc/inprocess/InProcessTransport;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$3;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 161
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$3;->this$0:Lio/grpc/inprocess/InProcessTransport;

    monitor-enter v0

    .line 162
    :try_start_0
    invoke-static {}, Lio/grpc/Attributes;->newBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v1

    sget-object v2, Lio/grpc/Grpc;->TRANSPORT_ATTR_REMOTE_ADDR:Lio/grpc/Attributes$Key;

    new-instance v3, Lio/grpc/inprocess/InProcessSocketAddress;

    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$3;->this$0:Lio/grpc/inprocess/InProcessTransport;

    .line 163
    invoke-static {v4}, Lio/grpc/inprocess/InProcessTransport;->access$300(Lio/grpc/inprocess/InProcessTransport;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/grpc/inprocess/InProcessSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v1

    sget-object v2, Lio/grpc/Grpc;->TRANSPORT_ATTR_LOCAL_ADDR:Lio/grpc/Attributes$Key;

    new-instance v3, Lio/grpc/inprocess/InProcessSocketAddress;

    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$3;->this$0:Lio/grpc/inprocess/InProcessTransport;

    .line 164
    invoke-static {v4}, Lio/grpc/inprocess/InProcessTransport;->access$300(Lio/grpc/inprocess/InProcessTransport;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/grpc/inprocess/InProcessSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$3;->this$0:Lio/grpc/inprocess/InProcessTransport;

    iget-object v3, p0, Lio/grpc/inprocess/InProcessTransport$3;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v3}, Lio/grpc/inprocess/InProcessTransport;->access$500(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lio/grpc/internal/ServerTransportListener;->transportReady(Lio/grpc/Attributes;)Lio/grpc/Attributes;

    move-result-object v1

    invoke-static {v2, v1}, Lio/grpc/inprocess/InProcessTransport;->access$402(Lio/grpc/inprocess/InProcessTransport;Lio/grpc/Attributes;)Lio/grpc/Attributes;

    .line 167
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$3;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport;->access$000(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportReady()V

    .line 168
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

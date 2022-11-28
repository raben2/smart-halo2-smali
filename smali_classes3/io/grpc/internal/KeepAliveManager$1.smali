.class Lio/grpc/internal/KeepAliveManager$1;
.super Ljava/lang/Object;
.source "KeepAliveManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/KeepAliveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/KeepAliveManager;


# direct methods
.method constructor <init>(Lio/grpc/internal/KeepAliveManager;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lio/grpc/internal/KeepAliveManager$1;->this$0:Lio/grpc/internal/KeepAliveManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 53
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$1;->this$0:Lio/grpc/internal/KeepAliveManager;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/KeepAliveManager$1;->this$0:Lio/grpc/internal/KeepAliveManager;

    invoke-static {v1}, Lio/grpc/internal/KeepAliveManager;->access$000(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$State;

    move-result-object v1

    sget-object v2, Lio/grpc/internal/KeepAliveManager$State;->DISCONNECTED:Lio/grpc/internal/KeepAliveManager$State;

    if-eq v1, v2, :cond_0

    .line 57
    iget-object v1, p0, Lio/grpc/internal/KeepAliveManager$1;->this$0:Lio/grpc/internal/KeepAliveManager;

    sget-object v2, Lio/grpc/internal/KeepAliveManager$State;->DISCONNECTED:Lio/grpc/internal/KeepAliveManager$State;

    invoke-static {v1, v2}, Lio/grpc/internal/KeepAliveManager;->access$002(Lio/grpc/internal/KeepAliveManager;Lio/grpc/internal/KeepAliveManager$State;)Lio/grpc/internal/KeepAliveManager$State;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 60
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 62
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$1;->this$0:Lio/grpc/internal/KeepAliveManager;

    invoke-static {v0}, Lio/grpc/internal/KeepAliveManager;->access$100(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;->onPingTimeout()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 60
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

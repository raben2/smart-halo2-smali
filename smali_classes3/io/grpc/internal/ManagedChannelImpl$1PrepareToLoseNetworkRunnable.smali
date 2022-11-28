.class final Lio/grpc/internal/ManagedChannelImpl$1PrepareToLoseNetworkRunnable;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl;->enterIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PrepareToLoseNetworkRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$1PrepareToLoseNetworkRunnable;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1001
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1PrepareToLoseNetworkRunnable;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1400(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1PrepareToLoseNetworkRunnable;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$3800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1PrepareToLoseNetworkRunnable;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$3000(Lio/grpc/internal/ManagedChannelImpl;Z)V

    .line 1005
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1PrepareToLoseNetworkRunnable;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$900(Lio/grpc/internal/ManagedChannelImpl;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

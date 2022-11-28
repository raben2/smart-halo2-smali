.class Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Lio/grpc/LoadBalancer$SubchannelStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->createSubchannel(Ljava/util/List;Lio/grpc/Attributes;)Lio/grpc/internal/AbstractSubchannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

.field final synthetic val$subchannel:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;)V
    .locals 0

    .line 1113
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1;->val$subchannel:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V
    .locals 2

    .line 1117
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v1, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$3800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1120
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->lb:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1;->val$subchannel:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    invoke-virtual {v0, v1, p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->handleSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V

    return-void
.end method

.class Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;
.super Lio/grpc/util/ForwardingLoadBalancerHelper;
.source "GracefulSwitchLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/util/GracefulSwitchLoadBalancer;->switchTo(Lio/grpc/LoadBalancer$Factory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingHelper"
.end annotation


# instance fields
.field lb:Lio/grpc/LoadBalancer;

.field final synthetic this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;


# direct methods
.method constructor <init>(Lio/grpc/util/GracefulSwitchLoadBalancer;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-direct {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected delegate()Lio/grpc/LoadBalancer$Helper;
    .locals 1

    .line 138
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-static {v0}, Lio/grpc/util/GracefulSwitchLoadBalancer;->access$000(Lio/grpc/util/GracefulSwitchLoadBalancer;)Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    return-object v0
.end method

.method public updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->lb:Lio/grpc/LoadBalancer;

    iget-object v1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-static {v1}, Lio/grpc/util/GracefulSwitchLoadBalancer;->access$100(Lio/grpc/util/GracefulSwitchLoadBalancer;)Lio/grpc/LoadBalancer;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-static {v0}, Lio/grpc/util/GracefulSwitchLoadBalancer;->access$200(Lio/grpc/util/GracefulSwitchLoadBalancer;)Z

    move-result v0

    const-string v1, "there\'s pending lb while current lb has been out of READY"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-static {v0, p1}, Lio/grpc/util/GracefulSwitchLoadBalancer;->access$302(Lio/grpc/util/GracefulSwitchLoadBalancer;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;

    .line 146
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-static {v0, p2}, Lio/grpc/util/GracefulSwitchLoadBalancer;->access$402(Lio/grpc/util/GracefulSwitchLoadBalancer;Lio/grpc/LoadBalancer$SubchannelPicker;)Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 147
    sget-object p2, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne p1, p2, :cond_3

    .line 148
    iget-object p1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-static {p1}, Lio/grpc/util/GracefulSwitchLoadBalancer;->access$500(Lio/grpc/util/GracefulSwitchLoadBalancer;)V

    goto :goto_1

    .line 150
    :cond_0
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->lb:Lio/grpc/LoadBalancer;

    iget-object v1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-static {v1}, Lio/grpc/util/GracefulSwitchLoadBalancer;->access$600(Lio/grpc/util/GracefulSwitchLoadBalancer;)Lio/grpc/LoadBalancer;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 151
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lio/grpc/util/GracefulSwitchLoadBalancer;->access$202(Lio/grpc/util/GracefulSwitchLoadBalancer;Z)Z

    .line 152
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-static {v0}, Lio/grpc/util/GracefulSwitchLoadBalancer;->access$200(Lio/grpc/util/GracefulSwitchLoadBalancer;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-static {v0}, Lio/grpc/util/GracefulSwitchLoadBalancer;->access$100(Lio/grpc/util/GracefulSwitchLoadBalancer;)Lio/grpc/LoadBalancer;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-static {v1}, Lio/grpc/util/GracefulSwitchLoadBalancer;->access$700(Lio/grpc/util/GracefulSwitchLoadBalancer;)Lio/grpc/LoadBalancer;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 153
    iget-object p1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-static {p1}, Lio/grpc/util/GracefulSwitchLoadBalancer;->access$500(Lio/grpc/util/GracefulSwitchLoadBalancer;)V

    goto :goto_1

    .line 155
    :cond_2
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->this$0:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-static {v0}, Lio/grpc/util/GracefulSwitchLoadBalancer;->access$000(Lio/grpc/util/GracefulSwitchLoadBalancer;)Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    :cond_3
    :goto_1
    return-void
.end method

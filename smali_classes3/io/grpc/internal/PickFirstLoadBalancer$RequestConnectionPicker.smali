.class final Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "PickFirstLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/PickFirstLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestConnectionPicker"
.end annotation


# instance fields
.field private final connectionRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final subchannel:Lio/grpc/LoadBalancer$Subchannel;

.field final synthetic this$0:Lio/grpc/internal/PickFirstLoadBalancer;


# direct methods
.method constructor <init>(Lio/grpc/internal/PickFirstLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;)V
    .locals 1

    .line 151
    iput-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;->this$0:Lio/grpc/internal/PickFirstLoadBalancer;

    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    .line 149
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;->connectionRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p1, "subchannel"

    .line 152
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/LoadBalancer$Subchannel;

    iput-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 0

    .line 147
    iget-object p0, p0, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    return-object p0
.end method


# virtual methods
.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 2

    .line 157
    iget-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;->connectionRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;->this$0:Lio/grpc/internal/PickFirstLoadBalancer;

    invoke-static {p1}, Lio/grpc/internal/PickFirstLoadBalancer;->access$200(Lio/grpc/internal/PickFirstLoadBalancer;)Lio/grpc/LoadBalancer$Helper;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Helper;->getSynchronizationContext()Lio/grpc/SynchronizationContext;

    move-result-object p1

    new-instance v0, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker$1;

    invoke-direct {v0, p0}, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker$1;-><init>(Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;)V

    invoke-virtual {p1, v0}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 165
    :cond_0
    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    return-object p1
.end method

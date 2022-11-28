.class abstract Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "RoundRobinLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/RoundRobinLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RoundRobinPicker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/util/RoundRobinLoadBalancer$1;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;-><init>()V

    return-void
.end method


# virtual methods
.method abstract isEquivalentTo(Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)Z
.end method

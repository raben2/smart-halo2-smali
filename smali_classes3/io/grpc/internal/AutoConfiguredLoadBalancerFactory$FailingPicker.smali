.class final Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$FailingPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "AutoConfiguredLoadBalancerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FailingPicker"
.end annotation


# instance fields
.field private final failure:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/Status;)V
    .locals 0

    .line 352
    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    .line 353
    iput-object p1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$FailingPicker;->failure:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 0

    .line 358
    iget-object p1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$FailingPicker;->failure:Lio/grpc/Status;

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    return-object p1
.end method

.class final Lio/grpc/internal/OobChannel$1OobSubchannelPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "OobChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/OobChannel;->setSubchannel(Lio/grpc/internal/InternalSubchannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OobSubchannelPicker"
.end annotation


# instance fields
.field final result:Lio/grpc/LoadBalancer$PickResult;

.field final synthetic this$0:Lio/grpc/internal/OobChannel;


# direct methods
.method constructor <init>(Lio/grpc/internal/OobChannel;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lio/grpc/internal/OobChannel$1OobSubchannelPicker;->this$0:Lio/grpc/internal/OobChannel;

    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    .line 177
    iget-object p1, p0, Lio/grpc/internal/OobChannel$1OobSubchannelPicker;->this$0:Lio/grpc/internal/OobChannel;

    invoke-static {p1}, Lio/grpc/internal/OobChannel;->access$100(Lio/grpc/internal/OobChannel;)Lio/grpc/internal/AbstractSubchannel;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withSubchannel(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/OobChannel$1OobSubchannelPicker;->result:Lio/grpc/LoadBalancer$PickResult;

    return-void
.end method


# virtual methods
.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 0

    .line 181
    iget-object p1, p0, Lio/grpc/internal/OobChannel$1OobSubchannelPicker;->result:Lio/grpc/LoadBalancer$PickResult;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 186
    const-class v0, Lio/grpc/internal/OobChannel$1OobSubchannelPicker;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "result"

    iget-object v2, p0, Lio/grpc/internal/OobChannel$1OobSubchannelPicker;->result:Lio/grpc/LoadBalancer$PickResult;

    .line 187
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

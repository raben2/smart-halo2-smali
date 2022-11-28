.class Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$2;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->internalStart(Lio/grpc/LoadBalancer$SubchannelStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

.field final synthetic val$internalSubchannel:Lio/grpc/internal/InternalSubchannel;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;Lio/grpc/internal/InternalSubchannel;)V
    .locals 0

    .line 1589
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$2;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$2;->val$internalSubchannel:Lio/grpc/internal/InternalSubchannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1592
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$2;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$4900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$2;->val$internalSubchannel:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0, v1}, Lio/grpc/InternalChannelz;->addSubchannel(Lio/grpc/InternalInstrumented;)V

    .line 1593
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$2;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$700(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$2;->val$internalSubchannel:Lio/grpc/internal/InternalSubchannel;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

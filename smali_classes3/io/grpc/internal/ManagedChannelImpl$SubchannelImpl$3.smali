.class Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$3;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;)V
    .locals 0

    .line 1615
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$3;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1618
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$3;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->access$6900(Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;)V

    return-void
.end method

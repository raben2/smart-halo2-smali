.class Lio/grpc/internal/InternalSubchannel$1;
.super Lio/grpc/internal/InUseStateAggregator;
.source "InternalSubchannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/InternalSubchannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/InUseStateAggregator<",
        "Lio/grpc/internal/ConnectionClientTransport;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/InternalSubchannel;


# direct methods
.method constructor <init>(Lio/grpc/internal/InternalSubchannel;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$1;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-direct {p0}, Lio/grpc/internal/InUseStateAggregator;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleInUse()V
    .locals 2

    .line 127
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$1;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$1;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0, v1}, Lio/grpc/internal/InternalSubchannel$Callback;->onInUse(Lio/grpc/internal/InternalSubchannel;)V

    return-void
.end method

.method protected handleNotInUse()V
    .locals 2

    .line 132
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$1;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$1;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0, v1}, Lio/grpc/internal/InternalSubchannel$Callback;->onNotInUse(Lio/grpc/internal/InternalSubchannel;)V

    return-void
.end method

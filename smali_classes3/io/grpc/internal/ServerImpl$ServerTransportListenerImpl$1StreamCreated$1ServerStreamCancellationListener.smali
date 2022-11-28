.class final Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated$1ServerStreamCancellationListener;
.super Ljava/lang/Object;
.source "ServerImpl.java"

# interfaces
.implements Lio/grpc/Context$CancellationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->runInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServerStreamCancellationListener"
.end annotation


# instance fields
.field final synthetic this$2:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;


# direct methods
.method constructor <init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated$1ServerStreamCancellationListener;->this$2:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled(Lio/grpc/Context;)V
    .locals 2

    .line 575
    invoke-static {p1}, Lio/grpc/Contexts;->statusFromCancelled(Lio/grpc/Context;)Lio/grpc/Status;

    move-result-object p1

    .line 576
    sget-object v0, Lio/grpc/Status;->DEADLINE_EXCEEDED:Lio/grpc/Status;

    invoke-virtual {v0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status$Code;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated$1ServerStreamCancellationListener;->this$2:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;

    iget-object v0, v0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ServerStream;->cancel(Lio/grpc/Status;)V

    :cond_0
    return-void
.end method

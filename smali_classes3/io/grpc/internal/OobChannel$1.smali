.class Lio/grpc/internal/OobChannel$1;
.super Ljava/lang/Object;
.source "OobChannel.java"

# interfaces
.implements Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/OobChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/OobChannel;


# direct methods
.method constructor <init>(Lio/grpc/internal/OobChannel;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lio/grpc/internal/OobChannel$1;->this$0:Lio/grpc/internal/OobChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/internal/ClientTransport;
    .locals 0

    .line 91
    iget-object p1, p0, Lio/grpc/internal/OobChannel$1;->this$0:Lio/grpc/internal/OobChannel;

    invoke-static {p1}, Lio/grpc/internal/OobChannel;->access$000(Lio/grpc/internal/OobChannel;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object p1

    return-object p1
.end method

.method public newRetriableStream(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Metadata;Lio/grpc/Context;)Lio/grpc/internal/ClientStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;*>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/Context;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .line 97
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "OobChannel should not create retriable streams"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

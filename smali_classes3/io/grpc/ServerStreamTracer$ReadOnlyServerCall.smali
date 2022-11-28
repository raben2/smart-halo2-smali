.class final Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;
.super Lio/grpc/ForwardingServerCall;
.source "ServerStreamTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ServerStreamTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReadOnlyServerCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ForwardingServerCall<",
        "TReqT;TRespT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final callInfo:Lio/grpc/ServerStreamTracer$ServerCallInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ServerStreamTracer$ServerCallInfo<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/grpc/ServerStreamTracer$ServerCallInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerStreamTracer$ServerCallInfo<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lio/grpc/ForwardingServerCall;-><init>()V

    .line 101
    iput-object p1, p0, Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;->callInfo:Lio/grpc/ServerStreamTracer$ServerCallInfo;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/ServerStreamTracer$ServerCallInfo;)Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;
    .locals 0

    .line 91
    invoke-static {p0}, Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;->create(Lio/grpc/ServerStreamTracer$ServerCallInfo;)Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lio/grpc/ServerStreamTracer$ServerCallInfo;)Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerStreamTracer$ServerCallInfo<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerStreamTracer$ReadOnlyServerCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;

    invoke-direct {v0, p0}, Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;-><init>(Lio/grpc/ServerStreamTracer$ServerCallInfo;)V

    return-object v0
.end method


# virtual methods
.method protected delegate()Lio/grpc/ServerCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ServerCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 111
    iget-object v0, p0, Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;->callInfo:Lio/grpc/ServerStreamTracer$ServerCallInfo;

    invoke-virtual {v0}, Lio/grpc/ServerStreamTracer$ServerCallInfo;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;->callInfo:Lio/grpc/ServerStreamTracer$ServerCallInfo;

    invoke-virtual {v0}, Lio/grpc/ServerStreamTracer$ServerCallInfo;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodDescriptor()Lio/grpc/MethodDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/grpc/ServerStreamTracer$ReadOnlyServerCall;->callInfo:Lio/grpc/ServerStreamTracer$ServerCallInfo;

    invoke-virtual {v0}, Lio/grpc/ServerStreamTracer$ServerCallInfo;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

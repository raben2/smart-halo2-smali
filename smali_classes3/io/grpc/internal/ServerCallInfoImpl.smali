.class final Lio/grpc/internal/ServerCallInfoImpl;
.super Lio/grpc/ServerStreamTracer$ServerCallInfo;
.source "ServerCallInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ServerStreamTracer$ServerCallInfo<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field private final attributes:Lio/grpc/Attributes;

.field private final authority:Ljava/lang/String;

.field private final methodDescriptor:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/MethodDescriptor;Lio/grpc/Attributes;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/Attributes;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lio/grpc/ServerStreamTracer$ServerCallInfo;-><init>()V

    .line 37
    iput-object p1, p0, Lio/grpc/internal/ServerCallInfoImpl;->methodDescriptor:Lio/grpc/MethodDescriptor;

    .line 38
    iput-object p2, p0, Lio/grpc/internal/ServerCallInfoImpl;->attributes:Lio/grpc/Attributes;

    .line 39
    iput-object p3, p0, Lio/grpc/internal/ServerCallInfoImpl;->authority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 60
    instance-of v0, p1, Lio/grpc/internal/ServerCallInfoImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    check-cast p1, Lio/grpc/internal/ServerCallInfoImpl;

    .line 64
    iget-object v0, p0, Lio/grpc/internal/ServerCallInfoImpl;->methodDescriptor:Lio/grpc/MethodDescriptor;

    iget-object v2, p1, Lio/grpc/internal/ServerCallInfoImpl;->methodDescriptor:Lio/grpc/MethodDescriptor;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/ServerCallInfoImpl;->attributes:Lio/grpc/Attributes;

    iget-object v2, p1, Lio/grpc/internal/ServerCallInfoImpl;->attributes:Lio/grpc/Attributes;

    .line 65
    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/ServerCallInfoImpl;->authority:Ljava/lang/String;

    iget-object p1, p1, Lio/grpc/internal/ServerCallInfoImpl;->authority:Ljava/lang/String;

    .line 66
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/grpc/internal/ServerCallInfoImpl;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 55
    iget-object v0, p0, Lio/grpc/internal/ServerCallInfoImpl;->authority:Ljava/lang/String;

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

    .line 44
    iget-object v0, p0, Lio/grpc/internal/ServerCallInfoImpl;->methodDescriptor:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/internal/ServerCallInfoImpl;->methodDescriptor:Lio/grpc/MethodDescriptor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/ServerCallInfoImpl;->attributes:Lio/grpc/Attributes;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/ServerCallInfoImpl;->authority:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

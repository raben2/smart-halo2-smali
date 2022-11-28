.class final Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;
.super Ljava/lang/Object;
.source "ServerCalls.java"

# interfaces
.implements Lio/grpc/ServerCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ServerCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamingServerCallHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ServerCalls$StreamingServerCallHandler$StreamingServerCallListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/ServerCallHandler<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field private final method:Lio/grpc/stub/ServerCalls$StreamingRequestMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/ServerCalls$StreamingRequestMethod<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/stub/ServerCalls$StreamingRequestMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/ServerCalls$StreamingRequestMethod<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;->method:Lio/grpc/stub/ServerCalls$StreamingRequestMethod;

    return-void
.end method


# virtual methods
.method public startCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;)Lio/grpc/ServerCall$Listener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerCall<",
            "TReqT;TRespT;>;",
            "Lio/grpc/Metadata;",
            ")",
            "Lio/grpc/ServerCall$Listener<",
            "TReqT;>;"
        }
    .end annotation

    .line 222
    new-instance p2, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;

    invoke-direct {p2, p1}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;-><init>(Lio/grpc/ServerCall;)V

    .line 224
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;->method:Lio/grpc/stub/ServerCalls$StreamingRequestMethod;

    invoke-interface {v0, p2}, Lio/grpc/stub/ServerCalls$StreamingRequestMethod;->invoke(Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;

    move-result-object v0

    .line 225
    invoke-static {p2}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->access$100(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)V

    .line 226
    invoke-static {p2}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->access$400(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 227
    invoke-virtual {p1, v1}, Lio/grpc/ServerCall;->request(I)V

    .line 229
    :cond_0
    new-instance v1, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler$StreamingServerCallListener;

    invoke-direct {v1, p0, v0, p2, p1}, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler$StreamingServerCallListener;-><init>(Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;Lio/grpc/stub/StreamObserver;Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;Lio/grpc/ServerCall;)V

    return-object v1
.end method

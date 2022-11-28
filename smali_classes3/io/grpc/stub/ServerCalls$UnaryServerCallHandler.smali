.class final Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;
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
    name = "UnaryServerCallHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ServerCalls$UnaryServerCallHandler$UnaryServerCallListener;
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
.field private final method:Lio/grpc/stub/ServerCalls$UnaryRequestMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/ServerCalls$UnaryRequestMethod<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/stub/ServerCalls$UnaryRequestMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/ServerCalls$UnaryRequestMethod<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;->method:Lio/grpc/stub/ServerCalls$UnaryRequestMethod;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;)Lio/grpc/stub/ServerCalls$UnaryRequestMethod;
    .locals 0

    .line 104
    iget-object p0, p0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;->method:Lio/grpc/stub/ServerCalls$UnaryRequestMethod;

    return-object p0
.end method


# virtual methods
.method public startCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;)Lio/grpc/ServerCall$Listener;
    .locals 1
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

    .line 117
    invoke-virtual {p1}, Lio/grpc/ServerCall;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/MethodDescriptor$MethodType;->clientSendsOneMessage()Z

    move-result p2

    const-string v0, "asyncUnaryRequestCall is only for clientSendsOneMessage methods"

    .line 116
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 119
    new-instance p2, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;

    invoke-direct {p2, p1}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;-><init>(Lio/grpc/ServerCall;)V

    const/4 v0, 0x2

    .line 124
    invoke-virtual {p1, v0}, Lio/grpc/ServerCall;->request(I)V

    .line 125
    new-instance v0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler$UnaryServerCallListener;

    invoke-direct {v0, p0, p2, p1}, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler$UnaryServerCallListener;-><init>(Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;Lio/grpc/ServerCall;)V

    return-object v0
.end method

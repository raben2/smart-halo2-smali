.class Lio/grpc/ClientInterceptors$1$1$1;
.super Lio/grpc/PartialForwardingClientCallListener;
.source "ClientInterceptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/ClientInterceptors$1$1;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/PartialForwardingClientCallListener<",
        "TWRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/ClientInterceptors$1$1;

.field final synthetic val$responseListener:Lio/grpc/ClientCall$Listener;


# direct methods
.method constructor <init>(Lio/grpc/ClientInterceptors$1$1;Lio/grpc/ClientCall$Listener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lio/grpc/ClientInterceptors$1$1$1;->this$1:Lio/grpc/ClientInterceptors$1$1;

    iput-object p2, p0, Lio/grpc/ClientInterceptors$1$1$1;->val$responseListener:Lio/grpc/ClientCall$Listener;

    invoke-direct {p0}, Lio/grpc/PartialForwardingClientCallListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected delegate()Lio/grpc/ClientCall$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall$Listener<",
            "*>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lio/grpc/ClientInterceptors$1$1$1;->val$responseListener:Lio/grpc/ClientCall$Listener;

    return-object v0
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWRespT;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lio/grpc/ClientInterceptors$1$1$1;->this$1:Lio/grpc/ClientInterceptors$1$1;

    iget-object v0, v0, Lio/grpc/ClientInterceptors$1$1;->this$0:Lio/grpc/ClientInterceptors$1;

    iget-object v0, v0, Lio/grpc/ClientInterceptors$1;->val$respMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    invoke-interface {v0, p1}, Lio/grpc/MethodDescriptor$Marshaller;->stream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lio/grpc/ClientInterceptors$1$1$1;->this$1:Lio/grpc/ClientInterceptors$1$1;

    iget-object v0, v0, Lio/grpc/ClientInterceptors$1$1;->val$method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getResponseMarshaller()Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/MethodDescriptor$Marshaller;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lio/grpc/ClientInterceptors$1$1$1;->val$responseListener:Lio/grpc/ClientCall$Listener;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall$Listener;->onMessage(Ljava/lang/Object;)V

    return-void
.end method

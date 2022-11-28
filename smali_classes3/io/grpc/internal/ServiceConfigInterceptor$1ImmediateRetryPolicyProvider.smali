.class final Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateRetryPolicyProvider;
.super Ljava/lang/Object;
.source "ServiceConfigInterceptor.java"

# interfaces
.implements Lio/grpc/internal/RetryPolicy$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ServiceConfigInterceptor;->interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImmediateRetryPolicyProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ServiceConfigInterceptor;

.field final synthetic val$retryPolicy:Lio/grpc/internal/RetryPolicy;


# direct methods
.method constructor <init>(Lio/grpc/internal/ServiceConfigInterceptor;Lio/grpc/internal/RetryPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateRetryPolicyProvider;->this$0:Lio/grpc/internal/ServiceConfigInterceptor;

    iput-object p2, p0, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateRetryPolicyProvider;->val$retryPolicy:Lio/grpc/internal/RetryPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lio/grpc/internal/RetryPolicy;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateRetryPolicyProvider;->val$retryPolicy:Lio/grpc/internal/RetryPolicy;

    return-object v0
.end method

.class final Lio/grpc/internal/ServiceConfigInterceptor$1DelayedRetryPolicyProvider;
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
    name = "DelayedRetryPolicyProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ServiceConfigInterceptor;

.field final synthetic val$method:Lio/grpc/MethodDescriptor;


# direct methods
.method constructor <init>(Lio/grpc/internal/ServiceConfigInterceptor;Lio/grpc/MethodDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedRetryPolicyProvider;->this$0:Lio/grpc/internal/ServiceConfigInterceptor;

    iput-object p2, p0, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedRetryPolicyProvider;->val$method:Lio/grpc/MethodDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lio/grpc/internal/RetryPolicy;
    .locals 2

    .line 101
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedRetryPolicyProvider;->this$0:Lio/grpc/internal/ServiceConfigInterceptor;

    invoke-static {v0}, Lio/grpc/internal/ServiceConfigInterceptor;->access$000(Lio/grpc/internal/ServiceConfigInterceptor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lio/grpc/internal/RetryPolicy;->DEFAULT:Lio/grpc/internal/RetryPolicy;

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedRetryPolicyProvider;->this$0:Lio/grpc/internal/ServiceConfigInterceptor;

    iget-object v1, p0, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedRetryPolicyProvider;->val$method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0, v1}, Lio/grpc/internal/ServiceConfigInterceptor;->getRetryPolicyFromConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/RetryPolicy;

    move-result-object v0

    return-object v0
.end method

.class final Lio/grpc/internal/ServiceConfigInterceptor$1DelayedHedgingPolicyProvider;
.super Ljava/lang/Object;
.source "ServiceConfigInterceptor.java"

# interfaces
.implements Lio/grpc/internal/HedgingPolicy$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ServiceConfigInterceptor;->interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DelayedHedgingPolicyProvider"
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

    .line 108
    iput-object p1, p0, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedHedgingPolicyProvider;->this$0:Lio/grpc/internal/ServiceConfigInterceptor;

    iput-object p2, p0, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedHedgingPolicyProvider;->val$method:Lio/grpc/MethodDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lio/grpc/internal/HedgingPolicy;
    .locals 4

    .line 117
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedHedgingPolicyProvider;->this$0:Lio/grpc/internal/ServiceConfigInterceptor;

    invoke-static {v0}, Lio/grpc/internal/ServiceConfigInterceptor;->access$000(Lio/grpc/internal/ServiceConfigInterceptor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lio/grpc/internal/HedgingPolicy;->DEFAULT:Lio/grpc/internal/HedgingPolicy;

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedHedgingPolicyProvider;->this$0:Lio/grpc/internal/ServiceConfigInterceptor;

    iget-object v1, p0, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedHedgingPolicyProvider;->val$method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0, v1}, Lio/grpc/internal/ServiceConfigInterceptor;->getHedgingPolicyFromConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/HedgingPolicy;

    move-result-object v0

    .line 121
    sget-object v1, Lio/grpc/internal/HedgingPolicy;->DEFAULT:Lio/grpc/internal/HedgingPolicy;

    .line 122
    invoke-virtual {v0, v1}, Lio/grpc/internal/HedgingPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedHedgingPolicyProvider;->this$0:Lio/grpc/internal/ServiceConfigInterceptor;

    iget-object v2, p0, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedHedgingPolicyProvider;->val$method:Lio/grpc/MethodDescriptor;

    .line 123
    invoke-virtual {v1, v2}, Lio/grpc/internal/ServiceConfigInterceptor;->getRetryPolicyFromConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/RetryPolicy;

    move-result-object v1

    sget-object v2, Lio/grpc/internal/RetryPolicy;->DEFAULT:Lio/grpc/internal/RetryPolicy;

    invoke-virtual {v1, v2}, Lio/grpc/internal/RetryPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "Can not apply both retry and hedging policy for the method \'%s\'"

    iget-object v3, p0, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedHedgingPolicyProvider;->val$method:Lio/grpc/MethodDescriptor;

    .line 121
    invoke-static {v1, v2, v3}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

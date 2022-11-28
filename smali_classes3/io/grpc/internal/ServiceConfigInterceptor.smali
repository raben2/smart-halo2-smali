.class final Lio/grpc/internal/ServiceConfigInterceptor;
.super Ljava/lang/Object;
.source "ServiceConfigInterceptor.java"

# interfaces
.implements Lio/grpc/ClientInterceptor;


# static fields
.field static final HEDGING_POLICY_KEY:Lio/grpc/CallOptions$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/CallOptions$Key<",
            "Lio/grpc/internal/HedgingPolicy$Provider;",
            ">;"
        }
    .end annotation
.end field

.field static final RETRY_POLICY_KEY:Lio/grpc/CallOptions$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/CallOptions$Key<",
            "Lio/grpc/internal/RetryPolicy$Provider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile initComplete:Z

.field final managedChannelServiceConfig:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/internal/ManagedChannelServiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final retryEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "internal-retry-policy"

    .line 59
    invoke-static {v0}, Lio/grpc/CallOptions$Key;->create(Ljava/lang/String;)Lio/grpc/CallOptions$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServiceConfigInterceptor;->RETRY_POLICY_KEY:Lio/grpc/CallOptions$Key;

    const-string v0, "internal-hedging-policy"

    .line 61
    invoke-static {v0}, Lio/grpc/CallOptions$Key;->create(Ljava/lang/String;)Lio/grpc/CallOptions$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServiceConfigInterceptor;->HEDGING_POLICY_KEY:Lio/grpc/CallOptions$Key;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ServiceConfigInterceptor;->managedChannelServiceConfig:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    iput-boolean p1, p0, Lio/grpc/internal/ServiceConfigInterceptor;->retryEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/ServiceConfigInterceptor;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lio/grpc/internal/ServiceConfigInterceptor;->initComplete:Z

    return p0
.end method

.method private getMethodInfo(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;)",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 176
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigInterceptor;->managedChannelServiceConfig:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedChannelServiceConfig;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelServiceConfig;->getServiceMethodMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getServiceName()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelServiceConfig;->getServiceMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    :cond_1
    return-object v1
.end method


# virtual methods
.method getHedgingPolicyFromConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/HedgingPolicy;
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;)",
            "Lio/grpc/internal/HedgingPolicy;"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor;->getMethodInfo(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 197
    sget-object p1, Lio/grpc/internal/HedgingPolicy;->DEFAULT:Lio/grpc/internal/HedgingPolicy;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    :goto_0
    return-object p1
.end method

.method getRetryPolicyFromConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/RetryPolicy;
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;)",
            "Lio/grpc/internal/RetryPolicy;"
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor;->getMethodInfo(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 191
    sget-object p1, Lio/grpc/internal/RetryPolicy;->DEFAULT:Lio/grpc/internal/RetryPolicy;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->retryPolicy:Lio/grpc/internal/RetryPolicy;

    :goto_0
    return-object p1
.end method

.method handleUpdate(Lio/grpc/internal/ManagedChannelServiceConfig;)V
    .locals 1
    .param p1    # Lio/grpc/internal/ManagedChannelServiceConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigInterceptor;->managedChannelServiceConfig:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lio/grpc/internal/ServiceConfigInterceptor;->initComplete:Z

    return-void
.end method

.method public interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Channel;",
            ")",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 66
    iget-boolean v0, p0, Lio/grpc/internal/ServiceConfigInterceptor;->retryEnabled:Z

    if-eqz v0, :cond_3

    .line 67
    iget-boolean v0, p0, Lio/grpc/internal/ServiceConfigInterceptor;->initComplete:Z

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor;->getRetryPolicyFromConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/RetryPolicy;

    move-result-object v0

    .line 76
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor;->getHedgingPolicyFromConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/HedgingPolicy;

    move-result-object v1

    .line 84
    sget-object v2, Lio/grpc/internal/RetryPolicy;->DEFAULT:Lio/grpc/internal/RetryPolicy;

    .line 85
    invoke-virtual {v0, v2}, Lio/grpc/internal/RetryPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lio/grpc/internal/HedgingPolicy;->DEFAULT:Lio/grpc/internal/HedgingPolicy;

    invoke-virtual {v1, v2}, Lio/grpc/internal/HedgingPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "Can not apply both retry and hedging policy for the method \'%s\'"

    .line 84
    invoke-static {v2, v3, p1}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 88
    sget-object v2, Lio/grpc/internal/ServiceConfigInterceptor;->RETRY_POLICY_KEY:Lio/grpc/CallOptions$Key;

    new-instance v3, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateRetryPolicyProvider;

    invoke-direct {v3, p0, v0}, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateRetryPolicyProvider;-><init>(Lio/grpc/internal/ServiceConfigInterceptor;Lio/grpc/internal/RetryPolicy;)V

    .line 89
    invoke-virtual {p2, v2, v3}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object p2

    sget-object v0, Lio/grpc/internal/ServiceConfigInterceptor;->HEDGING_POLICY_KEY:Lio/grpc/CallOptions$Key;

    new-instance v2, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateHedgingPolicyProvider;

    invoke-direct {v2, p0, v1}, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateHedgingPolicyProvider;-><init>(Lio/grpc/internal/ServiceConfigInterceptor;Lio/grpc/internal/HedgingPolicy;)V

    .line 90
    invoke-virtual {p2, v0, v2}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object p2

    goto :goto_2

    .line 129
    :cond_2
    sget-object v0, Lio/grpc/internal/ServiceConfigInterceptor;->RETRY_POLICY_KEY:Lio/grpc/CallOptions$Key;

    new-instance v1, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedRetryPolicyProvider;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedRetryPolicyProvider;-><init>(Lio/grpc/internal/ServiceConfigInterceptor;Lio/grpc/MethodDescriptor;)V

    .line 130
    invoke-virtual {p2, v0, v1}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object p2

    sget-object v0, Lio/grpc/internal/ServiceConfigInterceptor;->HEDGING_POLICY_KEY:Lio/grpc/CallOptions$Key;

    new-instance v1, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedHedgingPolicyProvider;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedHedgingPolicyProvider;-><init>(Lio/grpc/internal/ServiceConfigInterceptor;Lio/grpc/MethodDescriptor;)V

    .line 131
    invoke-virtual {p2, v0, v1}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object p2

    .line 135
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor;->getMethodInfo(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    move-result-object v0

    if-nez v0, :cond_4

    .line 137
    invoke-virtual {p3, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object p1

    return-object p1

    .line 140
    :cond_4
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->timeoutNanos:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 141
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->timeoutNanos:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lio/grpc/Deadline;->after(JLjava/util/concurrent/TimeUnit;)Lio/grpc/Deadline;

    move-result-object v1

    .line 142
    invoke-virtual {p2}, Lio/grpc/CallOptions;->getDeadline()Lio/grpc/Deadline;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 144
    invoke-virtual {v1, v2}, Lio/grpc/Deadline;->compareTo(Lio/grpc/Deadline;)I

    move-result v2

    if-gez v2, :cond_6

    .line 145
    :cond_5
    invoke-virtual {p2, v1}, Lio/grpc/CallOptions;->withDeadline(Lio/grpc/Deadline;)Lio/grpc/CallOptions;

    move-result-object p2

    .line 148
    :cond_6
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->waitForReady:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 150
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->waitForReady:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lio/grpc/CallOptions;->withWaitForReady()Lio/grpc/CallOptions;

    move-result-object p2

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Lio/grpc/CallOptions;->withoutWaitForReady()Lio/grpc/CallOptions;

    move-result-object p2

    .line 152
    :cond_8
    :goto_3
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 153
    invoke-virtual {p2}, Lio/grpc/CallOptions;->getMaxInboundMessageSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 156
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 155
    invoke-virtual {p2, v1}, Lio/grpc/CallOptions;->withMaxInboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object p2

    goto :goto_4

    .line 158
    :cond_9
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lio/grpc/CallOptions;->withMaxInboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object p2

    .line 161
    :cond_a
    :goto_4
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 162
    invoke-virtual {p2}, Lio/grpc/CallOptions;->getMaxOutboundMessageSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 165
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 164
    invoke-virtual {p2, v0}, Lio/grpc/CallOptions;->withMaxOutboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object p2

    goto :goto_5

    .line 167
    :cond_b
    iget-object v0, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/grpc/CallOptions;->withMaxOutboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object p2

    .line 171
    :cond_c
    :goto_5
    invoke-virtual {p3, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object p1

    return-object p1
.end method

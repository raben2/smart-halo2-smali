.class final Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateHedgingPolicyProvider;
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
    name = "ImmediateHedgingPolicyProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ServiceConfigInterceptor;

.field final synthetic val$hedgingPolicy:Lio/grpc/internal/HedgingPolicy;


# direct methods
.method constructor <init>(Lio/grpc/internal/ServiceConfigInterceptor;Lio/grpc/internal/HedgingPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateHedgingPolicyProvider;->this$0:Lio/grpc/internal/ServiceConfigInterceptor;

    iput-object p2, p0, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateHedgingPolicyProvider;->val$hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lio/grpc/internal/HedgingPolicy;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateHedgingPolicyProvider;->val$hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    return-object v0
.end method

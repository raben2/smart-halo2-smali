.class Lio/grpc/internal/DnsNameResolver$Resolve$2;
.super Ljava/lang/Object;
.source "DnsNameResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DnsNameResolver$Resolve;->resolveInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/DnsNameResolver$Resolve;

.field final synthetic val$results:Lio/grpc/internal/DnsNameResolver$ResolutionResults;


# direct methods
.method constructor <init>(Lio/grpc/internal/DnsNameResolver$Resolve;Lio/grpc/internal/DnsNameResolver$ResolutionResults;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver$Resolve$2;->this$1:Lio/grpc/internal/DnsNameResolver$Resolve;

    iput-object p2, p0, Lio/grpc/internal/DnsNameResolver$Resolve$2;->val$results:Lio/grpc/internal/DnsNameResolver$ResolutionResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 282
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$Resolve$2;->this$1:Lio/grpc/internal/DnsNameResolver$Resolve;

    iget-object v0, v0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver$Resolve$2;->val$results:Lio/grpc/internal/DnsNameResolver$ResolutionResults;

    invoke-static {v0, v1}, Lio/grpc/internal/DnsNameResolver;->access$802(Lio/grpc/internal/DnsNameResolver;Lio/grpc/internal/DnsNameResolver$ResolutionResults;)Lio/grpc/internal/DnsNameResolver$ResolutionResults;

    .line 283
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$Resolve$2;->this$1:Lio/grpc/internal/DnsNameResolver$Resolve;

    iget-object v0, v0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver;->access$900(Lio/grpc/internal/DnsNameResolver;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 284
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$Resolve$2;->this$1:Lio/grpc/internal/DnsNameResolver$Resolve;

    iget-object v0, v0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver;->access$1000(Lio/grpc/internal/DnsNameResolver;)Lcom/google/common/base/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->reset()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    :cond_0
    return-void
.end method

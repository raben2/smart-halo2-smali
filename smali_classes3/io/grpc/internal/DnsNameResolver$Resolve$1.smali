.class Lio/grpc/internal/DnsNameResolver$Resolve$1;
.super Ljava/lang/Object;
.source "DnsNameResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DnsNameResolver$Resolve;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/DnsNameResolver$Resolve;


# direct methods
.method constructor <init>(Lio/grpc/internal/DnsNameResolver$Resolve;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver$Resolve$1;->this$1:Lio/grpc/internal/DnsNameResolver$Resolve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$Resolve$1;->this$1:Lio/grpc/internal/DnsNameResolver$Resolve;

    iget-object v0, v0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/internal/DnsNameResolver;->access$202(Lio/grpc/internal/DnsNameResolver;Z)Z

    return-void
.end method

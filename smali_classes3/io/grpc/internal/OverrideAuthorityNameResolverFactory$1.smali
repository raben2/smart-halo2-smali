.class Lio/grpc/internal/OverrideAuthorityNameResolverFactory$1;
.super Lio/grpc/internal/ForwardingNameResolver;
.source "OverrideAuthorityNameResolverFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/OverrideAuthorityNameResolverFactory;->newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/OverrideAuthorityNameResolverFactory;


# direct methods
.method constructor <init>(Lio/grpc/internal/OverrideAuthorityNameResolverFactory;Lio/grpc/NameResolver;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lio/grpc/internal/OverrideAuthorityNameResolverFactory$1;->this$0:Lio/grpc/internal/OverrideAuthorityNameResolverFactory;

    invoke-direct {p0, p2}, Lio/grpc/internal/ForwardingNameResolver;-><init>(Lio/grpc/NameResolver;)V

    return-void
.end method


# virtual methods
.method public getServiceAuthority()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/grpc/internal/OverrideAuthorityNameResolverFactory$1;->this$0:Lio/grpc/internal/OverrideAuthorityNameResolverFactory;

    invoke-static {v0}, Lio/grpc/internal/OverrideAuthorityNameResolverFactory;->access$000(Lio/grpc/internal/OverrideAuthorityNameResolverFactory;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

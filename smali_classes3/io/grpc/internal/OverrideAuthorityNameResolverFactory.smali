.class final Lio/grpc/internal/OverrideAuthorityNameResolverFactory;
.super Lio/grpc/NameResolver$Factory;
.source "OverrideAuthorityNameResolverFactory.java"


# instance fields
.field private final authorityOverride:Ljava/lang/String;

.field private final delegate:Lio/grpc/NameResolver$Factory;


# direct methods
.method constructor <init>(Lio/grpc/NameResolver$Factory;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lio/grpc/NameResolver$Factory;-><init>()V

    .line 39
    iput-object p1, p0, Lio/grpc/internal/OverrideAuthorityNameResolverFactory;->delegate:Lio/grpc/NameResolver$Factory;

    .line 40
    iput-object p2, p0, Lio/grpc/internal/OverrideAuthorityNameResolverFactory;->authorityOverride:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/OverrideAuthorityNameResolverFactory;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lio/grpc/internal/OverrideAuthorityNameResolverFactory;->authorityOverride:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getDefaultScheme()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/grpc/internal/OverrideAuthorityNameResolverFactory;->delegate:Lio/grpc/NameResolver$Factory;

    invoke-virtual {v0}, Lio/grpc/NameResolver$Factory;->getDefaultScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 46
    iget-object v0, p0, Lio/grpc/internal/OverrideAuthorityNameResolverFactory;->delegate:Lio/grpc/NameResolver$Factory;

    invoke-virtual {v0, p1, p2}, Lio/grpc/NameResolver$Factory;->newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_0
    new-instance p2, Lio/grpc/internal/OverrideAuthorityNameResolverFactory$1;

    invoke-direct {p2, p0, p1}, Lio/grpc/internal/OverrideAuthorityNameResolverFactory$1;-><init>(Lio/grpc/internal/OverrideAuthorityNameResolverFactory;Lio/grpc/NameResolver;)V

    return-object p2
.end method

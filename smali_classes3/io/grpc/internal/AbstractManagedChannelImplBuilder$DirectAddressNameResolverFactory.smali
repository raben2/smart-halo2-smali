.class Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory;
.super Lio/grpc/NameResolver$Factory;
.source "AbstractManagedChannelImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectAddressNameResolverFactory"
.end annotation


# instance fields
.field final address:Ljava/net/SocketAddress;

.field final authority:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;)V
    .locals 0

    .line 622
    invoke-direct {p0}, Lio/grpc/NameResolver$Factory;-><init>()V

    .line 623
    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory;->address:Ljava/net/SocketAddress;

    .line 624
    iput-object p2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory;->authority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "directaddress"

    return-object v0
.end method

.method public newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;
    .locals 0

    .line 629
    new-instance p1, Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory$1;

    invoke-direct {p1, p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory$1;-><init>(Lio/grpc/internal/AbstractManagedChannelImplBuilder$DirectAddressNameResolverFactory;)V

    return-object p1
.end method

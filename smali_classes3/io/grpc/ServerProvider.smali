.class public abstract Lio/grpc/ServerProvider;
.super Ljava/lang/Object;
.source "ServerProvider.java"


# annotations
.annotation build Lio/grpc/Internal;
.end annotation


# static fields
.field private static final provider:Lio/grpc/ServerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    const-class v0, Lio/grpc/ServerProvider;

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-class v2, Lio/grpc/ServerProvider;

    .line 35
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Lio/grpc/ServerProvider$1;

    invoke-direct {v3}, Lio/grpc/ServerProvider$1;-><init>()V

    .line 32
    invoke-static {v0, v1, v2, v3}, Lio/grpc/ServiceProviders;->load(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/ServiceProviders$PriorityAccessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ServerProvider;

    sput-object v0, Lio/grpc/ServerProvider;->provider:Lio/grpc/ServerProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provider()Lio/grpc/ServerProvider;
    .locals 2

    .line 54
    sget-object v0, Lio/grpc/ServerProvider;->provider:Lio/grpc/ServerProvider;

    if-eqz v0, :cond_0

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;

    const-string v1, "No functional server found. Try adding a dependency on the grpc-netty or grpc-netty-shaded artifact"

    invoke-direct {v0, v1}, Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract builderForPort(I)Lio/grpc/ServerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract isAvailable()Z
.end method

.method protected abstract priority()I
.end method

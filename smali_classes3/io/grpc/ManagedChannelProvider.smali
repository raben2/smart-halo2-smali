.class public abstract Lio/grpc/ManagedChannelProvider;
.super Ljava/lang/Object;
.source "ManagedChannelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ManagedChannelProvider$HardcodedClasses;,
        Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;
    }
.end annotation

.annotation build Lio/grpc/Internal;
.end annotation


# static fields
.field static final HARDCODED_CLASSES:Ljava/lang/Iterable;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final provider:Lio/grpc/ManagedChannelProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lio/grpc/ManagedChannelProvider$HardcodedClasses;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/ManagedChannelProvider$HardcodedClasses;-><init>(Lio/grpc/ManagedChannelProvider$1;)V

    sput-object v0, Lio/grpc/ManagedChannelProvider;->HARDCODED_CLASSES:Ljava/lang/Iterable;

    .line 37
    const-class v0, Lio/grpc/ManagedChannelProvider;

    sget-object v1, Lio/grpc/ManagedChannelProvider;->HARDCODED_CLASSES:Ljava/lang/Iterable;

    const-class v2, Lio/grpc/ManagedChannelProvider;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Lio/grpc/ManagedChannelProvider$1;

    invoke-direct {v3}, Lio/grpc/ManagedChannelProvider$1;-><init>()V

    .line 37
    invoke-static {v0, v1, v2, v3}, Lio/grpc/ServiceProviders;->load(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/ServiceProviders$PriorityAccessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ManagedChannelProvider;

    sput-object v0, Lio/grpc/ManagedChannelProvider;->provider:Lio/grpc/ManagedChannelProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provider()Lio/grpc/ManagedChannelProvider;
    .locals 2

    .line 59
    sget-object v0, Lio/grpc/ManagedChannelProvider;->provider:Lio/grpc/ManagedChannelProvider;

    if-eqz v0, :cond_0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;

    const-string v1, "No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact"

    invoke-direct {v0, v1}, Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract builderForAddress(Ljava/lang/String;I)Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract builderForTarget(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract isAvailable()Z
.end method

.method protected abstract priority()I
.end method

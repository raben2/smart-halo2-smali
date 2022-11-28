.class final Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceConfigHolder"
.end annotation


# instance fields
.field managedChannelServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

.field rawServiceConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lio/grpc/internal/ManagedChannelServiceConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lio/grpc/internal/ManagedChannelServiceConfig;",
            ")V"
        }
    .end annotation

    .line 1982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rawServiceConfig"

    .line 1983
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->rawServiceConfig:Ljava/util/Map;

    const-string p1, "managedChannelServiceConfig"

    .line 1985
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ManagedChannelServiceConfig;

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->managedChannelServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1993
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1996
    :cond_1
    check-cast p1, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    .line 1997
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->rawServiceConfig:Ljava/util/Map;

    iget-object v3, p1, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->rawServiceConfig:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->managedChannelServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    iget-object p1, p1, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->managedChannelServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 1999
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 2004
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->rawServiceConfig:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->managedChannelServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2009
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "rawServiceConfig"

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->rawServiceConfig:Ljava/util/Map;

    .line 2010
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "managedChannelServiceConfig"

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->managedChannelServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 2011
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 2012
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

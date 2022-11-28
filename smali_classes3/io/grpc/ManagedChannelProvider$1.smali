.class Lio/grpc/ManagedChannelProvider$1;
.super Ljava/lang/Object;
.source "ManagedChannelProvider.java"

# interfaces
.implements Lio/grpc/ServiceProviders$PriorityAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ManagedChannelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/ServiceProviders$PriorityAccessor<",
        "Lio/grpc/ManagedChannelProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority(Lio/grpc/ManagedChannelProvider;)I
    .locals 0

    .line 49
    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider;->priority()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lio/grpc/ManagedChannelProvider;

    invoke-virtual {p0, p1}, Lio/grpc/ManagedChannelProvider$1;->getPriority(Lio/grpc/ManagedChannelProvider;)I

    move-result p1

    return p1
.end method

.method public isAvailable(Lio/grpc/ManagedChannelProvider;)Z
    .locals 0

    .line 44
    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider;->isAvailable()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isAvailable(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Lio/grpc/ManagedChannelProvider;

    invoke-virtual {p0, p1}, Lio/grpc/ManagedChannelProvider$1;->isAvailable(Lio/grpc/ManagedChannelProvider;)Z

    move-result p1

    return p1
.end method

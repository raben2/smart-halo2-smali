.class Lio/grpc/ServerProvider$1;
.super Ljava/lang/Object;
.source "ServerProvider.java"

# interfaces
.implements Lio/grpc/ServiceProviders$PriorityAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ServerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/ServiceProviders$PriorityAccessor<",
        "Lio/grpc/ServerProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority(Lio/grpc/ServerProvider;)I
    .locals 0

    .line 44
    invoke-virtual {p1}, Lio/grpc/ServerProvider;->priority()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lio/grpc/ServerProvider;

    invoke-virtual {p0, p1}, Lio/grpc/ServerProvider$1;->getPriority(Lio/grpc/ServerProvider;)I

    move-result p1

    return p1
.end method

.method public isAvailable(Lio/grpc/ServerProvider;)Z
    .locals 0

    .line 39
    invoke-virtual {p1}, Lio/grpc/ServerProvider;->isAvailable()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isAvailable(Ljava/lang/Object;)Z
    .locals 0

    .line 36
    check-cast p1, Lio/grpc/ServerProvider;

    invoke-virtual {p0, p1}, Lio/grpc/ServerProvider$1;->isAvailable(Lio/grpc/ServerProvider;)Z

    move-result p1

    return p1
.end method

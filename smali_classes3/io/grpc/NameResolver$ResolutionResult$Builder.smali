.class public final Lio/grpc/NameResolver$ResolutionResult$Builder;
.super Ljava/lang/Object;
.source "NameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/NameResolver$ResolutionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/1770"
.end annotation


# instance fields
.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Lio/grpc/Attributes;

.field private serviceConfig:Lio/grpc/NameResolver$ConfigOrError;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/NameResolver$ResolutionResult$Builder;->addresses:Ljava/util/List;

    .line 796
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/NameResolver$ResolutionResult$Builder;->attributes:Lio/grpc/Attributes;

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/NameResolver$ResolutionResult;
    .locals 4

    .line 841
    new-instance v0, Lio/grpc/NameResolver$ResolutionResult;

    iget-object v1, p0, Lio/grpc/NameResolver$ResolutionResult$Builder;->addresses:Ljava/util/List;

    iget-object v2, p0, Lio/grpc/NameResolver$ResolutionResult$Builder;->attributes:Lio/grpc/Attributes;

    iget-object v3, p0, Lio/grpc/NameResolver$ResolutionResult$Builder;->serviceConfig:Lio/grpc/NameResolver$ConfigOrError;

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/NameResolver$ResolutionResult;-><init>(Ljava/util/List;Lio/grpc/Attributes;Lio/grpc/NameResolver$ConfigOrError;)V

    return-object v0
.end method

.method public setAddresses(Ljava/util/List;)Lio/grpc/NameResolver$ResolutionResult$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)",
            "Lio/grpc/NameResolver$ResolutionResult$Builder;"
        }
    .end annotation

    .line 809
    iput-object p1, p0, Lio/grpc/NameResolver$ResolutionResult$Builder;->addresses:Ljava/util/List;

    return-object p0
.end method

.method public setAttributes(Lio/grpc/Attributes;)Lio/grpc/NameResolver$ResolutionResult$Builder;
    .locals 0

    .line 820
    iput-object p1, p0, Lio/grpc/NameResolver$ResolutionResult$Builder;->attributes:Lio/grpc/Attributes;

    return-object p0
.end method

.method public setServiceConfig(Lio/grpc/NameResolver$ConfigOrError;)Lio/grpc/NameResolver$ResolutionResult$Builder;
    .locals 0
    .param p1    # Lio/grpc/NameResolver$ConfigOrError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 831
    iput-object p1, p0, Lio/grpc/NameResolver$ResolutionResult$Builder;->serviceConfig:Lio/grpc/NameResolver$ConfigOrError;

    return-object p0
.end method

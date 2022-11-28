.class public Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;
.super Ljava/lang/Object;
.source "LocalPastRidesResponse.java"


# instance fields
.field private pendingRides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation
.end field

.field private uploadedRides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;->uploadedRides:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;->pendingRides:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAllRides()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v1, p0, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;->pendingRides:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    iget-object v1, p0, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;->uploadedRides:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getLatestValidRide()Lbike/smarthalo/app/models/SHPastRide;
    .locals 7

    .line 38
    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;->uploadedRides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 39
    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;->uploadedRides:Ljava/util/List;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getFirstValidRide(Ljava/util/List;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;->pendingRides:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 42
    iget-object v1, p0, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;->pendingRides:Ljava/util/List;

    invoke-static {v1}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getFirstValidRide(Ljava/util/List;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_1
    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0

    :cond_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

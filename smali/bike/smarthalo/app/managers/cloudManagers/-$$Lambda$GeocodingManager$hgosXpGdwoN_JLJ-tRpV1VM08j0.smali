.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$hgosXpGdwoN_JLJ-tRpV1VM08j0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/models/SHLocation;

.field private final synthetic f$1:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$hgosXpGdwoN_JLJ-tRpV1VM08j0;->f$0:Lbike/smarthalo/app/models/SHLocation;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$hgosXpGdwoN_JLJ-tRpV1VM08j0;->f$1:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$hgosXpGdwoN_JLJ-tRpV1VM08j0;->f$0:Lbike/smarthalo/app/models/SHLocation;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$hgosXpGdwoN_JLJ-tRpV1VM08j0;->f$1:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->lambda$getLocationInformationById$0(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;)V

    return-void
.end method

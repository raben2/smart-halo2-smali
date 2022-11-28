.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$j66JB9yKF5fsvd2e46rUgDeIugk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;

.field private final synthetic f$1:Lbike/smarthalo/app/models/SHLocation;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$j66JB9yKF5fsvd2e46rUgDeIugk;->f$0:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$j66JB9yKF5fsvd2e46rUgDeIugk;->f$1:Lbike/smarthalo/app/models/SHLocation;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$j66JB9yKF5fsvd2e46rUgDeIugk;->f$0:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$j66JB9yKF5fsvd2e46rUgDeIugk;->f$1:Lbike/smarthalo/app/models/SHLocation;

    invoke-static {v0, v1}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->lambda$getLocationAddress$5(Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;Lbike/smarthalo/app/models/SHLocation;)Lbike/smarthalo/app/models/GenericResponse;

    move-result-object v0

    return-object v0
.end method

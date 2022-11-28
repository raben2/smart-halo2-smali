.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$4Pycztad5PbcL8ceQEvBTiSJr60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;

.field private final synthetic f$1:Lbike/smarthalo/app/models/SHLocation;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$4Pycztad5PbcL8ceQEvBTiSJr60;->f$0:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$4Pycztad5PbcL8ceQEvBTiSJr60;->f$1:Lbike/smarthalo/app/models/SHLocation;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$4Pycztad5PbcL8ceQEvBTiSJr60;->f$0:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$4Pycztad5PbcL8ceQEvBTiSJr60;->f$1:Lbike/smarthalo/app/models/SHLocation;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->lambda$getLocationInformationById$1(Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;Lbike/smarthalo/app/models/SHLocation;Ljava/lang/Exception;)V

    return-void
.end method

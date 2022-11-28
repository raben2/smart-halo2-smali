.class public Lbike/smarthalo/app/models/CloudRide;
.super Ljava/lang/Object;
.source "CloudRide.java"


# instance fields
.field public averageSpeed:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "average_speed"
    .end annotation
.end field

.field public calories:F

.field public co2:F

.field public createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public distance:F

.field public duration:I

.field public elevation:F

.field public end:Ljava/lang/String;

.field public fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "integration"
    .end annotation
.end field

.field public id:I

.field public markers:[Lbike/smarthalo/app/models/CloudMarker;

.field public significantMarkers:[Lbike/smarthalo/app/models/CloudSignificantMarker;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "significant_markers"
    .end annotation
.end field

.field public stamp:Ljava/lang/String;

.field public start:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asPastRide()Lbike/smarthalo/app/models/SHPastRide;
    .locals 2

    .line 57
    new-instance v0, Lbike/smarthalo/app/models/SHPastRide;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHPastRide;-><init>()V

    .line 59
    iget v1, p0, Lbike/smarthalo/app/models/CloudRide;->id:I

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$id(I)V

    .line 60
    iget-object v1, p0, Lbike/smarthalo/app/models/CloudRide;->stamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$stamp(Ljava/lang/String;)V

    .line 61
    iget v1, p0, Lbike/smarthalo/app/models/CloudRide;->averageSpeed:F

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$averageSpeed(F)V

    .line 62
    iget v1, p0, Lbike/smarthalo/app/models/CloudRide;->calories:F

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$calories(F)V

    .line 63
    iget v1, p0, Lbike/smarthalo/app/models/CloudRide;->co2:F

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$co2(F)V

    .line 64
    iget-object v1, p0, Lbike/smarthalo/app/models/CloudRide;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$createdAt(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lbike/smarthalo/app/models/CloudRide;->updatedAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$updatedAt(Ljava/lang/String;)V

    .line 66
    iget v1, p0, Lbike/smarthalo/app/models/CloudRide;->distance:F

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$distance(F)V

    .line 67
    iget v1, p0, Lbike/smarthalo/app/models/CloudRide;->duration:I

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$duration(I)V

    .line 68
    iget v1, p0, Lbike/smarthalo/app/models/CloudRide;->elevation:F

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$elevation(F)V

    .line 69
    iget-object v1, p0, Lbike/smarthalo/app/models/CloudRide;->fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    .line 70
    iget-object v1, p0, Lbike/smarthalo/app/models/CloudRide;->start:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$start(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lbike/smarthalo/app/models/CloudRide;->end:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$end(Ljava/lang/String;)V

    return-object v0
.end method

.method public asRideForStravaUpload()Lbike/smarthalo/app/models/SHRide;
    .locals 7

    .line 40
    new-instance v0, Lbike/smarthalo/app/models/SHRide;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHRide;-><init>()V

    .line 42
    iget-object v1, p0, Lbike/smarthalo/app/models/CloudRide;->stamp:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$timestamp(Ljava/lang/Long;)V

    .line 43
    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$goodLocations(Lio/realm/RealmList;)V

    .line 45
    iget-object v1, p0, Lbike/smarthalo/app/models/CloudRide;->markers:[Lbike/smarthalo/app/models/CloudMarker;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 46
    invoke-virtual {v4}, Lbike/smarthalo/app/models/CloudMarker;->asSHLocation()Lbike/smarthalo/app/models/SHLocation;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Lbike/smarthalo/app/models/SHLocation;->realmGet$accuracy()F

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 49
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

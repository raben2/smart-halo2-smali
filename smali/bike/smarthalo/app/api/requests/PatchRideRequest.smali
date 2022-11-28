.class public Lbike/smarthalo/app/api/requests/PatchRideRequest;
.super Ljava/lang/Object;
.source "PatchRideRequest.java"


# instance fields
.field public averageSpeed:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "average_speed"
    .end annotation
.end field

.field public calories:F

.field public co2:D

.field public distance:Ljava/lang/Float;

.field public duration:J

.field public elevation:D

.field public end:Ljava/lang/String;

.field public fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "integration"
    .end annotation
.end field

.field public start:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/models/CloudRide;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0, p1}, Lbike/smarthalo/app/api/requests/PatchRideRequest;->configurePatchRideFromCloudRide(Lbike/smarthalo/app/models/CloudRide;)V

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/models/CloudRide;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Lbike/smarthalo/app/api/requests/PatchRideRequest;->configurePatchRideFromCloudRide(Lbike/smarthalo/app/models/CloudRide;)V

    .line 45
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/api/requests/PatchRideRequest;->addStravaIntegration(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$start()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->start:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$end()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->end:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->distance:Ljava/lang/Float;

    .line 30
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$averageSpeed()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->averageSpeed:D

    .line 31
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$elevation()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->elevation:D

    .line 32
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$calories()F

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->calories:F

    .line 33
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$duration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->duration:J

    .line 34
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$co2()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->co2:D

    .line 35
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;

    return-void
.end method

.method private configurePatchRideFromCloudRide(Lbike/smarthalo/app/models/CloudRide;)V
    .locals 2

    .line 49
    iget-object v0, p1, Lbike/smarthalo/app/models/CloudRide;->start:Ljava/lang/String;

    iput-object v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->start:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lbike/smarthalo/app/models/CloudRide;->end:Ljava/lang/String;

    iput-object v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->end:Ljava/lang/String;

    .line 51
    iget v0, p1, Lbike/smarthalo/app/models/CloudRide;->distance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->distance:Ljava/lang/Float;

    .line 52
    iget v0, p1, Lbike/smarthalo/app/models/CloudRide;->averageSpeed:F

    float-to-double v0, v0

    iput-wide v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->averageSpeed:D

    .line 53
    iget v0, p1, Lbike/smarthalo/app/models/CloudRide;->elevation:F

    float-to-double v0, v0

    iput-wide v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->elevation:D

    .line 54
    iget v0, p1, Lbike/smarthalo/app/models/CloudRide;->calories:F

    iput v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->calories:F

    .line 55
    iget v0, p1, Lbike/smarthalo/app/models/CloudRide;->duration:I

    int-to-long v0, v0

    iput-wide v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->duration:J

    .line 56
    iget v0, p1, Lbike/smarthalo/app/models/CloudRide;->co2:F

    float-to-double v0, v0

    iput-wide v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->co2:D

    .line 57
    iget-object p1, p1, Lbike/smarthalo/app/models/CloudRide;->fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;

    iput-object p1, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;

    return-void
.end method


# virtual methods
.method public addStravaIntegration(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-direct {v0}, Lbike/smarthalo/app/models/FitnessIntegrations;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;

    .line 65
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/api/requests/PatchRideRequest;->fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/FitnessIntegrations;->realmSet$stravaId(Ljava/lang/String;)V

    return-void
.end method

.class public Lbike/smarthalo/app/models/RideUploadPayload;
.super Ljava/lang/Object;
.source "RideUploadPayload.java"


# instance fields
.field averageSpeed:D

.field calories:I

.field co2:D

.field distance:I

.field duration:J

.field elevation:D

.field end:Ljava/lang/String;

.field fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "integration"
    .end annotation
.end field

.field markers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/RideUploadLocation;",
            ">;"
        }
    .end annotation
.end field

.field maxSpeed:D

.field stamp:J

.field start:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

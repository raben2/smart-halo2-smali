.class public Lbike/smarthalo/app/models/RideMarker;
.super Ljava/lang/Object;
.source "RideMarker.java"


# instance fields
.field public accuracy:F

.field public activityConfidence:Ljava/lang/String;

.field public activityType:Ljava/lang/String;

.field public altitude:F

.field public createdAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public heading:D

.field public id:J

.field public latitude:D

.field public longitude:D

.field public rideId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ride_id"
    .end annotation
.end field

.field public speed:F

.field public timestamp:J

.field public updatedAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lbike/smarthalo/app/models/fitness/TrimmedRideData;
.super Ljava/lang/Object;
.source "TrimmedRideData.java"


# instance fields
.field public trimmedCO2:D

.field public trimmedCalories:D

.field public trimmedDistance:F

.field public trimmedTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedDistance:F

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedTime:J

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedCalories:D

    .line 11
    iput-wide v0, p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedCO2:D

    return-void
.end method

.method public constructor <init>(FJDD)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedDistance:F

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedTime:J

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedCalories:D

    .line 11
    iput-wide v0, p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedCO2:D

    .line 16
    iput p1, p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedDistance:F

    .line 17
    iput-wide p2, p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedTime:J

    .line 18
    iput-wide p4, p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedCalories:D

    .line 19
    iput-wide p6, p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedCO2:D

    return-void
.end method

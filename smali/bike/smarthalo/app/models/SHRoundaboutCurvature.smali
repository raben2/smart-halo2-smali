.class public Lbike/smarthalo/app/models/SHRoundaboutCurvature;
.super Ljava/lang/Object;
.source "SHRoundaboutCurvature.java"


# instance fields
.field public curvature:I

.field public distance:F

.field public exitBearing:I

.field public exitIndex:I


# direct methods
.method public constructor <init>(IIF)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lbike/smarthalo/app/models/SHRoundaboutCurvature;->curvature:I

    .line 14
    iput p1, p0, Lbike/smarthalo/app/models/SHRoundaboutCurvature;->exitIndex:I

    .line 15
    iput p2, p0, Lbike/smarthalo/app/models/SHRoundaboutCurvature;->exitBearing:I

    .line 16
    iput p3, p0, Lbike/smarthalo/app/models/SHRoundaboutCurvature;->distance:F

    return-void
.end method

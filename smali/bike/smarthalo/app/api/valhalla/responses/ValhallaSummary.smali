.class public Lbike/smarthalo/app/api/valhalla/responses/ValhallaSummary;
.super Ljava/lang/Object;
.source "ValhallaSummary.java"


# instance fields
.field private distance:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "length"
    .end annotation
.end field

.field private maxLat:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_lat"
    .end annotation
.end field

.field private maxLong:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_lon"
    .end annotation
.end field

.field private minLat:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min_lat"
    .end annotation
.end field

.field private minLong:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min_lon"
    .end annotation
.end field

.field private totalSeconds:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistance()F
    .locals 1

    .line 36
    iget v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaSummary;->distance:F

    return v0
.end method

.method public getMaxLat()F
    .locals 1

    .line 28
    iget v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaSummary;->maxLat:F

    return v0
.end method

.method public getMaxLong()F
    .locals 1

    .line 24
    iget v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaSummary;->maxLong:F

    return v0
.end method

.method public getMinLat()F
    .locals 1

    .line 44
    iget v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaSummary;->minLat:F

    return v0
.end method

.method public getMinLong()F
    .locals 1

    .line 40
    iget v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaSummary;->minLong:F

    return v0
.end method

.method public getTotalSeconds()I
    .locals 1

    .line 32
    iget v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaSummary;->totalSeconds:I

    return v0
.end method

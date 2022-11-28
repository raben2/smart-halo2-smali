.class public Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperties;
.super Ljava/lang/Object;
.source "ValhallaProperties.java"


# instance fields
.field private cycleLane:Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cycle_lane"
    .end annotation
.end field

.field private grade:Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;

.field private surface:Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;

.field private use:Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCycleLane()Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;
    .locals 1

    .line 25
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperties;->cycleLane:Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;

    return-object v0
.end method

.method public getGrade()Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;
    .locals 1

    .line 17
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperties;->grade:Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;

    return-object v0
.end method

.method public getSurface()Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;
    .locals 1

    .line 21
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperties;->surface:Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;

    return-object v0
.end method

.method public getUse()Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;
    .locals 1

    .line 13
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperties;->use:Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;

    return-object v0
.end method

.class public Lbike/smarthalo/app/api/valhalla/responses/ValhallaDirectionsResponse;
.super Ljava/lang/Object;
.source "ValhallaDirectionsResponse.java"


# instance fields
.field private properties:Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperties;

.field private trip:Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProperties()Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperties;
    .locals 1

    .line 12
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaDirectionsResponse;->properties:Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperties;

    return-object v0
.end method

.method public getTrip()Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;
    .locals 1

    .line 16
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaDirectionsResponse;->trip:Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;

    return-object v0
.end method

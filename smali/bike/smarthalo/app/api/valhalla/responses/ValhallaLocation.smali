.class public Lbike/smarthalo/app/api/valhalla/responses/ValhallaLocation;
.super Ljava/lang/Object;
.source "ValhallaLocation.java"


# instance fields
.field private lat:F

.field private lon:F

.field private street:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()F
    .locals 1

    .line 22
    iget v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaLocation;->lat:F

    return v0
.end method

.method public getLon()F
    .locals 1

    .line 18
    iget v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaLocation;->lon:F

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaLocation;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaLocation;->type:Ljava/lang/String;

    return-object v0
.end method

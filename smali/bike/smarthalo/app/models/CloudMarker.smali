.class public Lbike/smarthalo/app/models/CloudMarker;
.super Ljava/lang/Object;
.source "CloudMarker.java"


# instance fields
.field public accuracy:F

.field public altitude:D

.field public heading:F

.field public latitude:D

.field public longitude:D

.field public speed:F

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asSHLocation()Lbike/smarthalo/app/models/SHLocation;
    .locals 3

    .line 20
    new-instance v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 22
    iget-wide v1, p0, Lbike/smarthalo/app/models/CloudMarker;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    .line 23
    iget-wide v1, p0, Lbike/smarthalo/app/models/CloudMarker;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    .line 24
    iget-wide v1, p0, Lbike/smarthalo/app/models/CloudMarker;->altitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$altitude(Ljava/lang/Double;)V

    .line 25
    iget v1, p0, Lbike/smarthalo/app/models/CloudMarker;->speed:F

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$speed(F)V

    .line 26
    iget-wide v1, p0, Lbike/smarthalo/app/models/CloudMarker;->timestamp:J

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/models/SHLocation;->realmSet$timestamp(J)V

    .line 27
    iget v1, p0, Lbike/smarthalo/app/models/CloudMarker;->heading:F

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$heading(F)V

    .line 28
    iget v1, p0, Lbike/smarthalo/app/models/CloudMarker;->accuracy:F

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$accuracy(F)V

    return-object v0
.end method

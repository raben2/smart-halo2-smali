.class public Lbike/smarthalo/app/api/valhalla/gets/ValhallaCostingOptions;
.super Ljava/lang/Object;
.source "ValhallaCostingOptions.java"


# instance fields
.field public bicycle:Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;

    invoke-direct {v0}, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaCostingOptions;->bicycle:Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;

    return-void
.end method

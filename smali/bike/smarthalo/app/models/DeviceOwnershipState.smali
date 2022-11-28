.class public Lbike/smarthalo/app/models/DeviceOwnershipState;
.super Ljava/lang/Object;
.source "DeviceOwnershipState.java"


# instance fields
.field public hasDevice:Z

.field public isConnected:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lbike/smarthalo/app/models/DeviceOwnershipState;->isConnected:Z

    .line 13
    iput-boolean p2, p0, Lbike/smarthalo/app/models/DeviceOwnershipState;->hasDevice:Z

    return-void
.end method

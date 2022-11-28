.class public Lbike/smarthalo/navigation/models/NavAngleTurns;
.super Ljava/lang/Object;
.source "NavAngleTurns.java"


# instance fields
.field public mode:Lbike/smarthalo/navigation/models/TransportationMode;

.field public relativeToNorthAngle:I

.field public relativeToPreviousTurnAngle:I

.field public relativeTurnAngle:I

.field public stepType:Lbike/smarthalo/navigation/models/StepType;

.field public turnProgress:I


# direct methods
.method public constructor <init>(IIIILbike/smarthalo/navigation/models/TransportationMode;Lbike/smarthalo/navigation/models/StepType;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lbike/smarthalo/navigation/models/NavAngleTurns;->relativeTurnAngle:I

    .line 17
    iput p2, p0, Lbike/smarthalo/navigation/models/NavAngleTurns;->relativeToPreviousTurnAngle:I

    .line 18
    iput p3, p0, Lbike/smarthalo/navigation/models/NavAngleTurns;->relativeToNorthAngle:I

    .line 19
    iput p4, p0, Lbike/smarthalo/navigation/models/NavAngleTurns;->turnProgress:I

    .line 20
    iput-object p5, p0, Lbike/smarthalo/navigation/models/NavAngleTurns;->mode:Lbike/smarthalo/navigation/models/TransportationMode;

    .line 21
    iput-object p6, p0, Lbike/smarthalo/navigation/models/NavAngleTurns;->stepType:Lbike/smarthalo/navigation/models/StepType;

    return-void
.end method

.method public static buildEmpty()Lbike/smarthalo/navigation/models/NavAngleTurns;
    .locals 8

    .line 25
    new-instance v7, Lbike/smarthalo/navigation/models/NavAngleTurns;

    sget-object v5, Lbike/smarthalo/navigation/models/TransportationMode;->CYCLING:Lbike/smarthalo/navigation/models/TransportationMode;

    sget-object v6, Lbike/smarthalo/navigation/models/StepType;->DEPART:Lbike/smarthalo/navigation/models/StepType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lbike/smarthalo/navigation/models/NavAngleTurns;-><init>(IIIILbike/smarthalo/navigation/models/TransportationMode;Lbike/smarthalo/navigation/models/StepType;)V

    return-object v7
.end method

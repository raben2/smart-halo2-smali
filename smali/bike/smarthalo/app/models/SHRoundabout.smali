.class public Lbike/smarthalo/app/models/SHRoundabout;
.super Ljava/lang/Object;
.source "SHRoundabout.java"


# instance fields
.field public exitBearing:I

.field public isRoundaboutCorrupted:Z

.field public roundaboutAngles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public roundaboutExitIndex:I

.field public roundaboutType:Lbike/smarthalo/navigation/models/StepType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/StepType;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbike/smarthalo/navigation/models/StepType;",
            "IIZ)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lbike/smarthalo/app/models/SHRoundabout;->roundaboutAngles:Ljava/util/ArrayList;

    .line 23
    iput-object p2, p0, Lbike/smarthalo/app/models/SHRoundabout;->roundaboutType:Lbike/smarthalo/navigation/models/StepType;

    .line 24
    iput p3, p0, Lbike/smarthalo/app/models/SHRoundabout;->roundaboutExitIndex:I

    .line 25
    iput p4, p0, Lbike/smarthalo/app/models/SHRoundabout;->exitBearing:I

    .line 26
    iput-boolean p5, p0, Lbike/smarthalo/app/models/SHRoundabout;->isRoundaboutCorrupted:Z

    return-void
.end method

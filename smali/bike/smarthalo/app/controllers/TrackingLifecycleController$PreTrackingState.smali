.class public Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;
.super Ljava/lang/Object;
.source "TrackingLifecycleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/controllers/TrackingLifecycleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreTrackingState"
.end annotation


# instance fields
.field public isSpeedAboveThreshold:Z

.field public locations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lbike/smarthalo/app/controllers/TrackingLifecycleController;

.field public totalDistanceAboveSpeedThreshold:I

.field public totalMilliSecondsAboveSpeedThreshold:J


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/controllers/TrackingLifecycleController;)V
    .locals 2

    .line 261
    iput-object p1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->this$0:Lbike/smarthalo/app/controllers/TrackingLifecycleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 262
    iput p1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->totalDistanceAboveSpeedThreshold:I

    .line 263
    iput-boolean p1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->isSpeedAboveThreshold:Z

    const-wide/16 v0, 0x0

    .line 264
    iput-wide v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->totalMilliSecondsAboveSpeedThreshold:J

    .line 266
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->locations:Ljava/util/ArrayList;

    return-void
.end method

.class Lbike/smarthalo/app/controllers/TrackingController$1;
.super Ljava/util/TimerTask;
.source "TrackingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/TrackingController;->setUpLocalStorageUpdater()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/TrackingController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/TrackingController;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lbike/smarthalo/app/controllers/TrackingController$1;->this$0:Lbike/smarthalo/app/controllers/TrackingController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 328
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController$1;->this$0:Lbike/smarthalo/app/controllers/TrackingController;

    invoke-static {v0}, Lbike/smarthalo/app/controllers/TrackingController;->access$100(Lbike/smarthalo/app/controllers/TrackingController;)Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/controllers/TrackingController$1;->this$0:Lbike/smarthalo/app/controllers/TrackingController;

    invoke-static {v1}, Lbike/smarthalo/app/controllers/TrackingController;->access$000(Lbike/smarthalo/app/controllers/TrackingController;)Lbike/smarthalo/app/models/SHRide;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateRide(Lbike/smarthalo/app/models/SHRide;)V

    return-void
.end method

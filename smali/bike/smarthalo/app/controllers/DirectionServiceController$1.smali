.class Lbike/smarthalo/app/controllers/DirectionServiceController$1;
.super Ljava/lang/Object;
.source "DirectionServiceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/DirectionServiceController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/DirectionServiceController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/DirectionServiceController;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController$1;->this$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 99
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController$1;->this$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    check-cast p2, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/controllers/DirectionServiceController;->access$002(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    .line 100
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController$1;->this$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/DirectionServiceController;->access$000(Lbike/smarthalo/app/controllers/DirectionServiceController;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/controllers/DirectionServiceController;->access$100(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController$1;->this$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/controllers/DirectionServiceController;->access$002(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    .line 106
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController$1;->this$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/DirectionServiceController;->access$200(Lbike/smarthalo/app/controllers/DirectionServiceController;)V

    .line 107
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController$1;->this$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/DirectionServiceController;->access$300(Lbike/smarthalo/app/controllers/DirectionServiceController;)Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

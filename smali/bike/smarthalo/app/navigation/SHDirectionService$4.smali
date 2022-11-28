.class Lbike/smarthalo/app/navigation/SHDirectionService$4;
.super Ljava/util/TimerTask;
.source "SHDirectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/navigation/SHDirectionService;->guideToDestination()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/navigation/SHDirectionService;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V
    .locals 0

    .line 932
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$4;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 935
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$4;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1300(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$4;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1300(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->toggleNavBreathing(Z)V

    :cond_0
    return-void
.end method

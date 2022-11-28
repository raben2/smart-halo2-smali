.class Lbike/smarthalo/app/navigation/SHDirectionService$1;
.super Lbike/smarthalo/app/api/RequestCallback;
.source "SHDirectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/navigation/SHDirectionService;->rerouteUser()V
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

    .line 613
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$1;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-direct {p0}, Lbike/smarthalo/app/api/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0

    .line 631
    invoke-super {p0, p1}, Lbike/smarthalo/app/api/RequestCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 616
    invoke-super {p0, p1}, Lbike/smarthalo/app/api/RequestCallback;->onSuccess(Ljava/lang/String;)V

    .line 617
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService;->TAG:Ljava/lang/String;

    const-string v1, "onSuccess: recommended Mapzen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$1;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$800(Lbike/smarthalo/app/navigation/SHDirectionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 619
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$1;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1100(Lbike/smarthalo/app/navigation/SHDirectionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 621
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$1;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v0, v0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setNewSteps(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$1;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v0, v0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getPolyline()Lbike/smarthalo/navigation/models/SHPolyline;

    move-result-object v0

    .line 624
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$1;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$900(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object v2

    invoke-static {v1, v0, p1, v2}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1200(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/SHPolyline;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    .line 625
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$1;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1300(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    move-result-object v1

    invoke-interface {v1}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->refreshCarouselNavigationCard()V

    .line 626
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$1;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v1, v0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1400(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/SHPolyline;Ljava/lang/String;)V

    return-void
.end method

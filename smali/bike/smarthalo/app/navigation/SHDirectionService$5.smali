.class Lbike/smarthalo/app/navigation/SHDirectionService$5;
.super Lbike/smarthalo/app/api/RequestCallback;
.source "SHDirectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/navigation/SHDirectionService;->prepareDestinationPath()V
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

    .line 1073
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$5;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-direct {p0}, Lbike/smarthalo/app/api/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    .line 1092
    invoke-super {p0, p1}, Lbike/smarthalo/app/api/RequestCallback;->onFailure(Ljava/lang/String;)V

    .line 1093
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure: Mapzen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$5;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$2100(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1076
    invoke-super {p0, p1}, Lbike/smarthalo/app/api/RequestCallback;->onSuccess(Ljava/lang/String;)V

    .line 1077
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService;->TAG:Ljava/lang/String;

    const-string v1, "onSuccess: recommended Mapzen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$5;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v0, v0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->previewPolyline(Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$5;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v0, v0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getPolyline()Lbike/smarthalo/navigation/models/SHPolyline;

    move-result-object v0

    .line 1082
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$5;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$800(Lbike/smarthalo/app/navigation/SHDirectionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1084
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$5;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Recommended:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-static {v1, v0, p1, v2}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1200(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/SHPolyline;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    .line 1085
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$5;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$2000(Lbike/smarthalo/app/navigation/SHDirectionService;I)V

    .line 1087
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$5;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object p1, p1, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    sget-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-virtual {p1, v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setNavigationMode(Lbike/smarthalo/navigation/models/NavigationMode;)V

    return-void
.end method

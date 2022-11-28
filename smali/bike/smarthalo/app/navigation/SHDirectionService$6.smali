.class Lbike/smarthalo/app/navigation/SHDirectionService$6;
.super Lbike/smarthalo/app/api/RequestCallback;
.source "SHDirectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/navigation/SHDirectionService;->prepareAlternativeRoutes(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

.field final synthetic val$routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 0

    .line 1123
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$6;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iput-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService$6;->val$routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-direct {p0}, Lbike/smarthalo/app/api/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    .line 1134
    invoke-super {p0, p1}, Lbike/smarthalo/app/api/RequestCallback;->onFailure(Ljava/lang/String;)V

    .line 1135
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure: Mapzen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$6;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$2100(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1126
    invoke-super {p0, p1}, Lbike/smarthalo/app/api/RequestCallback;->onSuccess(Ljava/lang/String;)V

    .line 1127
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService;->TAG:Ljava/lang/String;

    const-string v1, "onSuccess: alternative Mapzen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$6;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v0, v0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->previewPolyline(Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$6;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v1, v0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getPolyline()Lbike/smarthalo/navigation/models/SHPolyline;

    move-result-object v1

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService$6;->val$routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-static {v0, v1, p1, v2}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1200(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/SHPolyline;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    return-void
.end method

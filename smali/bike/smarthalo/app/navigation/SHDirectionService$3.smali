.class Lbike/smarthalo/app/navigation/SHDirectionService$3;
.super Lbike/smarthalo/app/api/RequestCallback;
.source "SHDirectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/navigation/SHDirectionService;->prepareDirectTurnByTurnNavigation(Landroid/location/Location;Lbike/smarthalo/navigation/models/NavigationMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

.field final synthetic val$location:Landroid/location/Location;

.field final synthetic val$mode:Lbike/smarthalo/navigation/models/NavigationMode;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/NavigationMode;Landroid/location/Location;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iput-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->val$mode:Lbike/smarthalo/navigation/models/NavigationMode;

    iput-object p3, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Lbike/smarthalo/app/api/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .line 894
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1600(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    .line 895
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1800(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    .line 896
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1900(Lbike/smarthalo/app/navigation/SHDirectionService;J)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5

    .line 880
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$800(Lbike/smarthalo/app/navigation/SHDirectionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 881
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1600(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    .line 882
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1100(Lbike/smarthalo/app/navigation/SHDirectionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v0, v0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->previewPolyline(Ljava/lang/String;)V

    .line 884
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object p1, p1, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getPolyline()Lbike/smarthalo/navigation/models/SHPolyline;

    move-result-object p1

    .line 885
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$900(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->getValue()I

    move-result v0

    iput v0, p1, Lbike/smarthalo/navigation/models/SHPolyline;->routeType:I

    .line 886
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$800(Lbike/smarthalo/app/navigation/SHDirectionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lbike/smarthalo/app/helpers/SHPolylineHelper;->populatePolylineLatLngs(Lbike/smarthalo/navigation/models/SHPolyline;Ljava/util/List;)V

    .line 887
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$800(Lbike/smarthalo/app/navigation/SHDirectionService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->val$mode:Lbike/smarthalo/navigation/models/NavigationMode;

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v2}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$900(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object v2

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->val$location:Landroid/location/Location;

    iget-object v4, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v4}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$600(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->initializeOnDirectNavigation(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    invoke-static {p1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$402(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/models/PresentationNavigationState;)Lbike/smarthalo/app/models/PresentationNavigationState;

    .line 888
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$400(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    invoke-static {p1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1700(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/models/PresentationNavigationState;)V

    .line 889
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$3;->val$location:Landroid/location/Location;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$500(Lbike/smarthalo/app/navigation/SHDirectionService;Landroid/location/Location;Z)V

    return-void
.end method

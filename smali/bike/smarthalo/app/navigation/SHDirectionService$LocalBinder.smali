.class public Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;
.super Landroid/os/Binder;
.source "SHDirectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/navigation/SHDirectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field directionService:Lbike/smarthalo/app/navigation/SHDirectionService;

.field final synthetic this$0:Lbike/smarthalo/app/navigation/SHDirectionService;


# direct methods
.method private constructor <init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 147
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService;

    return-void
.end method

.method synthetic constructor <init>(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/navigation/SHDirectionService$1;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    return-void
.end method


# virtual methods
.method public chooseOfflineMode(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 198
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object p1, p1, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v0, v0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getClosestStepIndexToUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setCurrentStep(I)V

    .line 199
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$800(Lbike/smarthalo/app/navigation/SHDirectionService;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v2}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$900(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object v2

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v3, v3, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v3}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentStepIndex()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1000(Lbike/smarthalo/app/navigation/SHDirectionService;Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;I)V

    :cond_0
    return-void
.end method

.method public enterGPSAsTheCrowFlies()V
    .locals 2

    .line 159
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-static {v0, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$200(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/NavigationMode;)V

    return-void
.end method

.method public enterTurnByTurn()V
    .locals 2

    .line 163
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-static {v0, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$200(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/NavigationMode;)V

    return-void
.end method

.method public getCentralService()Lbike/smarthalo/app/navigation/SHDirectionService;
    .locals 1

    .line 151
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    return-object v0
.end method

.method public getDisplayStatus()Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;
    .locals 1

    .line 175
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v0, v0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isNavigating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v0, v0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    .line 176
    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getDisplayStatus()Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPresentationSource()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/PresentationNavigationState;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$300(Lbike/smarthalo/app/navigation/SHDirectionService;)Lio/reactivex/processors/FlowableProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/processors/FlowableProcessor;->onBackpressureLatest()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 1

    .line 171
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$400(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    return-object v0
.end method

.method public setDestinationType(I)V
    .locals 1

    .line 185
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$600(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    .line 186
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$400(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    return-void
.end method

.method public setRouteType(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$100(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    return-void
.end method

.method public startNavigation(Landroid/location/Location;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$500(Lbike/smarthalo/app/navigation/SHDirectionService;Landroid/location/Location;Z)V

    return-void
.end method

.method public stopNavigation()V
    .locals 2

    .line 190
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v0, v0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isNavigating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v0, v0, Lbike/smarthalo/app/navigation/SHDirectionService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "NavigationTrip_Cancelled"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$700(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    return-void
.end method

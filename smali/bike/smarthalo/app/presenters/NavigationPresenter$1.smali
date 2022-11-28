.class Lbike/smarthalo/app/presenters/NavigationPresenter$1;
.super Ljava/lang/Object;
.source "NavigationPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/NavigationPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;Lbike/smarthalo/app/coordinators/FavouritesController;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/NavigationPresenter;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    check-cast p2, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/NavigationPresenter;->access$002(Lbike/smarthalo/app/presenters/NavigationPresenter;Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    .line 106
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->access$000(Lbike/smarthalo/app/presenters/NavigationPresenter;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    move-result-object p1

    invoke-virtual {p1}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object p1

    .line 107
    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    sget-object p2, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->None:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    if-eq p1, p2, :cond_0

    .line 108
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->access$000(Lbike/smarthalo/app/presenters/NavigationPresenter;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->access$100(Lbike/smarthalo/app/presenters/NavigationPresenter;Lbike/smarthalo/app/models/PresentationNavigationState;Z)V

    .line 110
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->access$000(Lbike/smarthalo/app/presenters/NavigationPresenter;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->getPresentationSource()Lio/reactivex/Flowable;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/NavigationPresenter;->access$200(Lbike/smarthalo/app/presenters/NavigationPresenter;Lio/reactivex/Flowable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->access$002(Lbike/smarthalo/app/presenters/NavigationPresenter;Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    .line 116
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    invoke-virtual {p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->stopNavigation()V

    return-void
.end method

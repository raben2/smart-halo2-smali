.class Lbike/smarthalo/app/presenters/NavigationPresenter$2;
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

    .line 120
    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$2;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 123
    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 124
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$2;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    invoke-virtual {p2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveHasBikeLocation()Lio/reactivex/Flowable;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/NavigationPresenter;->access$300(Lbike/smarthalo/app/presenters/NavigationPresenter;Lio/reactivex/Flowable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

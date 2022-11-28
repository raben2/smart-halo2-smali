.class Lbike/smarthalo/app/presenters/NavigationPresenter$3;
.super Landroid/content/BroadcastReceiver;
.source "NavigationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/NavigationPresenter;
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

    .line 209
    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$3;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$3;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    iget-object p1, p1, Lbike/smarthalo/app/presenters/NavigationPresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 215
    iget-object p2, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$3;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p2, p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->access$402(Lbike/smarthalo/app/presenters/NavigationPresenter;Z)Z

    .line 216
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$3;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->access$600(Lbike/smarthalo/app/presenters/NavigationPresenter;)Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    move-result-object p1

    iget-object p2, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$3;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    invoke-static {p2}, Lbike/smarthalo/app/presenters/NavigationPresenter;->access$500(Lbike/smarthalo/app/presenters/NavigationPresenter;)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object p2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter$3;->this$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    invoke-static {v0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->access$400(Lbike/smarthalo/app/presenters/NavigationPresenter;)Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onUnitsChanged(Lbike/smarthalo/app/models/PresentationNavigationState;Z)V

    :cond_1
    return-void
.end method

.class Lbike/smarthalo/app/presenters/TouchInputsListPresenter$1;
.super Ljava/lang/Object;
.source "TouchInputsListPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/TouchInputsListPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/TouchInputsListPresenter;

.field final synthetic val$view:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/TouchInputsListPresenter;Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter$1;->this$0:Lbike/smarthalo/app/presenters/TouchInputsListPresenter;

    iput-object p2, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter$1;->val$view:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter$1;->this$0:Lbike/smarthalo/app/presenters/TouchInputsListPresenter;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->access$002(Lbike/smarthalo/app/presenters/TouchInputsListPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 59
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter$1;->this$0:Lbike/smarthalo/app/presenters/TouchInputsListPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->access$000(Lbike/smarthalo/app/presenters/TouchInputsListPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p1

    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->areTouchInputsSupported()Ljava/lang/Boolean;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter$1;->val$view:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2, p1}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;->onFirmwareInfoReceived(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter$1;->this$0:Lbike/smarthalo/app/presenters/TouchInputsListPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->access$002(Lbike/smarthalo/app/presenters/TouchInputsListPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-void
.end method

.class Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$1;
.super Ljava/lang/Object;
.source "NotificationDrawerPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->setUpCentralServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->access$002(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 90
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->access$100(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    move-result-object p1

    invoke-interface {p1}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->getAndObserveHasDevice()Lio/reactivex/Flowable;

    move-result-object p1

    .line 91
    iget-object p2, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    .line 92
    invoke-static {p2}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->access$000(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveIsDeviceConnected()Lio/reactivex/Flowable;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 93
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 91
    :goto_0
    invoke-static {p2, v0, p1}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->access$200(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Lio/reactivex/Flowable;Lio/reactivex/Flowable;)V

    .line 95
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->access$000(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveDeviceState()Lio/reactivex/Flowable;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->access$300(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Lio/reactivex/Flowable;)V

    .line 96
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->access$000(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveIsDeviceLowBattery()Lio/reactivex/Flowable;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->access$400(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Lio/reactivex/Flowable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->access$002(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 102
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$1;->this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->access$500(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)V

    return-void
.end method

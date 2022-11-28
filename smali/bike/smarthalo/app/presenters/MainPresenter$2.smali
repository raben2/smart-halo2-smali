.class Lbike/smarthalo/app/presenters/MainPresenter$2;
.super Ljava/lang/Object;
.source "MainPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/MainPresenter;->setUpCentralServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/MainPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/MainPresenter;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lbike/smarthalo/app/presenters/MainPresenter$2;->this$0:Lbike/smarthalo/app/presenters/MainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 188
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MainPresenter$2;->this$0:Lbike/smarthalo/app/presenters/MainPresenter;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/MainPresenter;->access$202(Lbike/smarthalo/app/presenters/MainPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 190
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MainPresenter$2;->this$0:Lbike/smarthalo/app/presenters/MainPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/MainPresenter;->access$200(Lbike/smarthalo/app/presenters/MainPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveDfuState()Lio/reactivex/Flowable;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/MainPresenter;->access$300(Lbike/smarthalo/app/presenters/MainPresenter;Lio/reactivex/Flowable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 195
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MainPresenter$2;->this$0:Lbike/smarthalo/app/presenters/MainPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/MainPresenter;->access$202(Lbike/smarthalo/app/presenters/MainPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 196
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MainPresenter$2;->this$0:Lbike/smarthalo/app/presenters/MainPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/MainPresenter;->access$400(Lbike/smarthalo/app/presenters/MainPresenter;)V

    return-void
.end method

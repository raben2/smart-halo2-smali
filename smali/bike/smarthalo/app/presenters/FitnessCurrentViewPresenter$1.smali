.class Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter$1;
.super Ljava/lang/Object;
.source "FitnessCurrentViewPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->setUpCentralServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->access$002(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 93
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->access$000(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->observeTrackingState()Lio/reactivex/Flowable;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->access$100(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lio/reactivex/Flowable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->access$002(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 99
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->access$200(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V

    .line 100
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->access$300(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V

    return-void
.end method

.class Lbike/smarthalo/app/presenters/FitnessMainViewPresenter$1;
.super Ljava/lang/Object;
.source "FitnessMainViewPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->setUpCentralServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->access$002(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 129
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->access$000(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->observeTrackingState()Lio/reactivex/Flowable;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->access$100(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;Lio/reactivex/Flowable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 134
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->access$002(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 135
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->access$200(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)V

    return-void
.end method

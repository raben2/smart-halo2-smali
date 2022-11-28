.class Lbike/smarthalo/app/presenters/ScanResultsPresenter$1;
.super Ljava/lang/Object;
.source "ScanResultsPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/ScanResultsPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/ScanResultsPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/ScanResultsPresenter;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter$1;->this$0:Lbike/smarthalo/app/presenters/ScanResultsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter$1;->this$0:Lbike/smarthalo/app/presenters/ScanResultsPresenter;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->access$002(Lbike/smarthalo/app/presenters/ScanResultsPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 51
    iget-object p1, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter$1;->this$0:Lbike/smarthalo/app/presenters/ScanResultsPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->access$000(Lbike/smarthalo/app/presenters/ScanResultsPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveDFUAvailability()Lio/reactivex/Flowable;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->access$100(Lbike/smarthalo/app/presenters/ScanResultsPresenter;Lio/reactivex/Flowable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter$1;->this$0:Lbike/smarthalo/app/presenters/ScanResultsPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->access$002(Lbike/smarthalo/app/presenters/ScanResultsPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-void
.end method

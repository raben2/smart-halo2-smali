.class Lbike/smarthalo/app/presenters/DFUPresenter$1;
.super Ljava/lang/Object;
.source "DFUPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/DFUPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/DFUPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/DFUPresenter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lbike/smarthalo/app/presenters/DFUPresenter$1;->this$0:Lbike/smarthalo/app/presenters/DFUPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DFUPresenter$1;->this$0:Lbike/smarthalo/app/presenters/DFUPresenter;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/DFUPresenter;->access$002(Lbike/smarthalo/app/presenters/DFUPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 57
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DFUPresenter$1;->this$0:Lbike/smarthalo/app/presenters/DFUPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/DFUPresenter;->access$100(Lbike/smarthalo/app/presenters/DFUPresenter;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DFUPresenter$1;->this$0:Lbike/smarthalo/app/presenters/DFUPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/DFUPresenter;->access$002(Lbike/smarthalo/app/presenters/DFUPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-void
.end method

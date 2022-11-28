.class Lbike/smarthalo/app/presenters/LightViewPresenter$1;
.super Ljava/lang/Object;
.source "LightViewPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/LightViewPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/LightViewPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/LightViewPresenter;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lbike/smarthalo/app/presenters/LightViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/LightViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lbike/smarthalo/app/presenters/LightViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/LightViewPresenter;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/LightViewPresenter;->access$002(Lbike/smarthalo/app/presenters/LightViewPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lbike/smarthalo/app/presenters/LightViewPresenter$1;->this$0:Lbike/smarthalo/app/presenters/LightViewPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/LightViewPresenter;->access$002(Lbike/smarthalo/app/presenters/LightViewPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-void
.end method

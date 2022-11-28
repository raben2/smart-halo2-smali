.class Lbike/smarthalo/app/presenters/ForgetDevicePresenter$1;
.super Ljava/lang/Object;
.source "ForgetDevicePresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/ForgetDevicePresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$1;->this$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$1;->this$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->access$002(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 41
    iget-object p1, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$1;->this$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->access$100(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$1;->this$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->access$002(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 47
    iget-object p1, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$1;->this$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->access$200(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;)V

    return-void
.end method

.class Lbike/smarthalo/app/presenters/TapcodePresenter$1;
.super Ljava/lang/Object;
.source "TapcodePresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/TapcodePresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/TapcodePresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/TapcodePresenter;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lbike/smarthalo/app/presenters/TapcodePresenter$1;->this$0:Lbike/smarthalo/app/presenters/TapcodePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TapcodePresenter$1;->this$0:Lbike/smarthalo/app/presenters/TapcodePresenter;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/TapcodePresenter;->access$002(Lbike/smarthalo/app/presenters/TapcodePresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 43
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TapcodePresenter$1;->this$0:Lbike/smarthalo/app/presenters/TapcodePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/TapcodePresenter;->access$100(Lbike/smarthalo/app/presenters/TapcodePresenter;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 48
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TapcodePresenter$1;->this$0:Lbike/smarthalo/app/presenters/TapcodePresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/TapcodePresenter;->access$002(Lbike/smarthalo/app/presenters/TapcodePresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 49
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TapcodePresenter$1;->this$0:Lbike/smarthalo/app/presenters/TapcodePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/TapcodePresenter;->access$200(Lbike/smarthalo/app/presenters/TapcodePresenter;)V

    return-void
.end method

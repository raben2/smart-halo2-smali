.class Lbike/smarthalo/app/presenters/LeftDrawerPresenter$1;
.super Ljava/lang/Object;
.source "LeftDrawerPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->setUpCentralServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/LeftDrawerPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/LeftDrawerPresenter;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter$1;->this$0:Lbike/smarthalo/app/presenters/LeftDrawerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter$1;->this$0:Lbike/smarthalo/app/presenters/LeftDrawerPresenter;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->access$002(Lbike/smarthalo/app/presenters/LeftDrawerPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter$1;->this$0:Lbike/smarthalo/app/presenters/LeftDrawerPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->access$002(Lbike/smarthalo/app/presenters/LeftDrawerPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-void
.end method

.class Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$2;
.super Ljava/lang/Object;
.source "NotificationDrawerPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->setUpDirectionServiceConnection()V
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

    .line 108
    iput-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$2;->this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$2;->this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->access$600(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;

    move-result-object p1

    iget-object p2, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$2;->this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    invoke-virtual {p2}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->isConnected()Z

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;->onNavigationStateChanged(ZZ)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 116
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$2;->this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->access$600(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;

    move-result-object p1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$2;->this$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    invoke-virtual {v0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;->onNavigationStateChanged(ZZ)V

    return-void
.end method

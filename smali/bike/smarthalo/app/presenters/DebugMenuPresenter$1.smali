.class Lbike/smarthalo/app/presenters/DebugMenuPresenter$1;
.super Ljava/lang/Object;
.source "DebugMenuPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/DebugMenuPresenter;->initializeServiceConnections(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$1;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$1;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->access$002(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 164
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$1;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->access$002(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-void
.end method

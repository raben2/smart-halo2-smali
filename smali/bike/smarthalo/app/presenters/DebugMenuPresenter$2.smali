.class Lbike/smarthalo/app/presenters/DebugMenuPresenter$2;
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

    .line 169
    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$2;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$2;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    check-cast p2, Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->access$102(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    .line 173
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$2;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->access$100(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0x64

    invoke-virtual {p1, v0, p2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->setOledBrightness(ILbike/smarthalo/sdk/CmdCallback;)V

    .line 174
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$2;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->access$100(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_setBrightness(ILbike/smarthalo/sdk/CmdCallback;)V

    .line 175
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$2;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->access$100(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->setOledContrast(ILbike/smarthalo/sdk/CmdCallback;)V

    .line 176
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$2;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->access$200(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 181
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$2;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->access$102(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    .line 182
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$2;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->access$300(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 183
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$2;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->access$400(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 184
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$2;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->access$500(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    return-void
.end method

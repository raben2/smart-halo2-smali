.class Llayout/ConnectionStatusLayout$1;
.super Ljava/lang/Object;
.source "ConnectionStatusLayout.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/ConnectionStatusLayout;->setUpCentralServiceConnection(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/ConnectionStatusLayout;


# direct methods
.method constructor <init>(Llayout/ConnectionStatusLayout;)V
    .locals 0

    .line 82
    iput-object p1, p0, Llayout/ConnectionStatusLayout$1;->this$0:Llayout/ConnectionStatusLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 85
    iget-object p1, p0, Llayout/ConnectionStatusLayout$1;->this$0:Llayout/ConnectionStatusLayout;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Llayout/ConnectionStatusLayout;->access$002(Llayout/ConnectionStatusLayout;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    const-string p1, "ConnectionStatusLayout"

    const-string p2, "Bound to central service"

    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Llayout/ConnectionStatusLayout$1;->this$0:Llayout/ConnectionStatusLayout;

    invoke-static {p1}, Llayout/ConnectionStatusLayout;->access$000(Llayout/ConnectionStatusLayout;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveIsDeviceConnected()Lio/reactivex/Flowable;

    move-result-object p2

    invoke-static {p1, p2}, Llayout/ConnectionStatusLayout;->access$100(Llayout/ConnectionStatusLayout;Lio/reactivex/Flowable;)V

    .line 89
    iget-object p1, p0, Llayout/ConnectionStatusLayout$1;->this$0:Llayout/ConnectionStatusLayout;

    invoke-static {p1}, Llayout/ConnectionStatusLayout;->access$200(Llayout/ConnectionStatusLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Llayout/ConnectionStatusLayout$1;->this$0:Llayout/ConnectionStatusLayout;

    invoke-static {p1}, Llayout/ConnectionStatusLayout;->access$000(Llayout/ConnectionStatusLayout;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveHasNotification()Lio/reactivex/Flowable;

    move-result-object p2

    invoke-static {p1, p2}, Llayout/ConnectionStatusLayout;->access$300(Llayout/ConnectionStatusLayout;Lio/reactivex/Flowable;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 96
    iget-object p1, p0, Llayout/ConnectionStatusLayout$1;->this$0:Llayout/ConnectionStatusLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Llayout/ConnectionStatusLayout;->access$002(Llayout/ConnectionStatusLayout;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 97
    iget-object p1, p0, Llayout/ConnectionStatusLayout$1;->this$0:Llayout/ConnectionStatusLayout;

    invoke-static {p1}, Llayout/ConnectionStatusLayout;->access$400(Llayout/ConnectionStatusLayout;)V

    .line 98
    iget-object p1, p0, Llayout/ConnectionStatusLayout$1;->this$0:Llayout/ConnectionStatusLayout;

    invoke-static {p1}, Llayout/ConnectionStatusLayout;->access$500(Llayout/ConnectionStatusLayout;)V

    return-void
.end method

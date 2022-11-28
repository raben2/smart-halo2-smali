.class Llayout/AlarmViewFragment$2;
.super Ljava/lang/Object;
.source "AlarmViewFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/AlarmViewFragment;->setUpCentralServiceConnection(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/AlarmViewFragment;


# direct methods
.method constructor <init>(Llayout/AlarmViewFragment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Llayout/AlarmViewFragment$2;->this$0:Llayout/AlarmViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 132
    iget-object p1, p0, Llayout/AlarmViewFragment$2;->this$0:Llayout/AlarmViewFragment;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Llayout/AlarmViewFragment;->access$002(Llayout/AlarmViewFragment;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 133
    iget-object p1, p0, Llayout/AlarmViewFragment$2;->this$0:Llayout/AlarmViewFragment;

    invoke-static {p1}, Llayout/AlarmViewFragment;->access$000(Llayout/AlarmViewFragment;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p2

    invoke-static {p1, p2}, Llayout/AlarmViewFragment;->access$100(Llayout/AlarmViewFragment;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)V

    .line 134
    iget-object p1, p0, Llayout/AlarmViewFragment$2;->this$0:Llayout/AlarmViewFragment;

    invoke-static {p1}, Llayout/AlarmViewFragment;->access$000(Llayout/AlarmViewFragment;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p2

    invoke-static {p1, p2}, Llayout/AlarmViewFragment;->access$200(Llayout/AlarmViewFragment;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 139
    iget-object p1, p0, Llayout/AlarmViewFragment$2;->this$0:Llayout/AlarmViewFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Llayout/AlarmViewFragment;->access$002(Llayout/AlarmViewFragment;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 140
    iget-object p1, p0, Llayout/AlarmViewFragment$2;->this$0:Llayout/AlarmViewFragment;

    invoke-static {p1}, Llayout/AlarmViewFragment;->access$300(Llayout/AlarmViewFragment;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

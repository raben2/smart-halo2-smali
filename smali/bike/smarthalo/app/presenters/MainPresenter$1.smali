.class Lbike/smarthalo/app/presenters/MainPresenter$1;
.super Ljava/lang/Object;
.source "MainPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/MainPresenter;->setUpDirectionServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/MainPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/MainPresenter;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lbike/smarthalo/app/presenters/MainPresenter$1;->this$0:Lbike/smarthalo/app/presenters/MainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 172
    check-cast p2, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    .line 173
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MainPresenter$1;->this$0:Lbike/smarthalo/app/presenters/MainPresenter;

    invoke-virtual {p2}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->getPresentationSource()Lio/reactivex/Flowable;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/MainPresenter;->access$000(Lbike/smarthalo/app/presenters/MainPresenter;Lio/reactivex/Flowable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MainPresenter$1;->this$0:Lbike/smarthalo/app/presenters/MainPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/MainPresenter;->access$100(Lbike/smarthalo/app/presenters/MainPresenter;Z)V

    return-void
.end method

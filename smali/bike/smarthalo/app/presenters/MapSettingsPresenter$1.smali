.class Lbike/smarthalo/app/presenters/MapSettingsPresenter$1;
.super Ljava/lang/Object;
.source "MapSettingsPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/MapSettingsPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/MapSettingsPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/MapSettingsPresenter;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter$1;->this$0:Lbike/smarthalo/app/presenters/MapSettingsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter$1;->this$0:Lbike/smarthalo/app/presenters/MapSettingsPresenter;

    check-cast p2, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->access$002(Lbike/smarthalo/app/presenters/MapSettingsPresenter;Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    .line 54
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter$1;->this$0:Lbike/smarthalo/app/presenters/MapSettingsPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->access$000(Lbike/smarthalo/app/presenters/MapSettingsPresenter;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->access$100(Lbike/smarthalo/app/presenters/MapSettingsPresenter;Lbike/smarthalo/app/models/PresentationNavigationState;)V

    .line 55
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter$1;->this$0:Lbike/smarthalo/app/presenters/MapSettingsPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->access$000(Lbike/smarthalo/app/presenters/MapSettingsPresenter;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->getPresentationSource()Lio/reactivex/Flowable;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->access$200(Lbike/smarthalo/app/presenters/MapSettingsPresenter;Lio/reactivex/Flowable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter$1;->this$0:Lbike/smarthalo/app/presenters/MapSettingsPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->access$002(Lbike/smarthalo/app/presenters/MapSettingsPresenter;Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    .line 61
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter$1;->this$0:Lbike/smarthalo/app/presenters/MapSettingsPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->access$300(Lbike/smarthalo/app/presenters/MapSettingsPresenter;)V

    .line 62
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter$1;->this$0:Lbike/smarthalo/app/presenters/MapSettingsPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->access$400(Lbike/smarthalo/app/presenters/MapSettingsPresenter;)V

    return-void
.end method

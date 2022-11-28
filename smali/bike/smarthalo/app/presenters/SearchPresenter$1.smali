.class Lbike/smarthalo/app/presenters/SearchPresenter$1;
.super Ljava/lang/Object;
.source "SearchPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/SearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/SearchPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/SearchPresenter;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter$1;->this$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 137
    check-cast p2, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;

    .line 138
    invoke-virtual {p2}, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;->getCurrentLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p2, p0, Lbike/smarthalo/app/presenters/SearchPresenter$1;->this$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    invoke-static {p2, p1}, Lbike/smarthalo/app/presenters/SearchPresenter;->access$002(Lbike/smarthalo/app/presenters/SearchPresenter;Landroid/location/Location;)Landroid/location/Location;

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p2}, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;->observeCurrentLocation()Lio/reactivex/Flowable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 143
    iget-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter$1;->this$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    invoke-virtual {p2}, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;->observeCurrentLocation()Lio/reactivex/Flowable;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/SearchPresenter;->access$100(Lbike/smarthalo/app/presenters/SearchPresenter;Lio/reactivex/Flowable;)V

    .line 145
    :cond_1
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter$1;->this$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lbike/smarthalo/app/presenters/SearchPresenter;->access$202(Lbike/smarthalo/app/presenters/SearchPresenter;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter$1;->this$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/SearchPresenter;->access$202(Lbike/smarthalo/app/presenters/SearchPresenter;Z)Z

    return-void
.end method

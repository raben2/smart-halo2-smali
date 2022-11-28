.class public Lbike/smarthalo/app/services/SHLocationService$LocalBinder;
.super Landroid/os/Binder;
.source "SHLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/services/SHLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field locationService:Lbike/smarthalo/app/services/SHLocationService;

.field final synthetic this$0:Lbike/smarthalo/app/services/SHLocationService;


# direct methods
.method private constructor <init>(Lbike/smarthalo/app/services/SHLocationService;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;->this$0:Lbike/smarthalo/app/services/SHLocationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    iput-object p1, p0, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;->locationService:Lbike/smarthalo/app/services/SHLocationService;

    return-void
.end method

.method synthetic constructor <init>(Lbike/smarthalo/app/services/SHLocationService;Lbike/smarthalo/app/services/SHLocationService$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;-><init>(Lbike/smarthalo/app/services/SHLocationService;)V

    return-void
.end method


# virtual methods
.method public getCurrentHeading()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;->this$0:Lbike/smarthalo/app/services/SHLocationService;

    invoke-static {v0}, Lbike/smarthalo/app/services/SHLocationService;->access$100(Lbike/smarthalo/app/services/SHLocationService;)Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;->this$0:Lbike/smarthalo/app/services/SHLocationService;

    invoke-static {v0}, Lbike/smarthalo/app/services/SHLocationService;->access$100(Lbike/smarthalo/app/services/SHLocationService;)Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->getCurrentHeading()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .line 69
    iget-object v0, p0, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;->this$0:Lbike/smarthalo/app/services/SHLocationService;

    invoke-static {v0}, Lbike/smarthalo/app/services/SHLocationService;->access$100(Lbike/smarthalo/app/services/SHLocationService;)Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;->this$0:Lbike/smarthalo/app/services/SHLocationService;

    invoke-static {v0}, Lbike/smarthalo/app/services/SHLocationService;->access$100(Lbike/smarthalo/app/services/SHLocationService;)Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public observeCurrentLocation()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;->this$0:Lbike/smarthalo/app/services/SHLocationService;

    invoke-static {v0}, Lbike/smarthalo/app/services/SHLocationService;->access$100(Lbike/smarthalo/app/services/SHLocationService;)Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;->this$0:Lbike/smarthalo/app/services/SHLocationService;

    invoke-static {v0}, Lbike/smarthalo/app/services/SHLocationService;->access$100(Lbike/smarthalo/app/services/SHLocationService;)Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->observeLocationUpdates()Lio/reactivex/Flowable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

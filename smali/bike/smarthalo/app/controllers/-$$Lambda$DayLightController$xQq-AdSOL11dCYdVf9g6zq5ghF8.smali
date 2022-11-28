.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$xQq-AdSOL11dCYdVf9g6zq5ghF8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/DayLightController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/DayLightController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$xQq-AdSOL11dCYdVf9g6zq5ghF8;->f$0:Lbike/smarthalo/app/controllers/DayLightController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$xQq-AdSOL11dCYdVf9g6zq5ghF8;->f$0:Lbike/smarthalo/app/controllers/DayLightController;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/DayLightController;->lambda$getAndObserveFirstLocationUpdate$0(Lbike/smarthalo/app/controllers/DayLightController;Landroid/location/Location;)V

    return-void
.end method

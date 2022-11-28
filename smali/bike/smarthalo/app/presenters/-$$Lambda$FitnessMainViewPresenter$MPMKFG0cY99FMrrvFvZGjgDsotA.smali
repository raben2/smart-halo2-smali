.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$MPMKFG0cY99FMrrvFvZGjgDsotA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$MPMKFG0cY99FMrrvFvZGjgDsotA;->f$0:Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$MPMKFG0cY99FMrrvFvZGjgDsotA;->f$0:Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;

    check-cast p1, Lbike/smarthalo/app/models/Ping;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->lambda$observeNewPastRidesAndPendingRides$8(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;Lbike/smarthalo/app/models/Ping;)V

    return-void
.end method

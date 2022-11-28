.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$FitnessLifetimeViewPresenter$e9JROo_pRCK5jR_rSI6OITNwQh8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessLifetimeViewPresenter$e9JROo_pRCK5jR_rSI6OITNwQh8;->f$0:Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessLifetimeViewPresenter$e9JROo_pRCK5jR_rSI6OITNwQh8;->f$0:Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;

    check-cast p1, Lbike/smarthalo/app/models/LifetimeMetrics;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;->lambda$processLifetimeMetrics$0(Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;Lbike/smarthalo/app/models/LifetimeMetrics;)V

    return-void
.end method

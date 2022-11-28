.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$FitnessCurrentViewPresenter$3mXWxFPj8OvsSOmob_SB08HfI1I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessCurrentViewPresenter$3mXWxFPj8OvsSOmob_SB08HfI1I;->f$0:Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessCurrentViewPresenter$3mXWxFPj8OvsSOmob_SB08HfI1I;->f$0:Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->lambda$startTrackingStateSubscription$1(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Ljava/lang/Boolean;)V

    return-void
.end method

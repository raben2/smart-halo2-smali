.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$FitnessCurrentViewPresenter$WbVnYU7c60OVI4KPzOUXlsXQRPs;
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

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessCurrentViewPresenter$WbVnYU7c60OVI4KPzOUXlsXQRPs;->f$0:Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessCurrentViewPresenter$WbVnYU7c60OVI4KPzOUXlsXQRPs;->f$0:Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->lambda$startTrackingSubscription$2(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Ljava/lang/Long;)V

    return-void
.end method

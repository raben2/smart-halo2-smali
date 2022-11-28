.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$FitnessPastViewPresenter$BHzx35DryyQMzoT98OxEUJxrHyA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessPastViewPresenter$BHzx35DryyQMzoT98OxEUJxrHyA;->f$0:Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessPastViewPresenter$BHzx35DryyQMzoT98OxEUJxrHyA;->f$0:Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;->lambda$prepareRideDays$1(Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;Ljava/util/List;)V

    return-void
.end method

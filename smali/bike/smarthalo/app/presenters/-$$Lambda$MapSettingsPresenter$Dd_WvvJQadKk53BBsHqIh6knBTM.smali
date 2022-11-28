.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$Dd_WvvJQadKk53BBsHqIh6knBTM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/MapSettingsPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/MapSettingsPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$Dd_WvvJQadKk53BBsHqIh6knBTM;->f$0:Lbike/smarthalo/app/presenters/MapSettingsPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$Dd_WvvJQadKk53BBsHqIh6knBTM;->f$0:Lbike/smarthalo/app/presenters/MapSettingsPresenter;

    check-cast p1, Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->lambda$Dd_WvvJQadKk53BBsHqIh6knBTM(Lbike/smarthalo/app/presenters/MapSettingsPresenter;Lbike/smarthalo/app/models/PresentationNavigationState;)V

    return-void
.end method

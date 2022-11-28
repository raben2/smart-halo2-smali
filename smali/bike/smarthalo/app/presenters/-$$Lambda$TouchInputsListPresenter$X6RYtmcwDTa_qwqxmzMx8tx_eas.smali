.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$TouchInputsListPresenter$X6RYtmcwDTa_qwqxmzMx8tx_eas;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/TouchInputsListPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/TouchInputsListPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$TouchInputsListPresenter$X6RYtmcwDTa_qwqxmzMx8tx_eas;->f$0:Lbike/smarthalo/app/presenters/TouchInputsListPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$TouchInputsListPresenter$X6RYtmcwDTa_qwqxmzMx8tx_eas;->f$0:Lbike/smarthalo/app/presenters/TouchInputsListPresenter;

    check-cast p1, Lbike/smarthalo/app/models/SHSettings;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->lambda$setUpSettingsSubscription$0(Lbike/smarthalo/app/presenters/TouchInputsListPresenter;Lbike/smarthalo/app/models/SHSettings;)V

    return-void
.end method

.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$StravaSettingsPresenter$kV3jVXSolJf_K1dolBDCkq182h0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/StravaSettingsPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$StravaSettingsPresenter$kV3jVXSolJf_K1dolBDCkq182h0;->f$0:Lbike/smarthalo/app/presenters/StravaSettingsPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$StravaSettingsPresenter$kV3jVXSolJf_K1dolBDCkq182h0;->f$0:Lbike/smarthalo/app/presenters/StravaSettingsPresenter;

    check-cast p1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->lambda$disconnectAccount$0(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;)V

    return-void
.end method

.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$E2F13mT1VmxtUX4r9ULG_dp3Uls;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$E2F13mT1VmxtUX4r9ULG_dp3Uls;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    return-void
.end method


# virtual methods
.method public final onResult(Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$E2F13mT1VmxtUX4r9ULG_dp3Uls;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lambda$stmDfuFromFile$3(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;)V

    return-void
.end method

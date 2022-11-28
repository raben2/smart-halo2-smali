.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$akWY1QFgmMaZzsu0tUYED5101_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$akWY1QFgmMaZzsu0tUYED5101_s;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iput p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$akWY1QFgmMaZzsu0tUYED5101_s;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$akWY1QFgmMaZzsu0tUYED5101_s;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iget v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$akWY1QFgmMaZzsu0tUYED5101_s;->f$1:I

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lambda$showFitnessProgress$14(Lbike/smarthalo/app/presenters/DebugMenuPresenter;ILbike/smarthalo/sdk/SHDeviceServiceBinder;)V

    return-void
.end method

.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$kO8Kmtmkpcjyl4U6Ooj9lEgk1a8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$kO8Kmtmkpcjyl4U6Ooj9lEgk1a8;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iput-boolean p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$kO8Kmtmkpcjyl4U6Ooj9lEgk1a8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$kO8Kmtmkpcjyl4U6Ooj9lEgk1a8;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$kO8Kmtmkpcjyl4U6Ooj9lEgk1a8;->f$1:Z

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lambda$showUturn$18(Lbike/smarthalo/app/presenters/DebugMenuPresenter;ZLbike/smarthalo/sdk/SHDeviceServiceBinder;)V

    return-void
.end method

.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$l2Rkp_PEY2Dx8Hh4NCl9Ae7byqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

.field private final synthetic f$1:Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$l2Rkp_PEY2Dx8Hh4NCl9Ae7byqE;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iput-object p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$l2Rkp_PEY2Dx8Hh4NCl9Ae7byqE;->f$1:Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$l2Rkp_PEY2Dx8Hh4NCl9Ae7byqE;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$l2Rkp_PEY2Dx8Hh4NCl9Ae7byqE;->f$1:Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lambda$launchLoopedAnimation$12(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;Ljava/lang/Long;)V

    return-void
.end method

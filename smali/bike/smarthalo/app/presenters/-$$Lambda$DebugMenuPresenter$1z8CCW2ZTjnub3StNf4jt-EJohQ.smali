.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$1z8CCW2ZTjnub3StNf4jt-EJohQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$1z8CCW2ZTjnub3StNf4jt-EJohQ;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iput-boolean p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$1z8CCW2ZTjnub3StNf4jt-EJohQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$1z8CCW2ZTjnub3StNf4jt-EJohQ;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$1z8CCW2ZTjnub3StNf4jt-EJohQ;->f$1:Z

    invoke-static {v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lambda$getCompleteAngleTurnObservable$25(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Z)V

    return-void
.end method

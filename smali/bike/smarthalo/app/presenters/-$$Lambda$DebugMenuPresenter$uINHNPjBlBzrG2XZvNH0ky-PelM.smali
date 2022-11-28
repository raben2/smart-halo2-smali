.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$uINHNPjBlBzrG2XZvNH0ky-PelM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$uINHNPjBlBzrG2XZvNH0ky-PelM;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iput p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$uINHNPjBlBzrG2XZvNH0ky-PelM;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$uINHNPjBlBzrG2XZvNH0ky-PelM;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iget v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$uINHNPjBlBzrG2XZvNH0ky-PelM;->f$1:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lambda$getClockSequence$107(Lbike/smarthalo/app/presenters/DebugMenuPresenter;ILjava/lang/Long;)V

    return-void
.end method

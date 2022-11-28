.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vr7wrckCP5Qz-tC4U_yYE5K366o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vr7wrckCP5Qz-tC4U_yYE5K366o;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iput p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vr7wrckCP5Qz-tC4U_yYE5K366o;->f$1:I

    iput p3, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vr7wrckCP5Qz-tC4U_yYE5K366o;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vr7wrckCP5Qz-tC4U_yYE5K366o;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iget v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vr7wrckCP5Qz-tC4U_yYE5K366o;->f$1:I

    iget v2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vr7wrckCP5Qz-tC4U_yYE5K366o;->f$2:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lambda$getAngleTurnObservable$23(Lbike/smarthalo/app/presenters/DebugMenuPresenter;IILjava/lang/Long;)V

    return-void
.end method

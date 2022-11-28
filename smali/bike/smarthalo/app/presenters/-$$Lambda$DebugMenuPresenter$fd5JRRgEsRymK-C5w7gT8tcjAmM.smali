.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$fd5JRRgEsRymK-C5w7gT8tcjAmM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$fd5JRRgEsRymK-C5w7gT8tcjAmM;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iput-boolean p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$fd5JRRgEsRymK-C5w7gT8tcjAmM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$fd5JRRgEsRymK-C5w7gT8tcjAmM;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$fd5JRRgEsRymK-C5w7gT8tcjAmM;->f$1:Z

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lambda$getCallObservable$30(Lbike/smarthalo/app/presenters/DebugMenuPresenter;ZLjava/lang/Long;)V

    return-void
.end method

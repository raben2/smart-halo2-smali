.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DFUPresenter$-bPchEPIS5wVPj9gl4IxDAhUiNI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DFUPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DFUPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DFUPresenter$-bPchEPIS5wVPj9gl4IxDAhUiNI;->f$0:Lbike/smarthalo/app/presenters/DFUPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DFUPresenter$-bPchEPIS5wVPj9gl4IxDAhUiNI;->f$0:Lbike/smarthalo/app/presenters/DFUPresenter;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/DFUPresenter;->lambda$subscribeToDfuStateUpdates$0(Lbike/smarthalo/app/presenters/DFUPresenter;Ljava/lang/Throwable;)V

    return-void
.end method

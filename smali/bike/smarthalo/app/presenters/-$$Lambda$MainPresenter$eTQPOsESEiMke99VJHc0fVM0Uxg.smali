.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$eTQPOsESEiMke99VJHc0fVM0Uxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/MainPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/MainPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$eTQPOsESEiMke99VJHc0fVM0Uxg;->f$0:Lbike/smarthalo/app/presenters/MainPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$eTQPOsESEiMke99VJHc0fVM0Uxg;->f$0:Lbike/smarthalo/app/presenters/MainPresenter;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/MainPresenter;->lambda$eTQPOsESEiMke99VJHc0fVM0Uxg(Lbike/smarthalo/app/presenters/MainPresenter;Z)V

    return-void
.end method

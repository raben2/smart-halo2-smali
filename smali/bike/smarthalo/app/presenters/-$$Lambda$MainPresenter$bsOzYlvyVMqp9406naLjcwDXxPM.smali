.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$bsOzYlvyVMqp9406naLjcwDXxPM;
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

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$bsOzYlvyVMqp9406naLjcwDXxPM;->f$0:Lbike/smarthalo/app/presenters/MainPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$bsOzYlvyVMqp9406naLjcwDXxPM;->f$0:Lbike/smarthalo/app/presenters/MainPresenter;

    check-cast p1, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/MainPresenter;->lambda$subscribeToDFUState$0(Lbike/smarthalo/app/presenters/MainPresenter;Lbike/smarthalo/app/models/dfu/DfuState;)V

    return-void
.end method

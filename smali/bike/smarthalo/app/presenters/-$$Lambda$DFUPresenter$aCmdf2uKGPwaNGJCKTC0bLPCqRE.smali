.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DFUPresenter$aCmdf2uKGPwaNGJCKTC0bLPCqRE;
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

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DFUPresenter$aCmdf2uKGPwaNGJCKTC0bLPCqRE;->f$0:Lbike/smarthalo/app/presenters/DFUPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DFUPresenter$aCmdf2uKGPwaNGJCKTC0bLPCqRE;->f$0:Lbike/smarthalo/app/presenters/DFUPresenter;

    check-cast p1, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/DFUPresenter;->lambda$aCmdf2uKGPwaNGJCKTC0bLPCqRE(Lbike/smarthalo/app/presenters/DFUPresenter;Lbike/smarthalo/app/models/dfu/DfuState;)V

    return-void
.end method

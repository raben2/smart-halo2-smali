.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$TapcodePresenter$nbe5guBVJ2_L_X_qW5kZKqQ4POU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/TapcodePresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/TapcodePresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$TapcodePresenter$nbe5guBVJ2_L_X_qW5kZKqQ4POU;->f$0:Lbike/smarthalo/app/presenters/TapcodePresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$TapcodePresenter$nbe5guBVJ2_L_X_qW5kZKqQ4POU;->f$0:Lbike/smarthalo/app/presenters/TapcodePresenter;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/TapcodePresenter;->lambda$subscribeToConnectionUpdates$0(Lbike/smarthalo/app/presenters/TapcodePresenter;Ljava/lang/Boolean;)V

    return-void
.end method

.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$ViQXX0sOAjDUG8OJTHzBdhYX1-k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/StmDfuAppController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$ViQXX0sOAjDUG8OJTHzBdhYX1-k;->f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$ViQXX0sOAjDUG8OJTHzBdhYX1-k;->f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/StmDfuAppController;->lambda$startReconnectionTimeout$5(Lbike/smarthalo/app/controllers/StmDfuAppController;Ljava/lang/Long;)V

    return-void
.end method

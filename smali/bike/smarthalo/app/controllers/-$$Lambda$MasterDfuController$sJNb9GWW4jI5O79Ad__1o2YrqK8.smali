.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$sJNb9GWW4jI5O79Ad__1o2YrqK8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/MasterDfuController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/MasterDfuController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$sJNb9GWW4jI5O79Ad__1o2YrqK8;->f$0:Lbike/smarthalo/app/controllers/MasterDfuController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$sJNb9GWW4jI5O79Ad__1o2YrqK8;->f$0:Lbike/smarthalo/app/controllers/MasterDfuController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/MasterDfuController;->lambda$observeConnectionState$3(Lbike/smarthalo/app/controllers/MasterDfuController;Ljava/lang/Boolean;)V

    return-void
.end method

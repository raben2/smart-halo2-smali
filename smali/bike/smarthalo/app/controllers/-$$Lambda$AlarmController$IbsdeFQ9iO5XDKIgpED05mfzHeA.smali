.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$AlarmController$IbsdeFQ9iO5XDKIgpED05mfzHeA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/AlarmController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/AlarmController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$AlarmController$IbsdeFQ9iO5XDKIgpED05mfzHeA;->f$0:Lbike/smarthalo/app/controllers/AlarmController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$AlarmController$IbsdeFQ9iO5XDKIgpED05mfzHeA;->f$0:Lbike/smarthalo/app/controllers/AlarmController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/AlarmController;->lambda$observeConnectionState$0(Lbike/smarthalo/app/controllers/AlarmController;Ljava/lang/Boolean;)V

    return-void
.end method

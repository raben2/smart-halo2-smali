.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$JcqvcVCOUO3gqHueuGzNc8bTv18;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/TouchInputController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/TouchInputController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$JcqvcVCOUO3gqHueuGzNc8bTv18;->f$0:Lbike/smarthalo/app/controllers/TouchInputController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$JcqvcVCOUO3gqHueuGzNc8bTv18;->f$0:Lbike/smarthalo/app/controllers/TouchInputController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/TouchInputController;->lambda$observeConnectionState$0(Lbike/smarthalo/app/controllers/TouchInputController;Ljava/lang/Boolean;)V

    return-void
.end method

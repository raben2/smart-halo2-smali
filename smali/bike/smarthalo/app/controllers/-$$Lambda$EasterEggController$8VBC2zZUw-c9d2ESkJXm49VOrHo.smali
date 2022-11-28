.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$EasterEggController$8VBC2zZUw-c9d2ESkJXm49VOrHo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/EasterEggController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/EasterEggController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$EasterEggController$8VBC2zZUw-c9d2ESkJXm49VOrHo;->f$0:Lbike/smarthalo/app/controllers/EasterEggController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$EasterEggController$8VBC2zZUw-c9d2ESkJXm49VOrHo;->f$0:Lbike/smarthalo/app/controllers/EasterEggController;

    check-cast p1, Lbike/smarthalo/app/models/Ping;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/EasterEggController;->lambda$observeChristmasGreetingSequence$0(Lbike/smarthalo/app/controllers/EasterEggController;Lbike/smarthalo/app/models/Ping;)V

    return-void
.end method

.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$9m-X0oZwKvUMN27emP50qIAShbQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/AppNotificationController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/AppNotificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$9m-X0oZwKvUMN27emP50qIAShbQ;->f$0:Lbike/smarthalo/app/controllers/AppNotificationController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$9m-X0oZwKvUMN27emP50qIAShbQ;->f$0:Lbike/smarthalo/app/controllers/AppNotificationController;

    check-cast p1, Lbike/smarthalo/app/models/Ping;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/AppNotificationController;->lambda$observeBatteryNotificationSequence$2(Lbike/smarthalo/app/controllers/AppNotificationController;Lbike/smarthalo/app/models/Ping;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method

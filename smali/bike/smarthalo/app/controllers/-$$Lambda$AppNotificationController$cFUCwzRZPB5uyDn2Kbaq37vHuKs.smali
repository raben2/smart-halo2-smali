.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$cFUCwzRZPB5uyDn2Kbaq37vHuKs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/AppNotificationController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/AppNotificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$cFUCwzRZPB5uyDn2Kbaq37vHuKs;->f$0:Lbike/smarthalo/app/controllers/AppNotificationController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$cFUCwzRZPB5uyDn2Kbaq37vHuKs;->f$0:Lbike/smarthalo/app/controllers/AppNotificationController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/AppNotificationController;->lambda$observeDisconnection$3(Lbike/smarthalo/app/controllers/AppNotificationController;Ljava/lang/Boolean;)V

    return-void
.end method

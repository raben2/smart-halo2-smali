.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$Xi8g7TWCLlpqqLi_HdYpA6UaFW4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function3;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/AppNotificationController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/AppNotificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$Xi8g7TWCLlpqqLi_HdYpA6UaFW4;->f$0:Lbike/smarthalo/app/controllers/AppNotificationController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$Xi8g7TWCLlpqqLi_HdYpA6UaFW4;->f$0:Lbike/smarthalo/app/controllers/AppNotificationController;

    check-cast p1, Lbike/smarthalo/app/models/dfu/DfuAvailability;

    check-cast p2, Lbike/smarthalo/app/models/DeviceState;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lbike/smarthalo/app/controllers/AppNotificationController;->lambda$getAndObserveHasNotification$0(Lbike/smarthalo/app/controllers/AppNotificationController;Lbike/smarthalo/app/models/dfu/DfuAvailability;Lbike/smarthalo/app/models/DeviceState;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

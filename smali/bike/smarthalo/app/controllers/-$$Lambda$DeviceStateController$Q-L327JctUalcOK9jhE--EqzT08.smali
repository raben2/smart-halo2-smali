.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$Q-L327JctUalcOK9jhE--EqzT08;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/DeviceStateController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/DeviceStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$Q-L327JctUalcOK9jhE--EqzT08;->f$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$Q-L327JctUalcOK9jhE--EqzT08;->f$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    check-cast p1, Lbike/smarthalo/sdk/models/SHDeviceState;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/DeviceStateController;->lambda$observeDeviceStateEvent$1(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/sdk/models/SHDeviceState;)V

    return-void
.end method

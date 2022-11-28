.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$Xikx0TE_7CBAd2HZBDHJOEx22fw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/DeviceStateController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/DeviceStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$Xikx0TE_7CBAd2HZBDHJOEx22fw;->f$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    return-void
.end method


# virtual methods
.method public final onDeviceStateReady(Lbike/smarthalo/sdk/models/SHDeviceState;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$Xikx0TE_7CBAd2HZBDHJOEx22fw;->f$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/DeviceStateController;->lambda$updateDeviceState$4(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/sdk/models/SHDeviceState;)V

    return-void
.end method

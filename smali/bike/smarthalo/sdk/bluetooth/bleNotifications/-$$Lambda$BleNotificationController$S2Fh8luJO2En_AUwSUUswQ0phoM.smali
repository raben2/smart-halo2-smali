.class public final synthetic Lbike/smarthalo/sdk/bluetooth/bleNotifications/-$$Lambda$BleNotificationController$S2Fh8luJO2En_AUwSUUswQ0phoM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/bleNotifications/-$$Lambda$BleNotificationController$S2Fh8luJO2En_AUwSUUswQ0phoM;->f$0:Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationController;

    return-void
.end method


# virtual methods
.method public final onDeviceStateReady(Lbike/smarthalo/sdk/models/SHDeviceState;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/bleNotifications/-$$Lambda$BleNotificationController$S2Fh8luJO2En_AUwSUUswQ0phoM;->f$0:Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationController;

    invoke-static {v0, p1}, Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationController;->lambda$onNewBleNotification$0(Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationController;Lbike/smarthalo/sdk/models/SHDeviceState;)V

    return-void
.end method

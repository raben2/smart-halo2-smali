.class public Lbike/smarthalo/sdk/bluetooth/bleNotifications/LightNotification;
.super Ljava/lang/Object;
.source "LightNotification.java"


# instance fields
.field public isLightOn:Z

.field public isLightSettingOn:Z

.field public isToggleFromTouch:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(ZLjava/lang/Boolean;Z)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lbike/smarthalo/sdk/bluetooth/bleNotifications/LightNotification;->isLightOn:Z

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lbike/smarthalo/sdk/bluetooth/bleNotifications/LightNotification;->isToggleFromTouch:Ljava/lang/Boolean;

    .line 10
    iput-boolean v0, p0, Lbike/smarthalo/sdk/bluetooth/bleNotifications/LightNotification;->isLightSettingOn:Z

    .line 13
    iput-boolean p1, p0, Lbike/smarthalo/sdk/bluetooth/bleNotifications/LightNotification;->isLightOn:Z

    .line 14
    iput-object p2, p0, Lbike/smarthalo/sdk/bluetooth/bleNotifications/LightNotification;->isToggleFromTouch:Ljava/lang/Boolean;

    .line 15
    iput-boolean p3, p0, Lbike/smarthalo/sdk/bluetooth/bleNotifications/LightNotification;->isLightSettingOn:Z

    return-void
.end method

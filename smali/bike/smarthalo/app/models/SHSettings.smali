.class public Lbike/smarthalo/app/models/SHSettings;
.super Lio/realm/RealmObject;
.source "SHSettings.java"

# interfaces
.implements Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;


# instance fields
.field public alarmCode:Ljava/lang/String;

.field public alarmTimer:I

.field public assistantVolume:I

.field public clockTouchCode:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public hornTouchCode:Ljava/lang/String;

.field public id:Ljava/lang/Integer;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation
.end field

.field public isAlarmAggressive:Z

.field public isAlarmArmed:Z

.field public isAlarmSet:Z

.field public isAssistingCalls:Z

.field public isAssistingGlobal:Z

.field public isAssistingGmail:Z

.field public isAssistingHangouts:Z

.field public isAssistingMessenger:Z

.field public isAssistingSMS:Z

.field public isAssistingSlack:Z

.field public isAssistingWechat:Z

.field public isAssistingWhatsapp:Z

.field public isAssistingWithSound:Z

.field public isAutoTracking:Z

.field public isLightBlinking:Z

.field public isLightNightMode:Z

.field public isNavigationCompassMode:Z

.field public isNavigationSoundOn:Z

.field public isToggledLightOn:Z

.field public isTouchSoundEnabled:Z

.field public lightBrightness:I

.field public lightModeCycleTouchCode:Ljava/lang/String;

.field public lightModeTouchCode:Ljava/lang/String;

.field public lightStateTouchCode:Ljava/lang/String;

.field public navHomeTouchCode:Ljava/lang/String;

.field public navModeTouchCode:Ljava/lang/String;

.field public navStopTouchCode:Ljava/lang/String;

.field public navWorkTouchCode:Ljava/lang/String;

.field public navigationVolume:I

.field public progressToDestinationTouchCode:Ljava/lang/String;

.field public touchSoundVolume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public realmGet$alarmCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHSettings;->alarmCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$alarmTimer()I
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHSettings;->alarmTimer:I

    return v0
.end method

.method public realmGet$assistantVolume()I
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHSettings;->assistantVolume:I

    return v0
.end method

.method public realmGet$clockTouchCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHSettings;->clockTouchCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$deviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHSettings;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$hornTouchCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHSettings;->hornTouchCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHSettings;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$isAlarmAggressive()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAlarmAggressive:Z

    return v0
.end method

.method public realmGet$isAlarmArmed()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAlarmArmed:Z

    return v0
.end method

.method public realmGet$isAlarmSet()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAlarmSet:Z

    return v0
.end method

.method public realmGet$isAssistingCalls()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingCalls:Z

    return v0
.end method

.method public realmGet$isAssistingGlobal()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingGlobal:Z

    return v0
.end method

.method public realmGet$isAssistingGmail()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingGmail:Z

    return v0
.end method

.method public realmGet$isAssistingHangouts()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingHangouts:Z

    return v0
.end method

.method public realmGet$isAssistingMessenger()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingMessenger:Z

    return v0
.end method

.method public realmGet$isAssistingSMS()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingSMS:Z

    return v0
.end method

.method public realmGet$isAssistingSlack()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingSlack:Z

    return v0
.end method

.method public realmGet$isAssistingWechat()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingWechat:Z

    return v0
.end method

.method public realmGet$isAssistingWhatsapp()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingWhatsapp:Z

    return v0
.end method

.method public realmGet$isAssistingWithSound()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingWithSound:Z

    return v0
.end method

.method public realmGet$isAutoTracking()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isAutoTracking:Z

    return v0
.end method

.method public realmGet$isLightBlinking()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isLightBlinking:Z

    return v0
.end method

.method public realmGet$isLightNightMode()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isLightNightMode:Z

    return v0
.end method

.method public realmGet$isNavigationCompassMode()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isNavigationCompassMode:Z

    return v0
.end method

.method public realmGet$isNavigationSoundOn()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isNavigationSoundOn:Z

    return v0
.end method

.method public realmGet$isToggledLightOn()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isToggledLightOn:Z

    return v0
.end method

.method public realmGet$isTouchSoundEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHSettings;->isTouchSoundEnabled:Z

    return v0
.end method

.method public realmGet$lightBrightness()I
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHSettings;->lightBrightness:I

    return v0
.end method

.method public realmGet$lightModeCycleTouchCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHSettings;->lightModeCycleTouchCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$lightModeTouchCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHSettings;->lightModeTouchCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$lightStateTouchCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHSettings;->lightStateTouchCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$navHomeTouchCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHSettings;->navHomeTouchCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$navModeTouchCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHSettings;->navModeTouchCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$navStopTouchCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHSettings;->navStopTouchCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$navWorkTouchCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHSettings;->navWorkTouchCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$navigationVolume()I
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHSettings;->navigationVolume:I

    return v0
.end method

.method public realmGet$progressToDestinationTouchCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHSettings;->progressToDestinationTouchCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$touchSoundVolume()I
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHSettings;->touchSoundVolume:I

    return v0
.end method

.method public realmSet$alarmCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHSettings;->alarmCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$alarmTimer(I)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHSettings;->alarmTimer:I

    return-void
.end method

.method public realmSet$assistantVolume(I)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHSettings;->assistantVolume:I

    return-void
.end method

.method public realmSet$clockTouchCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHSettings;->clockTouchCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$deviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHSettings;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$hornTouchCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHSettings;->hornTouchCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHSettings;->id:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$isAlarmAggressive(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAlarmAggressive:Z

    return-void
.end method

.method public realmSet$isAlarmArmed(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAlarmArmed:Z

    return-void
.end method

.method public realmSet$isAlarmSet(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAlarmSet:Z

    return-void
.end method

.method public realmSet$isAssistingCalls(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingCalls:Z

    return-void
.end method

.method public realmSet$isAssistingGlobal(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingGlobal:Z

    return-void
.end method

.method public realmSet$isAssistingGmail(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingGmail:Z

    return-void
.end method

.method public realmSet$isAssistingHangouts(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingHangouts:Z

    return-void
.end method

.method public realmSet$isAssistingMessenger(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingMessenger:Z

    return-void
.end method

.method public realmSet$isAssistingSMS(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingSMS:Z

    return-void
.end method

.method public realmSet$isAssistingSlack(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingSlack:Z

    return-void
.end method

.method public realmSet$isAssistingWechat(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingWechat:Z

    return-void
.end method

.method public realmSet$isAssistingWhatsapp(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingWhatsapp:Z

    return-void
.end method

.method public realmSet$isAssistingWithSound(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAssistingWithSound:Z

    return-void
.end method

.method public realmSet$isAutoTracking(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isAutoTracking:Z

    return-void
.end method

.method public realmSet$isLightBlinking(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isLightBlinking:Z

    return-void
.end method

.method public realmSet$isLightNightMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isLightNightMode:Z

    return-void
.end method

.method public realmSet$isNavigationCompassMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isNavigationCompassMode:Z

    return-void
.end method

.method public realmSet$isNavigationSoundOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isNavigationSoundOn:Z

    return-void
.end method

.method public realmSet$isToggledLightOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isToggledLightOn:Z

    return-void
.end method

.method public realmSet$isTouchSoundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHSettings;->isTouchSoundEnabled:Z

    return-void
.end method

.method public realmSet$lightBrightness(I)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHSettings;->lightBrightness:I

    return-void
.end method

.method public realmSet$lightModeCycleTouchCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHSettings;->lightModeCycleTouchCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$lightModeTouchCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHSettings;->lightModeTouchCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$lightStateTouchCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHSettings;->lightStateTouchCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$navHomeTouchCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHSettings;->navHomeTouchCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$navModeTouchCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHSettings;->navModeTouchCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$navStopTouchCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHSettings;->navStopTouchCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$navWorkTouchCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHSettings;->navWorkTouchCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$navigationVolume(I)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHSettings;->navigationVolume:I

    return-void
.end method

.method public realmSet$progressToDestinationTouchCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHSettings;->progressToDestinationTouchCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$touchSoundVolume(I)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHSettings;->touchSoundVolume:I

    return-void
.end method

.class public Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;
.super Lbike/smarthalo/app/models/SHSettings;
.source "bike_smarthalo_app_models_SHSettingsRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$ClassNameHelper;,
        Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lbike/smarthalo/app/models/SHSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 181
    invoke-static {}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 186
    invoke-direct {p0}, Lbike/smarthalo/app/models/SHSettings;-><init>()V

    .line 187
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;Lbike/smarthalo/app/models/SHSettings;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;",
            "Lbike/smarthalo/app/models/SHSettings;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHSettings;"
        }
    .end annotation

    .line 1837
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 1839
    check-cast p3, Lbike/smarthalo/app/models/SHSettings;

    return-object p3

    .line 1842
    :cond_0
    move-object p3, p2

    check-cast p3, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;

    .line 1844
    const-class v0, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1845
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->maxColumnIndexValue:J

    invoke-direct {v1, v0, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 1848
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->idIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1849
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1850
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isToggledLightOnIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isToggledLightOn()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1851
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightNightModeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightNightMode()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1852
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightBlinkingIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightBlinking()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1853
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightBrightnessIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightBrightness()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1854
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmArmedIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmArmed()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1855
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmAggressiveIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmAggressive()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1856
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmSetIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmSet()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1857
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmTimerIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmTimer()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1858
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1859
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationCompassModeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationCompassMode()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1860
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationSoundOnIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationSoundOn()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1861
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navigationVolumeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navigationVolume()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1862
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAutoTrackingIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAutoTracking()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1863
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isTouchSoundEnabledIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isTouchSoundEnabled()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1864
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->touchSoundVolumeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$touchSoundVolume()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1865
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightStateTouchCode()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1866
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeTouchCode()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1867
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeCycleTouchCode()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1868
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$hornTouchCode()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1869
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$clockTouchCode()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1870
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navHomeTouchCode()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1871
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navWorkTouchCode()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1872
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navStopTouchCode()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1873
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navModeTouchCode()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1874
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$progressToDestinationTouchCode()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1875
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGlobalIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGlobal()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1876
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingCallsIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingCalls()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1877
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWithSoundIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWithSound()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1878
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->assistantVolumeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$assistantVolume()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1879
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSMSIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSMS()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1880
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingMessengerIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingMessenger()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1881
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWhatsappIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWhatsapp()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1882
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGmailIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGmail()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1883
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingHangoutsIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingHangouts()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1884
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWechatIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWechat()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1885
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSlackIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSlack()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1889
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 1890
    invoke-static {p0, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;

    move-result-object p0

    .line 1891
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;Lbike/smarthalo/app/models/SHSettings;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHSettings;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;",
            "Lbike/smarthalo/app/models/SHSettings;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHSettings;"
        }
    .end annotation

    .line 1793
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1794
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 1795
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 1798
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 1796
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1802
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 1803
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_2

    .line 1805
    check-cast v1, Lbike/smarthalo/app/models/SHSettings;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_5

    .line 1811
    const-class v2, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 1812
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->idIndex:J

    .line 1813
    move-object v5, p2

    check-cast v5, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1816
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v3

    goto :goto_0

    .line 1818
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v3

    :goto_0
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    const/4 v0, 0x0

    move-object v3, v1

    goto :goto_1

    .line 1824
    :cond_4
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 1825
    new-instance v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;

    invoke-direct {v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;-><init>()V

    .line 1826
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1828
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    move v0, p3

    move-object v3, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 1829
    throw p0

    :cond_5
    move v0, p3

    move-object v3, v1

    :goto_1
    if-eqz v0, :cond_6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 1833
    invoke-static/range {v1 .. v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;Lbike/smarthalo/app/models/SHSettings;Lbike/smarthalo/app/models/SHSettings;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHSettings;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-static/range {p0 .. p5}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;Lbike/smarthalo/app/models/SHSettings;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHSettings;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;
    .locals 1

    .line 1183
    new-instance v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lbike/smarthalo/app/models/SHSettings;IILjava/util/Map;)Lbike/smarthalo/app/models/SHSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHSettings;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lbike/smarthalo/app/models/SHSettings;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 2346
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 2349
    new-instance p2, Lbike/smarthalo/app/models/SHSettings;

    invoke-direct {p2}, Lbike/smarthalo/app/models/SHSettings;-><init>()V

    .line 2350
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2353
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 2354
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lbike/smarthalo/app/models/SHSettings;

    return-object p0

    .line 2356
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lbike/smarthalo/app/models/SHSettings;

    .line 2357
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 2359
    :goto_0
    move-object p1, p2

    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;

    .line 2360
    check-cast p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;

    .line 2361
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$id(Ljava/lang/Integer;)V

    .line 2362
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$deviceId(Ljava/lang/String;)V

    .line 2363
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isToggledLightOn()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isToggledLightOn(Z)V

    .line 2364
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightNightMode()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isLightNightMode(Z)V

    .line 2365
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightBlinking()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isLightBlinking(Z)V

    .line 2366
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightBrightness()I

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightBrightness(I)V

    .line 2367
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmArmed()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAlarmArmed(Z)V

    .line 2368
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmAggressive()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAlarmAggressive(Z)V

    .line 2369
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmSet()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAlarmSet(Z)V

    .line 2370
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmTimer()I

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$alarmTimer(I)V

    .line 2371
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$alarmCode(Ljava/lang/String;)V

    .line 2372
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationCompassMode()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isNavigationCompassMode(Z)V

    .line 2373
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationSoundOn()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isNavigationSoundOn(Z)V

    .line 2374
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navigationVolume()I

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navigationVolume(I)V

    .line 2375
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAutoTracking()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAutoTracking(Z)V

    .line 2376
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isTouchSoundEnabled()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isTouchSoundEnabled(Z)V

    .line 2377
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$touchSoundVolume()I

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$touchSoundVolume(I)V

    .line 2378
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightStateTouchCode()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightStateTouchCode(Ljava/lang/String;)V

    .line 2379
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeTouchCode()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightModeTouchCode(Ljava/lang/String;)V

    .line 2380
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeCycleTouchCode()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightModeCycleTouchCode(Ljava/lang/String;)V

    .line 2381
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$hornTouchCode()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$hornTouchCode(Ljava/lang/String;)V

    .line 2382
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$clockTouchCode()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$clockTouchCode(Ljava/lang/String;)V

    .line 2383
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navHomeTouchCode()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navHomeTouchCode(Ljava/lang/String;)V

    .line 2384
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navWorkTouchCode()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navWorkTouchCode(Ljava/lang/String;)V

    .line 2385
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navStopTouchCode()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navStopTouchCode(Ljava/lang/String;)V

    .line 2386
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navModeTouchCode()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navModeTouchCode(Ljava/lang/String;)V

    .line 2387
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$progressToDestinationTouchCode()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$progressToDestinationTouchCode(Ljava/lang/String;)V

    .line 2388
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGlobal()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingGlobal(Z)V

    .line 2389
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingCalls()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingCalls(Z)V

    .line 2390
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWithSound()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingWithSound(Z)V

    .line 2391
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$assistantVolume()I

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$assistantVolume(I)V

    .line 2392
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSMS()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingSMS(Z)V

    .line 2393
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingMessenger()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingMessenger(Z)V

    .line 2394
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWhatsapp()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingWhatsapp(Z)V

    .line 2395
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGmail()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingGmail(Z)V

    .line 2396
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingHangouts()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingHangouts(Z)V

    .line 2397
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWechat()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingWechat(Z)V

    .line 2398
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSlack()Z

    move-result p0

    invoke-interface {p1, p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingSlack(Z)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 1136
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "SHSettings"

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    const-string v1, "id"

    .line 1137
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "deviceId"

    .line 1138
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isToggledLightOn"

    .line 1139
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isLightNightMode"

    .line 1140
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isLightBlinking"

    .line 1141
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "lightBrightness"

    .line 1142
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAlarmArmed"

    .line 1143
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAlarmAggressive"

    .line 1144
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAlarmSet"

    .line 1145
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "alarmTimer"

    .line 1146
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "alarmCode"

    .line 1147
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isNavigationCompassMode"

    .line 1148
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isNavigationSoundOn"

    .line 1149
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "navigationVolume"

    .line 1150
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAutoTracking"

    .line 1151
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isTouchSoundEnabled"

    .line 1152
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "touchSoundVolume"

    .line 1153
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "lightStateTouchCode"

    .line 1154
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "lightModeTouchCode"

    .line 1155
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "lightModeCycleTouchCode"

    .line 1156
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "hornTouchCode"

    .line 1157
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "clockTouchCode"

    .line 1158
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "navHomeTouchCode"

    .line 1159
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "navWorkTouchCode"

    .line 1160
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "navStopTouchCode"

    .line 1161
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "navModeTouchCode"

    .line 1162
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "progressToDestinationTouchCode"

    .line 1163
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAssistingGlobal"

    .line 1164
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAssistingCalls"

    .line 1165
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAssistingWithSound"

    .line 1166
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "assistantVolume"

    .line 1167
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAssistingSMS"

    .line 1168
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAssistingMessenger"

    .line 1169
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAssistingWhatsapp"

    .line 1170
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAssistingGmail"

    .line 1171
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAssistingHangouts"

    .line 1172
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAssistingWechat"

    .line 1173
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAssistingSlack"

    .line 1174
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1175
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHSettings;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1200
    const-class p2, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p0, p2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    .line 1201
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    check-cast v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    .line 1202
    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->idIndex:J

    const-string v4, "id"

    .line 1204
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1205
    invoke-virtual {p2, v2, v3}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-string v4, "id"

    .line 1207
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v2, v3, v4, v5}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 1210
    sget-object v4, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v4}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/BaseRealm$RealmObjectContext;

    .line 1212
    :try_start_0
    invoke-virtual {p2, v2, v3}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v7

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    const-class v2, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p2, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object v5, v4

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 1213
    new-instance p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    invoke-virtual {v4}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v4}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 1216
    throw p0

    :cond_1
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_4

    const-string p2, "id"

    .line 1220
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "id"

    .line 1221
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 1222
    const-class p2, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p0, p2, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;

    goto :goto_2

    .line 1224
    :cond_2
    const-class p2, Lbike/smarthalo/app/models/SHSettings;

    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, p2, v3, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;

    goto :goto_2

    .line 1227
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1231
    :cond_4
    :goto_2
    move-object p0, p2

    check-cast p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;

    const-string v0, "deviceId"

    .line 1232
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "deviceId"

    .line 1233
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1234
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$deviceId(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "deviceId"

    .line 1236
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$deviceId(Ljava/lang/String;)V

    :cond_6
    :goto_3
    const-string v0, "isToggledLightOn"

    .line 1239
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "isToggledLightOn"

    .line 1240
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "isToggledLightOn"

    .line 1243
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isToggledLightOn(Z)V

    goto :goto_4

    .line 1241
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isToggledLightOn\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    const-string v0, "isLightNightMode"

    .line 1246
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "isLightNightMode"

    .line 1247
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "isLightNightMode"

    .line 1250
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isLightNightMode(Z)V

    goto :goto_5

    .line 1248
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isLightNightMode\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_5
    const-string v0, "isLightBlinking"

    .line 1253
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "isLightBlinking"

    .line 1254
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "isLightBlinking"

    .line 1257
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isLightBlinking(Z)V

    goto :goto_6

    .line 1255
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isLightBlinking\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_6
    const-string v0, "lightBrightness"

    .line 1260
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "lightBrightness"

    .line 1261
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "lightBrightness"

    .line 1264
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightBrightness(I)V

    goto :goto_7

    .line 1262
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'lightBrightness\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_7
    const-string v0, "isAlarmArmed"

    .line 1267
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "isAlarmArmed"

    .line 1268
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "isAlarmArmed"

    .line 1271
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAlarmArmed(Z)V

    goto :goto_8

    .line 1269
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAlarmArmed\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_8
    const-string v0, "isAlarmAggressive"

    .line 1274
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "isAlarmAggressive"

    .line 1275
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "isAlarmAggressive"

    .line 1278
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAlarmAggressive(Z)V

    goto :goto_9

    .line 1276
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAlarmAggressive\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_9
    const-string v0, "isAlarmSet"

    .line 1281
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "isAlarmSet"

    .line 1282
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "isAlarmSet"

    .line 1285
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAlarmSet(Z)V

    goto :goto_a

    .line 1283
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAlarmSet\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_a
    const-string v0, "alarmTimer"

    .line 1288
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "alarmTimer"

    .line 1289
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "alarmTimer"

    .line 1292
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$alarmTimer(I)V

    goto :goto_b

    .line 1290
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'alarmTimer\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_b
    const-string v0, "alarmCode"

    .line 1295
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "alarmCode"

    .line 1296
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1297
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$alarmCode(Ljava/lang/String;)V

    goto :goto_c

    :cond_17
    const-string v0, "alarmCode"

    .line 1299
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$alarmCode(Ljava/lang/String;)V

    :cond_18
    :goto_c
    const-string v0, "isNavigationCompassMode"

    .line 1302
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "isNavigationCompassMode"

    .line 1303
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "isNavigationCompassMode"

    .line 1306
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isNavigationCompassMode(Z)V

    goto :goto_d

    .line 1304
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isNavigationCompassMode\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    :goto_d
    const-string v0, "isNavigationSoundOn"

    .line 1309
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "isNavigationSoundOn"

    .line 1310
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "isNavigationSoundOn"

    .line 1313
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isNavigationSoundOn(Z)V

    goto :goto_e

    .line 1311
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isNavigationSoundOn\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_e
    const-string v0, "navigationVolume"

    .line 1316
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "navigationVolume"

    .line 1317
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "navigationVolume"

    .line 1320
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navigationVolume(I)V

    goto :goto_f

    .line 1318
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'navigationVolume\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_f
    const-string v0, "isAutoTracking"

    .line 1323
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "isAutoTracking"

    .line 1324
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "isAutoTracking"

    .line 1327
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAutoTracking(Z)V

    goto :goto_10

    .line 1325
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAutoTracking\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_10
    const-string v0, "isTouchSoundEnabled"

    .line 1330
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "isTouchSoundEnabled"

    .line 1331
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "isTouchSoundEnabled"

    .line 1334
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isTouchSoundEnabled(Z)V

    goto :goto_11

    .line 1332
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isTouchSoundEnabled\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_11
    const-string v0, "touchSoundVolume"

    .line 1337
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "touchSoundVolume"

    .line 1338
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "touchSoundVolume"

    .line 1341
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$touchSoundVolume(I)V

    goto :goto_12

    .line 1339
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'touchSoundVolume\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    :goto_12
    const-string v0, "lightStateTouchCode"

    .line 1344
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "lightStateTouchCode"

    .line 1345
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1346
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightStateTouchCode(Ljava/lang/String;)V

    goto :goto_13

    :cond_25
    const-string v0, "lightStateTouchCode"

    .line 1348
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightStateTouchCode(Ljava/lang/String;)V

    :cond_26
    :goto_13
    const-string v0, "lightModeTouchCode"

    .line 1351
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "lightModeTouchCode"

    .line 1352
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1353
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightModeTouchCode(Ljava/lang/String;)V

    goto :goto_14

    :cond_27
    const-string v0, "lightModeTouchCode"

    .line 1355
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightModeTouchCode(Ljava/lang/String;)V

    :cond_28
    :goto_14
    const-string v0, "lightModeCycleTouchCode"

    .line 1358
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "lightModeCycleTouchCode"

    .line 1359
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1360
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightModeCycleTouchCode(Ljava/lang/String;)V

    goto :goto_15

    :cond_29
    const-string v0, "lightModeCycleTouchCode"

    .line 1362
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightModeCycleTouchCode(Ljava/lang/String;)V

    :cond_2a
    :goto_15
    const-string v0, "hornTouchCode"

    .line 1365
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "hornTouchCode"

    .line 1366
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1367
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$hornTouchCode(Ljava/lang/String;)V

    goto :goto_16

    :cond_2b
    const-string v0, "hornTouchCode"

    .line 1369
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$hornTouchCode(Ljava/lang/String;)V

    :cond_2c
    :goto_16
    const-string v0, "clockTouchCode"

    .line 1372
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "clockTouchCode"

    .line 1373
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1374
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$clockTouchCode(Ljava/lang/String;)V

    goto :goto_17

    :cond_2d
    const-string v0, "clockTouchCode"

    .line 1376
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$clockTouchCode(Ljava/lang/String;)V

    :cond_2e
    :goto_17
    const-string v0, "navHomeTouchCode"

    .line 1379
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "navHomeTouchCode"

    .line 1380
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1381
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navHomeTouchCode(Ljava/lang/String;)V

    goto :goto_18

    :cond_2f
    const-string v0, "navHomeTouchCode"

    .line 1383
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navHomeTouchCode(Ljava/lang/String;)V

    :cond_30
    :goto_18
    const-string v0, "navWorkTouchCode"

    .line 1386
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "navWorkTouchCode"

    .line 1387
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1388
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navWorkTouchCode(Ljava/lang/String;)V

    goto :goto_19

    :cond_31
    const-string v0, "navWorkTouchCode"

    .line 1390
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navWorkTouchCode(Ljava/lang/String;)V

    :cond_32
    :goto_19
    const-string v0, "navStopTouchCode"

    .line 1393
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "navStopTouchCode"

    .line 1394
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1395
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navStopTouchCode(Ljava/lang/String;)V

    goto :goto_1a

    :cond_33
    const-string v0, "navStopTouchCode"

    .line 1397
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navStopTouchCode(Ljava/lang/String;)V

    :cond_34
    :goto_1a
    const-string v0, "navModeTouchCode"

    .line 1400
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "navModeTouchCode"

    .line 1401
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1402
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navModeTouchCode(Ljava/lang/String;)V

    goto :goto_1b

    :cond_35
    const-string v0, "navModeTouchCode"

    .line 1404
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navModeTouchCode(Ljava/lang/String;)V

    :cond_36
    :goto_1b
    const-string v0, "progressToDestinationTouchCode"

    .line 1407
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "progressToDestinationTouchCode"

    .line 1408
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1409
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$progressToDestinationTouchCode(Ljava/lang/String;)V

    goto :goto_1c

    :cond_37
    const-string v0, "progressToDestinationTouchCode"

    .line 1411
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$progressToDestinationTouchCode(Ljava/lang/String;)V

    :cond_38
    :goto_1c
    const-string v0, "isAssistingGlobal"

    .line 1414
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "isAssistingGlobal"

    .line 1415
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "isAssistingGlobal"

    .line 1418
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingGlobal(Z)V

    goto :goto_1d

    .line 1416
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingGlobal\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    :goto_1d
    const-string v0, "isAssistingCalls"

    .line 1421
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "isAssistingCalls"

    .line 1422
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "isAssistingCalls"

    .line 1425
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingCalls(Z)V

    goto :goto_1e

    .line 1423
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingCalls\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    :goto_1e
    const-string v0, "isAssistingWithSound"

    .line 1428
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "isAssistingWithSound"

    .line 1429
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "isAssistingWithSound"

    .line 1432
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingWithSound(Z)V

    goto :goto_1f

    .line 1430
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingWithSound\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    :goto_1f
    const-string v0, "assistantVolume"

    .line 1435
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "assistantVolume"

    .line 1436
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "assistantVolume"

    .line 1439
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$assistantVolume(I)V

    goto :goto_20

    .line 1437
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'assistantVolume\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_20
    const-string v0, "isAssistingSMS"

    .line 1442
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "isAssistingSMS"

    .line 1443
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "isAssistingSMS"

    .line 1446
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingSMS(Z)V

    goto :goto_21

    .line 1444
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingSMS\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    :goto_21
    const-string v0, "isAssistingMessenger"

    .line 1449
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "isAssistingMessenger"

    .line 1450
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "isAssistingMessenger"

    .line 1453
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingMessenger(Z)V

    goto :goto_22

    .line 1451
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingMessenger\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    :goto_22
    const-string v0, "isAssistingWhatsapp"

    .line 1456
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "isAssistingWhatsapp"

    .line 1457
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "isAssistingWhatsapp"

    .line 1460
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingWhatsapp(Z)V

    goto :goto_23

    .line 1458
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingWhatsapp\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    :goto_23
    const-string v0, "isAssistingGmail"

    .line 1463
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "isAssistingGmail"

    .line 1464
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "isAssistingGmail"

    .line 1467
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingGmail(Z)V

    goto :goto_24

    .line 1465
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingGmail\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    :goto_24
    const-string v0, "isAssistingHangouts"

    .line 1470
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "isAssistingHangouts"

    .line 1471
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "isAssistingHangouts"

    .line 1474
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingHangouts(Z)V

    goto :goto_25

    .line 1472
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingHangouts\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    :goto_25
    const-string v0, "isAssistingWechat"

    .line 1477
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "isAssistingWechat"

    .line 1478
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "isAssistingWechat"

    .line 1481
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingWechat(Z)V

    goto :goto_26

    .line 1479
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingWechat\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    :goto_26
    const-string v0, "isAssistingSlack"

    .line 1484
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "isAssistingSlack"

    .line 1485
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "isAssistingSlack"

    .line 1488
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingSlack(Z)V

    goto :goto_27

    .line 1486
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingSlack\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    :goto_27
    return-object p2
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHSettings;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1499
    new-instance v0, Lbike/smarthalo/app/models/SHSettings;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHSettings;-><init>()V

    .line 1500
    move-object v1, v0

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;

    .line 1501
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1502
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1503
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    .line 1505
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 1506
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_0

    .line 1507
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$id(Ljava/lang/Integer;)V

    goto :goto_1

    .line 1509
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1510
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$id(Ljava/lang/Integer;)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "deviceId"

    .line 1513
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1514
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2

    .line 1515
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$deviceId(Ljava/lang/String;)V

    goto :goto_0

    .line 1517
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1518
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$deviceId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "isToggledLightOn"

    .line 1520
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1521
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_4

    .line 1522
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isToggledLightOn(Z)V

    goto :goto_0

    .line 1524
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1525
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isToggledLightOn\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string v5, "isLightNightMode"

    .line 1527
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1528
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_6

    .line 1529
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isLightNightMode(Z)V

    goto/16 :goto_0

    .line 1531
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1532
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isLightNightMode\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string v5, "isLightBlinking"

    .line 1534
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1535
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_8

    .line 1536
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isLightBlinking(Z)V

    goto/16 :goto_0

    .line 1538
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1539
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isLightBlinking\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v5, "lightBrightness"

    .line 1541
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1542
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_a

    .line 1543
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightBrightness(I)V

    goto/16 :goto_0

    .line 1545
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1546
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'lightBrightness\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const-string v5, "isAlarmArmed"

    .line 1548
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1549
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_c

    .line 1550
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAlarmArmed(Z)V

    goto/16 :goto_0

    .line 1552
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1553
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAlarmArmed\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-string v5, "isAlarmAggressive"

    .line 1555
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1556
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_e

    .line 1557
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAlarmAggressive(Z)V

    goto/16 :goto_0

    .line 1559
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1560
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAlarmAggressive\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    const-string v5, "isAlarmSet"

    .line 1562
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1563
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_10

    .line 1564
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAlarmSet(Z)V

    goto/16 :goto_0

    .line 1566
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1567
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAlarmSet\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    const-string v5, "alarmTimer"

    .line 1569
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1570
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_12

    .line 1571
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$alarmTimer(I)V

    goto/16 :goto_0

    .line 1573
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1574
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'alarmTimer\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    const-string v5, "alarmCode"

    .line 1576
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1577
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_14

    .line 1578
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$alarmCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1580
    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1581
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$alarmCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const-string v5, "isNavigationCompassMode"

    .line 1583
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1584
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_16

    .line 1585
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isNavigationCompassMode(Z)V

    goto/16 :goto_0

    .line 1587
    :cond_16
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1588
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isNavigationCompassMode\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    const-string v5, "isNavigationSoundOn"

    .line 1590
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1591
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_18

    .line 1592
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isNavigationSoundOn(Z)V

    goto/16 :goto_0

    .line 1594
    :cond_18
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1595
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isNavigationSoundOn\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    const-string v5, "navigationVolume"

    .line 1597
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1598
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1a

    .line 1599
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navigationVolume(I)V

    goto/16 :goto_0

    .line 1601
    :cond_1a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1602
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'navigationVolume\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    const-string v5, "isAutoTracking"

    .line 1604
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1605
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1c

    .line 1606
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAutoTracking(Z)V

    goto/16 :goto_0

    .line 1608
    :cond_1c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1609
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAutoTracking\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    const-string v5, "isTouchSoundEnabled"

    .line 1611
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1612
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1e

    .line 1613
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isTouchSoundEnabled(Z)V

    goto/16 :goto_0

    .line 1615
    :cond_1e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1616
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isTouchSoundEnabled\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    const-string v5, "touchSoundVolume"

    .line 1618
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1619
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_20

    .line 1620
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$touchSoundVolume(I)V

    goto/16 :goto_0

    .line 1622
    :cond_20
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1623
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'touchSoundVolume\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    const-string v5, "lightStateTouchCode"

    .line 1625
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1626
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_22

    .line 1627
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightStateTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1629
    :cond_22
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1630
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightStateTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_23
    const-string v5, "lightModeTouchCode"

    .line 1632
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1633
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_24

    .line 1634
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightModeTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1636
    :cond_24
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1637
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightModeTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    const-string v5, "lightModeCycleTouchCode"

    .line 1639
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1640
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_26

    .line 1641
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightModeCycleTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1643
    :cond_26
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1644
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$lightModeCycleTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    const-string v5, "hornTouchCode"

    .line 1646
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1647
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_28

    .line 1648
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$hornTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1650
    :cond_28
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1651
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$hornTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_29
    const-string v5, "clockTouchCode"

    .line 1653
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1654
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2a

    .line 1655
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$clockTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1657
    :cond_2a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1658
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$clockTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2b
    const-string v5, "navHomeTouchCode"

    .line 1660
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1661
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2c

    .line 1662
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navHomeTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1664
    :cond_2c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1665
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navHomeTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    const-string v5, "navWorkTouchCode"

    .line 1667
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1668
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2e

    .line 1669
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navWorkTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1671
    :cond_2e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1672
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navWorkTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    const-string v5, "navStopTouchCode"

    .line 1674
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1675
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_30

    .line 1676
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navStopTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1678
    :cond_30
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1679
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navStopTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_31
    const-string v5, "navModeTouchCode"

    .line 1681
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1682
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_32

    .line 1683
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navModeTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1685
    :cond_32
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1686
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$navModeTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_33
    const-string v5, "progressToDestinationTouchCode"

    .line 1688
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1689
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_34

    .line 1690
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$progressToDestinationTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1692
    :cond_34
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1693
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$progressToDestinationTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_35
    const-string v5, "isAssistingGlobal"

    .line 1695
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1696
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_36

    .line 1697
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingGlobal(Z)V

    goto/16 :goto_0

    .line 1699
    :cond_36
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1700
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingGlobal\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    const-string v5, "isAssistingCalls"

    .line 1702
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1703
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_38

    .line 1704
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingCalls(Z)V

    goto/16 :goto_0

    .line 1706
    :cond_38
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1707
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingCalls\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    const-string v5, "isAssistingWithSound"

    .line 1709
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1710
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_3a

    .line 1711
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingWithSound(Z)V

    goto/16 :goto_0

    .line 1713
    :cond_3a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1714
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingWithSound\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    const-string v5, "assistantVolume"

    .line 1716
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1717
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_3c

    .line 1718
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$assistantVolume(I)V

    goto/16 :goto_0

    .line 1720
    :cond_3c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1721
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'assistantVolume\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    const-string v5, "isAssistingSMS"

    .line 1723
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1724
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_3e

    .line 1725
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingSMS(Z)V

    goto/16 :goto_0

    .line 1727
    :cond_3e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1728
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingSMS\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    const-string v5, "isAssistingMessenger"

    .line 1730
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1731
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_40

    .line 1732
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingMessenger(Z)V

    goto/16 :goto_0

    .line 1734
    :cond_40
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1735
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingMessenger\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    const-string v5, "isAssistingWhatsapp"

    .line 1737
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1738
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_42

    .line 1739
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingWhatsapp(Z)V

    goto/16 :goto_0

    .line 1741
    :cond_42
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1742
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingWhatsapp\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    const-string v5, "isAssistingGmail"

    .line 1744
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1745
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_44

    .line 1746
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingGmail(Z)V

    goto/16 :goto_0

    .line 1748
    :cond_44
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1749
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingGmail\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    const-string v5, "isAssistingHangouts"

    .line 1751
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1752
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_46

    .line 1753
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingHangouts(Z)V

    goto/16 :goto_0

    .line 1755
    :cond_46
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1756
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingHangouts\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    const-string v5, "isAssistingWechat"

    .line 1758
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 1759
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_48

    .line 1760
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingWechat(Z)V

    goto/16 :goto_0

    .line 1762
    :cond_48
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1763
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingWechat\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    const-string v5, "isAssistingSlack"

    .line 1765
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1766
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_4a

    .line 1767
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmSet$isAssistingSlack(Z)V

    goto/16 :goto_0

    .line 1769
    :cond_4a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1770
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAssistingSlack\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1773
    :cond_4b
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 1776
    :cond_4c
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_4d

    .line 1780
    new-array p1, v2, [Lio/realm/ImportFlag;

    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHSettings;

    return-object p0

    .line 1778
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 1179
    sget-object v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHSettings"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHSettings;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/SHSettings;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1897
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1898
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 1900
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 1901
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 1902
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    .line 1903
    iget-wide v8, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->idIndex:J

    .line 1904
    move-object v14, v0

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1907
    invoke-static {v11, v12, v8, v9}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 1909
    :cond_1
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    move-wide v2, v11

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 1912
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v8, v9, v2}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_1

    .line 1914
    :cond_2
    invoke-static {v10}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide v15, v2

    .line 1916
    :goto_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1919
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1921
    :cond_3
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isToggledLightOnIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isToggledLightOn()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1922
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightNightModeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightNightMode()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1923
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightBlinkingIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightBlinking()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1924
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightBrightnessIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightBrightness()I

    move-result v0

    int-to-long v8, v0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1925
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmArmedIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmArmed()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1926
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmAggressiveIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmAggressive()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1927
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmSetIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmSet()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1928
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmTimerIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmTimer()I

    move-result v0

    int-to-long v8, v0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1929
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1931
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1933
    :cond_4
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationCompassModeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationCompassMode()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1934
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationSoundOnIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationSoundOn()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1935
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navigationVolumeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navigationVolume()I

    move-result v0

    int-to-long v8, v0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1936
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAutoTrackingIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAutoTracking()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1937
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isTouchSoundEnabledIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isTouchSoundEnabled()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1938
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->touchSoundVolumeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$touchSoundVolume()I

    move-result v0

    int-to-long v8, v0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1939
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightStateTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1941
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1943
    :cond_5
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1945
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1947
    :cond_6
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeCycleTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1949
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1951
    :cond_7
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$hornTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 1953
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1955
    :cond_8
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$clockTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 1957
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1959
    :cond_9
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navHomeTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1961
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1963
    :cond_a
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navWorkTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 1965
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1967
    :cond_b
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navStopTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 1969
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1971
    :cond_c
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navModeTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 1973
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1975
    :cond_d
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$progressToDestinationTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 1977
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1979
    :cond_e
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGlobalIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGlobal()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1980
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingCallsIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingCalls()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1981
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWithSoundIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWithSound()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1982
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->assistantVolumeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$assistantVolume()I

    move-result v0

    int-to-long v8, v0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1983
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSMSIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSMS()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1984
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingMessengerIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingMessenger()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1985
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWhatsappIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWhatsapp()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1986
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGmailIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGmail()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1987
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingHangoutsIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingHangouts()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1988
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWechatIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWechat()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1989
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSlackIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSlack()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    return-wide v15
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1994
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 1995
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 1996
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    .line 1997
    iget-wide v10, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->idIndex:J

    .line 1999
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2000
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lbike/smarthalo/app/models/SHSettings;

    .line 2001
    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2004
    :cond_0
    instance-of v3, v9, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_1

    move-object v3, v9

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2005
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2008
    :cond_1
    move-object v15, v9

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v16

    if-nez v16, :cond_2

    .line 2011
    invoke-static {v12, v13, v10, v11}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v3

    goto :goto_1

    .line 2013
    :cond_2
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v7, v3

    move-wide v3, v12

    move-wide v5, v10

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v3

    :goto_1
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 2016
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v10, v11, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_2

    .line 2018
    :cond_3
    invoke-static/range {v16 .. v16}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide/from16 v16, v3

    .line 2020
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 2023
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    const/16 v18, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v10

    .line 2025
    :goto_3
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isToggledLightOnIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isToggledLightOn()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2026
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightNightModeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightNightMode()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2027
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightBlinkingIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightBlinking()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2028
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightBrightnessIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightBrightness()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2029
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmArmedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmArmed()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2030
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmAggressiveIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmAggressive()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2031
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmSetIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmSet()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2032
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmTimerIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmTimer()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2033
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 2035
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2037
    :cond_5
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationCompassModeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationCompassMode()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2038
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationSoundOnIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationSoundOn()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2039
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navigationVolumeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navigationVolume()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2040
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAutoTrackingIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAutoTracking()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2041
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isTouchSoundEnabledIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isTouchSoundEnabled()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2042
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->touchSoundVolumeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$touchSoundVolume()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2043
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightStateTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 2045
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2047
    :cond_6
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 2049
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2051
    :cond_7
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeCycleTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 2053
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2055
    :cond_8
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$hornTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 2057
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2059
    :cond_9
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$clockTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 2061
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2063
    :cond_a
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navHomeTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 2065
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2067
    :cond_b
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navWorkTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 2069
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2071
    :cond_c
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navStopTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 2073
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2075
    :cond_d
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navModeTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 2077
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2079
    :cond_e
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$progressToDestinationTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 2081
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2083
    :cond_f
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGlobalIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGlobal()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2084
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingCallsIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingCalls()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2085
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWithSoundIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWithSound()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2086
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->assistantVolumeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$assistantVolume()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2087
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSMSIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSMS()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2088
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingMessengerIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingMessenger()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2089
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWhatsappIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWhatsapp()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2090
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGmailIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGmail()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2091
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingHangoutsIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingHangouts()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2092
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWechatIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWechat()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2093
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSlackIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSlack()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    move-wide/from16 v10, v19

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHSettings;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/SHSettings;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 2098
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2099
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 2101
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 2102
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 2103
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    .line 2104
    iget-wide v8, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->idIndex:J

    .line 2105
    move-object v14, v0

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2108
    invoke-static {v11, v12, v8, v9}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 2110
    :cond_1
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    move-wide v2, v11

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 2113
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v8, v9, v2}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_1

    :cond_2
    move-wide v15, v2

    .line 2115
    :goto_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2118
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 2120
    :cond_3
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2122
    :goto_2
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isToggledLightOnIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isToggledLightOn()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2123
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightNightModeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightNightMode()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2124
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightBlinkingIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightBlinking()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2125
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightBrightnessIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightBrightness()I

    move-result v0

    int-to-long v8, v0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2126
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmArmedIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmArmed()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2127
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmAggressiveIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmAggressive()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2128
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmSetIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmSet()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2129
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmTimerIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmTimer()I

    move-result v0

    int-to-long v8, v0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2130
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2132
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 2134
    :cond_4
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2136
    :goto_3
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationCompassModeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationCompassMode()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2137
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationSoundOnIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationSoundOn()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2138
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navigationVolumeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navigationVolume()I

    move-result v0

    int-to-long v8, v0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2139
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAutoTrackingIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAutoTracking()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2140
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isTouchSoundEnabledIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isTouchSoundEnabled()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2141
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->touchSoundVolumeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$touchSoundVolume()I

    move-result v0

    int-to-long v8, v0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2142
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightStateTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2144
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 2146
    :cond_5
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2148
    :goto_4
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 2150
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 2152
    :cond_6
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2154
    :goto_5
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeCycleTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 2156
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 2158
    :cond_7
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2160
    :goto_6
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$hornTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 2162
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 2164
    :cond_8
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2166
    :goto_7
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$clockTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 2168
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 2170
    :cond_9
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2172
    :goto_8
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navHomeTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 2174
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    .line 2176
    :cond_a
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2178
    :goto_9
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navWorkTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 2180
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a

    .line 2182
    :cond_b
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2184
    :goto_a
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navStopTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 2186
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b

    .line 2188
    :cond_c
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2190
    :goto_b
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navModeTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 2192
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c

    .line 2194
    :cond_d
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2196
    :goto_c
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$progressToDestinationTouchCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 2198
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d

    .line 2200
    :cond_e
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2202
    :goto_d
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGlobalIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGlobal()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2203
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingCallsIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingCalls()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2204
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWithSoundIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWithSound()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2205
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->assistantVolumeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$assistantVolume()I

    move-result v0

    int-to-long v8, v0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2206
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSMSIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSMS()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2207
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingMessengerIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingMessenger()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2208
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWhatsappIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWhatsapp()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2209
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGmailIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGmail()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2210
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingHangoutsIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingHangouts()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2211
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWechatIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWechat()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2212
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSlackIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSlack()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    return-wide v15
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 2217
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 2218
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 2219
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    .line 2220
    iget-wide v10, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->idIndex:J

    .line 2222
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2223
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lbike/smarthalo/app/models/SHSettings;

    .line 2224
    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2227
    :cond_0
    instance-of v3, v9, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_1

    move-object v3, v9

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2228
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2231
    :cond_1
    move-object v15, v9

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2234
    invoke-static {v12, v13, v10, v11}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v3

    goto :goto_1

    .line 2236
    :cond_2
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v7, v3

    move-wide v3, v12

    move-wide v5, v10

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v3

    :goto_1
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 2239
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v10, v11, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v3

    .line 2241
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 2244
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    const/16 v18, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v10

    .line 2246
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2248
    :goto_3
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isToggledLightOnIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isToggledLightOn()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2249
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightNightModeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightNightMode()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2250
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightBlinkingIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightBlinking()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2251
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightBrightnessIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightBrightness()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2252
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmArmedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmArmed()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2253
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmAggressiveIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmAggressive()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2254
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmSetIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmSet()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2255
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmTimerIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmTimer()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2256
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 2258
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 2260
    :cond_5
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2262
    :goto_4
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationCompassModeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationCompassMode()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2263
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationSoundOnIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationSoundOn()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2264
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navigationVolumeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navigationVolume()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2265
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAutoTrackingIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAutoTracking()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2266
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isTouchSoundEnabledIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isTouchSoundEnabled()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2267
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->touchSoundVolumeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$touchSoundVolume()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2268
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightStateTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 2270
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 2272
    :cond_6
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2274
    :goto_5
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 2276
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 2278
    :cond_7
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2280
    :goto_6
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeCycleTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 2282
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 2284
    :cond_8
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2286
    :goto_7
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$hornTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 2288
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 2290
    :cond_9
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2292
    :goto_8
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$clockTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 2294
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    .line 2296
    :cond_a
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2298
    :goto_9
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navHomeTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 2300
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a

    .line 2302
    :cond_b
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2304
    :goto_a
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navWorkTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 2306
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b

    .line 2308
    :cond_c
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2310
    :goto_b
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navStopTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 2312
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c

    .line 2314
    :cond_d
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2316
    :goto_c
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navModeTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 2318
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d

    .line 2320
    :cond_e
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2322
    :goto_d
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$progressToDestinationTouchCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 2324
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e

    .line 2326
    :cond_f
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2328
    :goto_e
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGlobalIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGlobal()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2329
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingCallsIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingCalls()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2330
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWithSoundIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWithSound()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2331
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->assistantVolumeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$assistantVolume()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2332
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSMSIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSMS()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2333
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingMessengerIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingMessenger()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2334
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWhatsappIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWhatsapp()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2335
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGmailIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGmail()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2336
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingHangoutsIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingHangouts()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2337
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWechatIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWechat()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2338
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSlackIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSlack()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    move-wide/from16 v10, v19

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method private static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;
    .locals 7

    .line 1785
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 1786
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 1787
    new-instance p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;

    invoke-direct {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;-><init>()V

    .line 1788
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;Lbike/smarthalo/app/models/SHSettings;Lbike/smarthalo/app/models/SHSettings;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;",
            "Lbike/smarthalo/app/models/SHSettings;",
            "Lbike/smarthalo/app/models/SHSettings;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHSettings;"
        }
    .end annotation

    .line 2404
    move-object p4, p2

    check-cast p4, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;

    .line 2405
    check-cast p3, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;

    .line 2406
    const-class p4, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p0, p4}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p0

    .line 2407
    new-instance p4, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->maxColumnIndexValue:J

    invoke-direct {p4, p0, v0, v1, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 2408
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->idIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 2409
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 2410
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isToggledLightOnIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isToggledLightOn()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2411
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightNightModeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightNightMode()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2412
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightBlinkingIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isLightBlinking()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2413
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightBrightnessIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightBrightness()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 2414
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmArmedIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmArmed()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2415
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmAggressiveIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmAggressive()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2416
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmSetIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAlarmSet()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2417
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmTimerIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmTimer()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 2418
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 2419
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationCompassModeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationCompassMode()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2420
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationSoundOnIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isNavigationSoundOn()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2421
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navigationVolumeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navigationVolume()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 2422
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAutoTrackingIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAutoTracking()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2423
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isTouchSoundEnabledIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isTouchSoundEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2424
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->touchSoundVolumeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$touchSoundVolume()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 2425
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightStateTouchCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 2426
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeTouchCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 2427
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$lightModeCycleTouchCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 2428
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$hornTouchCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 2429
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$clockTouchCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 2430
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navHomeTouchCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 2431
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navWorkTouchCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 2432
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navStopTouchCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 2433
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$navModeTouchCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 2434
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$progressToDestinationTouchCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 2435
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGlobalIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGlobal()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2436
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingCallsIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingCalls()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2437
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWithSoundIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWithSound()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2438
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->assistantVolumeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$assistantVolume()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 2439
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSMSIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSMS()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2440
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingMessengerIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingMessenger()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2441
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWhatsappIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWhatsapp()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2442
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGmailIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingGmail()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2443
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingHangoutsIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingHangouts()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2444
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWechatIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingWechat()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2445
    iget-wide p0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSlackIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxyInterface;->realmGet$isAssistingSlack()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p4, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 2447
    invoke-virtual {p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->updateExistingObject()V

    return-object p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 2634
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2635
    :cond_1
    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;

    .line 2637
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2638
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 2639
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 2641
    :cond_3
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2642
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 2643
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 2645
    :cond_5
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 2620
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2621
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2622
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 2625
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v1, :cond_1

    .line 2626
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_1
    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/2addr v5, v1

    return v5
.end method

.method public realm$injectObjectContext()V
    .locals 3

    .line 192
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 195
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 196
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    .line 197
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 198
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 199
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 200
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 201
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$alarmCode()Ljava/lang/String;
    .locals 3

    .line 434
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 435
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$alarmTimer()I
    .locals 3

    .line 412
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 413
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmTimerIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$assistantVolume()I
    .locals 3

    .line 962
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 963
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->assistantVolumeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$clockTouchCode()Ljava/lang/String;
    .locals 3

    .line 716
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 717
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$deviceId()Ljava/lang/String;
    .locals 3

    .line 228
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 229
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$hornTouchCode()Ljava/lang/String;
    .locals 3

    .line 686
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 687
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/Integer;
    .locals 3

    .line 207
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 208
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$isAlarmAggressive()Z
    .locals 3

    .line 368
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 369
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmAggressiveIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAlarmArmed()Z
    .locals 3

    .line 346
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 347
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmArmedIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAlarmSet()Z
    .locals 3

    .line 390
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 391
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmSetIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAssistingCalls()Z
    .locals 3

    .line 918
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 919
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingCallsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAssistingGlobal()Z
    .locals 3

    .line 896
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 897
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGlobalIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAssistingGmail()Z
    .locals 3

    .line 1050
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1051
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGmailIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAssistingHangouts()Z
    .locals 3

    .line 1072
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1073
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingHangoutsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAssistingMessenger()Z
    .locals 3

    .line 1006
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1007
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingMessengerIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAssistingSMS()Z
    .locals 3

    .line 984
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 985
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSMSIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAssistingSlack()Z
    .locals 3

    .line 1116
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1117
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSlackIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAssistingWechat()Z
    .locals 3

    .line 1094
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1095
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWechatIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAssistingWhatsapp()Z
    .locals 3

    .line 1028
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1029
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWhatsappIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAssistingWithSound()Z
    .locals 3

    .line 940
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 941
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWithSoundIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAutoTracking()Z
    .locals 3

    .line 530
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 531
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAutoTrackingIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isLightBlinking()Z
    .locals 3

    .line 302
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 303
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightBlinkingIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isLightNightMode()Z
    .locals 3

    .line 280
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 281
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightNightModeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isNavigationCompassMode()Z
    .locals 3

    .line 464
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 465
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationCompassModeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isNavigationSoundOn()Z
    .locals 3

    .line 486
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 487
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationSoundOnIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isToggledLightOn()Z
    .locals 3

    .line 258
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 259
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isToggledLightOnIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isTouchSoundEnabled()Z
    .locals 3

    .line 552
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 553
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isTouchSoundEnabledIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$lightBrightness()I
    .locals 3

    .line 324
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 325
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightBrightnessIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$lightModeCycleTouchCode()Ljava/lang/String;
    .locals 3

    .line 656
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 657
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$lightModeTouchCode()Ljava/lang/String;
    .locals 3

    .line 626
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 627
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$lightStateTouchCode()Ljava/lang/String;
    .locals 3

    .line 596
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 597
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$navHomeTouchCode()Ljava/lang/String;
    .locals 3

    .line 746
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 747
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$navModeTouchCode()Ljava/lang/String;
    .locals 3

    .line 836
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 837
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$navStopTouchCode()Ljava/lang/String;
    .locals 3

    .line 806
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 807
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$navWorkTouchCode()Ljava/lang/String;
    .locals 3

    .line 776
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 777
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$navigationVolume()I
    .locals 3

    .line 508
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 509
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navigationVolumeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$progressToDestinationTouchCode()Ljava/lang/String;
    .locals 3

    .line 866
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 867
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ProxyState<",
            "*>;"
        }
    .end annotation

    .line 2615
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$touchSoundVolume()I
    .locals 3

    .line 574
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 575
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->touchSoundVolumeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmSet$alarmCode(Ljava/lang/String;)V
    .locals 14

    .line 440
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 446
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 449
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 453
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 455
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 458
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$alarmTimer(I)V
    .locals 9

    .line 418
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmTimerIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 428
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmTimerIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$assistantVolume(I)V
    .locals 9

    .line 968
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 972
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 973
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->assistantVolumeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 977
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 978
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->assistantVolumeIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$clockTouchCode(Ljava/lang/String;)V
    .locals 14

    .line 722
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 728
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 731
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 735
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 737
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 740
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$deviceId(Ljava/lang/String;)V
    .locals 14

    .line 234
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 240
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 243
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 247
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 249
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 252
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$hornTouchCode(Ljava/lang/String;)V
    .locals 14

    .line 692
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 698
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 701
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 705
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 707
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 710
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$id(Ljava/lang/Integer;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 222
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$isAlarmAggressive(Z)V
    .locals 8

    .line 374
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 379
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmAggressiveIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 384
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmAggressiveIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isAlarmArmed(Z)V
    .locals 8

    .line 352
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmArmedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 362
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmArmedIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isAlarmSet(Z)V
    .locals 8

    .line 396
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 401
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmSetIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 406
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmSetIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isAssistingCalls(Z)V
    .locals 8

    .line 924
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 929
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingCallsIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 933
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 934
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingCallsIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isAssistingGlobal(Z)V
    .locals 8

    .line 902
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 907
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGlobalIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 911
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 912
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGlobalIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isAssistingGmail(Z)V
    .locals 8

    .line 1056
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1060
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1061
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGmailIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 1065
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1066
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGmailIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isAssistingHangouts(Z)V
    .locals 8

    .line 1078
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1082
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1083
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingHangoutsIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 1087
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1088
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingHangoutsIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isAssistingMessenger(Z)V
    .locals 8

    .line 1012
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1017
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingMessengerIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 1021
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1022
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingMessengerIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isAssistingSMS(Z)V
    .locals 8

    .line 990
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 994
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 995
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSMSIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 999
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1000
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSMSIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isAssistingSlack(Z)V
    .locals 8

    .line 1122
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1123
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1126
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1127
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSlackIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 1131
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1132
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSlackIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isAssistingWechat(Z)V
    .locals 8

    .line 1100
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1104
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1105
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWechatIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 1109
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1110
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWechatIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isAssistingWhatsapp(Z)V
    .locals 8

    .line 1034
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1038
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1039
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWhatsappIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 1043
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1044
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWhatsappIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isAssistingWithSound(Z)V
    .locals 8

    .line 946
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 947
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 951
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWithSoundIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 955
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 956
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWithSoundIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isAutoTracking(Z)V
    .locals 8

    .line 536
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 541
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAutoTrackingIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 546
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAutoTrackingIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isLightBlinking(Z)V
    .locals 8

    .line 308
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 313
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightBlinkingIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 318
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightBlinkingIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isLightNightMode(Z)V
    .locals 8

    .line 286
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightNightModeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 296
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightNightModeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isNavigationCompassMode(Z)V
    .locals 8

    .line 470
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 475
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationCompassModeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 480
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationCompassModeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isNavigationSoundOn(Z)V
    .locals 8

    .line 492
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationSoundOnIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 501
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 502
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationSoundOnIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isToggledLightOn(Z)V
    .locals 8

    .line 264
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isToggledLightOnIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 274
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isToggledLightOnIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isTouchSoundEnabled(Z)V
    .locals 8

    .line 558
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 563
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isTouchSoundEnabledIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 567
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 568
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isTouchSoundEnabledIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$lightBrightness(I)V
    .locals 9

    .line 330
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightBrightnessIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 340
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightBrightnessIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$lightModeCycleTouchCode(Ljava/lang/String;)V
    .locals 14

    .line 662
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 668
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 671
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 675
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 677
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 680
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$lightModeTouchCode(Ljava/lang/String;)V
    .locals 14

    .line 632
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 638
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 641
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 645
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 647
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 650
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$lightStateTouchCode(Ljava/lang/String;)V
    .locals 14

    .line 602
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 608
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 611
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 615
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 617
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 620
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$navHomeTouchCode(Ljava/lang/String;)V
    .locals 14

    .line 752
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 753
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 758
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 761
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 765
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 767
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 770
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$navModeTouchCode(Ljava/lang/String;)V
    .locals 14

    .line 842
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 843
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 848
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 851
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 855
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 857
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 860
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$navStopTouchCode(Ljava/lang/String;)V
    .locals 14

    .line 812
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 818
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 821
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 825
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 827
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 830
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$navWorkTouchCode(Ljava/lang/String;)V
    .locals 14

    .line 782
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 783
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 788
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 791
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 795
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 797
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 800
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$navigationVolume(I)V
    .locals 9

    .line 514
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 519
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navigationVolumeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 524
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navigationVolumeIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$progressToDestinationTouchCode(Ljava/lang/String;)V
    .locals 14

    .line 872
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 873
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 878
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 881
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 885
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 887
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 890
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$touchSoundVolume(I)V
    .locals 9

    .line 580
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 585
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->touchSoundVolumeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 589
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 590
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->touchSoundVolumeIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2454
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 2457
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHSettings = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{id:"

    .line 2458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2459
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{deviceId:"

    .line 2462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2463
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isToggledLightOn:"

    .line 2466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2467
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isToggledLightOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isLightNightMode:"

    .line 2470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2471
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isLightNightMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isLightBlinking:"

    .line 2474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2475
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isLightBlinking()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{lightBrightness:"

    .line 2478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2479
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$lightBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAlarmArmed:"

    .line 2482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2483
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAlarmArmed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAlarmAggressive:"

    .line 2486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2487
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAlarmAggressive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAlarmSet:"

    .line 2490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2491
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAlarmSet()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{alarmTimer:"

    .line 2494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2495
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$alarmTimer()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{alarmCode:"

    .line 2498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2499
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "null"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2500
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isNavigationCompassMode:"

    .line 2502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2503
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isNavigationCompassMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isNavigationSoundOn:"

    .line 2506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2507
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isNavigationSoundOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{navigationVolume:"

    .line 2510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2511
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$navigationVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAutoTracking:"

    .line 2514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2515
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAutoTracking()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2517
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isTouchSoundEnabled:"

    .line 2518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isTouchSoundEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2520
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{touchSoundVolume:"

    .line 2522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$touchSoundVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{lightStateTouchCode:"

    .line 2526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$lightStateTouchCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$lightStateTouchCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, "null"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{lightModeTouchCode:"

    .line 2530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$lightModeTouchCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$lightModeTouchCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    const-string v1, "null"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{lightModeCycleTouchCode:"

    .line 2534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2535
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$lightModeCycleTouchCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$lightModeCycleTouchCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    const-string v1, "null"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{hornTouchCode:"

    .line 2538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2539
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$hornTouchCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$hornTouchCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    const-string v1, "null"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{clockTouchCode:"

    .line 2542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2543
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$clockTouchCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$clockTouchCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    const-string v1, "null"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{navHomeTouchCode:"

    .line 2546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2547
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$navHomeTouchCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$navHomeTouchCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    const-string v1, "null"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{navWorkTouchCode:"

    .line 2550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$navWorkTouchCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$navWorkTouchCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_a
    const-string v1, "null"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{navStopTouchCode:"

    .line 2554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$navStopTouchCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$navStopTouchCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_b
    const-string v1, "null"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{navModeTouchCode:"

    .line 2558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2559
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$navModeTouchCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$navModeTouchCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_c
    const-string v1, "null"

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{progressToDestinationTouchCode:"

    .line 2562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$progressToDestinationTouchCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$progressToDestinationTouchCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_d
    const-string v1, "null"

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAssistingGlobal:"

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2567
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAssistingGlobal()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAssistingCalls:"

    .line 2570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2571
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAssistingCalls()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAssistingWithSound:"

    .line 2574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAssistingWithSound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{assistantVolume:"

    .line 2578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$assistantVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAssistingSMS:"

    .line 2582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAssistingSMS()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAssistingMessenger:"

    .line 2586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2587
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAssistingMessenger()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAssistingWhatsapp:"

    .line 2590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2591
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAssistingWhatsapp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAssistingGmail:"

    .line 2594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2595
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAssistingGmail()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAssistingHangouts:"

    .line 2598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAssistingHangouts()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAssistingWechat:"

    .line 2602
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2603
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAssistingWechat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 2605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAssistingSlack:"

    .line 2606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2607
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->realmGet$isAssistingSlack()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 2609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;
.super Ljava/lang/Object;
.source "MetricsLoggerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;
    }
.end annotation


# static fields
.field private static final dismissTransform:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;",
            "Lcom/google/firebase/inappmessaging/DismissType;",
            ">;"
        }
    .end annotation
.end field

.field private static final errorTransform:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;",
            "Lcom/google/firebase/inappmessaging/RenderErrorReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

.field private final engagementMetricsLogger:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->errorTransform:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->dismissTransform:Ljava/util/Map;

    .line 55
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->errorTransform:Ljava/util/Map;

    sget-object v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;->UNSPECIFIED_RENDER_ERROR:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    sget-object v2, Lcom/google/firebase/inappmessaging/RenderErrorReason;->UNSPECIFIED_RENDER_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->errorTransform:Ljava/util/Map;

    sget-object v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;->IMAGE_FETCH_ERROR:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    sget-object v2, Lcom/google/firebase/inappmessaging/RenderErrorReason;->IMAGE_FETCH_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->errorTransform:Ljava/util/Map;

    sget-object v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;->IMAGE_DISPLAY_ERROR:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    sget-object v2, Lcom/google/firebase/inappmessaging/RenderErrorReason;->IMAGE_DISPLAY_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->errorTransform:Ljava/util/Map;

    sget-object v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;->IMAGE_UNSUPPORTED_FORMAT:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    sget-object v2, Lcom/google/firebase/inappmessaging/RenderErrorReason;->IMAGE_UNSUPPORTED_FORMAT:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->dismissTransform:Ljava/util/Map;

    sget-object v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;->AUTO:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;

    sget-object v2, Lcom/google/firebase/inappmessaging/DismissType;->AUTO:Lcom/google/firebase/inappmessaging/DismissType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->dismissTransform:Ljava/util/Map;

    sget-object v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;->CLICK:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;

    sget-object v2, Lcom/google/firebase/inappmessaging/DismissType;->CLICK:Lcom/google/firebase/inappmessaging/DismissType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->dismissTransform:Ljava/util/Map;

    sget-object v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;->SWIPE:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;

    sget-object v2, Lcom/google/firebase/inappmessaging/DismissType;->SWIPE:Lcom/google/firebase/inappmessaging/DismissType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->dismissTransform:Ljava/util/Map;

    sget-object v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;->UNKNOWN_DISMISS_TYPE:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;

    sget-object v2, Lcom/google/firebase/inappmessaging/DismissType;->UNKNOWN_DISMISS_TYPE:Lcom/google/firebase/inappmessaging/DismissType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;Lcom/google/firebase/analytics/connector/AnalyticsConnector;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->engagementMetricsLogger:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;

    .line 90
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 91
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 92
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 93
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    .line 94
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    return-void
.end method

.method private createCampaignAnalyticsBuilder(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;
    .locals 2

    .line 189
    invoke-static {}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->newBuilder()Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    move-result-object v0

    const-string v1, "19.1.1"

    .line 190
    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;->setFiamSdkVersion(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 191
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getGcmSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;->setProjectNumber(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getCampaignMetadata()Lcom/google/firebase/inappmessaging/model/CampaignMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/CampaignMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;->setCampaignId(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    move-result-object p1

    .line 194
    invoke-static {}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->newBuilder()Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 195
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;->setGoogleAppId(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0, p2}, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;->setFirebaseInstanceId(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;

    move-result-object p2

    .line 193
    invoke-virtual {p1, p2}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;->setClientApp(Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    .line 197
    invoke-interface {p2}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;->setClientTimestampMillis(J)Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    move-result-object p1

    return-object p1
.end method

.method private createDismissEntry(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;Lcom/google/firebase/inappmessaging/DismissType;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 0

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->createCampaignAnalyticsBuilder(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1, p3}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;->setDismissType(Lcom/google/firebase/inappmessaging/DismissType;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object p1
.end method

.method private createEventEntry(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;Lcom/google/firebase/inappmessaging/EventType;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->createCampaignAnalyticsBuilder(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;->setEventType(Lcom/google/firebase/inappmessaging/EventType;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object p1
.end method

.method private createRenderErrorEntry(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;Lcom/google/firebase/inappmessaging/RenderErrorReason;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->createCampaignAnalyticsBuilder(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    move-result-object p1

    .line 183
    invoke-virtual {p1, p3}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;->setRenderErrorReason(Lcom/google/firebase/inappmessaging/RenderErrorReason;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object p1
.end method

.method private impressionCountsAsConversion(Lcom/google/firebase/inappmessaging/model/InAppMessage;)Z
    .locals 3

    .line 248
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$1;->$SwitchMap$com$google$firebase$inappmessaging$model$MessageType:[I

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getMessageType()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p1, "Unable to determine if impression should be counted as conversion."

    .line 264
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/Logging;->loge(Ljava/lang/String;)V

    return v1

    .line 261
    :pswitch_0
    check-cast p1, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->getAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->isValidAction(Lcom/google/firebase/inappmessaging/model/Action;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 259
    :pswitch_1
    check-cast p1, Lcom/google/firebase/inappmessaging/model/BannerMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->isValidAction(Lcom/google/firebase/inappmessaging/model/Action;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 257
    :pswitch_2
    check-cast p1, Lcom/google/firebase/inappmessaging/model/ModalMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/ModalMessage;->getAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->isValidAction(Lcom/google/firebase/inappmessaging/model/Action;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 251
    :pswitch_3
    check-cast p1, Lcom/google/firebase/inappmessaging/model/CardMessage;

    .line 252
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/CardMessage;->getPrimaryAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->isValidAction(Lcom/google/firebase/inappmessaging/model/Action;)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 253
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/CardMessage;->getSecondaryAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->isValidAction(Lcom/google/firebase/inappmessaging/model/Action;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isTestCampaign(Lcom/google/firebase/inappmessaging/model/InAppMessage;)Z
    .locals 0

    .line 271
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getCampaignMetadata()Lcom/google/firebase/inappmessaging/model/CampaignMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/CampaignMetadata;->getIsTestMessage()Z

    move-result p1

    return p1
.end method

.method private isValidAction(Lcom/google/firebase/inappmessaging/model/Action;)Z
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/model/Action;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/Action;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/Action;->getActionUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$logDismiss$3(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;Ljava/lang/String;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->engagementMetricsLogger:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->dismissTransform:Ljava/util/Map;

    .line 159
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/inappmessaging/DismissType;

    invoke-direct {p0, p1, p3, p2}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->createDismissEntry(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;Lcom/google/firebase/inappmessaging/DismissType;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->toByteArray()[B

    move-result-object p0

    .line 158
    invoke-interface {v0, p0}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;->logEvent([B)V

    return-void
.end method

.method static synthetic lambda$logImpression$0(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->engagementMetricsLogger:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;

    sget-object v1, Lcom/google/firebase/inappmessaging/EventType;->IMPRESSION_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    .line 106
    invoke-direct {p0, p1, p2, v1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->createEventEntry(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;Lcom/google/firebase/inappmessaging/EventType;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->toByteArray()[B

    move-result-object p0

    .line 105
    invoke-interface {v0, p0}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;->logEvent([B)V

    return-void
.end method

.method static synthetic lambda$logMessageClick$1(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->engagementMetricsLogger:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;

    sget-object v1, Lcom/google/firebase/inappmessaging/EventType;->CLICK_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    .line 126
    invoke-direct {p0, p1, p2, v1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->createEventEntry(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;Lcom/google/firebase/inappmessaging/EventType;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->toByteArray()[B

    move-result-object p0

    .line 125
    invoke-interface {v0, p0}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;->logEvent([B)V

    return-void
.end method

.method static synthetic lambda$logRenderError$2(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;Ljava/lang/String;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->engagementMetricsLogger:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->errorTransform:Ljava/util/Map;

    .line 143
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/inappmessaging/RenderErrorReason;

    invoke-direct {p0, p1, p3, p2}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->createRenderErrorEntry(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;Lcom/google/firebase/inappmessaging/RenderErrorReason;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->toByteArray()[B

    move-result-object p0

    .line 142
    invoke-interface {v0, p0}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;->logEvent([B)V

    return-void
.end method

.method private logEventAsync(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;Z)V
    .locals 3

    .line 207
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getCampaignMetadata()Lcom/google/firebase/inappmessaging/model/CampaignMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/CampaignMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getCampaignMetadata()Lcom/google/firebase/inappmessaging/model/CampaignMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/CampaignMetadata;->getCampaignName()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->collectAnalyticsParams(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-eqz v1, :cond_0

    const-string v2, "fiam"

    .line 214
    invoke-interface {v1, v2, p2, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p3, :cond_1

    .line 220
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    const-string p2, "fiam"

    const-string p3, "_ln"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fiam:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "Unable to log event: analytics library is missing"

    .line 226
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method collectAnalyticsParams(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 231
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_nmid"

    .line 233
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_nmn"

    .line 234
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :try_start_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {p1}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p2, p1

    const-string p1, "_ndt"

    .line 239
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while parsing use_device_time in FIAM event: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method logDismiss(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)V
    .locals 1

    .line 152
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->isTestCampaign(Lcom/google/firebase/inappmessaging/model/InAppMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 155
    invoke-interface {v0}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$$Lambda$4;->lambdaFactory$(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object p2

    .line 156
    invoke-virtual {v0, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    const-string p2, "fiam_dismiss"

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->logEventAsync(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;Z)V

    .line 165
    :cond_0
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {p2, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->messageDismissed(Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    return-void
.end method

.method logImpression(Lcom/google/firebase/inappmessaging/model/InAppMessage;)V
    .locals 2

    .line 99
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->isTestCampaign(Lcom/google/firebase/inappmessaging/model/InAppMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 102
    invoke-interface {v0}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/model/InAppMessage;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    const-string v0, "fiam_impression"

    .line 111
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->impressionCountsAsConversion(Lcom/google/firebase/inappmessaging/model/InAppMessage;)Z

    move-result v1

    .line 108
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->logEventAsync(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;Z)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->impressionDetected(Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    return-void
.end method

.method logMessageClick(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/model/Action;)V
    .locals 2

    .line 119
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->isTestCampaign(Lcom/google/firebase/inappmessaging/model/InAppMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 122
    invoke-interface {v0}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$$Lambda$2;->lambdaFactory$(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/model/InAppMessage;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    const-string v0, "fiam_action"

    const/4 v1, 0x1

    .line 128
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->logEventAsync(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;Z)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->messageClicked(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/model/Action;)V

    return-void
.end method

.method logRenderError(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V
    .locals 2

    .line 136
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->isTestCampaign(Lcom/google/firebase/inappmessaging/model/InAppMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 139
    invoke-interface {v0}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$$Lambda$3;->lambdaFactory$(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->displayErrorEncountered(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V

    return-void
.end method

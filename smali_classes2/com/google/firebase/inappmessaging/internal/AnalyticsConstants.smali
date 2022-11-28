.class final Lcom/google/firebase/inappmessaging/internal/AnalyticsConstants;
.super Ljava/lang/Object;
.source "AnalyticsConstants.java"


# static fields
.field static final ANALYTICS_ACTION_EVENT:Ljava/lang/String; = "fiam_action"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ANALYTICS_DISMISS_EVENT:Ljava/lang/String; = "fiam_dismiss"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ANALYTICS_IMPRESSION_EVENT:Ljava/lang/String; = "fiam_impression"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final BUNDLE_EVENT_NAME_KEY:Ljava/lang/String; = "events"

.field static final FIAM_ANALYTICS_CONNECTOR_LISTENER_EVENT_ID:I = 0x2

.field static final MAX_REGISTERED_EVENTS:I = 0x32

.field static final ORIGIN_FIAM:Ljava/lang/String; = "fiam"

.field static final PARAM_CAMPAIGN:Ljava/lang/String; = "campaign"

.field static final PARAM_LABEL:Ljava/lang/String; = "label"

.field static final PARAM_MESSAGE_DEVICE_TIME:Ljava/lang/String; = "_ndt"

.field static final PARAM_MESSAGE_ID:Ljava/lang/String; = "_nmid"

.field static final PARAM_MESSAGE_NAME:Ljava/lang/String; = "_nmn"

.field static final USER_PROPERTY_FIREBASE_LAST_NOTIFICATION:Ljava/lang/String; = "_ln"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

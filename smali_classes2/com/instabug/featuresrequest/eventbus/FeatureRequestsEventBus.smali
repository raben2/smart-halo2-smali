.class public Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "FeatureRequestsEventBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Lcom/instabug/featuresrequest/d/b;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile featureRequestsEventBus:Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/eventbus/EventBus;-><init>()V

    .line 2
    sget-object v0, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;->featureRequestsEventBus:Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use getInstance() method to get the single instance of this class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;->featureRequestsEventBus:Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;->featureRequestsEventBus:Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    invoke-direct {v1}, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;-><init>()V

    sput-object v1, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;->featureRequestsEventBus:Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;->featureRequestsEventBus:Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    return-object v0
.end method

.method static tearDown()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;->featureRequestsEventBus:Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    return-void
.end method


# virtual methods
.method protected readResolve()Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;->getInstance()Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    move-result-object v0

    return-object v0
.end method

.class public final Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FirebaseAbt.java"

# interfaces
.implements Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevelopers/mobile/abt/FirebaseAbt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExperimentPayload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;,
        Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;",
        ">;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayloadOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTIVATE_EVENT_TO_LOG_FIELD_NUMBER:I = 0x8

.field public static final CLEAR_EVENT_TO_LOG_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

.field public static final EXPERIMENT_ID_FIELD_NUMBER:I = 0x1

.field public static final EXPERIMENT_START_TIME_MILLIS_FIELD_NUMBER:I = 0x3

.field public static final ONGOING_EXPERIMENTS_FIELD_NUMBER:I = 0xd

.field public static final OVERFLOW_POLICY_FIELD_NUMBER:I = 0xc

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final SET_EVENT_TO_LOG_FIELD_NUMBER:I = 0x7

.field public static final TIMEOUT_EVENT_TO_LOG_FIELD_NUMBER:I = 0xa

.field public static final TIME_TO_LIVE_MILLIS_FIELD_NUMBER:I = 0x6

.field public static final TRIGGER_EVENT_FIELD_NUMBER:I = 0x4

.field public static final TRIGGER_TIMEOUT_MILLIS_FIELD_NUMBER:I = 0x5

.field public static final TTL_EXPIRY_EVENT_TO_LOG_FIELD_NUMBER:I = 0xb

.field public static final VARIANT_ID_FIELD_NUMBER:I = 0x2


# instance fields
.field private activateEventToLog_:Ljava/lang/String;

.field private clearEventToLog_:Ljava/lang/String;

.field private experimentId_:Ljava/lang/String;

.field private experimentStartTimeMillis_:J

.field private ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
            ">;"
        }
    .end annotation
.end field

.field private overflowPolicy_:I

.field private setEventToLog_:Ljava/lang/String;

.field private timeToLiveMillis_:J

.field private timeoutEventToLog_:Ljava/lang/String;

.field private triggerEvent_:Ljava/lang/String;

.field private triggerTimeoutMillis_:J

.field private ttlExpiryEventToLog_:Ljava/lang/String;

.field private variantId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2958
    new-instance v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-direct {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;-><init>()V

    .line 2961
    sput-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    .line 2962
    const-class v1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 682
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 683
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    const-string v0, ""

    .line 684
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    const-string v0, ""

    .line 685
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    const-string v0, ""

    .line 686
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    const-string v0, ""

    .line 687
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    const-string v0, ""

    .line 688
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    const-string v0, ""

    .line 689
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    const-string v0, ""

    .line 690
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    .line 691
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearVariantId()V

    return-void
.end method

.method static synthetic access$1100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setVariantIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;J)V
    .locals 0

    .line 677
    invoke-direct {p0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setExperimentStartTimeMillis(J)V

    return-void
.end method

.method static synthetic access$1300(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearExperimentStartTimeMillis()V

    return-void
.end method

.method static synthetic access$1400(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTriggerEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearTriggerEvent()V

    return-void
.end method

.method static synthetic access$1600(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTriggerEventBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;J)V
    .locals 0

    .line 677
    invoke-direct {p0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTriggerTimeoutMillis(J)V

    return-void
.end method

.method static synthetic access$1800(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearTriggerTimeoutMillis()V

    return-void
.end method

.method static synthetic access$1900(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;J)V
    .locals 0

    .line 677
    invoke-direct {p0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTimeToLiveMillis(J)V

    return-void
.end method

.method static synthetic access$2000(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearTimeToLiveMillis()V

    return-void
.end method

.method static synthetic access$2100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setSetEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearSetEventToLog()V

    return-void
.end method

.method static synthetic access$2300(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setSetEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setActivateEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearActivateEventToLog()V

    return-void
.end method

.method static synthetic access$2600(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setActivateEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setClearEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearClearEventToLog()V

    return-void
.end method

.method static synthetic access$2900(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setClearEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTimeoutEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearTimeoutEventToLog()V

    return-void
.end method

.method static synthetic access$3200(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTimeoutEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3300(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTtlExpiryEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearTtlExpiryEventToLog()V

    return-void
.end method

.method static synthetic access$3500(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTtlExpiryEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3600(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;I)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setOverflowPolicyValue(I)V

    return-void
.end method

.method static synthetic access$3700(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setOverflowPolicy(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;)V

    return-void
.end method

.method static synthetic access$3800(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearOverflowPolicy()V

    return-void
.end method

.method static synthetic access$3900(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-void
.end method

.method static synthetic access$4000(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->addOngoingExperiments(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-void
.end method

.method static synthetic access$4100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->addOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-void
.end method

.method static synthetic access$4200(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/Iterable;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->addAllOngoingExperiments(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$4300(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearOngoingExperiments()V

    return-void
.end method

.method static synthetic access$4400(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;I)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->removeOngoingExperiments(I)V

    return-void
.end method

.method static synthetic access$500()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1

    .line 677
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object v0
.end method

.method static synthetic access$600(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setExperimentId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearExperimentId()V

    return-void
.end method

.method static synthetic access$800(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setExperimentIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setVariantId(Ljava/lang/String;)V

    return-void
.end method

.method private addAllOngoingExperiments(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
            ">;)V"
        }
    .end annotation

    .line 1751
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1752
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V
    .locals 1

    .line 1736
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1737
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1738
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOngoingExperiments(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V
    .locals 1

    .line 1721
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1722
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1723
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearActivateEventToLog()V
    .locals 1

    .line 1316
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getActivateEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearClearEventToLog()V
    .locals 1

    .line 1388
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getClearEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearExperimentId()V
    .locals 1

    .line 880
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-void
.end method

.method private clearExperimentStartTimeMillis()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1011
    iput-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    return-void
.end method

.method private clearOngoingExperiments()V
    .locals 1

    .line 1765
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOverflowPolicy()V
    .locals 1

    const/4 v0, 0x0

    .line 1619
    iput v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    return-void
.end method

.method private clearSetEventToLog()V
    .locals 1

    .line 1244
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getSetEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearTimeToLiveMillis()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1187
    iput-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    return-void
.end method

.method private clearTimeoutEventToLog()V
    .locals 1

    .line 1464
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTimeoutEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearTriggerEvent()V
    .locals 1

    .line 1064
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTriggerEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-void
.end method

.method private clearTriggerTimeoutMillis()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1128
    iput-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    return-void
.end method

.method private clearTtlExpiryEventToLog()V
    .locals 1

    .line 1541
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTtlExpiryEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearVariantId()V
    .locals 1

    .line 955
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getVariantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-void
.end method

.method private ensureOngoingExperimentsIsMutable()V
    .locals 1

    .line 1690
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1691
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1692
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1

    .line 2967
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object v0
.end method

.method public static newBuilder()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1856
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;

    return-object v0
.end method

.method public static newBuilder(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1859
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0, p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1833
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1839
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1797
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1804
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1844
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1851
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1821
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1828
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1784
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1791
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom([B)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1809
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1816
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;",
            ">;"
        }
    .end annotation

    .line 2973
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeOngoingExperiments(I)V
    .locals 1

    .line 1777
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1778
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setActivateEventToLog(Ljava/lang/String;)V
    .locals 0

    .line 1302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1304
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setActivateEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1329
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1330
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setClearEventToLog(Ljava/lang/String;)V
    .locals 0

    .line 1374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1376
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setClearEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1401
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1402
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setExperimentId(Ljava/lang/String;)V
    .locals 0

    .line 863
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 865
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-void
.end method

.method private setExperimentIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 896
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 897
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-void
.end method

.method private setExperimentStartTimeMillis(J)V
    .locals 0

    .line 999
    iput-wide p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    return-void
.end method

.method private setOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V
    .locals 1

    .line 1707
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1708
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1709
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOverflowPolicy(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;)V
    .locals 0

    .line 1607
    invoke-virtual {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;->getNumber()I

    move-result p1

    iput p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    return-void
.end method

.method private setOverflowPolicyValue(I)V
    .locals 0

    .line 1596
    iput p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    return-void
.end method

.method private setSetEventToLog(Ljava/lang/String;)V
    .locals 0

    .line 1230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1232
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setSetEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1257
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1258
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setTimeToLiveMillis(J)V
    .locals 0

    .line 1169
    iput-wide p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    return-void
.end method

.method private setTimeoutEventToLog(Ljava/lang/String;)V
    .locals 0

    .line 1449
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1451
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setTimeoutEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1478
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1479
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setTriggerEvent(Ljava/lang/String;)V
    .locals 0

    .line 1051
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1053
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-void
.end method

.method private setTriggerEventBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1076
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1077
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-void
.end method

.method private setTriggerTimeoutMillis(J)V
    .locals 0

    .line 1113
    iput-wide p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    return-void
.end method

.method private setTtlExpiryEventToLog(Ljava/lang/String;)V
    .locals 0

    .line 1526
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1528
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setTtlExpiryEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1555
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1556
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setVariantId(Ljava/lang/String;)V
    .locals 0

    .line 941
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 943
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-void
.end method

.method private setVariantIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 968
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 969
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2895
    sget-object p2, Ldevelopers/mobile/abt/FirebaseAbt$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2951
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2945
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2930
    :pswitch_2
    sget-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2932
    const-class p2, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    monitor-enter p2

    .line 2933
    :try_start_0
    sget-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2935
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2938
    sput-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->PARSER:Lcom/google/protobuf/Parser;

    .line 2940
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 2927
    :pswitch_3
    sget-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p1

    :pswitch_4
    const/16 p1, 0xe

    .line 2903
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "experimentId_"

    aput-object v0, p1, p3

    const-string p3, "variantId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "experimentStartTimeMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "triggerEvent_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "triggerTimeoutMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "timeToLiveMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "setEventToLog_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "activateEventToLog_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "clearEventToLog_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "timeoutEventToLog_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "ttlExpiryEventToLog_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "overflowPolicy_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "ongoingExperiments_"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    aput-object p3, p1, p2

    const-string p2, "\u0000\r\u0000\u0000\u0001\r\r\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0208\u0005\u0002\u0006\u0002\u0007\u0208\u0008\u0208\t\u0208\n\u0208\u000b\u0208\u000c\u000c\r\u001b"

    .line 2923
    sget-object p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {p3, p2, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2900
    :pswitch_5
    new-instance p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;

    invoke-direct {p1, p3}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;-><init>(Ldevelopers/mobile/abt/FirebaseAbt$1;)V

    return-object p1

    .line 2897
    :pswitch_6
    new-instance p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-direct {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getActivateEventToLog()Ljava/lang/String;
    .locals 1

    .line 1275
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getActivateEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1289
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClearEventToLog()Ljava/lang/String;
    .locals 1

    .line 1347
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getClearEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1361
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    .line 830
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 847
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentStartTimeMillis()J
    .locals 2

    .line 986
    iget-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    return-wide v0
.end method

.method public getOngoingExperiments(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1

    .line 1674
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p1
.end method

.method public getOngoingExperimentsCount()I
    .locals 1

    .line 1661
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOngoingExperimentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
            ">;"
        }
    .end annotation

    .line 1635
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOngoingExperimentsOrBuilder(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLiteOrBuilder;
    .locals 1

    .line 1687
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLiteOrBuilder;

    return-object p1
.end method

.method public getOngoingExperimentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLiteOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1648
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOverflowPolicy()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;
    .locals 1

    .line 1584
    iget v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;->forNumber(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1585
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;->UNRECOGNIZED:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;

    :cond_0
    return-object v0
.end method

.method public getOverflowPolicyValue()I
    .locals 1

    .line 1572
    iget v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    return v0
.end method

.method public getSetEventToLog()Ljava/lang/String;
    .locals 1

    .line 1203
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getSetEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1217
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeToLiveMillis()J
    .locals 2

    .line 1150
    iget-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    return-wide v0
.end method

.method public getTimeoutEventToLog()Ljava/lang/String;
    .locals 1

    .line 1420
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeoutEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1435
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerEvent()Ljava/lang/String;
    .locals 1

    .line 1026
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerEventBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1039
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerTimeoutMillis()J
    .locals 2

    .line 1097
    iget-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    return-wide v0
.end method

.method public getTtlExpiryEventToLog()Ljava/lang/String;
    .locals 1

    .line 1497
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getTtlExpiryEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1512
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVariantId()Ljava/lang/String;
    .locals 1

    .line 914
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-object v0
.end method

.method public getVariantIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 928
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
